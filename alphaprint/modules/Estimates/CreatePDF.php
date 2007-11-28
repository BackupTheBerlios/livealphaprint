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


$product = new Products();
$product->retrieve($focus->product_id);

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
$status = $app_list_strings['estimate_component_status'][$focus->sub_status];


//begin the Body's html creation (the Header and Footer are called later)
$bodyHtml = "";
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
$bodyHtml .= "<newpage>";

$list = null;
$query = "SELECT id FROM `estimates_components` WHERE parent_id='".$focus->id."' AND deleted=0";
$result = $focus->db->query($query,true,"Error filling layout fields: ");
	
  while ($row = $focus->db->fetchByAssoc($result))
 			$list[] = $row['id'];
 			
 			
//Initializing of EstimateComponents object, needs to be done for every record 
for ($i = 0; $i < count($list); $i++) {
	$estComps = new EstimateComponents;
	$estComps->retrieve($list[$i]);
	
	//get the $mod_strings from EstimateComponents module 
	$comp_mod_strings = return_module_language($current_language, "EstimateComponents");
	
	$description = nl2br(url2html($estComps->description));
	$type = $app_list_strings['type_options'][$estComps->type];
	$color = $estComps->color_side_a."x".$estComps->color_side_b;
	$fsize = $estComps->fsize_h."x".$estComps->fsize_w;
	$base = $estComps->base_x."x".$estComps->base_y;
	$bleed_size = $estComps->bleed_size_x."x".$estComps->bleed_size_y;
	$child = $estComps->child_x."x".$estComps->child_y;
	$run_size = $estComps->run_size_x."x".$estComps->run_size_y;
	$pressformat = $estComps->pressformat_x."x".$estComps->pressformat_y;
	$colorSideA = $comp_mod_strings["LBL_COLOR_SIDE_A"]."(".$estComps->color_side_a.")";
	$colorSideB = $comp_mod_strings["LBL_COLOR_SIDE_B"]."(".$estComps->color_side_b.")";
	
	$ink_rows = $estComps->getInkRows();
	$inks_side_a = array();
	$inks_side_b = array();
	
	for ($i = 0; $i < count($ink_rows); $i++) {
		if ($ink_rows[$i]->side == "a") {
			$side_a = array();
			$side_a['name'] = $estComps->getInkNames($ink_rows[$i]->color_id);
			$side_a['id'] = $ink_rows[$i]->color_id;
			$inks_side_a[] = $side_a;
			
		}
		if ($ink_rows[$i]->side == "b") {
			$side_b = array();
			$side_b['name'] = $estComps->getInkNames($ink_rows[$i]->color_id);
			$side_b['id'] = $ink_rows[$i]->color_id;
			$inks_side_b[] = $side_b;
		}
		
	}
	
	//begin the Body's html creation (the Header and Footer are called later)
	$compsHtml = "";
	$compsHtml .= $pdf->sectionHeading($comp_mod_strings["LBL_MODULE_NAME"], $estComps->name, $estComps->number);
	
	$compsHtml .= $pdf->createHeading($comp_mod_strings["LBL_PRODUCT_INFORMATION"]);
	$compsHtml .= $pdf->createTr(false, $comp_mod_strings["LBL_CODE"], $product->pnum, $comp_mod_strings["LBL_ACCOUNT_NAME"], $product->account_name);
	$compsHtml .= $pdf->createTr(true, $comp_mod_strings["LBL_NAME"], $product->name, $comp_mod_strings["LBL_CONTACT_NAME"], $product->contact_name);
	
	$compsHtml .= $pdf->createHeading($comp_mod_strings["LBL_GENERAL"]);
	$compsHtml .= $pdf->createTr(false, $comp_mod_strings["LBL_PARENT_ID"], $estComps->parent_name, $comp_mod_strings["LBL_NUMBER"], $estComps->number);
	$compsHtml .= $pdf->createTr(false, $comp_mod_strings["LBL_CLIENTREQUEST"], $focus->name, $comp_mod_strings["LBL_COLOR"], $color);
	$compsHtml .= $pdf->createTr(false, $comp_mod_strings["LBL_TYPE"], $type, $comp_mod_strings["LBL_QUANTITY"], $estComps->quantity);
	$compsHtml .= $pdf->createTr(false, $comp_mod_strings["LBL_PAPER"], $estComps->paper, $comp_mod_strings["LBL_VOLUME"], $estComps->volume);
	$compsHtml .= $pdf->createTr(false, $comp_mod_strings["LBL_FORMAT"], $fsize, $comp_mod_strings["LBL_STATUS"], $estComps->status);
	$compsHtml .= $pdf->createTr(true, $comp_mod_strings["LBL_DESCRIPTION"], $description);
	
	$compsHtml .= $pdf->createHeading($comp_mod_strings["LBL_COMPONENT_FORMATS"]);
	$compsHtml .= $pdf->createTr(false, $comp_mod_strings["LBL_FORMAT"], $fsize, $comp_mod_strings["LBL_BASE_FORMAT"], $base);
	$compsHtml .= $pdf->createTr(false, $comp_mod_strings["LBL_BLEED_FORMAT"], $bleed_size, $comp_mod_strings["LBL_CHILD_FORMAT"], $child);
	$compsHtml .= $pdf->createTr(true, $comp_mod_strings["LBL_RUN_FORMAT"], $run_size, $comp_mod_strings["LBL_PRESS_FORMAT"], $pressformat);
	
	$compsHtml .= $pdf->createHeading($comp_mod_strings["LBL_COMPONENT_COLORS"]);
	$compsHtml .= $pdf->createTr(true, $colorSideA, $estComps->inksDetailView($inks_side_a), $colorSideB, $estComps->inksDetailView($inks_side_b));
	
	//Prepress
	$compsHtml .= $pdf->createHeading($comp_mod_strings["LBL_COMPONENT_PREPRESS"]);
	$compsHtml .= "	<tr bgcolor=".$pdfColors["label"]." >
						<td ><font size=".$pdfFontSize["default"].">".$comp_mod_strings["LBL_PREPRESS_NAME"]."</font></td>
						<td ><font size=".$pdfFontSize["default"].">".$comp_mod_strings["LBL_TYPE"]."</font></td>
					    <td ><font size=".$pdfFontSize["default"].">".$comp_mod_strings["LBL_PREPRESS_FORMAT"]."</font></td>
					    <td ><font size=".$pdfFontSize["default"].">".$comp_mod_strings["LBL_PREPRESS_GAUGE"]."</font></td>
					    <td ><font size=".$pdfFontSize["default"].">".$comp_mod_strings["LBL_SIDE"]."</font></td>
					    <td ><font size=".$pdfFontSize["default"].">".$comp_mod_strings["LBL_PREPRESS_COUNT"]."</font></td>
					</tr><tr><td height=1px bgcolor=#fff colspan=3></td></tr>"; 	
		
		$prepress_rows = $estComps->getPrepressRows();
		for ($j = 0; $j < count($prepress_rows); $j++)
			$compsHtml .= $estComps->getPrepressRowPdf($prepress_rows[$j],$j);
	
	$compsHtml .= "</table>";
	
	//Press
	$compsHtml .= $pdf->createHeading($comp_mod_strings["LBL_LINEITEMS"]);
	$compsHtml .= "	<tr bgcolor=".$pdfColors["label"].">
						<td ><font size=".$pdfFontSize["default"].">".$comp_mod_strings["LBL_NUMBER_LOTS"]."</font></td>
						<td ><font size=".$pdfFontSize["default"].">".$comp_mod_strings["LBL_NUMBER_UNITS"]."</font></td>
		    			<td ><font size=".$pdfFontSize["default"].">".$comp_mod_strings["LBL_RUN_STYLE"]."</font></td>
					</tr><tr><td height=1px bgcolor=#fff colspan=3></td></tr>";
	
	$layoutrows = $estComps->getLayoutRows();
	for ($j=0;$j<count($layoutrows);$j++)
		$compsHtml .= $estComps->getLayoutRowPdf($layoutrows[$j],$j);	
	
	$compsHtml .= "</table>";
	
	//Post-Press
	$compsHtml .= $pdf->createHeading($comp_mod_strings["LBL_POSTPRESS"]);
	$compsHtml .= "	<tr bgcolor=".$pdfColors["label"].">
						<td ><font size=".$pdfFontSize["default"].">".$comp_mod_strings["LBL_OPERATION_NAME"]."</font></td>
						<td ><font size=".$pdfFontSize["default"].">".$comp_mod_strings["LBL_TYPE"]."</font></td>
					    <td ><font size=".$pdfFontSize["default"].">".$comp_mod_strings["LBL_PREPRESS_COUNT"]."</font></td>
					</tr><tr><td height=1px bgcolor=#fff colspan=3></td></tr>";
	
	$postpress_rows = $estComps->getOperationsRows();
	
	for ($j = 0; $j < count($postpress_rows); $j++)
			$compsHtml .= $estComps->getOperationsRowPdf($postpress_rows[$j],$j);
	
	$compsHtml .= "</table>";
}//end of main For loop 			
 			
 
$xtpl=new XTemplate ("CreatePDF.html");

$xtpl->assign("HEADER", $pdf->headerPDF());
$xtpl->assign("BODY", $bodyHtml);
$xtpl->assign("COMPONENTS", $compsHtml);
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