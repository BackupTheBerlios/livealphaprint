<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/**
 * The detailed view for a project
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
require_once('modules/ClientOrders/ClientOrders.php');
require_once('include/DetailView/DetailView.php');


global $app_strings;
global $mod_strings;
global $theme;
global $current_user;

$GLOBALS['log']->info('ClientOrders detail view');
$focus = new ClientOrders();

// only load a record if a record id is given;
// a record id is not given when viewing in layout editor
$detailView = new DetailView();
$offset=0;
if (isset($_REQUEST['offset']) or isset($_REQUEST['record'])) {
	$result = $detailView->processSugarBean("CLIENTORDERS", $focus, $offset);
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

$xtpl = new XTemplate('modules/ClientOrders/DetailView.html');


////Auto Clientorder

if (isset($_REQUEST['clientorder_id']) && isset($_REQUEST['mode']) && ($_REQUEST['mode'] == "auto")){
	$components_to_clientorder = $focus->build_component_clientorders_list($focus->id);
	for ($i = 0; $i < count($components_to_clientorder); $i++) {
		
			
			$component_id = $components_to_clientorder[$i]['id'];
			$componentClientorder = new ComponentClientorderCalc();
			
			if($components_to_clientorder[$i]['outdated'] == true){
				$componentClientorder->retrieve($components_to_clientorder[$i]['clientorder_id']);	
			}
			
			$paperclientorder = $componentClientorder->paperClientorder($component_id, null);
		    $pressclientorder = $componentClientorder->pressClientorder($component_id, null);
		    $operations = $componentClientorder->operationsClientorder($component_id);
		    $prepress = $componentClientorder->prepressClientorder($component_id);
    
    		$componentClientorder->name = $mod_strings['LBL_EST_NAME_PREFIX']."-".$components_to_clientorder[$i]['name'];
			$componentClientorder->component_id = $components_to_clientorder[$i]['id'];
			$componentClientorder->component_name = $components_to_clientorder[$i]['name'];
			$componentClientorder->clientorder_id = $focus->id;
			$componentClientorder->clientorder_name = $focus->name;
			$componentClientorder->assigned_user_id = $current_user->id;	
			$componentClientorder->total_paper = $paperclientorder['total_paper_price'];
			$componentClientorder->total_press = $pressclientorder['total_price'];
			$componentClientorder->total_prepress = $prepress['total_price'];
			$componentClientorder->total_operations = $operations['total_price'];
			$componentClientorder->paper_singleprice = $components_to_clientorder[$i]['price'];
			$componentClientorder->status = "uptodate";
			
			
			$componentClientorder->press_rate_a_id = $pressclientorder['press_rate'][0]['id'];
			$componentClientorder->press_rate_a_name = $pressclientorder['press_rate'][0]['name'];
			$componentClientorder->press_rate_b_id = $pressclientorder['press_rate'][1]['id'];
			$componentClientorder->press_rate_b_name = $pressclientorder['press_rate'][1]['name'];
			$componentClientorder->press_rate_a_inks = $pressclientorder['press_rate'][0]['colors'];
			$componentClientorder->press_rate_a_machine = $pressclientorder['press_rate'][0]['machine'];
			$componentClientorder->press_rate_b_inks = $pressclientorder['press_rate'][1]['colors'];
			$componentClientorder->press_rate_b_machine = $pressclientorder['press_rate'][1]['machine'];
			$componentClientorder->assigned_user_id = $current_user->id;
			$componentClientorder->press_paperwaste_rate_id = $paperclientorder['press_paperwaste_rate']['id'];
			$componentClientorder->press_paperwaste_rate_name = $paperclientorder['press_paperwaste_rate']['name'];
			$componentClientorder->press_paperwaste_rate_machine = $paperclientorder['press_paperwaste_rate']['machine'];
			
			$componentClientorder->save($GLOBALS['check_notify']);
			
			
			
			
		
	}
	
	///////////
			$clientorderCalc = new ClientorderCalc();
			$clientordercalc_id = $focus->get_calc_record($focus->id);
			if(!is_null($clientordercalc_id) && !empty($clientordercalc_id)){
				$clientorderCalc->retrieve($clientordercalc_id);
			}
			$components_clientorder = $clientorderCalc->componentsClientorder($focus->id);
			$clientorderCalc->name = $mod_strings['LBL_EST_NAME_PREFIX']."-".$focus->name;
			$clientorderCalc->clientorder_name = $focus->name;
			$clientorderCalc->clientorder_id = $focus->id;
			$clientorderCalc->total_paper = $components_clientorder['total_paper'];
			$clientorderCalc->total_prepress = $components_clientorder['total_prepress'];
			$clientorderCalc->total_press = $components_clientorder['total_press'];
			$clientorderCalc->total_operations = $components_clientorder['total_operations'];
			$clientorderCalc->total_clientorder = $components_clientorder['total'];
			$clientorderCalc->assigned_user_id = $current_user->id;
			$clientorderCalc->status = 'uptodate';
			
			$clientorderCalc->save($GLOBALS['check_notify']);
	
	$focus->status = 'clientorderd';
	$focus->save($GLOBALS['check_notify']);
			
	header("Location: index.php?action=DetailView&module=ClientorderCalc&record=$clientorderCalc->id");
			
}

///

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

/*$component_clientorder_check = $focus->components_clientorder_check($focus->id);
if ($component_clientorder_check == true){
	$xtpl->assign('disabled_calc', "disabled");
	$xtpl->assign('LBL_CALC_BUTTON_TITLE', $mod_strings['LBL_COMPONENT_NOT_CLIENTORDERD']);	
}
else{
	
	$xtpl->assign('disabled_calc', "");
	$xtpl->assign('LBL_CALC_BUTTON_TITLE', $mod_strings['LBL_CALC_BUTTON_TITLE']);	
}*/

