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

$parent = new $focus->parent_bean;
$parent->retrieve($focus->parent_id);

$product = new Products();
$product->retrieve($parent->product_id);

$pdf = new HTML2FPDF();
$xtpl=new XTemplate ("CreatePDF.html");

if ($focus->parent_bean == 'ClientRequest') {
	
$description = nl2br(url2html($focus->description));
$format = $focus->fsize_h."x".$focus->fsize_w;
$run_format = $focus->run_size_x."x".$focus->run_size_y;
$bleed_format = $focus->bleed_size_x."x".$focus->bleed_size_y;
$baseFormat = $focus->base_x."x".$focus->base_y;

//begin the Body's html creation (the Header and Footer are called later)
$bodyHtml .= $pdf->sectionHeading($mod_strings["LBL_MODULE_NAME"], $focus->name, $focus->number);

$bodyHtml .= $pdf->createHeading($mod_strings["LBL_PRODUCT_INFORMATION"]);
$bodyHtml .= $pdf->createTr(false, $mod_strings["LBL_CODE"], $product->pnum, $mod_strings["LBL_ACCOUNT_NAME"], $product->account_name);
$bodyHtml .= $pdf->createTr(true, $mod_strings["LBL_NAME"], $product->name, $mod_strings["LBL_CONTACT_NAME"], $product->contact_name);

$bodyHtml .= $pdf->createHeading($mod_strings["LBL_REQUEST_INFORMATION"]);
$bodyHtml .= $pdf->createTr(false, $mod_strings["LBL_NAME"], $focus->parent_name, $mod_strings["LBL_NUMBER"], $parent->number);
$bodyHtml .= $pdf->createTr(true, $mod_strings["LBL_ASSIGNED_USER_ID"], $parent->assigned_user_name, $mod_strings["LBL_DUE_DATE"], $parent->due_date);

$bodyHtml .= $pdf->createHeading($mod_strings["LBL_GENERAL"]);
$bodyHtml .= $pdf->createTr(false, $mod_strings["LBL_NUMBER"], $focus->number, $mod_strings["LBL_QUANTITY"], $focus->quantity);
$bodyHtml .= $pdf->createTr(false, $mod_strings["LBL_VOLUME"], $focus->volume);
$bodyHtml .= $pdf->createTr(true, $mod_strings["LBL_DESCRIPTION"], $description);

$bodyHtml .= $pdf->createHeading($mod_strings["LBL_COMPONENT_FORMATS"]);
$bodyHtml .= $pdf->createTr(false, $mod_strings["LBL_FORMAT"], $format, $mod_strings["LBL_RUN_FORMAT"], $run_format);
$bodyHtml .= $pdf->createTr(false, $mod_strings["LBL_BLEED_FORMAT"], $bleed_format);
$bodyHtml .= $pdf->createTr(true, $mod_strings["LBL_FORMAT_DESCRIPTION"], $focus->format_description);

$bodyHtml .= $pdf->createHeading($mod_strings["LBL_COMPONENT_PAPER"]);
$bodyHtml .= $pdf->createTr(false, $mod_strings["LBL_PAPER_DESCRIPTION"], $focus->paper_description);
$bodyHtml .= $pdf->createTr(false, $mod_strings["LBL_PAPER_TYPE_DESCRIPTION"], $focus->paper_type);
$bodyHtml .= $pdf->createTr(false, $mod_strings["LBL_FORMAT"], $baseFormat, $mod_strings["LBL_BASE_FORMAT"], $baseFormat);
$bodyHtml .= $pdf->createTr(true, $mod_strings["LBL_PAPER_SUPPLIER_DESCRIPTION"], $focus->paper_supplier_description, $mod_strings["LBL_CLIENT_PAPER"], $focus->client_paper);

$bodyHtml .= $pdf->createHeading($mod_strings["LBL_COMPONENT_FORMATS"]);
$bodyHtml .= $pdf->createTr(false, $mod_strings["LBL_COLOR_SIDE_A_DESCRIPTION"], $focus->colors_a);
$bodyHtml .= $pdf->createTr(true, $mod_strings["LBL_COLOR_SIDE_B_DESCRIPTION"], $focus->colors_b);	

$bodyHtml .= $pdf->createHeading($mod_strings["LBL_COMPONENT_OPERATIONS"]);
$bodyHtml .= $pdf->createTr(true, $mod_strings["LBL_OPERATIONS_DESCRIPTION"], $RqComps->operations);

} else {

	$description = nl2br(url2html($focus->description));
	$type = $app_list_strings['type_options'][$focus->type];
	$color = $focus->color_side_a."x".$focus->color_side_b;
	$fsize = $focus->fsize_h."x".$focus->fsize_w;
	$base = $focus->base_x."x".$focus->base_y;
	$bleed_size = $focus->bleed_size_x."x".$focus->bleed_size_y;
	$child = $focus->child_x."x".$focus->child_y;
	$run_size = $focus->run_size_x."x".$focus->run_size_y;
	$pressformat = $focus->pressformat_x."x".$focus->pressformat_y;
	$colorSideA = $mod_strings["LBL_COLOR_SIDE_A"]."(".$focus->color_side_a.")";
	$colorSideB = $mod_strings["LBL_COLOR_SIDE_B"]."(".$focus->color_side_b.")";
	
	//begin the Body's html creation (the Header and Footer are called later)
	$bodyHtml .= $pdf->sectionHeading($mod_strings["LBL_MODULE_NAME"], $focus->name, $focus->number);
	
	$bodyHtml .= $pdf->createHeading($mod_strings["LBL_PRODUCT_INFORMATION"]);
	$bodyHtml .= $pdf->createTr(false, $mod_strings["LBL_CODE"], $product->pnum, $mod_strings["LBL_ACCOUNT_NAME"], $product->account_name);
	$bodyHtml .= $pdf->createTr(true, $mod_strings["LBL_NAME"], $product->name, $mod_strings["LBL_CONTACT_NAME"], $product->contact_name);
	
	$bodyHtml .= $pdf->createHeading($mod_strings["LBL_GENERAL"]);
	$bodyHtml .= $pdf->createTr(false, $mod_strings["LBL_PARENT_ID"], $focus->parent_name, $mod_strings["LBL_NUMBER"], $focus->number);
	$bodyHtml .= $pdf->createTr(false, $mod_strings["LBL_CLIENTREQUEST"], $parent->name, $mod_strings["LBL_COLOR"], $color);
	$bodyHtml .= $pdf->createTr(false, $mod_strings["LBL_TYPE"], $type, $mod_strings["LBL_QUANTITY"], $focus->quantity);
	$bodyHtml .= $pdf->createTr(false, $mod_strings["LBL_PAPER"], $focus->paper, $mod_strings["LBL_VOLUME"], $focus->volume);
	$bodyHtml .= $pdf->createTr(false, $mod_strings["LBL_FORMAT"], $fsize, $mod_strings["LBL_STATUS"], $focus->status);
	$bodyHtml .= $pdf->createTr(true, $mod_strings["LBL_DESCRIPTION"], $description);
	
	$bodyHtml .= $pdf->createHeading($mod_strings["LBL_COMPONENT_FORMATS"]);
	$bodyHtml .= $pdf->createTr(false, $mod_strings["LBL_FORMAT"], $fsize, $mod_strings["LBL_BASE_FORMAT"], $base);
	$bodyHtml .= $pdf->createTr(false, $mod_strings["LBL_BLEED_FORMAT"], $bleed_size, $mod_strings["LBL_CHILD_FORMAT"], $child);
	$bodyHtml .= $pdf->createTr(true, $mod_strings["LBL_RUN_FORMAT"], $run_size, $mod_strings["LBL_PRESS_FORMAT"], $pressformat);
	
	$bodyHtml .= $pdf->createHeading($mod_strings["LBL_COMPONENT_COLORS"]);
	$bodyHtml .= $pdf->createTr(true, $colorSideA, $focus->inksDetailView($inks_side_a), $colorSideB, $focus->inksDetailView($inks_side_b));
	
	//Prepress
	$bodyHtml .= $pdf->createHeading($mod_strings["LBL_COMPONENT_PREPRESS"]);
	$bodyHtml .= "	<tr bgcolor=".$pdfColors["label"]." >
						<td ><font size=".$pdfFontSize["default"].">".$mod_strings["LBL_PREPRESS_NAME"]."</font></td>
						<td ><font size=".$pdfFontSize["default"].">".$mod_strings["LBL_TYPE"]."</font></td>
					    <td ><font size=".$pdfFontSize["default"].">".$mod_strings["LBL_PREPRESS_FORMAT"]."</font></td>
					    <td ><font size=".$pdfFontSize["default"].">".$mod_strings["LBL_PREPRESS_GAUGE"]."</font></td>
					    <td ><font size=".$pdfFontSize["default"].">".$mod_strings["LBL_SIDE"]."</font></td>
					    <td ><font size=".$pdfFontSize["default"].">".$mod_strings["LBL_PREPRESS_COUNT"]."</font></td>
					</tr><tr><td height=1px bgcolor=#fff colspan=3></td></tr>"; 	
		
		$prepress_rows = $focus->getPrepressRows();
		for ($i = 0; $i < count($prepress_rows); $i++)
			$bodyHtml .= $focus->getPrepressRowPdf($prepress_rows[$i],$i);
	
	$bodyHtml .= "</table>";
	
	//Press
	$bodyHtml .= $pdf->createHeading($mod_strings["LBL_LINEITEMS"]);
	$bodyHtml .= "	<tr bgcolor=".$pdfColors["label"].">
						<td ><font size=".$pdfFontSize["default"].">".$mod_strings["LBL_NUMBER_LOTS"]."</font></td>
						<td ><font size=".$pdfFontSize["default"].">".$mod_strings["LBL_NUMBER_UNITS"]."</font></td>
		    			<td ><font size=".$pdfFontSize["default"].">".$mod_strings["LBL_RUN_STYLE"]."</font></td>
					</tr><tr><td height=1px bgcolor=#fff colspan=3></td></tr>";
	
	$layoutrows = $focus->getLayoutRows();
	for ($i=0;$i<count($layoutrows);$i++)
		$bodyHtml .= $focus->getLayoutRowPdf($layoutrows[$i],$i);	
	
	$bodyHtml .= "</table>";
	
	//Post-Press
	$bodyHtml .= $pdf->createHeading($mod_strings["LBL_POSTPRESS"]);
	$bodyHtml .= "	<tr bgcolor=".$pdfColors["label"].">
						<td ><font size=".$pdfFontSize["default"].">".$mod_strings["LBL_OPERATION_NAME"]."</font></td>
						<td ><font size=".$pdfFontSize["default"].">".$mod_strings["LBL_TYPE"]."</font></td>
					    <td ><font size=".$pdfFontSize["default"].">".$mod_strings["LBL_PREPRESS_COUNT"]."</font></td>
					</tr><tr><td height=1px bgcolor=#fff colspan=3></td></tr>";
	
	$postpress_rows = $focus->getOperationsRows();
	
	for ($i = 0; $i < count($postpress_rows); $i++)
			$bodyHtml .= $postpress_html.$focus->getOperationsRowPdf($postpress_rows[$i],$i);
	
	$bodyHtml .= "</table>";
}// end of the else

$pdf = new HTML2FPDF();
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