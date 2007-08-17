<?php
/*****************************************************************************
 * The contents of this file are subject to the RECIPROCAL PUBLIC LICENSE
 * Version 1.1 ("License"); You may not use this file except in compliance
 * with the License. You may obtain a copy of the License at
 * http://opensource.org/licenses/rpl.php. Software distributed under the
 * License is distributed on an "AS IS" basis, WITHOUT WARRANTY OF ANY KIND,
 * either express or implied.
 *
 * You may:
 * a) Use and distribute this code exactly as you received without payment or
 *    a royalty or other fee.
 * b) Create extensions for this code, provided that you make the extensions
 *    publicly available and document your modifications clearly.
 * c) Charge for a fee for warranty or support or for accepting liability
 *    obligations for your customers.
 *
 * You may NOT:
 * a) Charge for the use of the original code or extensions, including in
 *    electronic distribution models, such as ASP (Application Service
 *    Provider).
 * b) Charge for the original source code or your extensions other than a
 *    nominal fee to cover distribution costs where such distribution
 *    involves PHYSICAL media.
 * c) Modify or delete any pre-existing copyright notices, change notices,
 *    or License text in the Licensed Software
 * d) Assert any patent claims against the Licensor or Contributors, or
 *    which would in any way restrict the ability of any third party to use the
 *    Licensed Software.
 *
 * You must:
 * a) Document any modifications you make to this code including the nature of
 *    the change, the authors of the change, and the date of the change.
 * b) Make the source code for any extensions you deploy available via an
 *    Electronic Distribution Mechanism such as FTP or HTTP download.
 * c) Notify the licensor of the availability of source code to your extensions
 *    and include instructions on how to acquire the source code and updates.
 * d) Grant Licensor a world-wide, non-exclusive, royalty-free license to use,
 *    reproduce, perform, modify, sublicense, and distribute your extensions.
 *
 * The Original Code is: C3CRM Team
 *                       http://www.c3crm.com
 *                       2006-5-19 
 *
 * The Initial Developer of the Original Code is C3CRM Team.
 * Portions created by C3CRM are Copyright (C) 2005 C3CRM
 * All Rights Reserved.
 * Contributors: Goodwill Consulting http://www.goodwill.co.id
 ********************************************************************************/

require_once('XTemplate/xtpl.php');
require_once('data/Tracker.php');
require_once('modules/Quotes/Quote.php');
require_once('modules/Quotes/Forms.php');
require_once('include/JSON.php');


global $app_strings;
global $app_list_strings;
global $mod_strings;
global $current_user;

$focus = new Quote();

if(isset($_REQUEST['record'])) {
    $focus->retrieve($_REQUEST['record']);
}
if(isset($_REQUEST['isDuplicate']) && $_REQUEST['isDuplicate'] == 'true') {
	$focus->id = "";
}
echo "\n<p>\n";
echo get_module_title($mod_strings['LBL_MODULE_NAME'], $mod_strings['LBL_MODULE_NAME'].": ".$focus->name, true);
echo "\n</p>\n";
global $theme;
$theme_path="themes/".$theme."/";
$image_path=$theme_path."images/";
require_once($theme_path.'layout_utils.php');

$log->info("Quote detail view");

$xtpl=new XTemplate ('modules/Quotes/EditView.html');
$xtpl->assign("MOD", $mod_strings);
$xtpl->assign("APP", $app_strings);

//////////////////////////////////////
///

/// Users Popup
$json = new JSON(JSON_LOOSE_TYPE);
$popup_request_data = array(
	'call_back_function' => 'set_return',
	'form_name' => 'EditView',
	'field_to_name_array' => array(
		'id' => 'assigned_user_id',
		'name' => 'assigned_user_name',
		),
	);
$xtpl->assign('encoded_users_popup_request_data', $json->encode($popup_request_data));


/// SETUP OPPORTUNITY POPUP

$popup_opportunity_request_data = array(
	'call_back_function' => 'set_return',
	'form_name' => 'EditView',
	'field_to_name_array' => array(
		'id' => 'opportunity_id',
		'name' => 'opportunity_name',
		),
	);

$encoded_opportunity_popup_request_data = $json->encode($popup_opportunity_request_data);
$xtpl->assign('encoded_opportunity_popup_request_data', $encoded_opportunity_popup_request_data);

//////////////////////////////////////
///
/// SETUP ACCOUNT POPUP

$popup_company_request_data = array(
	'call_back_function' => 'set_return',
	'form_name' => 'EditView',
	'field_to_name_array' => array(
		'id' => 'account_id',
		'name' => 'account_name',
		'billing_address_country' => 'billtocountry',
		'billing_address_state' => 'billtostate',
		'billing_address_city' => 'billtocity',
		'billing_address_street' => 'billtoaddress',		
		'billing_address_postalcode' => 'billpostalcode',
		
		),
	);

$encoded_company_popup_request_data = $json->encode($popup_company_request_data);
$xtpl->assign('encoded_company_popup_request_data', $encoded_company_popup_request_data);

//////////////////////////////////////
///
/// SETUP CONTACT POPUP

$popup_contact_request_data = array(
	'call_back_function' => 'set_return',
	'form_name' => 'EditView',
	'field_to_name_array' => array(
		'id' => 'billtocontactid',
		'name' => 'billtocontactname',
		),
	);

$encoded_contact_popup_request_data = $json->encode($popup_contact_request_data);
$xtpl->assign('encoded_contact_popup_request_data', $encoded_contact_popup_request_data);


