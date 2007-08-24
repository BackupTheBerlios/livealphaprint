<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');

require_once('modules/ProductComponents/ProductComponents.php');
	if (isset($_REQUEST['paper_id']) && !empty($_REQUEST['paper_id'])){
		$paperid = $_REQUEST['paper_id'];
	}
	$focus = new ProductComponents;
	$paper_data = $focus->get_paper_info($paperid);
	
	echo '<input name="x" id="x" value='.$paper_data['size_h'].'>';
	echo '<input name="y" id="y" value='.$paper_data['size_w'].'>';
	echo '<input name="weight" id="weight" value='.$paper_data['weight'].'>';
	echo '<input name="type" id="type" value='.$paper_data['chrome'].'>';
	echo '<input name="texture" id="texture" value='.$paper_data['texture'].'>';
	echo '<input name="color" id="color" value='.$paper_data['color'].'>';
	echo '<input name="absorbtion" id="absorbtion" value='.$paper_data['absorbtion'].'>';
	echo '<input name="side" id="side" value='.$paper_data['side'].'>';

?>
