<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
require_once('modules/Paperformat/Paperformat.php');
$format = new Paperformat();

if (isset($_REQUEST['format_action']) && ($_REQUEST['format_action'] == 'new')){
	$format->New_Format($_GET['type']);
}
if (isset($_REQUEST['format_action']) && ($_REQUEST['format_action'] == 'save')){
	$x = $_GET['x'];
	$y = $_GET['y'];
	$format->Save_Format($_GET['x'],$_GET['y'],$_GET['type']);
	
}

if (isset($_REQUEST['format_action']) && ($_REQUEST['format_action'] == 'get_format')){
	$name = $_GET['name'];
	$selected = $_GET['selected'];
	$format->Get_Format($selected,$name);
}



?>
