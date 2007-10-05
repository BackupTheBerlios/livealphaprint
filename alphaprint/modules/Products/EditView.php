<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/**
 * EditView for Products
 *
 * The contents of this file are subject to the SugarCRM Public License Version
 * 1.1.3 ("License"); You may not use this file except in compliance with the
 * License. You may obtain a copy of the License at http://www.sugarcrm.com/SPL
 * Software distributed under the License is distributed on an "AS IS" basis,
 * WITHOUT WARRANTY OF ANY KIND, either express or implied.  See the License
 * for the specific language governing rights and limitations under the
 * License.
 *
 * All copies of the Covered Code must include on each user interface screen:
 *    (i) the "Powered by SugarCRM" logo and
 *    (ii) the SugarCRM copyright notice
 * in the same form as they appear in the distribution.  See full license for
 * requirements.
 *
 * The Original Code is: SugarCRM Open Source
 * The Initial Developer of the Original Code is SugarCRM, Inc.
 * Portions created by SugarCRM are Copyright (C) 2004-2006 SugarCRM, Inc.;
 * All Rights Reserved.
 * Contributor(s): ______________________________________.
 */



require_once('XTemplate/xtpl.php');
require_once('data/Tracker.php');
require_once('modules/Products/Products.php');
require_once('include/time.php');
require_once('modules/Products/Forms.php');

global $timedate;
global $app_strings;
global $app_list_strings;
global $current_language;
global $current_user;
global $sugar_version, $sugar_config;

$focus = new Products();

if(!empty($_REQUEST['record']))
{
    $focus->retrieve($_REQUEST['record']);
}

echo "\n<p>\n";
echo get_module_title($mod_strings['LBL_MODULE_NAME'], $mod_strings['LBL_MODULE_NAME'].": ".$focus->name, true);
echo "\n</p>\n";
global $theme;
$theme_path="themes/".$theme."/";
$image_path=$theme_path."images/";
require_once($theme_path.'layout_utils.php');

$GLOBALS['log']->info("Products detail view");

$xtpl=new XTemplate ('modules/Products/EditView.html');

/// Users Popup
$json = getJSONobj();
$popup_request_data = array(
	'call_back_function' => 'set_return',
	'form_name' => 'EditView',
	'field_to_name_array' => array(
		'id' => 'assigned_user_id',
		'user_name' => 'assigned_user_name',
		),
	);
$xtpl->assign('encoded_users_popup_request_data', $json->encode($popup_request_data));

///Account Popup
if(isset($_REQUEST['record'])) { // do not overwrite address info when editing an record
	$popup_request_data = array(
		'call_back_function' => 'set_return',
		'form_name' => 'EditView',
		'field_to_name_array' => array(
			'id' => 'account_id',
			'name' => 'account_name',
			),
		);
}
else { 
	$popup_request_data = array(
		'call_back_function' => 'set_return',
		'form_name' => 'EditView',
		'field_to_name_array' => array(
			'id' => 'account_id',
			'name' => 'account_name',
			/*'billing_address_street' => 'primary_address_street',
			'billing_address_city' => 'primary_address_city',
			'billing_address_state' => 'primary_address_state',
			'billing_address_postalcode' => 'primary_address_postalcode',
			'billing_address_country' => 'primary_address_country',
			'phone_office' => 'phone_work',*/
			),
		);
}

$json = getJSONobj();
$encoded_account_popup_request_data = $json->encode($popup_request_data);
$xtpl->assign('encoded_account_popup_request_data', $encoded_account_popup_request_data);

$popup_request_data = array(
		'call_back_function' => 'set_return',
		'form_name' => 'EditView',
		'field_to_name_array' => array(
			'id' => 'contact_id',
			'name' => 'contact_name',
			),
		);

$encoded_contact_popup_request_data = $json->encode($popup_request_data);
$xtpl->assign('encoded_contact_popup_request_data', $encoded_contact_popup_request_data);


$popup_request_data = array(
	'call_back_function' => 'set_return',
	'form_name' => 'EditView',
	'field_to_name_array' => array(
		'id' => 'calculant_id',
		'user_name' => 'calculant_name',
		),
	);
