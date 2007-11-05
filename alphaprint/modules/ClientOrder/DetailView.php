<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/**
 * The detailed view for a clientorder
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
require_once('include/time.php');
require_once('modules/ClientOrder/ClientOrder.php');
require_once('include/DetailView/DetailView.php');

global $app_strings;
global $mod_strings;
global $theme;
global $current_user;

$GLOBALS['log']->info('ClientOrder detail view');
$focus = new ClientOrder();

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
echo "\n<p>\n";
echo get_module_title($mod_strings['LBL_MODULE_NAME'],
	$mod_strings['LBL_MODULE_NAME'] . ': ' . $focus->name, true);
echo "\n</p>\n";

$theme_path = 'themes/' . $theme . '/';
$image_path = $theme_path . 'images/';

require_once($theme_path.'layout_utils.php');

$xtpl = new XTemplate('modules/ClientOrder/DetailView.html');

///
/// Assign the template variables
///

$xtpl->assign('MOD', $mod_strings);
$xtpl->assign('APP', $app_strings);
if(isset($_REQUEST['return_module']))
{
	$xtpl->assign("RETURN_MODULE", $_REQUEST['return_module']);
}

if(isset($_REQUEST['return_action']))
{
	$xtpl->assign("RETURN_ACTION", $_REQUEST['return_action']);
}

if(isset($_REQUEST['return_id']))
{
	$xtpl->assign("RETURN_ID", $_REQUEST['return_id']);
}

$xtpl->assign('PRINT_URL', "index.php?".$GLOBALS['request_string']);
$xtpl->assign('THEME', $theme);
$xtpl->assign('GRIDLINE', $gridline);
$xtpl->assign('IMAGE_PATH', $image_path);
$xtpl->assign('id', $focus->id);
$xtpl->assign('name', $focus->name);
$xtpl->assign('assigned_user_name', $focus->assigned_user_name);
$xtpl->assign("number", $focus->number);
$xtpl->assign("quantity", $focus->quantity);
$xtpl->assign("special_requirements", $focus->special_requirements);
$xtpl->assign("operation_description", $focus->operation_description);
$xtpl->assign("transport", $focus->transport);
$xtpl->assign("pack", $focus->pack);
$xtpl->assign("files", $focus->files);
$xtpl->assign("periodic", $app_list_strings['clientorder_samples_options'][$focus->periodic]);
$xtpl->assign("samples", $app_list_strings['clientorder_samples_options'][$focus->samples]);
$xtpl->assign("due_date", $focus->due_date);
$xtpl->assign('description', nl2br(url2html($focus->description)));

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
}

$created_by = $current_user;
$created_by->retrieve($focus->created_by);
$xtpl->assign("CREATED_BY", $created_by->user_name);
$xtpl->assign("DATE_ENTERED",$focus->date_entered);

$modified_by = $current_user;
$modified_by->retrieve($focus->modified_user_id);
$xtpl->assign("MODIFIED_BY", $modified_by->user_name);
$xtpl->assign("DATE_MODIFIED", $focus->date_modified);


if(is_admin($current_user)
	&& $_REQUEST['module'] != 'DynamicLayout'
	&& !empty($_SESSION['editinplace']))
{
	$xtpl->assign('ADMIN_EDIT',
		'<a href="index.php?action=index&module=DynamicLayout&from_action='
		. $_REQUEST['action'] . '&from_module=' . $_REQUEST['module']
		. '&record=' . $_REQUEST['record'] . '">'
		. get_image($image_path . 'EditLayout',
			 'border="0" alt="Edit Layout" align="bottom"') . '</a>');
}

$detailView->processListNavigation($xtpl, "CLIENTREQUEST", $offset);
// adding custom fields
require_once('modules/DynamicFields/templates/Files/DetailView.php');






$xtpl->parse('main.open_source');




$xtpl->parse('main');
$xtpl->out('main');

$sub_xtpl = $xtpl;
$old_contents = ob_get_contents();
ob_end_clean();
ob_start();
echo $old_contents;

require_once('include/SubPanel/SubPanelTiles.php');
$subpanel = new SubPanelTiles($focus, 'ClientOrder');
echo $subpanel->display();


require_once('modules/SavedSearch/SavedSearch.php');
$savedSearch = new SavedSearch();
$json = getJSONobj();
$savedSearchSelects = $json->encode(array($GLOBALS['app_strings']['LBL_SAVED_SEARCH_SHORTCUT'] . '<br>' . $savedSearch->getSelect('ClientOrder')));
$str = "<script>
YAHOO.util.Event.addListener(window, 'load', SUGAR.util.fillShortcuts, $savedSearchSelects);
</script>";
echo $str;

?>
