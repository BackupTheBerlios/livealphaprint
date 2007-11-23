<?php
require_once('include/html2fpdf/html2fpdf.php');   
require_once('XTemplate/xtpl.php');
require_once('data/Tracker.php');
require_once('modules/EstimateCalc/EstimateCalc.php');
require_once('include/DetailView/DetailView.php');
require_once('include/database/MysqlManager.php');
require_once('modules/ComponentEstimateCalc/ComponentEstimateCalc.php');

global $mod_strings;
global $app_strings;
global $app_list_strings;
global $current_language; 

//Initializing the main object
$focus = new ComponentEstimateCalc();

// only load a record if a record id is given;
// a record id is not given when viewing in layout editor
$detailView = new DetailView();
$offset=0;
if (isset($_REQUEST['offset']) or isset($_REQUEST['record'])) {
	$result = $detailView->processSugarBean("COMPONENTESTIMATECALC", $focus, $offset);
	if($result == null) {
	    sugar_die($app_strings['ERROR_NO_RECORD']);
	}
	$focus=$result;
} else {
	header("Location: index.php?module=Accounts&action=index");
}

//HTML2FPDF contains the functions - headerPDF, footerPDF, createHeading, createTr
$pdf = new HTML2FPDF();


//Shortcuts
$total = $focus->total_paper+$focus->total_prepress+$focus->total_press+$focus->total_operations." ".$mod_strings["LBL_UNITS"];
$total_paper = $focus->total_paper." ".$mod_strings["LBL_UNITS"];
$total_prepress = $focus->total_prepress." ".$mod_strings["LBL_UNITS"];
$total_press = $focus->total_press." ".$mod_strings["LBL_UNITS"];
$total_operations = $focus->total_operations." ".$mod_strings["LBL_UNITS"];
$status = $app_list_strings['componentestimatecalc_status_dom'][$focus->status];

//begin the Body's html creation (the Header and Footer are called later)
$bodyHtml .= $pdf->sectionHeading($mod_strings["LBL_MODULE_NAME"], $focus->name);

$bodyHtml .= $pdf->createHeading();
$bodyHtml .= $pdf->createTr(false, $mod_strings["LBL_NAME"], $focus->name, $mod_strings["LBL_ASSIGNED_USER_ID"], $focus->assigned_user_name);
$bodyHtml .= $pdf->createTr(false, $mod_strings["LBL_COMPONENT_NAME"], $focus->component_name, $mod_strings["LBL_ESTIMATE_NAME"], $focus->estimate_name);
$bodyHtml .= $pdf->createTr(false, $mod_strings["LBL_TOTAL"], $total, $mod_strings["LBL_DESCRIPTION"], nl2br(url2html($focus->description)));
$bodyHtml .= $pdf->createTr(false, $mod_strings["LBL_PAPER_TOTAL"], $total_paper, $mod_strings["LBL_PREPRESS_TOTAL"], $total_prepress);
$bodyHtml .= $pdf->createTr(false, $mod_strings["LBL_PRESS_TOTAL"], $total_press, $mod_strings["LBL_OPERATIONS_TOTAL"], $total_operations);
$bodyHtml .= $pdf->createTr(true, $mod_strings["LBL_STATUS"], $status);

