<?php
require_once('include/html2fpdf/html2fpdf.php');   
require_once('XTemplate/xtpl.php');
require_once('data/Tracker.php');
require_once('modules/ClientRequest/ClientRequest.php');
require_once('include/DetailView/DetailView.php');
require_once('include/database/MysqlManager.php');

global $mod_strings;
global $app_strings;
global $app_list_strings;
global $current_language; 

$focus = new ClientRequest();

// only load a record if a record id is given;
// a record id is not given when viewing in layout editor
$detailView = new DetailView();
$offset=0;
if (isset($_REQUEST['offset']) or isset($_REQUEST['record'])) {
	$result = $detailView->processSugarBean("CLIENTREQUEST", $focus, $offset);
	if($result == null) {
	    sugar_die($app_strings['ERROR_NO_RECORD']);
	}
	$focus=$result;
} else {
	header("Location: index.php?module=Accounts&action=index");
}




$fields=array('name', 'type', 'number', 'paper');
$query = "SELECT name, type, number, paper FROM `estimates_components` WHERE parent_id='".$focus->id."' AND deleted=0";

$result = $focus->db->query($query,true,"Error filling layout fields: ");

    	while (($row = $focus->db->fetchByAssoc($result)) != null){
	    	foreach($fields as $field){
	    		$data[$field] = $row[$field];
			}
			$list[] = $data;    
    	}
    	

$xtpl=new XTemplate ('modules/Estimates/CreatePDF.html');
$xtpl->assign("MOD", $mod_strings);
$xtpl->assign("APP", $app_strings);

$pdf_font_size = "12px"; // used in html2fpdf function CompRows - line 3258


$pdf = new HTML2FPDF();

$xtpl->assign("HEADER", $pdf->headerPDF());
$xtpl->assign("FOOTER", $pdf->footerPDF());
$xtpl->assign("ROWS", $pdf->CompRows($list));
$xtpl->parse("main.row1");
 
$xtpl->assign("LABEL_COLOR", "#ccdfed");
$xtpl->assign("FIELD_COLOR", "#ecf2f7");
$xtpl->assign("colspan", count($fields)); 
$xtpl->assign("fSize", $pdf_font_size); 

//Assign DetailView Fileds
$xtpl->assign('name', $focus->name);
$xtpl->assign('account_name', $focus->account_name);
$xtpl->assign('account_id', $focus->account_id);
$xtpl->assign('contact_name', $focus->contact_name);
$xtpl->assign('contact_id', $focus->contact_id);
$xtpl->assign('assigned_user_name', $focus->assigned_user_name);
$xtpl->assign('description', nl2br(url2html($focus->description)));
$xtpl->assign('vision', $focus->vision);
$xtpl->assign('period', $app_list_strings['estimates_period_options'][$focus->period]);
$xtpl->assign('pnum', $focus->number);
$xtpl->assign('category', $app_list_strings['estimates_category_options'][$focus->category]);
$xtpl->assign('note', $focus->note);
$xtpl->assign('quantity', $focus->quantity);
$xtpl->assign('status', $app_list_strings['estimate_component_status'][$focus->status]);
$xtpl->assign('samples', $focus->samples);
$xtpl->assign('file', $focus->file);
$xtpl->assign('deadline', $focus->deadline);

$xtpl->assign('date_entered', $focus->date_entered);
$xtpl->assign('date_modified', $focus->date_modified);

   
$pdf->DisplayPreferences('HideWindowUI');
$pdf->AddPage();
$xtpl->parse("main");
$html = $xtpl->pdf_out('main');
$html_encoded = iconv('utf-8', 'CP1251', $html);
$pdf->UseCSS(true); 
$pdf->DisableTags();
$pdf->WriteHTML($html_encoded); 
//echo $html_encoded;
$pdf->Output("$focus->number.pdf",'D');
?>