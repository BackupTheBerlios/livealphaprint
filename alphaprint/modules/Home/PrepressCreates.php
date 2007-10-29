<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');


require_once('modules/EstimateComponents/EstimateComponents.php');

$focus = new EstimateComponents();
global $app_list_strings;
if (isset($_REQUEST['lots_run_style_1']) && !is_null($_REQUEST['lots_run_style_1'])){
	$lots_run_style_1 = $_REQUEST['lots_run_style_1'];
}
if (isset($_REQUEST['lots_run_style_2']) && !is_null($_REQUEST['lots_run_style_2'])){
	$lots_run_style_2 = $_REQUEST['lots_run_style_2'];
}
if (isset($_REQUEST['prepress_x']) && !is_null($_REQUEST['prepress_x'])){
	$prepress_x = $_REQUEST['prepress_x'];
}
if (isset($_REQUEST['prepress_y']) && !is_null($_REQUEST['prepress_y'])){
	$prepress_y = $_REQUEST['prepress_y'];
}
if (isset($_REQUEST['prepress_type']) && !is_null($_REQUEST['prepress_type'])){
	$prepress_type = $_REQUEST['prepress_type'];
}
if (isset($_REQUEST['color_side_a']) && !is_null($_REQUEST['color_side_a'])){
	$color_side_a = $_REQUEST['color_side_a'];
}
if (isset($_REQUEST['color_side_b']) && !is_null($_REQUEST['color_side_b'])){
	$color_side_b = $_REQUEST['color_side_b'];
}


if ($prepress_type == "ctp"){
	$gauge = ",gauge";
	$table = "rateplate";
}
else{
	$gauge = "";
	$table = "ratefilm";	
}

$data = array();
$query = " SELECT id, name, size_x, size_y $gauge FROM $table WHERE size_x=$prepress_x AND size_y=$prepress_y AND deleted=0 AND $table.default='on' ";
$result = $focus->db->query($query,true,"Error filling layout fields: ");

while (($row = $focus->db->fetchByAssoc($result)) != null){
	
	$aX[] = $row['size_x'];
	$aY[] = $row['size_y'];
	$aIds[] = $row['id'];
	$aNames[] = $row['name'];
	if ($gauge == ",gauge"){
		$aGauge[] = $row['gauge'];
	}
	else{
		$aGauge = "";	
	}		
	  
}
	$echo = '<script type="text/javascript">';
	$echo .= "var aX = new Array();";
	$echo .= "var aY = new Array();";
	$echo .= "var aIds = new Array();";
	$echo .= "var aNames = new Array();";
	$echo .= "var aGauge = new Array();";
	
for ($i = 0; $i < count($aIds); $i++) {
	$echo .= 'aX.push("'.$aX[$i].'");';
	$echo .= 'aY.push("'.$aY[$i].'");';
	$echo .= 'aIds.push("'.$aIds[$i].'");';	
	$echo .= 'aNames.push("'.$aNames[$i].'");';
	$echo .= 'aGauge.push("'.$aGauge[$i].'");';
}

$count = ($lots_run_style_1+$lots_run_style_2)*$color_side_a;
$echo .= 'AddPrepressGridRow("a",aX,aY,aIds,aNames,aGauge, '.$count.');';

if($color_side_b > 0){
	$count = $lots_run_style_1*$color_side_b;
	$echo .= 'AddPrepressGridRow("b",aX,aY,aIds,aNames,aGauge, '.$count.');';
}
$echo .= 'toggleDisplay("'.$prepress_type.'")';
$echo .= '</script>';

echo $echo;




?>
