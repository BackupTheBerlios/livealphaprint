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


$focus = new Quote();

$detailView = new DetailView();
$offset=0;
if (isset($_REQUEST['offset']) or isset($_REQUEST['record'])) {
    $result = $detailView->processSugarBean("QUOTE", $focus, $offset);
    if($result == null) {
        sugar_die("Error retrieving record.");
    }
    $focus=$result;
} else {
    header("Location: index.php?module=Quotes&action=index");
}




$xtpl=new XTemplate ('modules/Quotes/dv.html');
$xtpl->assign("MOD", $mod_strings);
$xtpl->assign("APP", $app_strings);

//Assign the company information

$datab = new MysqlManager();
$datab->connect();

$q = "SELECT logo, country, city, state, street, phone, fax, web, email FROM companyinfo";
$res =  $datab->query($q,true," Error filling in additional detail fields: " );
$r = mysql_fetch_array($res);

$xtpl->assign('CI', $r);

////////////////////

if ($current_language == "bg_bg")
{
    
    $xtpl->assign("prod_name_size","width=30%"); 
    $xtpl->assign("num_size", "width=12%"); 
    $xtpl->assign("pages_size", "width=11%"); 
    $xtpl->assign("quantity_size","width=12.5%"); 
    $xtpl->assign("est_price_size", "width=15%"); 
    $xtpl->assign("price_size","width=15%");
}

if ($current_language == "en_us")
{
    
    $xtpl->assign("prod_name_size","width=40%"); 
    $xtpl->assign("num_size", "width=11%"); 
    $xtpl->assign("pages_size", "width=10%"); 
    $xtpl->assign("quantity_size","width=10%"); 
    $xtpl->assign("est_price_size", "width=15%"); 
    $xtpl->assign("price_size","width=15%");
}

 
 
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

require_once('modules/Currencies/Currency.php');
$currency  = new Currency();
if(isset($focus->currency_id) && !empty($focus->currency_id))
{
	$currency->retrieve($focus->currency_id);
	if( $currency->deleted != 1){
		$xtpl->assign("CURRENCY", $currency->name);
	}else $xtpl->assign("CURRENCY", $currency->getDefaultCurrencyName());
}else{

	$xtpl->assign("CURRENCY", $currency->getDefaultCurrencyName());

}

$usernameid = $xtpl_data['ASSIGNED_USER_ID'];

$xtpl_data['ASSIGNED_USER_NAME'] = get_assigned_user_name($usernameid);
$xtpl->assign("Quote",$xtpl_data);
   
$pdf = new HTML2FPDF();
$pdf->DisplayPreferences('HideWindowUI');
$pdf->AddPage();
$xtpl->parse("main");
$html = $xtpl->pdf_out('main');
$html_encoded = iconv('utf-8', 'CP1251', $html);
$pdf->UseCSS(true); 
$pdf->WriteHTML($html_encoded);      
$pdf->Output('doc.pdf','D');
?>