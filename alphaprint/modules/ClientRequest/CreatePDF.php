<?php
require_once('include/html2fpdf/html2fpdf.php');   
require_once('XTemplate/xtpl.php');
require_once('data/Tracker.php');
require_once('modules/ClientRequest/ClientRequest.php');
require_once('include/DetailView/DetailView.php');
require_once('include/database/MysqlManager.php');
require_once('modules/EstimateComponents/EstimateComponents.php');

global $mod_strings;
global $app_strings;
global $app_list_strings;
global $current_language; 

//Initializing the main object - ClientRequest
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

//Initializing the Products'object - used in the first two parts
if(!is_null($focus->product_id) && !empty($focus->product_id)){
	$product = new Products();
	$product->retrieve($focus->product_id);
	}
//Get the components' ids 
$query = "SELECT id FROM `estimates_components` WHERE parent_id='".$focus->id."' AND deleted=0 AND parent_bean = 'ClientRequest'";
$result = $focus->db->query($query,true,"Error filling layout fields: ");
	
  while ($row = $focus->db->fetchByAssoc($result))
 			$list[] = $row['id'];


//HTML2FPDF contains the functions - headerPDF, footerPDF, createHeading, createTr
$pdf = new HTML2FPDF();

//these are some shortcut variables
$created_by = $current_user;
$created_by->retrieve($focus->created_by);
$dateModified = $focus->date_modified.",".$app_strings["LBL_BY"].",".$created_by->user_name;

$modified_by = $current_user;
$modified_by->retrieve($focus->modified_user_id);
$dateEntered = $focus->date_entered.",".$app_strings["LBL_BY"].",".$modified_by->user_name;	

$periodic = $app_list_strings['clientrequest_samples_options'][$focus->periodic];
$samples = $app_list_strings['clientrequest_samples_options'][$focus->samples];
$description = nl2br(url2html($focus->description));

//begin the Body's html creation (the Header and Footer are called later)
$bodyHtml .= $pdf->sectionHeading($mod_strings["LBL_MODULE_NAME"], $focus->name, $focus->pnum);

$bodyHtml .= $pdf->createHeading($mod_strings["LBL_PRODUCT_INFORMATION"]);
$bodyHtml .= $pdf->createTr(false, $mod_strings["LBL_CODE"], $product->pnum, $mod_strings["LBL_ACCOUNT_NAME"], $product->account_name);
$bodyHtml .= $pdf->createTr(true, $mod_strings["LBL_NAME"], $product->name, $mod_strings["LBL_CONTACT_NAME"], $product->contact_name);

$bodyHtml .= $pdf->createHeading($mod_strings["LBL_REQUEST_INFORMATION"]);
$bodyHtml .= $pdf->createTr(false, $mod_strings["LBL_ASSIGNED_USER_ID"], $focus->assigned_user_name, $mod_strings["LBL_DUE_DATE"], $focus->due_date);
$bodyHtml .= $pdf->createTr(true, $mod_strings["LBL_DATE_ENTERED"], $dateEntered, $mod_strings["LBL_DATE_MODIFIED"], $dateModified);

$bodyHtml .= $pdf->createHeading($mod_strings["LBL_GENERAL"]);
$bodyHtml .= $pdf->createTr(false, $mod_strings["LBL_QUANTITY"], $focus->quantity, $mod_strings["LBL_PERIODIC"], $periodic);
$bodyHtml .= $pdf->createTr(false, $mod_strings["LBL_FILES"], $focus->files, $mod_strings["LBL_SAMPLES"], $samples);
$bodyHtml .= $pdf->createTr(true, $mod_strings["LBL_SPECIAL_REQUIREMENTS"], $focus->special_requirements, $mod_strings["LBL_DESCRIPTION"], $description);

$bodyHtml .= $pdf->createHeading($mod_strings["LBL_OPERATIONS"]);
$bodyHtml .= $pdf->createTr(true, $mod_strings["LBL_OPERATIONS_DESCRIPTION"], $focus->operation_description);

