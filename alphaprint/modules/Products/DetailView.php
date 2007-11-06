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
require_once('modules/Products/Products.php');
require_once('include/DetailView/DetailView.php');


global $app_strings;
global $mod_strings;
global $theme;
global $current_user;

$GLOBALS['log']->info('Products detail view');
$focus = new Products();

// only load a record if a record id is given;
// a record id is not given when viewing in layout editor
$detailView = new DetailView();
$offset=0;
if (isset($_REQUEST['offset']) or isset($_REQUEST['record'])) {
	$result = $detailView->processSugarBean("PRODUCTS", $focus, $offset);
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

$xtpl = new XTemplate('modules/Products/DetailView.html');


////Auto Estimate
/*
if (isset($_REQUEST['product_id']) && isset($_REQUEST['mode']) && ($_REQUEST['mode'] == "auto")){
	$components_to_estimate = $focus->build_component_estimates_list($focus->id);
	for ($i = 0; $i < count($components_to_estimate); $i++) {
		
			
			$component_id = $components_to_estimate[$i]['id'];
			$componentEstimate = new ComponentEstimate();
			
			if($components_to_estimate[$i]['outdated'] == true){
				$componentEstimate->retrieve($components_to_estimate[$i]['estimate_id']);	
			}
			
			$paperestimate = $componentEstimate->paperEstimate($component_id, null);
		    $pressestimate = $componentEstimate->pressEstimate($component_id, null);
		    $operations = $componentEstimate->operationsEstimate($component_id);
		    $prepress = $componentEstimate->prepressEstimate($component_id);
    
    		$componentEstimate->name = $mod_strings['LBL_EST_NAME_PREFIX']."-".$components_to_estimate[$i]['name'];
			$componentEstimate->component_id = $components_to_estimate[$i]['id'];
			$componentEstimate->component_name = $components_to_estimate[$i]['name'];
			$componentEstimate->product_id = $focus->id;
			$componentEstimate->product_name = $focus->name;
			$componentEstimate->assigned_user_id = $current_user->id;	
			$componentEstimate->total_paper = $paperestimate['total_paper_price'];
			$componentEstimate->total_press = $pressestimate['total_price'];
			$componentEstimate->total_prepress = $prepress['total_price'];
			$componentEstimate->total_operations = $operations['total_price'];
			$componentEstimate->paper_singleprice = $components_to_estimate[$i]['price'];
			$componentEstimate->status = "uptodate";
			
			
			$componentEstimate->press_rate_a_id = $pressestimate['press_rate'][0]['id'];
			$componentEstimate->press_rate_a_name = $pressestimate['press_rate'][0]['name'];
			$componentEstimate->press_rate_b_id = $pressestimate['press_rate'][1]['id'];
			$componentEstimate->press_rate_b_name = $pressestimate['press_rate'][1]['name'];
			$componentEstimate->press_rate_a_inks = $pressestimate['press_rate'][0]['colors'];
			$componentEstimate->press_rate_a_machine = $pressestimate['press_rate'][0]['machine'];
			$componentEstimate->press_rate_b_inks = $pressestimate['press_rate'][1]['colors'];
			$componentEstimate->press_rate_b_machine = $pressestimate['press_rate'][1]['machine'];
			$componentEstimate->assigned_user_id = $current_user->id;
			$componentEstimate->press_paperwaste_rate_id = $paperestimate['press_paperwaste_rate']['id'];
			$componentEstimate->press_paperwaste_rate_name = $paperestimate['press_paperwaste_rate']['name'];
			$componentEstimate->press_paperwaste_rate_machine = $paperestimate['press_paperwaste_rate']['machine'];
			
			$componentEstimate->save($GLOBALS['check_notify']);
			
			
			
			
		
	}
	
	///////////
			$productEstimate = new ProductEstimate();
			$productestimate_id = $focus->get_calc_record($focus->id);
			if(!is_null($productestimate_id) && !empty($productestimate_id)){
				$productEstimate->retrieve($productestimate_id);
			}
			$components_estimate = $productEstimate->componentsEstimate($focus->id);
			$productEstimate->name = $mod_strings['LBL_EST_NAME_PREFIX']."-".$focus->name;
			$productEstimate->product_name = $focus->name;
			$productEstimate->product_id = $focus->id;
			$productEstimate->total_paper = $components_estimate['total_paper'];
			$productEstimate->total_prepress = $components_estimate['total_prepress'];
			$productEstimate->total_press = $components_estimate['total_press'];
			$productEstimate->total_operations = $components_estimate['total_operations'];
			$productEstimate->total_estimate = $components_estimate['total'];
			$productEstimate->assigned_user_id = $current_user->id;
			$productEstimate->status = 'uptodate';
			
			$productEstimate->save($GLOBALS['check_notify']);
	
	$focus->status = 'estimated';
	$focus->save($GLOBALS['check_notify']);
			
	header("Location: index.php?action=DetailView&module=ProductEstimate&record=$productEstimate->id");
			
}
*/
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

/*$component_estimate_check = $focus->components_estimate_check($focus->id);
if ($component_estimate_check == true){
	$xtpl->assign('disabled_calc', "disabled");
	$xtpl->assign('LBL_CALC_BUTTON_TITLE', $mod_strings['LBL_COMPONENT_NOT_ESTIMATED']);	
}
else{
	
	$xtpl->assign('disabled_calc', "");
	$xtpl->assign('LBL_CALC_BUTTON_TITLE', $mod_strings['LBL_CALC_BUTTON_TITLE']);	
}*/

$xtpl->assign('stat_action', 'estimate');

//$record = $focus->get_calc_record($focus->id);
//$calculant_id = $focus->get_calculant();
 
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

$quote_check = false;//$focus->quote_check($focus->id);
if ($quote_check == true){
	$xtpl->assign('disabled_quote', "disabled");
	$xtpl->assign('LBL_QUOTE_BUTTON_TITLE', $mod_strings['LBL_PRODUCT_NOT_ESTIMATED']);	
}
else{
	
	$xtpl->assign('disabled_quote', "");
	$xtpl->assign('LBL_QUOTE_BUTTON_TITLE', $mod_strings['LBL_PRODUCT_NOT_ESTIMATED']);	
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
$xtpl->assign('period', $app_list_strings['products_period_options'][$focus->period]);
$xtpl->assign('pnum', $focus->pnum);
$xtpl->assign('category', $app_list_strings['products_category_options'][$focus->category]);
$xtpl->assign('note', $focus->note);
$xtpl->assign('quantity', $focus->quantity);
$xtpl->assign('status', $app_list_strings['product_component_status'][$focus->status]);
/*$xtpl->assign('fsize_h', $focus->fsize_h);
$xtpl->assign('fsize_w', $focus->fsize_w);*/
//$xtpl->assign('volume', $focus->volume);
$xtpl->assign('samples', $focus->samples);
$xtpl->assign('file', $focus->file);
$xtpl->assign('deadline', $focus->deadline);

$xtpl->assign('date_entered', $focus->date_entered);
$xtpl->assign('date_modified', $focus->date_modified);

//$focus->check_component_estimates();

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

$detailView->processListNavigation($xtpl, "PRODUCTS", $offset);
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
$subpanel = new SubPanelTiles($focus, 'Products');
echo $subpanel->display();


require_once('modules/SavedSearch/SavedSearch.php');
$savedSearch = new SavedSearch();
$json = getJSONobj();
$savedSearchSelects = $json->encode(array($GLOBALS['app_strings']['LBL_SAVED_SEARCH_SHORTCUT'] . '<br>' . $savedSearch->getSelect('Products')));
$str = "<script>
YAHOO.util.Event.addListener(window, 'load', SUGAR.util.fillShortcuts, $savedSearchSelects);
</script>";
echo $str;


?>