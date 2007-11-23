<?php
require_once('include/html2fpdf/html2fpdf.php');   
require_once('XTemplate/xtpl.php');
require_once('data/Tracker.php');
require_once('modules/Quotes/Quote.php');
require_once('include/DetailView/DetailView.php');
require_once('include/database/MysqlManager.php');

global $mod_strings;
global $app_strings;
global $app_list_strings;
global $current_language; 
global $pdf_font_size;

//Initializing the main object
$focus = new Quote();

// only load a record if a record id is given;
// a record id is not given when viewing in layout editor
$detailView = new DetailView();
$offset=0;
if (isset($_REQUEST['offset']) or isset($_REQUEST['record'])) {
    $result = $detailView->processSugarBean("QUOTE", $focus, $offset);
    if($result == null) {
        sugar_die($app_strings['ERROR_NO_RECORD']);
    }
    $focus=$result;
} else {
    header("Location: index.php?module=Quotes&action=index");
}

//HTML2FPDF contains the functions - headerPDF, footerPDF, createHeading, createTr
$pdf = new HTML2FPDF();

//Shortcuts

//begin the Body's html creation (the Header and Footer are called later)
$bodyHtml .= $pdf->sectionHeading($mod_strings["LBL_MODULE_NAME"], $focus->name, $focus->quotenum);

$bodyHtml .= $pdf->createHeading();
$bodyHtml .= $pdf->createTr(false, $mod_strings["LBL_NAME"], $focus->name, $mod_strings["LBL_ASSIGNED_USER_ID"], $focus->assigned_user_name);
//$bodyHtml .= $pdf->createTr(false, $mod_strings["LBL_ESTIMATE_NAME"], $focus->estimate_name, $mod_strings["LBL_STATUS"], $focus->status);
//$bodyHtml .= $pdf->createTr(false, $mod_strings["LBL_ESTIMATE_TOTAL"], $total, $mod_strings["LBL_DESCRIPTION"], nl2br(url2html($focus->description)));
//$bodyHtml .= $pdf->createTr(false, $mod_strings["LBL_PAPER_ESTIMATE"], $total_paper, $mod_strings["LBL_PREPRESS_ESTIMATE"], $total_prepress);
//$bodyHtml .= $pdf->createTr(false, $mod_strings["LBL_PRESS_ESTIMATE"], $total_press, $mod_strings["LBL_OPERATIONS_ESTIMATE"], $total_operations);
//$bodyHtml .= $pdf->createTr(false, $mod_strings["LBL_PAPER_ESTIMATE"], $total_paper, $mod_strings["LBL_PREPRESS_ESTIMATE"], $total_prepress);
//$bodyHtml .= $pdf->createTr(true, $mod_strings["LBL_PRESS_ESTIMATE"], $total_press, $mod_strings["LBL_OPERATIONS_ESTIMATE"], $total_operations);

$bodyHtml .= $pdf->createHeading();
//$bodyHtml .= "<newpage>";





/*$xtpl->assign("MOD", $mod_strings);
$xtpl->assign("APP", $app_strings);





 
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
 
$productrows = $focus->getProductRows();
for ($i=0;$i<count($productrows);$i++) {
        $fieldcount = count($productrows[$i]);
        $xtpl->assign("PRODUCTROWS",$focus->getProductRow($productrows[$i],$i,false,true));
        $xtpl->parse("main.row1");        
}

$xtpl_data = $focus->get_xtemplate_data();
$stage = $xtpl_data['STAGE'];
$xtpl_data['STAGE'] = $app_list_strings['quote_stage_dom'][$stage];
$xtpl->assign("PAYMENT_TERM", $app_list_strings['payment_terms'][$focus->payment_term]);
$xtpl->assign("SHIPPING_TERM", $app_list_strings['shipping_term_dom'][$focus->shipping_term]);
$xtpl->assign("PAYMENT_METHOD", $app_list_strings['payment_method_dom'][$focus->payment_method]);


$usernameid = $xtpl_data['ASSIGNED_USER_ID'];



$xtpl_data['ASSIGNED_USER_NAME'] = get_assigned_user_name($usernameid);

$xtpl->assign("Quote",$xtpl_data);
   
*/
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
$pdf->Output("$focus->quotenum.pdf",'D');
?>