$bodyHtml .= $pdf->createHeading($mod_strings["LBL_OTHERS"]);
$bodyHtml .= $pdf->createTr(true, $mod_strings["LBL_TRANSPORT"], $focus->transport, $mod_strings["LBL_PACK"], $focus->pack);

//Initializing of EstimateComponents object needs to be done for every record 
for ($i = 0; $i < count($list); $i++) {
	$RqComps = new EstimateComponents;
	$RqComps->retrieve($list[$i]);
	
	//get the $mod_strings from EstimateComponents module 
	$mod_strings = return_module_language($current_language, "EstimateComponents");
	
	//shortcut variables
	$format = $RqComps->fsize_h."x".$RqComps->fsize_w;
	$runFormat = $RqComps->run_size_x."x".$RqComps->run_size_y;
	$bleed = $RqComps->bleed_size_x."x".$RqComps->bleed_size_y;
	$baseFormat = $RqComps->base_x."x".$RqComps->base_y;
	
	$compsHtml .= "<br />";
	$compsHtml .= $mod_strings["LBL_COMPONENT_NUMBER_PDF"]." <font color=".$pdfColors["headerFld"].">" .$RqComps->number."</font></center>";
	$compsHtml .= "<br />";
	
	$compsHtml .= $pdf->createHeading($mod_strings["LBL_GENERAL"]);
	$compsHtml .= $pdf->createTr(false, $mod_strings["LBL_NUMBER"], $RqComps->number, $mod_strings["LBL_QUANTITY"], $RqComps->quantity);
	$compsHtml .= $pdf->createTr(false, $mod_strings["LBL_VOLUME"], $RqComps->volume);
	$compsHtml .= $pdf->createTr(true, $mod_strings["LBL_DESCRIPTION"], $RqComps->description);
	
	$compsHtml .= $pdf->createHeading($mod_strings["LBL_COMPONENT_FORMATS"]);
	$compsHtml .= $pdf->createTr(false, $mod_strings["LBL_FORMAT"], $format, $mod_strings["LBL_RUN_FORMAT"], $runFormat);
	$compsHtml .= $pdf->createTr(false, $mod_strings["LBL_VOLUME"], $bleed);
	$compsHtml .= $pdf->createTr(true, $mod_strings["LBL_FORMAT_DESCRIPTION"], $RqComps->format_description);
	
	$compsHtml .= $pdf->createHeading($mod_strings["LBL_COMPONENT_PAPER"]);
	$compsHtml .= $pdf->createTr(false, $mod_strings["LBL_PAPER_DESCRIPTION"], $RqComps->paper_description);
	$compsHtml .= $pdf->createTr(false, $mod_strings["LBL_PAPER_TYPE_DESCRIPTION"], $RqComps->paper_type);
	$compsHtml .= $pdf->createTr(false, $mod_strings["LBL_FORMAT"], $baseFormat, $mod_strings["LBL_BASE_FORMAT"], $baseFormat);
	$compsHtml .= $pdf->createTr(true, $mod_strings["LBL_PAPER_SUPPLIER_DESCRIPTION"], $RqComps->paper_supplier_description, $mod_strings["LBL_CLIENT_PAPER"], $RqComps->client_paper);
	
	$compsHtml .= $pdf->createHeading($mod_strings["LBL_COMPONENT_FORMATS"]);
	$compsHtml .= $pdf->createTr(false, $mod_strings["LBL_COLOR_SIDE_A_DESCRIPTION"], $RqComps->colors_a);
	$compsHtml .= $pdf->createTr(true, $mod_strings["LBL_COLOR_SIDE_B_DESCRIPTION"], $RqComps->colors_b);
	
	$compsHtml .= $pdf->createHeading($mod_strings["LBL_COMPONENT_OPERATIONS"]);
	$compsHtml .= $pdf->createTr(true, $mod_strings["LBL_OPERATIONS_DESCRIPTION"], $RqComps->operations);
	}

$bodyHtml .= $pdf->sectionHeading($mod_strings["LBL_COMPONENTS_PDF_TITLE"], $RqComps->name, $RqComps->number);

$xtpl=new XTemplate ("modules/$currentModule/CreatePDF.html");

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