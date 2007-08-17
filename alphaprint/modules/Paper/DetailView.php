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
require_once('include/TimeDate.php');
require_once('include/DetailView/DetailView.php');

$timedate = new TimeDate();
global $mod_strings;
global $app_strings;
global $app_list_strings;
global $gridline;
$focus = new Paper();

$detailView = new DetailView();
$offset=0;
if (isset($_REQUEST['offset']) or isset($_REQUEST['record'])) {
	$result = $detailView->processSugarBean("PAPER", $focus, $offset);
	if($result == null) {
	    sugar_die("Error retrieving record.  You may not be authorized to view this record.");
	}
	$focus=$result;
} else {
	header("Location: index.php?module=Accounts&action=index");
}

//if(!empty($_REQUEST['record'])) {
//    $result = $focus->retrieve($_REQUEST['record']);
//    if($result == null)
//    {
//    	sugar_die("Error retrieving record.  You may not be authorized to view this record.");
//    }
//}
//else {
//	header("Location: index.php?module=Products&action=index");
//}

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

$xtpl=new XTemplate ('modules/Paper/DetailView.html');
$xtpl->assign("MOD", $mod_strings);
$xtpl->assign("APP", $app_strings);

$xtpl->assign("THEME", $theme);
$xtpl->assign("GRIDLINE", $gridline);

$xtpl->assign("ID", $focus->id);
//$xtpl->assign("IMAGE_PATH", $image_path);
//$xtpl->assign("PRINT_URL", "index.php?".$GLOBALS['request_string']);
$xtpl->assign("TAG", $focus->listviewACLHelper());
//$xtpl->assign("ASSIGNED_TO", $focus->assigned_user_name);
$xtpl_data = $focus->get_xtemplate_data();


//Goodwill
//if(!empty($xtpl_data['IS_ACTIVE']) && $xtpl_data['IS_ACTIVE'] > 0){$xtpl->assign('IS_ACTIVE', "CHECKED");}
//$xtpl->assign("UNIT", $app_list_strings['unit_of_measure'][$focus->unit]);
//$xtpl->assign("STATUS", $app_list_strings['product_status_dom'][$focus->status]);
//$xtpl->assign("QTY_AVAILABLE", $focus->qty_onhand - $focus->qty_reserved);
//
if(!isset($focus->imagename) || empty($focus->imagename)) { 
	$xtpl->assign("IMAGEPATH", "themes/default/images/Paper.gif"); }
else {
	$xtpl->assign("IMAGEPATH", $focus->imagepath); }
//End Goodwill
$xtpl->assign("Paper",$xtpl_data);
global $current_user;
if(is_admin($current_user) && $_REQUEST['module'] != 'DynamicLayout' && !empty($_SESSION['editinplace'])){
	$xtpl->assign("ADMIN_EDIT","<a href='index.php?action=index&module=DynamicLayout&from_action=".$_REQUEST['action'] ."&from_module=".$_REQUEST['module'] ."&record=".$_REQUEST['record']. "'>".get_image($image_path."EditLayout","border='0' alt='Edit Layout' align='bottom'")."</a>");
}

$detailView->processListNavigation($xtpl, "PAPER", $offset);

$xtpl->parse("main");
$xtpl->out("main");


require_once('include/SubPanel/SubPanelTiles.php');
$subpanel = new SubPanelTiles($focus, 'Paper');
echo $subpanel->display();

//echo ACLController::addJavascript($focus->module_dir,'',$focus->assigned_user_name == $current_user->user_name);

?>