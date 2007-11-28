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
$focus = new EstimateCalc();

// only load a record if a record id is given;
// a record id is not given when viewing in layout editor
$detailView = new DetailView();
$offset=0;
if (isset($_REQUEST['offset']) or isset($_REQUEST['record'])) {
	$result = $detailView->processSugarBean("ESTIMATECALC", $focus, $offset);
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

//begin the Body's html creation (the Header and Footer are called later)
$bodyHtml .= $pdf->sectionHeading($mod_strings["LBL_MODULE_NAME"], $focus->name);

$bodyHtml .= $pdf->createHeading();
$bodyHtml .= $pdf->createTr(false, $mod_strings["LBL_NAME"], $focus->name, $mod_strings["LBL_ASSIGNED_USER_ID"], $focus->assigned_user_name);
$bodyHtml .= $pdf->createTr(false, $mod_strings["LBL_ESTIMATE_NAME"], $focus->estimate_name, $mod_strings["LBL_STATUS"], $focus->status);
$bodyHtml .= $pdf->createTr(false, $mod_strings["LBL_ESTIMATE_TOTAL"], $total, $mod_strings["LBL_DESCRIPTION"], nl2br(url2html($focus->description)));
$bodyHtml .= $pdf->createTr(false, $mod_strings["LBL_PAPER_ESTIMATE"], $total_paper, $mod_strings["LBL_PREPRESS_ESTIMATE"], $total_prepress);
$bodyHtml .= $pdf->createTr(true, $mod_strings["LBL_PRESS_ESTIMATE"], $total_press, $mod_strings["LBL_OPERATIONS_ESTIMATE"], $total_operations);

$bodyHtml .= $pdf->createHeading();
$bodyHtml .= $focus->component_estimate_pdf();
$bodyHtml .= "<newpage>";

////

////

//Prepress
$CompEstCalc = new ComponentEstimateCalc;
$query = 'SELECT component_id FROM '.$CompEstCalc->table_name.' WHERE estimate_id="'.$focus->estimate_id.'" AND deleted=0 ';
    	$result = $focus->db->query($query,true,"Error filling layout fields: ");
    	$i=0;
    	while (($row = $focus->db->fetchByAssoc($result)) != null) {
    		$i++;
    		$CompEstCalc->retrieve($row['id']);
    		
    		$paperEst = $CompEstCalc->paperEstimate($row['component_id'], null, false, true);
			$pressEst = $CompEstCalc->pressEstimate($row['component_id'], null, false, true);
			$operationsEst = $CompEstCalc->operationsEstimate($row['component_id'], false, true);
			$prepressEst = $CompEstCalc->prepressEstimate($row['component_id'], false, true);
			
			$mod_strings_cec = return_module_language($current_language, "ComponentEstimateCalc");
			$compsHtml = "";
			$compsHtml .= $pdf->sectionHeading($mod_strings["LBL_EST_PDF"]);
			
				//shortcuts
				$singlePrice = $paperEst["paper_singleprice"]." ".$mod_strings["LBL_UNITS"];
				$paperPrice = $paperEst["total_paper_price"]." ".$mod_strings["LBL_UNITS"];
			
			//paper
			$compsHtml .= $pdf->createHeading($mod_strings_cec["LBL_PAPER"]);
			$compsHtml .= $pdf->genCells($mod_strings_cec["LBL_CLEAN_QTY_QP"], true, true, false);
			$compsHtml .= $pdf->genCells($mod_strings_cec["LBL_PAPERWOST_QP"]);
			$compsHtml .= $pdf->genCells($mod_strings_cec["LBL_QP"]);
			$compsHtml .= $pdf->genCells($mod_strings_cec["LBL_SHETS_QP"]);
			$compsHtml .= $pdf->genCells($mod_strings_cec["LBL_PAGES"]);
			$compsHtml .= $pdf->genCells($mod_strings_cec["LBL_PAPER_SINGLE_PRICE"]);
			$compsHtml .= $pdf->genCells($mod_strings_cec["LBL_PAPER_TOTAL"]);
			$compsHtml .= $pdf->genCells($mod_strings_cec["LBL_PAPER_FROM_CLIENT"], false, false, true);
			
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
			$compsHtml .= $pdf->createHeading($mod_strings_cec["LBL_PAPER_WOST"]);
			$compsHtml .= $pdf->genCells($mod_strings_cec["LBL_LOTS_NUMBER"], true, true, false);
			$compsHtml .= $pdf->genCells($mod_strings_cec["LBL_UNITES_NUMBER"]);
			$compsHtml .= $pdf->genCells($mod_strings_cec["LBL_RUN_STYLE"]);
			$compsHtml .= $pdf->genCells($mod_strings_cec["LBL_QUANTITY"]);
			$compsHtml .= $pdf->genCells($mod_strings_cec["LBL_CLEAN_QTY_QP"]);
			$compsHtml .= $pdf->genCells($mod_strings_cec["LBL_PAPER_PRESSWASTE_QP"], false, false, true);
			
			for ($j=0; $j<count($paperEst["layout"]); $j++){
			
				$compsHtml .= $pdf->genCells($paperEst["layout"][$j]["lots_number"], true, false, false);
				$compsHtml .= $pdf->genCells($paperEst["layout"][$j]["unites_number"]);
				$compsHtml .= $pdf->genCells($paperEst["layout"][$j]["run_style"]);
				$compsHtml .= $pdf->genCells($paperEst["layout"][$j]["qunatity"]);
				$compsHtml .= $pdf->genCells($paperEst["layout"][$j]["clean_quantity_qp"]);
				$compsHtml .= $pdf->genCells($paperEst["layout"][$j]["presswaste"], false, false, true);
			}
			
			$compsHtml .= "<tr><td height=1px bgcolor=".$pdfColors["label"]." colspan=6></td></tr>";
			$compsHtml .= $pdf->genCells(null, true, false, false);
			$compsHtml .= $pdf->genEmptyCells(3);
			$compsHtml .= $pdf->genCells($paperEst["subtotal"]["clean_quantity_qp"]);
			$compsHtml .= $pdf->genCells($paperEst["subtotal"]["presswaste_amount"], false, false, true);
			$compsHtml .= "<tr><td height=1px bgcolor=#fff colspan=6></td></tr>";
			$compsHtml .= "<tr><td bgcolor=".$pdfColors["label"]." ><font size=".$pdfFontSize["default"].">".$mod_strings_cec["LBL_OPERATION_WASTE"]."</font></td>";
			$compsHtml .= "<td colspan=5 bgcolor=".$pdfColors["field"]." ><font size=".$pdfFontSize["default"].">".$paperEst["operationwaste"]."</font></td></tr>";
			$compsHtml .= "</table>";
			
			//pre-press
			$compsHtml .= $pdf->createHeading($mod_strings_cec["LBL_PREPRESS_ESTIMATE"]);
			$compsHtml .= $pdf->genCells($mod_strings_cec["LBL_PREPRESS_NAME"], true, true, false);
			$compsHtml .= $pdf->genCells($mod_strings_cec["LBL_PREPRESS_COUNT"]);
			$compsHtml .= $pdf->genCells($mod_strings_cec["LBL_PREPRESS_PRICE"]);
			$compsHtml .= $pdf->genEmptyCells(3);
			$compsHtml .= $pdf->genCells(null, false, false, true);
			
			for ($j=0; $j<count($prepressEst["prepress"]); $j++){
				
				$prepressPrice = $prepressEst["prepress"][$j]["price"]." ".$mod_strings["LBL_UNITS"];
				
				$compsHtml .= $pdf->genCells($prepressEst["prepress"][$j]["name"], true, false, false);
				$compsHtml .= $pdf->genCells($prepressEst["prepress"][$j]["count"]);
				$compsHtml .= $pdf->genCells($prepressPrice);
				$compsHtml .= $pdf->genEmptyCells(3);
				$compsHtml .= $pdf->genCells(null, false, false, true);
				
			}
			
			
			$compsHtml .= "</table>";
			
			//press			
			$compsHtml .= $pdf->createHeading($mod_strings_cec["LBL_PRESS"]);
			$compsHtml .= $pdf->genCells($mod_strings_cec["LBL_LOTS_NUMBER"], true, true, false);
			$compsHtml .= $pdf->genCells($mod_strings_cec["LBL_UNITES_NUMBER"]);
			$compsHtml .= $pdf->genCells($mod_strings_cec["LBL_RUN_STYLE"]);
			$compsHtml .= $pdf->genCells($mod_strings_cec["LBL_QUANTITY"]);
			$compsHtml .= $pdf->genCells($mod_strings_cec["LBL_PREPARATIONS"]);
			$compsHtml .= $pdf->genCells($mod_strings_cec["LBL_SINGLEPRICE_SIDE_A"]);
			$compsHtml .= $pdf->genCells($mod_strings_cec["LBL_SINGLEPRICE_SIDE_B"]);
			$compsHtml .= $pdf->genCells($mod_strings_cec["LBL_PRICE_SIDE_A"]);
			$compsHtml .= $pdf->genCells($mod_strings_cec["LBL_PRICE_SIDE_B"], false, false, true);
			
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
			$compsHtml .= $pdf->createHeading($mod_strings_cec["LBL_OPERATIONS_ESTIMATE"]);
			$compsHtml .= $pdf->genCells($mod_strings_cec["LBL_OPERATION_NAME"], true, true, false);
			$compsHtml .= $pdf->genCells($mod_strings_cec["LBL_OPERATION_SINGLEPRICE"]);
			$compsHtml .= $pdf->genCells($mod_strings_cec["LBL_LOTS"]);
			$compsHtml .= $pdf->genCells($mod_strings_cec["LBL_QUANTITY"]);
			$compsHtml .= $pdf->genCells($mod_strings_cec["LBL_OPERTION_COUNT"]);
			$compsHtml .= $pdf->genCells($mod_strings_cec["LBL_PRICE"], false, false, true);
			
			for ($i=0; $i<count($pressEst["layout"]); $i++){
				$compsHtml .= $pdf->genCells($operationsEst["operations"][$i]["name"], true, false, false);
				$compsHtml .= $pdf->genCells($operationsEst["operations"][$i]["sigle_price"]);
				$compsHtml .= $pdf->genCells($operationsEst["operations"][$i]["kol"]);
				$compsHtml .= $pdf->genCells($operationsEst["operations"][$i]["tir"]);
				$compsHtml .= $pdf->genCells($operationsEst["operations"][$i]["count"]);
				$compsHtml .= $pdf->genCells($operationsEst["operations"][$i]["price"], false, false, true);
				
				$compsHtml .= "</table>";
			}
    	}//this is the end of the while
	





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