//default value passed in
if (isset($_REQUEST['account_name']) && is_null($focus->account_name)) {
	$focus->account_name = $_REQUEST['account_name'];
}
if (isset($_REQUEST['account_id']) && is_null($focus->account_id)) {
	$focus->account_id = $_REQUEST['account_id'];
}

if (isset($_REQUEST['return_module'])){
	$xtpl->assign("RETURN_MODULE", $_REQUEST['return_module']);
}else{
	$xtpl->assign("RETURN_MODULE", 'Quotes');
}
if (isset($_REQUEST['return_action'])){
	 $xtpl->assign("RETURN_ACTION", $_REQUEST['return_action']);
}else{
	 $xtpl->assign("RETURN_ACTION",'index');
}
if (isset($_REQUEST['return_id'])) {
	$xtpl->assign("RETURN_ID", $_REQUEST['return_id']);
}else if(!empty($_REQUEST['record'])){
	$xtpl->assign("RETURN_ID", $_REQUEST['record']);
}
//when create without save, click save.
if (empty($_REQUEST['return_id'])) {
	$xtpl->assign("RETURN_ACTION", 'index');
}
	
	
if(!empty($xtpl_data['STATUS']) && $xtpl_data['STATUS'] > 0){
	$xtpl_data['STATUS_CHECKED'] = 	'checked';	
}

$xtpl->assign("JAVASCRIPT", get_set_focus_js().get_validate_record_js());
$xtpl->assign("JAVASCRIPT_PRODUCT", get_product_js());
$xtpl->assign("THEME", $theme);
$xtpl_data = $focus->get_xtemplate_data();
$xtpl->assign("BILLTOCITY", get_select_options_with_id($app_list_strings['city_dom'], $focus->billtocity));
$xtpl->assign("BILLTOSTATE", get_select_options_with_id($app_list_strings['state_dom'], $focus->billtostate));
$xtpl->assign("BILLTOCOUNTRY", get_select_options_with_id($app_list_strings['country_dom'], $focus->billtocountry));
$xtpl->assign("PAYMENT_TERM", get_select_options_with_id($app_list_strings['payment_terms'], $focus->payment_term));
$xtpl->assign("SHIPPING_TERM", get_select_options_with_id($app_list_strings['shipping_term_dom'], $focus->shipping_term));
$xtpl->assign("PAYMENT_METHOD", get_select_options_with_id($app_list_strings['payment_method_dom'], $focus->payment_method));
global $current_user;

if ((!$focus->num_pref) && (!$focus->quotenum)){
    $ppref = 'QTE';
    $pnumber = $focus->generate_number();
    $xtpl->assign('num_pref', $ppref);
    $xtpl->assign('num_suf', $pnumber);
}
else {
$xtpl->assign('num_pref', $focus->num_pref);
$xtpl->assign('num_suf', $focus->num_suf);    
}

require_once('modules/Currencies/ListCurrency.php');
$currency = new ListCurrency();
if(isset($focus->currency_id) && !empty($focus->currency_id)){
	$selectCurrency = $currency->getSelectOptions($focus->currency_id);
	$xtpl->assign("CURRENCY", $selectCurrency);
}
else if($current_user->getPreference('currency') && !isset($focus->id))
{
	$selectCurrency = $currency->getSelectOptions($current_user->getPreference('currency'));
	$xtpl->assign("CURRENCY", $selectCurrency);
}else{

	$selectCurrency = $currency->getSelectOptions();
	$xtpl->assign("CURRENCY", $selectCurrency);
}

$productrows = $focus->getProductRows();
if(count($productrows) == 0)
{
	$xtpl->assign("PRODUCTROWS",$focus->getProductRow(new QuoteLine(),0,true));
	$xtpl->parse("main.row1");		
}
for ($i=0;$i<count($productrows);$i++) {
	    $fieldcount = count($productrows[$i]);
		$xtpl->assign("PRODUCTROWS",$focus->getProductRow($productrows[$i],$i, true, false));
		$xtpl->parse("main.row1");		
}
$xtpl->assign('PRODUCTCOUNT',count($productrows));
$xtpl->assign('Quote', $xtpl_data);
$timedate = new TimeDate();
$xtpl->assign("CALENDAR_DATEFORMAT", $timedate->get_cal_date_format());
$xtpl->assign("USER_DATE_FORMAT", $timedate->get_user_date_format());
$xtpl->assign("STAGE_OPTIONS", get_select_options_with_id($app_list_strings['quote_stage_dom'], $focus->stage));

if (empty($focus->id))  $focus->assigned_user_id = $current_user->id;

if (empty($focus->id))  $focus->assigned_user_name = $current_user->user_name;
$xtpl->assign("ASSIGNED_USER_NAME", $focus->assigned_user_name);
$xtpl->assign("ASSIGNED_USER_ID", $focus->assigned_user_id );
$xtpl->assign("ASSIGNED_USER_OPTIONS", get_select_options_with_id(get_user_array(TRUE, "Active", $focus->assigned_user_id), $focus->assigned_user_id));
echo $currency->getJavascript(); 
$xtpl->parse("main");

$xtpl->out("main");
require_once('include/javascript/javascript.php');
$javascript = new javascript();
$javascript->setFormName('EditView');
$javascript->setSugarBean($focus);
$javascript->addAllFields('');

echo $javascript->getScript();
 


?>