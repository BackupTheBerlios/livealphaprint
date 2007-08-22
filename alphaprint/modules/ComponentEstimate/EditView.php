<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/**
 * EditView for ComponentEstimate
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
require_once('modules/ComponentEstimate/ComponentEstimate.php');
require_once('include/time.php');
require_once('modules/ComponentEstimate/Forms.php');
require_once('include/formbase.php');

global $timedate;
global $app_strings;
global $app_list_strings;
global $current_language;
global $current_user;
global $sugar_version, $sugar_config;

$focus = new ComponentEstimate();

if(!empty($_REQUEST['record']))
{
    $focus->retrieve($_REQUEST['record']);
}

if(!empty($_REQUEST['component_id']) && isset($_REQUEST['component_id']) && !is_null($_REQUEST['component_id']))
{
    $component_id = $_REQUEST['component_id'];
    $paperestimate = $focus->paperEstimate($component_id);
    $pressestimate = $focus->pressEstimate($component_id);
    $operations = $focus->operationsEstimate($component_id);
    $prepress = $focus->prepressEstimate($component_id);	
}
if (isset($focus->component_id) && !is_null($focus->component_id)){
	$component_id = $focus->component_id;
    $paperestimate = $focus->paperEstimate($component_id);
    $pressestimate = $focus->pressEstimate($component_id);
    $operations = $focus->operationsEstimate($component_id);
    $prepress = $focus->prepressEstimate($component_id);	
}

/// Error Check
if (!is_null($focus->errors) || !empty($focus->errors)){
	$errors_output = $focus->displayErrors();
	
	$theme_path = 'themes/' . $theme . '/';
	$image_path = $theme_path . 'images/';
	require_once($theme_path.'layout_utils.php');
	
	$xtpl = new XTemplate('modules/ComponentEstimate/ErrorView.html');
	
	$xtpl->assign('MOD', $mod_strings);
	$xtpl->assign('errors_output', $errors_output);
	$xtpl->parse('main');
	$xtpl->out('main');
	
}

else{

	if(!empty($_REQUEST['component_name']) && isset($_REQUEST['component_name']) && !is_null($_REQUEST['component_name']))
	{
	    $component_name = $_REQUEST['component_name'];
	}
	if(!empty($_REQUEST['product_name']) && isset($_REQUEST['product_name']) && !is_null($_REQUEST['product_name']))
	{
	    $product_name = $_REQUEST['product_name'];
	}
	if(!empty($_REQUEST['product_id']) && isset($_REQUEST['product_id']) && !is_null($_REQUEST['product_id']))
	{
	    $product_id = $_REQUEST['product_id'];
	}
	
	echo "\n<p>\n";
	echo get_module_title($mod_strings['LBL_MODULE_NAME'], $mod_strings['LBL_MODULE_NAME'].": ".$focus->name, true);
	echo "\n</p>\n";
	global $theme;
	$theme_path="themes/".$theme."/";
	$image_path=$theme_path."images/";
	require_once($theme_path.'layout_utils.php');
	
	$GLOBALS['log']->info("ComponentEstimate detail view");
	
	$xtpl=new XTemplate ('modules/ComponentEstimate/EditView.html');
	
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
	if (!is_null($focus->name) && !empty($focus->name))
	{
		$xtpl->assign("NAME", $focus->name);
	}
	
	else{
		$xtpl->assign("NAME", $mod_strings['LBL_EST_NAME_PREFIX']."-".$component_name);
	}
	
	if (!is_null($focus->component_name) && !empty($focus->component_name))
	{
		$xtpl->assign("component_name", $focus->name);
	}
	else{
		$xtpl->assign("component_name", $component_name);
	}
	if (!is_null($focus->component_id) && !empty($focus->component_id))
	{
		$xtpl->assign("component_id", $focus->component_id);
	}
	else{
		$xtpl->assign("component_id", $component_id);
	}
	if (!is_null($focus->product_name) && !empty($focus->product_name))
	{
		$xtpl->assign("product_name", $focus->product_name);
	}
	else{
		$xtpl->assign("product_name", $product_name);
	}
	if (!is_null($focus->product_id) && !empty($focus->product_id))
	{
		$xtpl->assign("product_id", $focus->product_id);
	}
	else{
		$xtpl->assign("product_id", $product_id);
	}
	
	
	
	
	
	//Paper Estimate
	$client_paper = $paperestimate['client_paper'];
	$xtpl->assign("clean_quantity_qp", $paperestimate['clean_quantity_qp']);
	$xtpl->assign("paperwaste_qp", $paperestimate['paperwaste_qp']);
	$xtpl->assign("qp", $paperestimate['qp']);
	$xtpl->assign("sheets_qp", $paperestimate['sheets_qp']);
	$xtpl->assign("pages", $paperestimate['pages']);
	if ($client_paper == "Yes"){
		$xtpl->assign("total_paper_price", 0);
		$xtpl->assign("paper_sigleprice", 0);
		$xtpl->assign("style",'style="background:inherit; border-style:none;text-align:center" readOnly');
		$xtpl->assign("total_estimate", $prepress['total_price']+$operations['total_price']+$pressestimate['total_price']);
	}
	else{
		if (isset($focus->total_paper) && !is_null($focus->total_paper)){
			$xtpl->assign("total_paper", $focus->total_paper);
			$xtpl->assign("total_estimate", $focus->total_paper+$prepress['total_price']+$operations['total_price']+$pressestimate['total_price']);	
			$xtpl->assign("paper_sigleprice", $paperestimate['paper_sigleprice']);
			$xtpl->assign("style",'style="text-align:center"');
		}
		else{
			$xtpl->assign("total_paper", $paperestimate['total_paper_price']);
			$xtpl->assign("paper_sigleprice", $paperestimate['paper_sigleprice']);
			$xtpl->assign("style",'style="text-align:center"');
			$xtpl->assign("total_estimate", $paperestimate['total_paper_price']+$prepress['total_price']+$operations['total_price']+$pressestimate['total_price']);
			
		}
	}
	$xtpl->assign("paper_waste_rows", $paperestimate['paperestimate_html']);
	$xtpl->assign("paper_operation_waste_rows", $paperestimate['operations_html']);
	$xtpl->assign("client_paper", $app_list_strings['client_paper_options'][$client_paper]);
	
	//Prepress Estimate 
	if (isset($focus->total_prepress) && !is_null($focus->total_prepress)){
			$xtpl->assign("total_prepress", $focus->total_prepress);
	}
	else{
		$xtpl->assign("total_prepress", $prepress['total_price']);	
	}
	
	$xtpl->assign("prepress_lines", $prepress['html']);
	
	//Operations Estimate
	if (isset($focus->total_operations) && !is_null($focus->total_operations)){
			$xtpl->assign("total_operations", $focus->total_operations);
	}
	else{
		$xtpl->assign("total_operations", $operations['total_price']);	
	}
	$xtpl->assign("operation_lines", $operations['html']);
	
	
	//Press Estimate
	if (isset($focus->total_press) && !is_null($focus->total_press)){
			$xtpl->assign("total_press", $focus->total_press);
	}
	else{
		$xtpl->assign("total_press", $pressestimate['total_price']);
	}
	$xtpl->assign("press_price_lines", $pressestimate['layout_html']);
	
	
	
	
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
	$savedSearchSelects = $json->encode(array($GLOBALS['app_strings']['LBL_SAVED_SEARCH_SHORTCUT'] . '<br>' . $savedSearch->getSelect('ComponentEstimate')));
	$str = "<script>
	YAHOO.util.Event.addListener(window, 'load', SUGAR.util.fillShortcuts, $savedSearchSelects);
	</script>";
	echo $str;
}

?>