//$bodyHtml .= "<newpage>";

    		$paperEst = $focus->paperEstimate($focus->component_id, null, false, true);
			$pressEst = $focus->pressEstimate($focus->component_id, null, false, true);
			$operationsEst = $focus->operationsEstimate($focus->component_id, false, true);
			$prepressEst = $focus->prepressEstimate($focus->component_id, false, true);
			
			$compsHtml = "";
			$compsHtml .= $pdf->sectionHeading($mod_strings["LBL_DETAILED_INFO"]);
			
				//shortcuts
				$singlePrice = $paperEst["paper_singleprice"]." ".$mod_strings["LBL_UNITS"];
				$paperPrice = $paperEst["total_paper_price"]." ".$mod_strings["LBL_UNITS"];
			
			//paper
			$compsHtml .= $pdf->createHeading($mod_strings["LBL_PAPER"]);
			$compsHtml .= $pdf->genCells($mod_strings["LBL_CLEAN_QTY_QP"], true, true, false);
			$compsHtml .= $pdf->genCells($mod_strings["LBL_PAPERWOST_QP"]);
			$compsHtml .= $pdf->genCells($mod_strings["LBL_QP"]);
			$compsHtml .= $pdf->genCells($mod_strings["LBL_SHETS_QP"]);
			$compsHtml .= $pdf->genCells($mod_strings["LBL_PAGES"]);
			$compsHtml .= $pdf->genCells($mod_strings["LBL_PAPER_SINGLE_PRICE"]);
			$compsHtml .= $pdf->genCells($mod_strings["LBL_PAPER_TOTAL"]);
			$compsHtml .= $pdf->genCells($mod_strings["LBL_PAPER_FROM_CLIENT"], false, false, true);
			
			$compsHtml .= $pdf->genCells($paperEst["clean_quantity_qp"], true, false, false);
			$compsHtml .= $pdf->genCells($paperEst["paperwaste_qp"]);
			$compsHtml .= $pdf->genCells($paperEst["qp"]);
			$compsHtml .= $pdf->genCells($paperEst["sheets_qp"]);
			$compsHtml .= $pdf->genCells($paperEst["pages"]);
			$compsHtml .= $pdf->genCells($singlePrice);
			$compsHtml .= $pdf->genCells($paperPrice);
			$compsHtml .= $pdf->genCells($paperEst["client_paper"], false, false, true);
			$compsHtml .= "</table>";
			
			//Waste
			$compsHtml .= $pdf->createHeading($mod_strings["LBL_PAPER_WOST"]);
			$compsHtml .= $pdf->genCells($mod_strings["LBL_LOTS_NUMBER"], true, true, false);
			$compsHtml .= $pdf->genCells($mod_strings["LBL_UNITES_NUMBER"]);
			$compsHtml .= $pdf->genCells($mod_strings["LBL_RUN_STYLE"]);
			$compsHtml .= $pdf->genCells($mod_strings["LBL_QUANTITY"]);
			$compsHtml .= $pdf->genCells($mod_strings["LBL_CLEAN_QTY_QP"]);
			$compsHtml .= $pdf->genCells($mod_strings["LBL_PAPER_PRESSWASTE_QP"], false, false, true);
			
			for ($i=0; $i<count($paperEst["layout"]); $i++){
			
				$compsHtml .= $pdf->genCells($paperEst["layout"][$i]["lots_number"], true, false, false);
				$compsHtml .= $pdf->genCells($paperEst["layout"][$i]["unites_number"]);
				$compsHtml .= $pdf->genCells($paperEst["layout"][$i]["run_style"]);
				$compsHtml .= $pdf->genCells($paperEst["layout"][$i]["qunatity"]);
				$compsHtml .= $pdf->genCells($paperEst["layout"][$i]["clean_quantity_qp"]);
				$compsHtml .= $pdf->genCells($paperEst["layout"][$i]["presswaste"], false, false, true);
			}
			
			$compsHtml .= "<tr><td height=1px bgcolor=".$pdfColors["label"]." colspan=6></td></tr>";
			$compsHtml .= $pdf->genCells(null, true, false, false);
			$compsHtml .= $pdf->genEmptyCells(3);
			$compsHtml .= $pdf->genCells($paperEst["subtotal"]["clean_quantity_qp"]);
			$compsHtml .= $pdf->genCells($paperEst["subtotal"]["presswaste_amount"], false, false, true);
			$compsHtml .= "<tr><td height=1px bgcolor=#fff colspan=6></td></tr>";
			$compsHtml .= "<tr><td bgcolor=".$pdfColors["label"]." ><font size=".$pdfFontSize["default"].">".$mod_strings["LBL_OPERATION_WASTE"]."</font></td>";
			$compsHtml .= "<td colspan=5 bgcolor=".$pdfColors["field"]." ><font size=".$pdfFontSize["default"].">".$paperEst["operationwaste"]."</font></td></tr>";
			$compsHtml .= "</table>";
			
			//pre-press
			$compsHtml .= $pdf->createHeading($mod_strings["LBL_PREPRESS_ESTIMATE"]);
			$compsHtml .= $pdf->genCells($mod_strings["LBL_PREPRESS_NAME"], true, true, false);
			$compsHtml .= $pdf->genCells($mod_strings["LBL_PREPRESS_COUNT"]);
			$compsHtml .= $pdf->genCells($mod_strings["LBL_PREPRESS_PRICE"]);
			$compsHtml .= $pdf->genEmptyCells(3);
			$compsHtml .= $pdf->genCells(null, false, false, true);
			
			for ($i=0; $i<count($prepressEst["prepress"]); $i++){
				
				$prepressPrice = $prepressEst["prepress"][$i]["price"]." ".$mod_strings["LBL_UNITS"];
				
				$compsHtml .= $pdf->genCells($prepressEst["prepress"][$i]["name"], true, false, false);
				$compsHtml .= $pdf->genCells($prepressEst["prepress"][$i]["count"]);
				$compsHtml .= $pdf->genCells($prepressPrice);
				$compsHtml .= $pdf->genEmptyCells(3);
				$compsHtml .= $pdf->genCells(null, false, false, true);
				
			}
			$compsHtml .= "</table>";
			
			//press			
			$compsHtml .= $pdf->createHeading($mod_strings["LBL_PRESS"]);
			$compsHtml .= $pdf->genCells($mod_strings["LBL_LOTS_NUMBER"], true, true, false);
			$compsHtml .= $pdf->genCells($mod_strings["LBL_UNITES_NUMBER"]);
			$compsHtml .= $pdf->genCells($mod_strings["LBL_RUN_STYLE"]);
			$compsHtml .= $pdf->genCells($mod_strings["LBL_QUANTITY"]);
			$compsHtml .= $pdf->genCells($mod_strings["LBL_PREPARATIONS"]);
			$compsHtml .= $pdf->genCells($mod_strings["LBL_SINGLEPRICE_SIDE_A"]);
			$compsHtml .= $pdf->genCells($mod_strings["LBL_SINGLEPRICE_SIDE_B"]);
			$compsHtml .= $pdf->genCells($mod_strings["LBL_PRICE_SIDE_A"]);
			$compsHtml .= $pdf->genCells($mod_strings["LBL_PRICE_SIDE_B"], false, false, true);
			
			for ($i=0; $i<count($pressEst["layout"]); $i++){
				$singleprice_side0 = $pressEst["layout"][$i]["singleprice_side0"]." ".$mod_strings["LBL_UNITS"];
				$singleprice_side1 = $pressEst["layout"][$i]["singleprice_side1"]." ".$mod_strings["LBL_UNITS"];
				$price_side0 = $pressEst["layout"][$i]["price_side0"]." ".$mod_strings["LBL_UNITS"];
				$price_side1 = $pressEst["layout"][$i]["price_side1"]." ".$mod_strings["LBL_UNITS"];
				$totalprice_side0 = $pressEst["total_price"]["totalprice_side0"]." ".$mod_strings["LBL_UNITS"];
				$totalprice_side1 = $pressEst["total_price"]["totalprice_side1"]." ".$mod_strings["LBL_UNITS"];
				
				$compsHtml .= $pdf->genCells($pressEst["layout"][$i]["number_lots"], true, false, false);
				$compsHtml .= $pdf->genCells($pressEst["layout"][$i]["number_units"]);
				$compsHtml .= $pdf->genCells($pressEst["layout"][$i]["run_style"]);
				$compsHtml .= $pdf->genCells($pressEst["layout"][$i]["quantity"]);
				$compsHtml .= $pdf->genCells($pressEst["layout"][$i]["preparations"]);
				$compsHtml .= $pdf->genCells($singleprice_side0);
				$compsHtml .= $pdf->genCells($singleprice_side1);
				$compsHtml .= $pdf->genCells($price_side0);
				$compsHtml .= $pdf->genCells($price_side1, false, false, true);
			}
			
			$compsHtml .= "<tr><td height=1px bgcolor=".$pdfColors["label"]." colspan=9></td></tr>";
			$compsHtml .= $pdf->genCells(null, true, false, false);
			$compsHtml .= $pdf->genEmptyCells(6);
			$compsHtml .= $pdf->genCells($totalprice_side0);
			$compsHtml .= $pdf->genCells($totalprice_side1, false, false, true);
			$compsHtml .= "</table>";
			
			//operations
			$compsHtml .= $pdf->createHeading($mod_strings["LBL_OPERATIONS_ESTIMATE"]);
			$compsHtml .= $pdf->genCells($mod_strings["LBL_OPERATION_NAME"], true, true, false);
			$compsHtml .= $pdf->genCells($mod_strings["LBL_OPERATION_SINGLEPRICE"]);
			$compsHtml .= $pdf->genCells($mod_strings["LBL_LOTS"]);
			$compsHtml .= $pdf->genCells($mod_strings["LBL_QUANTITY"]);
			$compsHtml .= $pdf->genCells($mod_strings["LBL_OPERTION_COUNT"]);
			$compsHtml .= $pdf->genCells($mod_strings["LBL_PRICE"], false, false, true);
			
			for ($i=0; $i<count($pressEst["layout"]); $i++){
				$compsHtml .= $pdf->genCells($operationsEst["operations"][$i]["name"], true, false, false);
				$compsHtml .= $pdf->genCells($operationsEst["operations"][$i]["sigle_price"]);
				$compsHtml .= $pdf->genCells($operationsEst["operations"][$i]["kol"]);
				$compsHtml .= $pdf->genCells($operationsEst["operations"][$i]["tir"]);
				$compsHtml .= $pdf->genCells($operationsEst["operations"][$i]["count"]);
				$compsHtml .= $pdf->genCells($operationsEst["operations"][$i]["price"], false, false, true);
				
				$compsHtml .= "</table>";
			}

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

//echo $compsHtml;
//echo $html_encoded;
$pdf->Output("$focus->name.pdf",'D');
?>