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



/*
$fields=array('name', 'type', 'number', 'paper');
$query = "SELECT name, type, number, paper FROM `estimates_components` WHERE parent_id='".$focus->id."' AND deleted=0";

$result = $focus->db->query($query,true,"Error filling layout fields: ");

    	while (($row = $focus->db->fetchByAssoc($result)) != null){
	    	foreach($fields as $field){
	    		$data[$field] = $row[$field];
			}
			$list[] = $data;    
    	}
*/    	

$xtpl=new XTemplate ("modules/$currentModule/CreatePDF.html");
$xtpl->assign("MOD", $mod_strings);
$xtpl->assign("APP", $app_strings);

$pdf = new HTML2FPDF();

$xtpl->assign("HEADER", $pdf->headerPDF());
$xtpl->assign("FOOTER", $pdf->footerPDF());
$xtpl->assign("ROWS", $pdf->CompRows($list));
$xtpl->parse("main.row1");

//Assign layout attributes 
$xtpl->assign("LABEL_COLOR", $pdfColors["label"]);
$xtpl->assign("FIELD_COLOR", $pdfColors["field"]);
$xtpl->assign("colspan", count($fields)); 
$xtpl->assign("fSize", $pdfFontSize["default"]); 
$xtpl->assign("headingFontSize", $pdfFontSize["heading"]);
$xtpl->assign("headingColor", $pdfColors["heading"]);
$xtpl->assign("titleColor", $pdfColors["headerFld"]);
$xtpl->assign("firstCol", "20%");
$xtpl->assign("secCol", "30%"); 
	//Line divider attributes
	$xtpl->assign("dividerHeight", "1px");
	$xtpl->assign("dividerColor", $pdfColors["dividerColor"]);
	$xtpl->assign("dividerSpan", 4);
	

//Assign DetailView Fileds
$xtpl->assign('name', $focus->name);
$xtpl->assign('assigned_user_name', $focus->assigned_user_name);
$xtpl->assign("number", $focus->number);
$xtpl->assign("quantity", $focus->quantity);
$xtpl->assign("special_requirements", $focus->special_requirements);
$xtpl->assign("operation_description", $focus->operation_description);
$xtpl->assign("transport", $focus->transport);
$xtpl->assign("pack", $focus->pack);
$xtpl->assign("files", $focus->files);
$xtpl->assign("periodic", $app_list_strings['clientrequest_samples_options'][$focus->periodic]);
$xtpl->assign("samples", $app_list_strings['clientrequest_samples_options'][$focus->samples]);
$xtpl->assign("due_date", $focus->due_date);
$xtpl->assign('description', nl2br(url2html($focus->description)));

if(!is_null($focus->product_id) && !empty($focus->product_id)){
	$product = new Products();
	$product->retrieve($focus->product_id);
	$xtpl->assign("pnum", $product->pnum);
	$xtpl->assign("product_name", $product->name);
	$xtpl->assign("product_id", $product->id);
	$xtpl->assign("account_name", $product->account_name);
	$xtpl->assign("account_id", $product->account_id);
	$xtpl->assign("contact_name", $product->contact_name);
	$xtpl->assign("contact_id", $product->contact_id);
}

$created_by = $current_user;
$created_by->retrieve($focus->created_by);
$xtpl->assign("CREATED_BY", $created_by->user_name);
$xtpl->assign("DATE_ENTERED",$focus->date_entered);

$modified_by = $current_user;
$modified_by->retrieve($focus->modified_user_id);
$xtpl->assign("MODIFIED_BY", $modified_by->user_name);
$xtpl->assign("DATE_MODIFIED", $focus->date_modified);

   
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