$xtpl->assign('encoded_calculant_popup_request_data', $json->encode($popup_request_data));
		

///
/// Assign the template variables
///

$xtpl->assign('MOD', $mod_strings);
$xtpl->assign('APP', $app_strings);
$xtpl->assign('name', $focus->name);

if (empty($focus->assigned_user_id) && empty($focus->id))  $focus->assigned_user_id = $current_user->id;
if (empty($focus->assigned_name) && empty($focus->id))  $focus->assigned_user_name = $current_user->user_name;
$xtpl->assign("ASSIGNED_USER_OPTIONS", get_select_options_with_id(get_user_array(TRUE, "Active", $focus->assigned_user_id), $focus->assigned_user_id));
$xtpl->assign("ASSIGNED_USER_NAME", $focus->assigned_user_name);
$xtpl->assign("ASSIGNED_USER_ID", $focus->assigned_user_id );

if (empty($focus->status) || is_null($focus->status)){
	$xtpl->assign('status', get_select_options_with_id($app_list_strings['product_component_status_draft'], $focus->status));
}
else{
	$xtpl->assign('status', get_select_options_with_id($app_list_strings['product_component_status_'.$focus->status], $focus->status));
}

//Assign editview fileds
$xtpl->assign("ACCOUNT_NAME", $focus->account_name);
$xtpl->assign("ACCOUNT_ID", $focus->account_id);
$xtpl->assign("CONTACT_NAME", $focus->contact_name);
$xtpl->assign("CONTACT_ID", $focus->contact_id);
$xtpl->assign('description', $focus->description);
if ((!$focus->pnum_pref) && (!$focus->pnum)){
	$ppref = 'PRD';
	$pnumber = $focus->generate_number();
	$xtpl->assign('pnum_pref', $ppref);
	$xtpl->assign('pnum_suf', $pnumber);
}
else {
$xtpl->assign('pnum_pref', $focus->pnum_pref);
$xtpl->assign('pnum_suf', $focus->pnum_suf);	
}

$xtpl->assign('note', $focus->note);
$xtpl->assign('quantity', $focus->quantity);
$xtpl->assign('fsize_h', $focus->fsize_h);
$xtpl->assign('fsize_w', $focus->fsize_w);
$xtpl->assign('volume', $focus->volume);
$xtpl->assign('samples', $focus->samples);
$xtpl->assign('file', $focus->file);
$xtpl->assign("SAMPLES_OPTIONS", get_select_options_with_id($app_list_strings['product_samples_dom'], $focus->samples));
$xtpl->assign("FILE_OPTIONS", get_select_options_with_id($app_list_strings['product_file_dom'], $focus->file));
$xtpl->assign("CATEGORY_OPTIONS", get_select_options_with_id($app_list_strings['products_category_options'], $focus->category));
$xtpl->assign("PERIOD_OPTIONS", get_select_options_with_id($app_list_strings['products_period_options'], $focus->period));
$xtpl->assign("FORMAT_OPTIONS", get_select_options_with_id($app_list_strings['products_format_options'], $focus->format));
$xtpl->assign("CALENDAR_DATEFORMAT", $timedate->get_cal_date_format());
$xtpl->assign("USER_DATE_FORMAT", $timedate->get_user_date_format());
$xtpl->assign('deadline', $focus->deadline);
$xtpl->assign('components', $focus->components);
$change_parent_button = "<input title='".$app_strings['LBL_SELECT_BUTTON_TITLE']
	."' accessKey='".$app_strings['LBL_SELECT_BUTTON_KEY']
	."' tabindex='2' type='button' class='button' value='"
	.$app_strings['LBL_SELECT_BUTTON_LABEL']
	."' name='button' LANGUAGE=javascript onclick='return window.open(\"index.php?module=\"+ document.EditView.parent_type.value + \"&action=Popup&html=Popup_picker&form=TasksEditView\",\"test\",\"width=600,height=400,resizable=1,scrollbars=1\");'>";
$xtpl->assign("CHANGE_PARENT_BUTTON", $change_parent_button);

