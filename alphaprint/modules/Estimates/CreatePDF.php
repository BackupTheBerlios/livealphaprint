<?php
require_once('include/html2fpdf/html2fpdf.php');   
require_once('XTemplate/xtpl.php');
require_once('data/Tracker.php');
require_once('modules/Estimates/Estimates.php');
require_once('include/DetailView/DetailView.php');
require_once('include/database/MysqlManager.php');

global $mod_strings;
global $app_strings;
global $app_list_strings;
global $current_language; 

$focus = new Estimates();

// only load a record if a record id is given;
// a record id is not given when viewing in layout editor
$detailView = new DetailView();
$offset=0;
if (isset($_REQUEST['offset']) or isset($_REQUEST['record'])) {
	$result = $detailView->processSugarBean("ESTIMATES", $focus, $offset);
	if($result == null) {
	    sugar_die($app_strings['ERROR_NO_RECORD']);
	}
	$focus=$result;
} else {
	header("Location: index.php?module=Accounts&action=index");
}



// this query is for Estimate's components list
$fields=array('name', 'type', 'number', 'paper', 'fsize_h', 'fsize_w');
$query = "SELECT name, type, number, paper, fsize_h, fsize_w  FROM `estimates_components` WHERE parent_id='".$focus->id."' AND deleted=0";

$result = $focus->db->query($query,true,"Error filling layout fields: ");

    	while (($row = $focus->db->fetchByAssoc($result)) != null){
	    	foreach($fields as $field){
	    		$data[$field] = $row[$field];
			}
			$list[] = $data;    
    	}
//HTML2FPDF contains the functions - headerPDF, footerPDF, createHeading, createTr
$pdf = new HTML2FPDF();


//Shortcuts
$status = $app_list_strings['estimate_component_status'][$focus->status];

//begin the Body's html creation (the Header and Footer are called later)
$bodyHtml .= $pdf->sectionHeading($mod_strings["LBL_MODULE_NAME"], $focus->name, $focus->number);

$bodyHtml .= $pdf->createHeading($mod_strings["LBL_PRODUCT_INFORMATION"]);
$bodyHtml .= $pdf->createTr(false, $mod_strings["LBL_CODE"], $focus->number, $mod_strings["LBL_ACCOUNT_NAME"], $focus->account_name);
$bodyHtml .= $pdf->createTr(false, $mod_strings["LBL_NAME"], $focus->name, $mod_strings["LBL_CONTACT_NAME"], $focus->contact_name);
$bodyHtml .= $pdf->createTr(true, $mod_strings["LBL_STATUS"], $status);

$bodyHtml .= $pdf->createHeading($mod_strings["LBL_ESTIMATE_QTY"]);
$bodyHtml .= $pdf->createTr(false, $mod_strings["LBL_QUANTITY"], $focus->quantity, $mod_strings["LBL_SAMPLES"], $focus->samples);
$bodyHtml .= $pdf->createTr(true, $mod_strings["LBL_DEADLINE"], $focus->deadline, $mod_strings["LBL_FILE"], $focus->file);

$bodyHtml .= $pdf->createHeading($mod_strings["LBL_COMPONENTS_LIST"]);
$bodyHtml .= $pdf->genCells($mod_strings["LBL_COMP_NAME"], true, true, false);
$bodyHtml .= $pdf->genCells($mod_strings["LBL_COMP_TYPE"]);
$bodyHtml .= $pdf->genCells($mod_strings["LBL_COMP_NUMBER"]);
$bodyHtml .= $pdf->genCells($mod_strings["LBL_COMP_PAPER"], false, false, false, "25%");
$bodyHtml .= $pdf->genCells($mod_strings["LBL_COMP_FSIZE_H"]);
$bodyHtml .= $pdf->genCells($mod_strings["LBL_COMP_FSIZE_W"], false, false, true);

$bodyHtml .= $pdf->CompRows($list);

$bodyHtml .= "</table>";

//$bodyHtml .= "<newpage>";
 
$xtpl=new XTemplate ("CreatePDF.html");

$xtpl->assign("HEADER", $pdf->headerPDF());
$xtpl->assign("BODY", $bodyHtml);
$xtpl->assign("FOOTER", $pdf->footerPDF());
   
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