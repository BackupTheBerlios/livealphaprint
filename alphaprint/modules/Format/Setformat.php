<?php

require_once('modules/Format/Format.php');
$format = new Format();

$format_action = $_GET['format_action'];


if($format_action == 'get_format'){
	$name = $_GET['name'];
	$selected = $_GET['selected'];
	$format->Get_Format($selected,$name);

}

if ($format_action == 'new'){
	$format->New_Format();
}

if($format_action == 'component_save'){
	$x = $_GET['x'];
	$y = $_GET['y'];
	$name = $_GET['name'];
	
	/*echo $x = $_GET['x'];
	echo $y = $_GET['y'];
	echo $name = $_GET['name'];*/
	
	$obj_name1 = $_GET['obj_name1'];
	$obj_name2 = $_GET['obj_name2'];
	$obj_name3 = $_GET['obj_name3'];
	
	$format->Save_Format($x,$y,$name);
	$format->Get_Html_Dropdown_Data($obj_name1);
	$format->Get_Html_Dropdown_Data($obj_name2);
	$format->Get_Html_Dropdown_Data($obj_name3);
}

if($format_action == 'admin_save'){
	$x = $_GET['x'];
	$y = $_GET['y'];
	$name = $_GET['name'];
	$obj_name = $_GET['obj_name'];
	$format->Save_Format($x,$y,$name);
	$format->Get_Html_Dropdown_Data($obj_name);

}

if($format_action == 'select_name'){
	$x = $_GET['x'];
	$y = $_GET['y'];
	$obj_name = $_GET['name'];
	$format->Select_Format_Name($x,$y,$obj_name);
}
	
if($format_action == 'modify'){
	$name = $_GET['name'];
	$format->Modify_Format($name);
}

if($format_action == 'modify_save'){
	$name = $_GET['name'];
	$old_name = $_GET['old_name'];
	$x = $_GET['x'];
	$y = $_GET['y'];
	$format->Save_Modify_Format($name,$old_name,$x,$y);
}

if($format_action == 'delete'){
	$name = $_GET['name'];
	$format->Delete_Format($name);
}



?>