if (!empty($_REQUEST['opportunity_name']) && empty($focus->name)) {
		$focus->name = $_REQUEST['opportunity_name'];
}
if(isset($_REQUEST['isDuplicate']) && $_REQUEST['isDuplicate'] == 'true') {
	$focus->id = "";
}

// linked record ids
if(isset($_REQUEST['account_id'])) $xtpl->assign("ACCOUNT_ID", $_REQUEST['account_id']);
if(isset($_REQUEST['contact_id'])) $xtpl->assign("CONTACT_ID", $_REQUEST['contact_id']);
if(isset($_REQUEST['opportunity_id'])) $xtpl->assign("OPPORTUNITY_ID", $_REQUEST['opportunity_id']);
if(isset($_REQUEST['quote_id'])) $xtpl->assign("QUOTE_ID", $_REQUEST['quote_id']);
if(isset($_REQUEST['email_id'])) $xtpl->assign("EMAIL_ID", $_REQUEST['email_id']);

if (isset($_REQUEST['return_module'])) $xtpl->assign("RETURN_MODULE", $_REQUEST['return_module']);
if (isset($_REQUEST['return_action'])) $xtpl->assign("RETURN_ACTION", $_REQUEST['return_action']);
if (isset($_REQUEST['return_id'])) $xtpl->assign("RETURN_ID", $_REQUEST['return_id']);
// handle Create $module then Cancel
if (empty($_REQUEST['return_id'])) {
	$xtpl->assign("RETURN_ACTION", 'index');
}

require_once('include/QuickSearchDefaults.php');
$qsd = new QuickSearchDefaults();
/*$sqs_objects = array('assigned_user_name' => $qsd->getQSUser(),
					 'pub' => $qsd->getQSPub(),);*/
$xtpl->assign('vision', $focus->vision);
$quicksearch_js = $qsd->getQSScripts();
//$quicksearch_js .= '<script type="text/javascript" language="javascript">sqs_objects = ' . $json->encode($sqs_objects) . '</script>';

$xtpl->assign("JAVASCRIPT", get_set_focus_js().get_validate_record_js().get_number_js() . $quicksearch_js);
$xtpl->assign("THEME", $theme);
$xtpl->assign("IMAGE_PATH", $image_path);$xtpl->assign("PRINT_URL", "index.php?".$GLOBALS['request_string']);
$xtpl->assign("ID", $focus->id);
$xtpl->assign("NAME", $focus->name);

//Add Custom Fields
require_once('modules/DynamicFields/templates/Files/EditView.php');

global $current_user;
if(is_admin($current_user)
	&& $_REQUEST['module'] != 'DynamicLayout'
	&& !empty($_SESSION['editinplace']))
{
	$record = '';
	if(!empty($_REQUEST['record']))
	{
		$record = 	$_REQUEST['record'];
	}

	$xtpl->assign("ADMIN_EDIT","<a href='index.php?action=index&module=DynamicLayout&from_action="
		.$_REQUEST['action'] ."&from_module=".$_REQUEST['module']
		."&record=".$record. "'>".get_image($image_path
		."EditLayout","border='0' alt='Edit Layout' align='bottom'")."</a>");	
}




$xtpl->parse("main.open_source");



$xtpl->parse("main");
$xtpl->out("main");
require_once('include/javascript/javascript.php');
$javascript = new javascript();
$javascript->setFormName('EditView');
$javascript->setSugarBean($focus);
$javascript->addAllFields('');




$javascript->addToValidateBinaryDependency('assigned_user_name', 'alpha', $app_strings['ERR_SQS_NO_MATCH_FIELD'] . $app_strings['LBL_ASSIGNED_TO'], 'false', '', 'assigned_user_id');

echo $javascript->getScript();

require_once('modules/SavedSearch/SavedSearch.php');
$savedSearch = new SavedSearch();
$json = getJSONobj();
$savedSearchSelects = $json->encode(array($GLOBALS['app_strings']['LBL_SAVED_SEARCH_SHORTCUT'] . '<br>' . $savedSearch->getSelect('Products')));
$str = "<script>
YAHOO.util.Event.addListener(window, 'load', SUGAR.util.fillShortcuts, $savedSearchSelects);
</script>";
echo $str;

?>
