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

require_once('modules/Currencies/Currency.php');
$currency  = new Currency();


//HTML2FPDF contains the functions - headerPDF, footerPDF, createHeading, createTr
$pdf = new HTML2FPDF();

//Shortcuts
    $stage = $app_list_strings['quote_stage_dom'][$focus->stage];
    $payment_term = $app_list_strings['payment_terms'][$focus->payment_term];
	$shipping_term = $app_list_strings['shipping_term_dom'][$focus->shipping_term];
	$payment_method = $app_list_strings['payment_method_dom'][$focus->payment_method];
	$address = $focus->billtocity.", ".$focus->billpostalcode.", ".$focus->billtostate.", ".$focus->billtocountry;

if(isset($focus->currency_id) && !empty($focus->currency_id))
{
	$currency->retrieve($focus->currency_id);
	if( $currency->deleted != 1){
		$curr = $currency->name;
	}else $curr = $currency->getDefaultCurrencyName();
}else{

	$$curr = $currency->getDefaultCurrencyName();

}

//begin the Body's html creation (the Header and Footer are called later)
$bodyHtml .= $pdf->sectionHeading($mod_strings["LBL_MODULE_NAME"], $focus->name, $focus->quotenum);

$bodyHtml .= $pdf->createHeading();
$bodyHtml .= $pdf->createTr(false, $mod_strings["LBL_NAME"], $focus->name, $mod_strings["LBL_QUOTENUM"], $focus->quotenum);
$bodyHtml .= $pdf->createTr(false, $mod_strings["LBL_OPPORTUNITY_NAME"], $focus->opportunity_name, $mod_strings["LBL_STAGE"], $stage);
$bodyHtml .= $pdf->createTr(false, $mod_strings["LBL_ACCOUNT_NAME"], $focus->account_name, $mod_strings["LBL_BILLTOCONTACTNAME"], $focus->billtocontactname);
$bodyHtml .= $pdf->createTr(false, $mod_strings["LBL_CURRENCY"], $curr, $mod_strings["LBL_PAYMENT_METHOD"], $payment_method);
$bodyHtml .= $pdf->createTr(false, $mod_strings["LBL_PAYMENT_TERM"], $payment_term, $mod_strings["LBL_SHIPPING_TERM"], $shipping_term);
$bodyHtml .= $pdf->createTr(false, $mod_strings["LBL_ASSIGNEDUSER"], $focus->assigned_user_name, $mod_strings["LBL_VALIDUNTIL"], $focus->validuntil);
$bodyHtml .= $pdf->createTr(true, $mod_strings["LBL_BILLTOADDRESS"], $address);

$bodyHtml .= $pdf->createHeading($mod_strings["LBL_LINEITEMS"]);
$bodyHtml .= $pdf->genCells($mod_strings["LBL_PRODUCT"], true, true, false, "20%");
$bodyHtml .= $pdf->genCells($mod_strings["LBL_PRODUCT_NUMBER"], false, false, false, "20%");
$bodyHtml .= $pdf->genCells($mod_strings["LBL_TOTAL_PAPER"]);
$bodyHtml .= $pdf->genCells($mod_strings["LBL_TOTAL_PREPRESS"]);
$bodyHtml .= $pdf->genCells($mod_strings["LBL_TOTAL_PRESS"]);
$bodyHtml .= $pdf->genCells($mod_strings["LBL_TOTAL_OPERATIONS"]);
$bodyHtml .= $pdf->genCells($mod_strings["LBL_TOTAL_PRICE"]);
$bodyHtml .= $pdf->genCells($mod_strings["LBL_QUOTED_PRICE"], false, false, true);
			
//var_dump($bodyHtml2);
//die;

if (!empty($focus->estimate_id)){
	$bodyHtml .= $focus->add_quote_estimate($focus->estimate_id, false, true);
}
$bodyHtml .= "</table>";

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