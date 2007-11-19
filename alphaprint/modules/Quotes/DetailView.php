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
require_once('modules/Quotes/Quote.php');
require_once('include/TimeDate.php');
require_once('include/DetailView/DetailView.php');

$timedate = new TimeDate();
global $mod_strings;
global $app_strings;
global $app_list_strings;
global $gridline;
$focus = new Quote();

// only load a record if a record id is given;
// a record id is not given when viewing in layout editor
$detailView = new DetailView();
$offset=0;
if (isset($_REQUEST['offset']) or isset($_REQUEST['record'])) {
	$result = $detailView->processSugarBean("QUOTE", $focus, $offset);
	if($result == null) {
	    sugar_die("Error retrieving record.  You may not be authorized to view this record.");
	}
	$focus=$result;
} else {
	header("Location: index.php?module=Quotes&action=index");
}

if(isset($_REQUEST['isDuplicate']) && $_REQUEST['isDuplicate'] == 'true') {
	$focus->id = "";
}
echo "\n<p>\n";
echo get_module_title($mod_strings['LBL_MODULE_NAME'], $mod_strings['LBL_MODULE_NAME'].": ".$focus->name, true);
echo "\n</p>\n";
global $theme;
$theme_path="themes/".$theme."/";
$image_path=$theme_path."images/";
require_once($theme_path.'layout_utils.php');

$log->info("Quote detail view");

$xtpl=new XTemplate ('modules/Quotes/DetailView.html');
$xtpl->assign("MOD", $mod_strings);
$xtpl->assign("APP", $app_strings);

$xtpl->assign("THEME", $theme);
$xtpl->assign("GRIDLINE", $gridline);
$xtpl->assign("IMAGE_PATH", $image_path);
$xtpl->assign("PRINT_URL", "index.php?".$GLOBALS['request_string']);
$xtpl->assign("TAG", $focus->listviewACLHelper());

if (!empty($focus->estimate_id)){
	$xtpl->assign("PRODUCTROWS", $focus->add_quote_estimate($focus->estimate_id, true));
	$xtpl->parse("main.row1");
}

$xtpl_data = $focus->get_xtemplate_data();
$stage = $xtpl_data['STAGE'];
$xtpl_data['STAGE'] = $app_list_strings['quote_stage_dom'][$stage];
//Goodwill
$xtpl->assign("PAYMENT_TERM", $app_list_strings['payment_terms'][$focus->payment_term]);
$xtpl->assign("SHIPPING_TERM", $app_list_strings['shipping_term_dom'][$focus->shipping_term]);
$xtpl->assign("PAYMENT_METHOD", $app_list_strings['payment_method_dom'][$focus->payment_method]);
require_once('modules/Currencies/Currency.php');
$currency  = new Currency();
if(isset($focus->currency_id) && !empty($focus->currency_id))
{
	$currency->retrieve($focus->currency_id);
	if( $currency->deleted != 1){
		$xtpl->assign("CURRENCY", $currency->name);
	}else $xtpl->assign("CURRENCY", $currency->getDefaultCurrencyName());
}else{

	$xtpl->assign("CURRENCY", $currency->getDefaultCurrencyName());

}
//End Goodwill
$usernameid = $xtpl_data['ASSIGNED_USER_ID'];
//$xtpl->assign("ASSIGNED_TYPE", $app_list_strings['assigned_type_dom'][$focus->get_assigned_type()]);
$xtpl_data['ASSIGNED_USER_NAME'] = get_assigned_user_name($usernameid);
$xtpl->assign("Quote",$xtpl_data);
global $current_user;
if(is_admin($current_user) && $_REQUEST['module'] != 'DynamicLayout' && !empty($_SESSION['editinplace'])){
	$xtpl->assign("ADMIN_EDIT","<a href='index.php?action=index&module=DynamicLayout&from_action=".$_REQUEST['action'] ."&from_module=".$_REQUEST['module'] ."&record=".$_REQUEST['record']. "'>".get_image($image_path."EditLayout","border='0' alt='Edit Layout' align='bottom'")."</a>");
}

$xtpl->assign("TAG", $focus->listviewACLHelper());
$detailView->processListNavigation($xtpl, "QUOTE", $offset);
$xtpl->parse("main");
$xtpl->out("main");


require_once('include/SubPanel/SubPanelTiles.php');
$subpanel = new SubPanelTiles($focus, 'Quotes');
echo $subpanel->display();

?>