<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');


require_once('modules/ProductComponents/ProductComponents.php');

$product = new ProductComponents();
if(!empty($_POST['record']))
{
	$product->retrieve($_POST['record']);
}
////
//// save the fields to the ProductComponents object
////

if(isset($_REQUEST['email_id'])) $product->email_id = $_REQUEST['email_id'];

if($_POST['order_number'] == '') $_POST['order_number'] = '1';

foreach($product->column_fields as $field)
{
	if(isset($_REQUEST[$field]))
	{
		$product->$field = $_REQUEST[$field];
	}

	if(!isset($_REQUEST['milestone_flag']))
	{
		$product->milestone_flag = 'off';
	}
}

//$product->time_start = str_replace('.',':',$_REQUEST['time_start']);
//$product->time_due = str_replace('.',':',$_REQUEST['time_due']);
// Get GMT clean values

if(!empty($_REQUEST['date_start']) && !empty($_REQUEST['time_start'])){
	$time_start_meridiem = "";
	if(isset($_REQUEST['time_start_meridiem'])){
		$time_start_meridiem = $_REQUEST['time_start_meridiem'];
	}
	
	$product->date_start = $_REQUEST['date_start'];
	$product->time_start = $_REQUEST['time_start'].$time_start_meridiem;
}
if(!empty($_REQUEST['date_due']) && !empty($_REQUEST['time_due'])){
	$time_due_meridiem = "";
	if(isset($_REQUEST['time_due_meridiem'])){
		$time_due_meridiem = $_REQUEST['time_due_meridiem'];
	}

	$product->date_due = $_REQUEST['date_due'];
	$product->time_due =  $_REQUEST['time_due'].$time_due_meridiem;
}

// lets SugarBean handle date processing
$product->process_save_dates = true;

$GLOBALS['check_notify'] = false;
if (!empty($_POST['assigned_user_id']) && ($focus->assigned_user_id != $_POST['assigned_user_id']) && ($_POST['assigned_user_id'] != $current_user->id)) {
	$GLOBALS['check_notify'] = true;
}

	if(!$product->ACLAccess('Save')){
		ACLController::displayNoAccess(true);
		sugar_cleanup(true);
	}
$product->save($GLOBALS['check_notify']);
if(isset($_REQUEST['form']))
{
	// we are doing the save from a popup window
	echo '<script>opener.window.location.reload();self.close();</script>';
	die();
}
else
{
	// need to refresh the page properly

	$return_module = empty($_REQUEST['return_module']) ? 'ProductComponents'
		: $_REQUEST['return_module'];

	$return_action = empty($_REQUEST['return_action']) ? 'index'
		: $_REQUEST['return_action'];

	$return_id = empty($_REQUEST['return_id']) ? $product->id
		: $_REQUEST['return_id'];
header("Location: index.php?module=$return_module&action=$return_action&record=$return_id");

}
?>
