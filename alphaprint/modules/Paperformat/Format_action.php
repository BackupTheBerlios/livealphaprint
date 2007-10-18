<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
require_once('modules/Paperformat/Paperformat.php');
$format = new Paperformat();

if (isset($_REQUEST['format_action']) && ($_REQUEST['format_action'] == 'new')){
	$format->New_Format();
}
if (isset($_REQUEST['format_action']) && ($_REQUEST['format_action'] == 'save')){
	$x = $_GET['x'];
	$y = $_GET['y'];
	$obj_name = $_GET['obj_name'];
	$format->Save_Format($x,$y,$obj_name);
	
}

if (isset($_REQUEST['format_action']) && ($_REQUEST['format_action'] == 'get_format')){
	$name = $_GET['name'];
	$selected = $_GET['selected'];
	$format->Get_Format($selected,$name);
}



?>
