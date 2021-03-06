<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/**
 * EditView for ClientRequest
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
require_once('modules/ClientRequest/ClientRequest.php');
require_once('include/time.php');
require_once('modules/ClientRequest/Forms.php');

global $timedate;
global $app_strings;
global $app_list_strings;
global $current_language;
global $current_user;
global $sugar_version, $sugar_config;

$focus = new ClientRequest();

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

$GLOBALS['log']->info("ClientRequest detail view");

$xtpl=new XTemplate ('modules/ClientRequest/EditView.html');

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

$popup_request_data = array(
		'call_back_function' => 'set_return',
		'form_name' => 'EditView',
		'field_to_name_array' => array(
			'id' => 'account_id',
			'name' => 'account_name',
			),
		);
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
		'call_back_function' => 'set_return_product',
		'form_name' => 'EditView',
		'field_to_name_array' => array(
			'id' => 'product_id',
			'name' => 'product_name',
			//'name' => 'name',
			'account_id' => 'account_id',
			'account_name' => 'account_name',
			'contact_id' => 'contact_id',
			'contact_name' => 'contact_name',
			'pnum' => 'pnum',
			//'pnum_pref' => 'pnum_pref',
			),
		);

$encoded_contact_popup_request_data = $json->encode($popup_request_data);
$xtpl->assign('encoded_products_popup_request_data', $encoded_contact_popup_request_data);








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

$xtpl->assign('description', $focus->description);
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

// handle product
$style_display = "display:none";
if(isset($_REQUEST['product_id']) && !empty($_REQUEST['product_id'])){
	$focus->product_id = $_REQUEST['product_id'];
}

if(!is_null($focus->product_id) && !empty($focus->product_id)){
	$product = new Products();
	$product->retrieve($focus->product_id);
	$xtpl->assign("pnum", $product->pnum);
	$xtpl->assign("product_name", $product->name);
	$xtpl->assign("product_id", $product->id);
	$xtpl->assign("account_name", $product->account_name);
	$xtpl->assign("account_id", $product->account_id);
	$xtpl->assign("contact_name", $product->contact_name);
	$xtpl->assign("contact_id", $product->contact_id);
	$style_display = '';
	$xtpl->assign("product_readOnly" , 'readOnly');
	$xtpl->assign("DISABLED_ACCOUNT" , 'disabled');
	$xtpl->assign("DISABLED_CONTACT" , 'disabled');
	$xtpl->assign("DISABLED_CREATE" , 'disabled');
	$xtpl->assign("DISABLED_SELECT_PRODUCT" , 'disabled');
}
$xtpl->assign("style_display" , $style_display);

if (isset($_REQUEST['status_action']) && !empty($_REQUEST['status_action'])){
	$xtpl->assign('status_action', $_REQUEST['status_action']);
}
$focus->status = $focus->get_status($focus->id);
$xtpl->assign('status', get_select_options_with_id($app_list_strings['product_status_'.$focus->status], $focus->status));

// handle Create $module then Cancel
if (empty($_REQUEST['return_id'])) {
	$xtpl->assign("RETURN_ACTION", 'index');
}

require_once('include/QuickSearchDefaults.php');
$qsd = new QuickSearchDefaults();
$sqs_objects = array('assigned_user_name' => $qsd->getQSUser(),



					);
$quicksearch_js = $qsd->getQSScripts();
$quicksearch_js .= '<script type="text/javascript" language="javascript">sqs_objects = ' . $json->encode($sqs_objects) . '</script>';

$xtpl->assign("JAVASCRIPT", get_set_focus_js().get_validate_record_js() . $quicksearch_js);
$xtpl->assign("THEME", $theme);
$xtpl->assign("IMAGE_PATH", $image_path);$xtpl->assign("PRINT_URL", "index.php?".$GLOBALS['request_string']);
$xtpl->assign("ID", $focus->id);
$xtpl->assign("name", $focus->name);

if(isset($focus->id) && !empty($focus->id)){
	$components = $focus->getEstimateComponentsRows();
	if(count($components)>0){
		for ($i = 0; $i < count($components); $i++) {
			$xtpl->assign("component_list_rows", $focus->getEstimateComponentsRow($components[$i],$i));
			$xtpl->parse("main.component_list_rows");	
		}
	}
	else{
		$xtpl->assign("no_component_list_rows", $mod_strings['LBL_NO_COMPONENTS']);
		$xtpl->parse("main.no_component_list_rows");	
	}
}
else{
	
	$xtpl->assign("no_component_list_rows", $mod_strings['LBL_NO_COMPONENTS']);
	$xtpl->parse("main.no_component_list_rows");
}

if (empty($focus->number)){
	$focus->number = 'CRQ'.$focus->generate_number('number', $focus->table_name);
}
$xtpl->assign("number", $focus->number);
$xtpl->assign("quantity", $focus->quantity);
$xtpl->assign("special_requirements", $focus->special_requirements);
$xtpl->assign("operation_description", $focus->operation_description);
$xtpl->assign("transport", $focus->transport);
$xtpl->assign("pack", $focus->pack);
$xtpl->assign("clientrequest_files_options", get_select_options_with_id($app_list_strings['clientrequest_files_options'], $focus->files));
$xtpl->assign("clientrequest_period_options", get_select_options_with_id($app_list_strings['clientrequest_period_options'], $focus->periodic));
$xtpl->assign("clientrequest_samples_options", get_select_options_with_id($app_list_strings['clientrequest_samples_options'], $focus->samples));
$xtpl->assign("due_date", $focus->due_date);
$timedate = new TimeDate();
$curdatetime = date("Ymd-His");
$xtpl->assign("CALENDAR_DATEFORMAT", $timedate->get_cal_date_format());
$xtpl->assign("USER_DATE_FORMAT", $timedate->get_user_date_format());

$validation_script = '<script>addToValidate("EditView", "product_name", "varchar",true, ""); ';
$validation_script .= 'addToValidate("EditView", "account_name", "varchar",true, ""); ';
$validation_script .= 'addToValidate("EditView", "contact_name", "varchar",true, ""); </script>';
echo $validation_script;
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
$savedSearchSelects = $json->encode(array($GLOBALS['app_strings']['LBL_SAVED_SEARCH_SHORTCUT'] . '<br>' . $savedSearch->getSelect('ClientRequest')));
$str = "<script>
YAHOO.util.Event.addListener(window, 'load', SUGAR.util.fillShortcuts, $savedSearchSelects);
</script>";
echo $str;

?>