$xtpl->assign('stat_action', 'clientorder');

$record = $focus->get_calc_record($focus->id);
$calculant_id = $focus->get_calculant();
 
if (!empty($record) && !is_null($record)){
	$xtpl->assign('record', '&record='.$record);
	$xtpl->assign('notify_button', 'hidden');
	$xtpl->assign('calc_button', 'hidden');
	$xtpl->assign('precalc_button', 'button');
	$xtpl->assign('precalc', '&precalc=yes');
}
else{
	if (($calculant_id != null) && ($calculant_id != $current_user->id)){
		$xtpl->assign('calculant_id', $calculant_id);
		$xtpl->assign('notify_button', 'button');
		$xtpl->assign('calc_button', 'hidden');
		$xtpl->assign('precalc_button', 'hidden');
	}
	else{
		$xtpl->assign('record', "");
		$xtpl->assign('calc_button', 'button');
		$xtpl->assign('precalc_button', 'hidden');
		$xtpl->assign('notify_button', 'hidden');
	}
}

$quote_check = $focus->quote_check($focus->id);
if ($quote_check == true){
	$xtpl->assign('disabled_quote', "disabled");
	$xtpl->assign('LBL_QUOTE_BUTTON_TITLE', $mod_strings['LBL_CLIENTORDER_NOT_CLIENTORDERD']);	
}
else{
	
	$xtpl->assign('disabled_quote', "");
	$xtpl->assign('LBL_QUOTE_BUTTON_TITLE', $mod_strings['LBL_CLIENTORDER_NOT_CLIENTORDERD']);	
}
//$xtpl->assign('quote_action', 'quoted');
//$xtpl->assign("JAVASCRIPT", get_set_focus_js().get_validate_record_js().get_format_js() . $quicksearch_js);

//Assign DetailView Fileds
$xtpl->assign('name', $focus->name);
$xtpl->assign('account_name', $focus->account_name);
$xtpl->assign('account_id', $focus->account_id);
$xtpl->assign('contact_name', $focus->contact_name);
$xtpl->assign('contact_id', $focus->contact_id);
$xtpl->assign('assigned_user_name', $focus->assigned_user_name);
$xtpl->assign('description', nl2br(url2html($focus->description)));
$xtpl->assign('vision', $focus->vision);
$xtpl->assign('period', $app_list_strings['clientorders_period_options'][$focus->period]);
$xtpl->assign('number', $focus->number);
$xtpl->assign('category', $app_list_strings['clientorders_category_options'][$focus->category]);
$xtpl->assign('note', $focus->note);
$xtpl->assign('quantity', $focus->quantity);
$xtpl->assign('status', $app_list_strings['product_status'][$focus->get_status($focus->id)]);

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

$clientrequest = $focus->get_client_request($focus->clientrequest_id);
if ($clientrequest != null){
	$xtpl->assign("clientrequest_id", $clientrequest->id);
	$xtpl->assign("clientrequest_name", $clientrequest->name);
	$xtpl->assign('clientrequest_number', $clientrequest->number);
	$xtpl->assign('clientrequest_assigned_user_name', $clientrequest->assigned_user_name);	
	$xtpl->assign('clientrequest_due_date', $clientrequest->due_date);	
	$xtpl->parse('main.ClientRequest');
}
/*$xtpl->assign('fsize_h', $focus->fsize_h);
$xtpl->assign('fsize_w', $focus->fsize_w);*/
//$xtpl->assign('volume', $focus->volume);
$xtpl->assign('samples', $focus->samples);
$xtpl->assign('file', $focus->file);
$xtpl->assign('deadline', $focus->deadline);

$xtpl->assign('date_entered', $focus->date_entered);
$xtpl->assign('date_modified', $focus->date_modified);


$focus->check_component_clientorders();

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

$detailView->processListNavigation($xtpl, "CLIENTORDERS", $offset);
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
$subpanel = new SubPanelTiles($focus, 'ClientOrders');
echo $subpanel->display();


require_once('modules/SavedSearch/SavedSearch.php');
$savedSearch = new SavedSearch();
$json = getJSONobj();
$savedSearchSelects = $json->encode(array($GLOBALS['app_strings']['LBL_SAVED_SEARCH_SHORTCUT'] . '<br>' . $savedSearch->getSelect('ClientOrders')));
$str = "<script>
YAHOO.util.Event.addListener(window, 'load', SUGAR.util.fillShortcuts, $savedSearchSelects);
</script>";
echo $str;


?>