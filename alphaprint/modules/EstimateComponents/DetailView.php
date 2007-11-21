<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/**
 * The detailed view for a EstimateCompnents
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
require_once('modules/EstimateComponents/EstimateComponents.php');
require_once('modules/Products/Products.php');
require_once('modules/ClientRequest/ClientRequest.php');
require_once('include/DetailView/DetailView.php');

global $app_strings;
global $app_list_strings;
global $mod_strings;
global $current_user;
global $theme;

$GLOBALS['log']->info("EstimateComponents detail view");
$theme_path = "themes/$theme/";
$image_path = "{$theme_path}images/";
$focus = new EstimateComponents();

$detailView = new DetailView();
$offset=0;
if (isset($_REQUEST['offset']) or isset($_REQUEST['record'])) {
	$result = $detailView->processSugarBean("ESTIMATECOMPONENTS", $focus, $offset);
	if($result == null) {
	    sugar_die($app_strings['ERROR_NO_RECORD']);
	}
	$focus=$result;
} else {
	header("Location: index.php?module=Accounts&action=index");
}
echo "\n<p>\n";
if ($focus->parent_bean == 'ClientRequest'){$mod_strings['LBL_MODULE_NAME'] = $mod_strings['LBL_CLIENTREQUEST_MODULE_NAME'];};
if ($focus->parent_bean == 'Estimates'){$mod_strings['LBL_MODULE_NAME'] = $mod_strings['LBL_ESTIMATES_MODULE_NAME'];};
echo get_module_title($mod_strings['LBL_MODULE_NAME'],
	$mod_strings['LBL_MODULE_NAME'].": ".$focus->name, true);
echo "\n</p>\n";

require_once("{$theme_path}layout_utils.php");

$xtpl = new XTemplate('modules/EstimateComponents/DetailView.html');

if (isset($_REQUEST['return_module'])) $xtpl->assign('return_module', $_REQUEST['return_module']);
if (isset($_REQUEST['return_action'])) $xtpl->assign('return_action', $_REQUEST['return_action']);
if (isset($_REQUEST['return_id'])) $xtpl->assign('return_id', $_REQUEST['return_id']);

if ($focus->parent_bean == 'Estimates'){
	$mod_strings['LBL_PARENT_ID'] = $mod_strings['LBL_PARENT_ESTIMATE'];
}
if ($focus->parent_bean == 'ClientRequest'){
	$mod_strings['LBL_PARENT_ID'] = $mod_strings['LBL_PARENT_CLIENTREQUEST'];
}

$xtpl->assign('MOD', $mod_strings);
$xtpl->assign('APP', $app_strings);
$xtpl->assign('THEME', $theme);
$xtpl->assign('GRIDLINE', $gridline);
$xtpl->assign('IMAGE_PATH', $image_path);
$xtpl->assign('PRINT_URL', "index.php?".$GLOBALS['request_string']);
$xtpl->assign('id', $focus->id);
$xtpl->assign('name', $focus->name);




$xtpl->assign('number', $focus->number);
//$xtpl->assign('type', $app_list_strings['type_options'][$focus->type]);
//$xtpl->assign('status', $app_list_strings['estimate_component_status'][$focus->status]);
$xtpl->assign('color_side_a', $focus->color_side_a);
$xtpl->assign('color_side_b', $focus->color_side_b);
$xtpl->assign('paper', $focus->paper);
$xtpl->assign('paperid', $focus->paperid);
$xtpl->assign('volume', $focus->volume);
$xtpl->assign('quantity', $focus->quantity);
$xtpl->assign('fsize_h', $focus->fsize_h);
$xtpl->assign('fsize_w', $focus->fsize_w);
//$xtpl->assign('format', $focus->format);
$xtpl->assign('price', $focus->price);
$xtpl->assign('parent_id', $focus->parent_id);
$xtpl->assign('parent_name', $focus->parent_name);
$xtpl->assign('description', nl2br(url2html($focus->description)));

$xtpl->assign('fsize_h', $focus->fsize_h);
$xtpl->assign('fsize_w', $focus->fsize_w);

$xtpl->assign('run_size_x', $focus->run_size_x);
$xtpl->assign('run_size_y', $focus->run_size_y);

$xtpl->assign('bleed_size_x', $focus->bleed_size_x);
$xtpl->assign('bleed_size_y', $focus->bleed_size_y);

$xtpl->assign('base_x', $focus->base_x);
$xtpl->assign('base_y', $focus->base_y);

$xtpl->assign('child_x', $focus->child_x);
$xtpl->assign('child_y', $focus->child_y);


$xtpl->assign('colors_a', $focus->colors_a);
$xtpl->assign('colors_b', $focus->colors_b);

$xtpl->assign('operations', $focus->operations);
$xtpl->assign('paper_description', $focus->paper_description);
$xtpl->assign('paper_type', $focus->paper_type);
$xtpl->assign('format_description', $focus->format_description);
$xtpl->assign('client_paper', $app_list_strings['client_paper_options'][$focus->client_paper]);
$xtpl->assign('paper_supplier_description', $focus->paper_supplier_description);
$xtpl->assign('paper_description', $focus->paper_description);

$xtpl->assign('parent_bean', $focus->parent_bean);

$xtpl->assign('pressformat_x', $focus->pressformat_x);
$xtpl->assign('pressformat_y', $focus->pressformat_y);

$xtpl->assign('stat_action', 'estimate');


$parent = new $focus->parent_bean;
$parent->retrieve($focus->parent_id);
$xtpl->assign('clientrequest_name', $parent->name);
$xtpl->assign("clientrequest_number", $parent->number);
if ($parent->object_name == "ClientRequest"){
	$xtpl->assign("due_date", $parent->due_date);
}
if ($parent->object_name == "Estimates"){
	$xtpl->assign("due_date", $parent->deadline);
}
$xtpl->assign('clientrequest_assigned_user_name', $parent->assigned_user_name);



$product = new Products();
$product->retrieve($parent->product_id);
$xtpl->assign("pnum", $product->pnum);
$xtpl->assign("product_name", $product->name);
$xtpl->assign("product_id", $product->id);
$xtpl->assign("account_name", $product->account_name);
$xtpl->assign("account_id", $product->account_id);
$xtpl->assign("contact_name", $product->contact_name);
$xtpl->assign("contact_id", $product->contact_id);

$clientrequest = $focus->get_client_request($focus->parent_id);
if ($clientrequest != null){
	$xtpl->assign("clientrequest_id", $clientrequest['id']);
	$xtpl->assign("clientrequest_name", $clientrequest['name']);	
}





//Precalculation 
$record = $focus->get_calc_record($focus->id);
$calculant_id = $focus->get_calculant();
if ($focus->parent_bean == 'ClientRequest'){
	$xtpl->assign('notify_button', 'hidden');
	$xtpl->assign('calc_button', 'hidden');
	$xtpl->assign('precalc_button', 'hidden');	
} 
else if (!empty($record) && !is_null($record)){
	$xtpl->assign('record', '&record='.$record.'&stat_action=estimate');
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
		$xtpl->assign('record', $record);
		$xtpl->assign('calc_button', 'button');
		$xtpl->assign('precalc_button', 'hidden');
		$xtpl->assign('notify_button', 'hidden');
	}
}
//Assign Inks
$ink_rows = $focus->getInkRows();
$inks_side_a = array();
$inks_side_b = array();

for ($i = 0; $i < count($ink_rows); $i++) {
	if ($ink_rows[$i]->side == "a") {
		$side_a = array();
		$side_a['name'] = $focus->getInkNames($ink_rows[$i]->color_id);
		$side_a['id'] = $ink_rows[$i]->color_id;
		$inks_side_a[] = $side_a;
		
	}
	if ($ink_rows[$i]->side == "b") {
		$side_b = array();
		$side_b['name'] = $focus->getInkNames($ink_rows[$i]->color_id);
		$side_b['id'] = $ink_rows[$i]->color_id;
		$inks_side_b[] = $side_b;
	}
	
}

$xtpl->assign('side_a_inks', $focus->inksDetailView($inks_side_a));
$xtpl->assign('side_b_inks', $focus->inksDetailView($inks_side_b));



$layoutrows = $focus->getLayoutRows();
for ($i=0;$i<count($layoutrows);$i++) {
        $fieldcount = count($layoutrows[$i]);
        $xtpl->assign("LAYOUTROWS",$focus->getLayoutRow($layoutrows[$i],$i,false));
        $xtpl->parse("main.row1");        
}

//Assign prepress
$prepress_rows = $focus->getPrepressRows();
$prepress_html = "";

for ($i = 0; $i < count($prepress_rows); $i++) {
		$prepress_html = $prepress_html.$focus->getPrepressRow($prepress_rows[$i],$i,false);
}
$xtpl->assign('prepress_html', $prepress_html);

//Assign Post-Press
$postpress_rows = $focus->getOperationsRows();
$postpress_html = "";

for ($i = 0; $i < count($postpress_rows); $i++) {
		$postpress_html = $postpress_html.$focus->getOperationsRow($postpress_rows[$i],$i,false);
}
$xtpl->assign('postpress_html', $postpress_html);




if(is_admin($current_user)
	&& $_REQUEST['module'] != 'DynamicLayout'
	&& !empty($_SESSION['editinplace']))
{
	$xtpl->assign('ADMIN_EDIT',
		"<a href='index.php?action=index&module=DynamicLayout&from_action="
			.$_REQUEST['action']
			."&from_module=".$_REQUEST['module'] ."&record="
			.$_REQUEST['record']. "'>"
			.get_image($image_path."EditLayout",
				"border='0' alt='Edit Layout' align='bottom'")."</a>");
}

$detailView->processListNavigation($xtpl, "ESTIMATECOMPONENTS", $offset, $focus->is_AuditEnabled());
// adding custom fields:
require_once('modules/DynamicFields/templates/Files/DetailView.php');





$xtpl->assign('TAG', $focus->listviewACLHelper());
if ($focus->parent_bean == 'ClientRequest'){
	$xtpl->parse('client_request');
	$xtpl->out('client_request');	
}
else{
	$xtpl->parse('main');
	$xtpl->out('main');
}

$sub_xtpl = $xtpl;
$old_contents = ob_get_contents();
ob_end_clean();
ob_start();
echo $old_contents;

if ($focus->parent_bean == 'Estimates'){
	require_once('include/SubPanel/SubPanelTiles.php');
	$subpanel = new SubPanelTiles($focus, 'EstimateComponents');
	echo $subpanel->display();
}

require_once('modules/SavedSearch/SavedSearch.php');
$savedSearch = new SavedSearch();
$json = getJSONobj();
$savedSearchSelects = $json->encode(array($GLOBALS['app_strings']['LBL_SAVED_SEARCH_SHORTCUT'] . '<br>' . $savedSearch->getSelect('EstimateComponents')));
$str = "<script>
YAHOO.util.Event.addListener(window, 'load', SUGAR.util.fillShortcuts, $savedSearchSelects);
</script>";
echo $str;

?>