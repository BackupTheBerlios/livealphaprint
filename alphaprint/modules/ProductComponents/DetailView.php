<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/**
 * The detailed view for a ProductCompnents
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
require_once('modules/ProductComponents/ProductComponents.php');
require_once('include/DetailView/DetailView.php');

global $app_strings;
global $app_list_strings;
global $mod_strings;
global $current_user;
global $theme;

$GLOBALS['log']->info("ProductComponents detail view");
$theme_path = "themes/$theme/";
$image_path = "{$theme_path}images/";
$focus = new ProductComponents();

$detailView = new DetailView();
$offset=0;
if (isset($_REQUEST['offset']) or isset($_REQUEST['record'])) {
	$result = $detailView->processSugarBean("PRODUCTCOMPONENTS", $focus, $offset);
	if($result == null) {
	    sugar_die($app_strings['ERROR_NO_RECORD']);
	}
	$focus=$result;
} else {
	header("Location: index.php?module=Accounts&action=index");
}
echo "\n<p>\n";
echo get_module_title($mod_strings['LBL_MODULE_NAME'],
	$mod_strings['LBL_MODULE_NAME'].": ".$focus->name, true);
echo "\n</p>\n";

require_once("{$theme_path}layout_utils.php");

$xtpl = new XTemplate('modules/ProductComponents/DetailView.html');

if (isset($_REQUEST['return_module'])) $xtpl->assign('return_module', $_REQUEST['return_module']);
if (isset($_REQUEST['return_action'])) $xtpl->assign('return_action', $_REQUEST['return_action']);
if (isset($_REQUEST['return_id'])) $xtpl->assign('return_id', $_REQUEST['return_id']);
$xtpl->assign('MOD', $mod_strings);
$xtpl->assign('APP', $app_strings);
$xtpl->assign('THEME', $theme);
$xtpl->assign('GRIDLINE', $gridline);
$xtpl->assign('IMAGE_PATH', $image_path);
$xtpl->assign('PRINT_URL', "index.php?".$GLOBALS['request_string']);
$xtpl->assign('id', $focus->id);
$xtpl->assign('name', $focus->name);




$xtpl->assign('number', $focus->number);
$xtpl->assign('type', $app_list_strings['type_options'][$focus->type]);
$xtpl->assign('status', $app_list_strings['product_component_status'][$focus->status]);
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

$xtpl->assign('paperpress_size_x', $focus->paperpress_size_x);
$xtpl->assign('paperpress_size_y', $focus->paperpress_size_y);

$xtpl->assign('press_size_x', $focus->press_size_x);
$xtpl->assign('press_size_y', $focus->press_size_y);

$xtpl->assign('stat_action', 'estimate');
//Precalculation 
$record = $focus->get_calc_record($focus->id);
$calculant_id = $focus->get_calculant();
 
if (!empty($record) && !is_null($record)){
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

$detailView->processListNavigation($xtpl, "PRODUCTCOMPONENTS", $offset, $focus->is_AuditEnabled());
// adding custom fields:
require_once('modules/DynamicFields/templates/Files/DetailView.php');






$xtpl->parse("main.open_source");



$xtpl->assign('TAG', $focus->listviewACLHelper());
$xtpl->parse('main');
$xtpl->out('main');

$sub_xtpl = $xtpl;
$old_contents = ob_get_contents();
ob_end_clean();
ob_start();
echo $old_contents;

require_once('include/SubPanel/SubPanelTiles.php');
$subpanel = new SubPanelTiles($focus, 'ProductComponents');
echo $subpanel->display();

require_once('modules/SavedSearch/SavedSearch.php');
$savedSearch = new SavedSearch();
$json = getJSONobj();
$savedSearchSelects = $json->encode(array($GLOBALS['app_strings']['LBL_SAVED_SEARCH_SHORTCUT'] . '<br>' . $savedSearch->getSelect('ProductComponents')));
$str = "<script>
YAHOO.util.Event.addListener(window, 'load', SUGAR.util.fillShortcuts, $savedSearchSelects);
</script>";
echo $str;

?>