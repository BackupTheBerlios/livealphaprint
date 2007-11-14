<?php
require_once('include/html2fpdf/html2fpdf.php');   
require_once('XTemplate/xtpl.php');
require_once('data/Tracker.php');
require_once('modules/EstimateComponents/EstimateComponents.php');
require_once('include/DetailView/DetailView.php');
require_once('include/database/MysqlManager.php');

global $mod_strings;
global $app_strings;
global $app_list_strings;
global $current_language; 

$focus = new EstimateComponents();

// only load a record if a record id is given;
// a record id is not given when viewing in layout editor
$detailView = new DetailView();
$offset=0;
if (isset($_REQUEST['offset']) or isset($_REQUEST['record'])) {
	$result = $detailView->processSugarBean("ESTIMATECOMPONENTS", $focus, $offset);
	if($result == null) {
	    sugar_die($app_strings['ERROR_NO_RECORD']);
	}
	$focus=$result;
} else {
	header("Location: index.php?module=Accounts&action=index");
}




/*$fields=array('name', 'type', 'number', 'paper');
$query = "SELECT name, type, number, paper FROM `estimates_components` WHERE parent_id='".$focus->id."' AND deleted=0";

$result = $focus->db->query($query,true,"Error filling layout fields: ");

    	while (($row = $focus->db->fetchByAssoc($result)) != null){
	    	foreach($fields as $field){
	    		$data[$field] = $row[$field];
			}
			$list[] = $data;    
    	}*/  	

$xtpl=new XTemplate ("modules/$currentModule/CreatePDF.html");
$xtpl->assign("MOD", $mod_strings);
$xtpl->assign("APP", $app_strings);


$pdf = new HTML2FPDF();

$xtpl->assign("HEADER", $pdf->headerPDF());
$xtpl->assign("FOOTER", $pdf->footerPDF());
/*$xtpl->assign("ROWS", $pdf->CompRows($list));
$xtpl->parse("main.row1");*/
 
$xtpl->assign("LABEL_COLOR", $pdfColors["label"]);
$xtpl->assign("FIELD_COLOR", $pdfColors["field"]);
$xtpl->assign("colspan", count($fields)); 
$xtpl->assign("fSize", $pdf->pdf_font_size); 

//Assign DetailView Fileds
$xtpl->assign('parent_name', $focus->parent_name);
$xtpl->assign('number', $focus->number);
$xtpl->assign('type', $app_list_strings['type_options'][$focus->type]);
$xtpl->assign('color_side_a', $focus->color_side_a);
$xtpl->assign('color_side_b', $focus->color_side_b);
$xtpl->assign('paper', $focus->paper);
$xtpl->assign('quantity', $focus->quantity);
$xtpl->assign('fsize_h', $focus->fsize_h);
$xtpl->assign('fsize_w', $focus->fsize_w);
$xtpl->assign('volume', $focus->volume);
$xtpl->assign('status', $app_list_strings['estimate_component_status'][$focus->status]);
$xtpl->assign('description', nl2br(url2html($focus->description)));

$xtpl->assign('base_x', $focus->base_x);
$xtpl->assign('base_y', $focus->base_y);
$xtpl->assign('bleed_size_x', $focus->bleed_size_x);
$xtpl->assign('bleed_size_y', $focus->bleed_size_y);
$xtpl->assign('child_x', $focus->child_x);
$xtpl->assign('child_y', $focus->child_y);
$xtpl->assign('run_size_x', $focus->run_size_x);
$xtpl->assign('run_size_y', $focus->run_size_y);
$xtpl->assign('pressformat_x', $focus->pressformat_x);
$xtpl->assign('pressformat_y', $focus->pressformat_y);

//Assign prepress
$prepress_rows = $focus->getPrepressRows();
$prepress_html = "";

for ($i = 0; $i < count($prepress_rows); $i++) {
		$prepress_html .= $focus->getPrepressRowPdf($prepress_rows[$i],$i);
}

$xtpl->assign('prepress_html', $prepress_html);

//Assign press
$layoutrows = $focus->getLayoutRows();
for ($i=0;$i<count($layoutrows);$i++) {
        $fieldcount = count($layoutrows[$i]);
        $xtpl->assign("LAYOUTROWS",$focus->getLayoutRowPdf($layoutrows[$i],$i));
        $xtpl->parse("main.row1");        
}

//Assign Post-Press
$postpress_rows = $focus->getOperationsRows();
$postpress_html = "";

for ($i = 0; $i < count($postpress_rows); $i++) {
		$postpress_html = $postpress_html.$focus->getOperationsRowPdf($postpress_rows[$i],$i);
}

$xtpl->assign('postpress_html', $postpress_html);
///end of assign   
   
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