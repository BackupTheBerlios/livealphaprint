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
require_once('modules/Paper/Paper.php');
require_once('modules/Paper/Forms.php');
require_once('include/JSON.php');
require_once('modules/Paperformat/Paperformat.php');

global $app_strings;
global $app_list_strings;
global $mod_strings;
global $current_user;

$focus = new Paper();

$format = new Paperformat();
if(isset($_REQUEST['record'])) {
    $focus->retrieve($_REQUEST['record']);
}
if(isset($_REQUEST['isDuplicate']) && $_REQUEST['isDuplicate'] == 'true') {
	$focus->id = "";
}
echo "\n<p>\n";
echo get_module_title($mod_strings['LBL_MODULE_NAME'], $mod_strings['LBL_MODULE_NAME'].": ".$focus->fname, true);
echo "\n</p>\n";
global $theme;
$theme_path="themes/".$theme."/";
$image_path=$theme_path."images/";
require_once($theme_path.'layout_utils.php');

$log->info("Paper detail view");

$xtpl=new XTemplate ('modules/Paper/EditView.html');
$xtpl->assign("MOD", $mod_strings);
$xtpl->assign("APP", $app_strings);


//////////////////////////////////////
///
/// SETUP ACCOUNT POPUP

/*$popup_request_data = array(
	'call_back_function' => 'set_return',
	'form_name' => 'EditView',
	'field_to_name_array' => array(
		'id' => 'manufacturerid',
		'name' => 'account_name',
		),
	);
*/

$json = new JSON(JSON_LOOSE_TYPE);
//$encoded_popup_request_data = $json->encode($popup_request_data);
//$xtpl->assign('encoded_popup_request_data', $encoded_popup_request_data);



if (isset($_REQUEST['return_module'])){
	$xtpl->assign("RETURN_MODULE", $_REQUEST['return_module']);
}else{
	$xtpl->assign("RETURN_MODULE", 'Paper');
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
}else if (empty($_REQUEST['return_id'])) {
	$xtpl->assign("RETURN_ACTION", 'index');	//when create product.
}
//Goodwill - new record is active by default
if((!empty($xtpl_data['ACTIVE']) && $xtpl_data['ACTIVE'] == 'on'))
{
	$xtpl->assign('ACTIVE','checked');	
}

$xtpl->assign($xtpl_data['SIZE_H'],'SIZE_H');	
$xtpl->assign($xtpl_data['SIZE_W'],'SIZE_W');	
$xtpl->assign($xtpl_data['FORMAT_ID'],'format_id');	
//End Goodwill

/*$popup_request_data = array(
	'call_back_function' => 'set_return',
	'form_name' => 'EditView',
	'field_to_name_array' => array(
		'id' => 'assigned_user_id',
		'name' => 'assigned_user_name',
		),
	); 
$xtpl->assign('encoded_users_popup_request_data', $json->encode($popup_request_data));
*/
$popup_request_data = array(
	'call_back_function' => 'set_return',
	'form_name' => 'EditView',
	'field_to_name_array' => array(
		'id' => 'pref_supplier_id',
		'name' => 'pref_supplier_name',
		),
	);
$xtpl->assign('encoded_supplier_popup_request_data', $json->encode($popup_request_data));




$xtpl->assign("USER_DATEFORMAT", '('.$timedate->get_user_date_format().')');
$xtpl->assign("CALENDAR_DATEFORMAT", $timedate->get_cal_date_format());

$xtpl->assign("THEME", $theme);

require_once('include/QuickSearchDefaults.php');
//Goodwill
	$qsd = new QuickSearchDefaults();
	$sqs_objects = array( 'man' => $qsd->getQSMan(),  //publish filed list
                          'assigned_user_name' => $qsd->getQSUser());
	$quicksearch_js = $qsd->getQSScripts();
//End Goodwill	
$quicksearch_js .= '<script type="text/javascript" language="javascript">sqs_objects = ' . $json->encode($sqs_objects) . '</script>';

$xtpl->assign("JAVASCRIPT", get_set_focus_js().get_sizeformat_js() . $quicksearch_js);
$xtpl_data = $focus->get_xtemplate_data();
$xtpl->assign('Paper', $xtpl_data);

//BEGIN Paper Dropdowns
//$xtpl->assign("SIZE_UNIT", get_select_options_with_id($app_list_strings['paper_size_unit_dom'], $focus->size_unit));
//$xtpl->assign("WEIGHT_UNIT", get_select_options_with_id($app_list_strings['paper_weight_unit_dom'], $focus->weight_unit));
//$xtpl->assign("CHROME_OPTIONS", get_select_options_with_id($app_list_strings['paper_chrome_dom'], $focus->chrome));
//$xtpl->assign("TEXTURE_OPTIONS", get_select_options_with_id($app_list_strings['paper_texture_dom'], $focus->texture));
//$xtpl->assign("ABSORBTION_OPTIONS", get_select_options_with_id($app_list_strings['paper_absorption_dom'], $focus->absorbtion));
//$xtpl->assign("COLOR_OPTIONS", get_select_options_with_id($app_list_strings['paper_color_dom'], $focus->color));
//$xtpl->assign("SIDE_OPTIONS", get_select_options_with_id($app_list_strings['paper_side_dom'], $focus->side));
//$xtpl->assign("FORMAT_OPTIONS", get_select_options_with_id($app_list_strings['products_format_options'], $focus->format));

$app_list_strings['products_format_options'] = $format->Get_Dropdown_Data();   
$xtpl->assign("FORMAT_OPTIONS", get_select_options_with_id($app_list_strings['products_format_options'], $focus->format));


if(!empty($focus->active) && $focus->active == 'on')
{
	$xtpl->assign('active_checked', 'checked="checked"');
}

//$xtpl->assign("MANUFACTURE_OPTIONS", get_select_options_with_id($app_list_strings['paper_manufacture_dom'], $focus->account_name));
$xtpl->assign("QUALITY_OPTIONS", get_select_options_with_id($app_list_strings['paper_quality_dom'], $focus->quality));
//END Paper Dropdowns
$xtpl->assign("MANUFACTURER", $focus->man);
if(isset($_REQUEST['manufacturer'])) $xtpl->assign("MANUFACTURER", urldecode($_REQUEST['man']));
 
//Goodwill
if(!empty($xtpl_data['IS_ACTIVE']) && $xtpl_data['IS_ACTIVE'] > 0){$xtpl->assign('IS_ACTIVE', "CHECKED");}
//$xtpl->assign("STATUS", get_select_options_with_id($app_list_strings['paper_status_dom'], $focus->status));
//End Goodwill
//changed by dingjianting on 2006-1-16 for bug#0000076	
//if (empty($focus->assigned_user_id) && empty($focus->id))  $focus->assigned_user_id = $current_user->id;
if (empty($focus->id))  $focus->assigned_user_id = $current_user->id;
//if (empty($focus->assigned_name) && empty($focus->id))  $focus->assigned_user_name = $current_user->user_name;
//if (empty($focus->id))  $focus->assigned_user_name = $current_user->user_name;
//$xtpl->assign("ASSIGNED_USER_NAME", $focus->assigned_user_name);
//$xtpl->assign("ASSIGNED_USER_ID", $focus->assigned_user_id );
//$xtpl->assign("TEXT_OR_HIDDEN","text");
$xtpl->parse("main.format");
$xtpl->parse("main");

$xtpl->out("main");
require_once('include/javascript/javascript.php');
$javascript = new javascript();
$javascript->setFormName('EditView');
$javascript->setSugarBean($focus);
$javascript->addAllFields('');
echo $javascript->getScript();
?>