<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
require_once('modules/Paperformat/Paperformat.php');
$format = new Paperformat();

if (isset($_REQUEST['format_action']) && ($_REQUEST['format_action'] == 'new')){
	$format->New_Format($_GET['type'], $_REQUEST['format_action']);
}
if (isset($_REQUEST['format_action']) && ($_REQUEST['format_action'] == 'modify')){
	$format->New_Format($_GET['type'], $_REQUEST['format_action'],$_REQUEST['old_name']);
}
if (isset($_REQUEST['format_action']) && ($_REQUEST['format_action'] == 'save')){
	$x = $_GET['x'];
	$y = $_GET['y'];
	$format->Save_Format($_GET['x'],$_GET['y'],$_GET['type']);
	
}
if (isset($_REQUEST['format_action']) && ($_REQUEST['format_action'] == 'delete')){
	$x = $_GET['x'];
	$y = $_GET['y'];
	$format->Save_Format($_GET['x'], $_GET['y'], $_GET['type'], null, null, true);
	
}
if (isset($_REQUEST['format_action']) && ($_REQUEST['format_action'] == 'modify_save')){
	$x = $_GET['x'];
	$y = $_GET['y'];
	$format->Save_Format($_GET['x'], $_GET['y'], $_GET['type'], $_GET['format_action'], $_GET['old_name']);
	
}

if (isset($_REQUEST['format_action']) && ($_REQUEST['format_action'] == 'get_format')){
	$name = $_GET['name'];
	$selected = $_GET['selected'];
	$format->Get_Format($selected,$name);
}

if (isset($_REQUEST['format_action']) && ($_REQUEST['format_action'] == 'get_paper_format')){
	$selected = $_GET['selected'];
	$format->get_paper_format($selected);
}



?>
