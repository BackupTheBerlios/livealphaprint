<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/**
 * EditView for ClientOrders
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
require_once('modules/Quotes/Quote.php');
require_once('include/time.php');
require_once('modules/Quotes/Forms.php');

global $timedate;
global $app_strings;
global $app_list_strings;
global $current_language;
global $current_user;
global $sugar_version, $sugar_config;

$focus = new Quote();

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

$GLOBALS['log']->info("Quotes detail view");

$xtpl=new XTemplate ('modules/Quotes/EstimateSelect.html');

$json = getJSONobj();
$popup_request_data = array(
		'call_back_function' => 'set_return',
		'form_name' => 'EditView',
		'field_to_name_array' => array(
			'id' => 'estimate_id',
			'name' => 'estimate_name',
			),
		);

$encoded_product_popup_request_data = $json->encode($popup_request_data);
$xtpl->assign('encoded_products_popup_request_data', $encoded_product_popup_request_data);
		

///
/// Assign the template variables
///

$xtpl->assign('MOD', $mod_strings);
$xtpl->assign('APP', $app_strings);
$xtpl->assign('name', $focus->name);

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

$quicksearch_js = $qsd->getQSScripts();
//$quicksearch_js .= '<script type="text/javascript" language="javascript">sqs_objects = ' . $json->encode($sqs_objects) . '</script>';

$xtpl->assign("JAVASCRIPT", get_set_focus_js().get_validate_record_js() . $quicksearch_js);
$xtpl->assign("THEME", $theme);
$xtpl->assign("IMAGE_PATH", $image_path);$xtpl->assign("PRINT_URL", "index.php?".$GLOBALS['request_string']);
$xtpl->assign("ID", $focus->id);
$xtpl->assign("NAME", $focus->name);

$xtpl->parse("main");
$xtpl->out("main");
require_once('include/javascript/javascript.php');
$javascript = new javascript();
$javascript->setFormName('EditView');
$javascript->setSugarBean($focus);
$javascript->addAllFields('');

echo $javascript->getScript();

$validation_script = '<script>addToValidate("EditView", "estimate_name", "varchar", true, "'.$mod_strings['LBL_ESTIMATE_NAME'].'"); ';
$validation_script .= 'addToValidate("EditView", "estimate_id", "id", true, "'.$mod_strings['LBL_ESTIMATE_ID'].'"); </script>';
echo $validation_script;

require_once('modules/SavedSearch/SavedSearch.php');
$savedSearch = new SavedSearch();
$json = getJSONobj();
$savedSearchSelects = $json->encode(array($GLOBALS['app_strings']['LBL_SAVED_SEARCH_SHORTCUT'] . '<br>' . $savedSearch->getSelect('Quotes')));
$str = "<script>
YAHOO.util.Event.addListener(window, 'load', SUGAR.util.fillShortcuts, $savedSearchSelects);
</script>";
echo $str;

?>