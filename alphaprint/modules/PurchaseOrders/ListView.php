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
require_once("data/Tracker.php");
require_once('modules/PurchaseOrders/PurchaseOrder.php');
require_once('themes/'.$theme.'/layout_utils.php');
require_once('log4php/LoggerManager.php');
require_once('include/ListView/ListViewSmarty.php');
require_once('include/ListView/ListView.php');
require_once('include/database/PearDatabase.php');



global $app_strings;
global $app_list_strings;
global $current_language;
$current_module_strings = return_module_language($current_language, 'PurchaseOrders');

global $urlPrefix;

global $currentModule;

global $theme;

// focus_list is the means of passing data to a ListView.
global $focus_list;

include('include/QuickSearchDefaults.php');
//Goodwill
//echo $qsScripts;
$qsd = new QuickSearchDefaults();
echo $qsd->getQSScripts();
//End Goodwill

if (!isset($where)) $where = "";
$seedPurchaseOrder =& new PurchaseOrder();
require_once('modules/MySettings/StoreQuery.php');
$storeQuery = new StoreQuery();

//$storeQuery->process_views($currentModule);
if(!isset($_REQUEST['query'])){
	$storeQuery->loadQuery($currentModule);
	$storeQuery->populateRequest();
}else{
	$storeQuery->saveFromGet($currentModule);	
}

if(isset($_REQUEST['query']))
{
	// we have a query
	if (isset($_REQUEST['num'])) $num = $_REQUEST['num'];
    if (isset($_REQUEST['order_date'])) $order_date = $_REQUEST['order_date'];
	if (isset($_REQUEST['delivery_date'])) $delivery_date = $_REQUEST['delivery_date'];
    if (isset($_REQUEST['sales_order_num'])) $sales_order_num = $_REQUEST['sales_order_num'];    
	if (isset($_REQUEST['current_user_only'])) $current_user_only = $_REQUEST['current_user_only'];
	if (isset($_REQUEST['assigned_user_id'])) $assigned_user_id = $_REQUEST['assigned_user_id'];	
	

	$where_clauses = Array();

    if(isset($num) && $num != "") array_push($where_clauses, "purchaseorders.num like '%".PearDatabase::purchaseorder($num)."%'");
	if(isset($order_date) && $order_date != "") array_push($where_clauses, "purchaseorders.order_date like '%".PearDatabase::purchaseorder($order_date)."%'");
	if(isset($delivery_date) && $delivery_date != "") array_push($where_clauses, "purchaseorders.delivery_date like '%".PearDatabase::purchaseorder($delivery_date)."%'");
	if(isset($sales_order_num) && $sales_order_num != "") array_push($where_clauses, "purchaseorders.sales_order_num like '%".PearDatabase::purchaseorder($sales_order_num)."%'");
	if(isset($current_user_only) && $current_user_only != "") array_push($where_clauses, "purchaseorders.assigned_user_id='$current_user->id'");

	/*
	//search by modified date.
	$date_period = '';
	if (isset($_REQUEST['date_period'])) $date_period = $_REQUEST['date_period'];
	if($date_period == "cust"){
		if (isset($_REQUEST['date_from'])) $date_from = $_REQUEST['date_from'];
		if (isset($_REQUEST['date_to'])) $date_to = $_REQUEST['date_to'];
		
	}else{
		$date_from = get_date_from($date_period);
		$date_to = get_date_to($date_period);
	}
	if(isset($date_from) && $date_from != "") array_push($where_clauses, "purchaseorders.date_modified>='$date_from'");
	if(isset($date_to) && $date_to != "") array_push($where_clauses, "purchaseorders.date_modified<='$date_to'");
	//~~ end search by modified date.
	*/
	
	$where = "";
	foreach($where_clauses as $clause)
	{
		if($where != "")
		$where .= " and ";
		$where .= $clause;
	}	
	
		

	$GLOBALS['log']->info("Here is the where clause for the list view: $where");

}

if (!isset($_REQUEST['search_form']) || $_REQUEST['search_form'] != 'false') {
	
	$search_form=new XTemplate ('modules/PurchaseOrders/SearchForm.html');
	
	if(isset($storeQuery->curTag) && in_array($storeQuery->curTag, $storeQuery->tags))
	{
		$r_ids = get_records_by_tag($currentModule, $_REQUEST['query_id']);
		$id_in = "('".implode("','", $r_ids)."')";
		$where = ' purchaseorders.id in '.$id_in;
	}
	

	$search_form->assign("USER_DATEFORMAT", '('.$timedate->get_user_date_format().')');
	$search_form->assign("CALENDAR_DATEFORMAT", $timedate->get_cal_date_format());
	$search_form->assign("THEME", $theme);
	
	$search_form->assign("MOD", $current_module_strings);
	$search_form->assign("APP", $app_strings);
	$search_form->assign("IMAGE_PATH", $image_path);
	$search_form->assign("JAVASCRIPT", get_clear_form_js());
	
    if (isset($num)) $search_form->assign("NUM", to_html($num));
    if (isset($order_date)) $search_form->assign("ORDER_DATE", to_html($order_date));
	if (isset($delivery_date)) $search_form->assign("DELIVERY_DATE", to_html($delivery_date));
	if (isset($sales_order_num)) $search_form->assign("SALES_ORDER_NUM", to_html($sales_order_num));
	if (isset($current_user_only)) $search_form->assign("CURRENT_USER_ONLY", "checked");
	
	
	$header_text = '';
	if(is_admin($current_user) && $_REQUEST['module'] != 'DynamicLayout' && !empty($_SESSION['editinplace'])){	
		$header_text = "<a href='index.php?action=index&module=DynamicLayout&from_action=SearchForm&from_module=".$_REQUEST['module'] ."'>".get_image($image_path."EditLayout","border='0' alt='Edit Layout' align='bottom'")."</a>";
	}
	echo get_form_header($current_module_strings['LBL_SEARCH_FORM_TITLE'], $header_text, false);
	$search_form->parse("main");
	$search_form->out("main");
	echo get_form_footer();
	echo "\n<BR>\n";
}

$ListView = new ListView();
$ListView->initNewXTemplate('modules/PurchaseOrders/ListView.html',$current_module_strings);
$ListView->setHeaderTitle($current_module_strings['LBL_LIST_FORM_TITLE']);
global $current_user;
if(is_admin($current_user) && $_REQUEST['module'] != 'DynamicLayout' && !empty($_SESSION['editinplace'])){	
	$ListView->setHeaderText("<a href='index.php?action=index&module=DynamicLayout&from_action=ListView&from_module=".$_REQUEST['module'] ."'>".get_image($image_path."EditLayout","border='0' alt='Edit Layout' align='bottom'")."</a>" );
}
$ListView->setQuery($where, "", "date_modified desc", "PURCHASEORDER");
$ListView->processListView($seedPurchaseOrder, "main", "PURCHASEORDER");
?>