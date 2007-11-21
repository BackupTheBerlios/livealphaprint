<?php
require_once('include/html2fpdf/html2fpdf.php');   
require_once('XTemplate/xtpl.php');
require_once('data/Tracker.php');
require_once('modules/EstimateCalc/EstimateCalc.php');
require_once('include/DetailView/DetailView.php');
require_once('include/database/MysqlManager.php');
//require_once('modules/EstimateComponents/EstimateComponents.php');

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
$bodyHtml .= $focus->component_estimate_details_pdf();
//$bodyHtml .= "<newpage>";

//Prepress
	$bodyHtml .= $pdf->createHeading($mod_strings["LBL_COMPONENT_PREPRESS"]);
	$bodyHtml .= "	<tr bgcolor=".$pdfColors["label"]." >
						<td><font size=".$pdfFontSize["default"].">".$mod_strings["LBL_PREPRESS_NAME"]."</font></td>
						<td><font size=".$pdfFontSize["default"].">".$mod_strings["LBL_TYPE"]."</font></td>
					    <td><font size=".$pdfFontSize["default"].">".$mod_strings["LBL_PREPRESS_FORMAT"]."</font></td>
					    <td><font size=".$pdfFontSize["default"].">".$mod_strings["LBL_PREPRESS_GAUGE"]."</font></td>
					    <td><font size=".$pdfFontSize["default"].">".$mod_strings["LBL_SIDE"]."</font></td>
					    <td><font size=".$pdfFontSize["default"].">".$mod_strings["LBL_PREPRESS_COUNT"]."</font></td>
					</tr><tr><td height=1px bgcolor=#fff colspan=3></td></tr>"; 	
		
		$prepress_rows = $focus->getPrepressRows();
		for ($i = 0; $i < count($prepress_rows); $i++)
			$bodyHtml .= $focus->getPrepressRowPdf($prepress_rows[$i],$i);
	
	$bodyHtml .= "</table>";
	





$xtpl=new XTemplate ("CreatePDF.html");

$xtpl->assign("HEADER", $pdf->headerPDF());
$xtpl->assign("BODY", $bodyHtml);
//$xtpl->assign("ROWS", $pdf->CompRows($listRows));
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
$pdf->Output("$focus->name.pdf",'D');
?>