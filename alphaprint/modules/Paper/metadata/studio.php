<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/**
 * Author: Goodwill
 */

$GLOBALS['studioDefs']['Paper'] = array(
	'LBL_DETAILVIEW'=>array(
				'template'=>'xtpl',
				'template_file'=>'modules/Paper/DetailView.html',
				'php_file'=>'modules/Paper/DetailView.php',
				'type'=>'DetailView',
				),
	'LBL_EDITVIEW'=>array(
				'template'=>'xtpl',
				'template_file'=>'modules/Paper/EditView.html',
				'php_file'=>'modules/Paper/EditView.php',
				'type'=>'EditView',
				),
	'LBL_LISTVIEW'=>array(
				'template'=>'listview',
				'meta_file'=>'modules/Paper/listviewdefs.php',
				'type'=>'ListView',
				),
/*				
	'LBL_SEARCHFORM'=>array(
				'template'=>'xtpl',
				'template_file'=>'modules/Products/SearchForm.html',
				'php_file'=>'modules/Products/ListView.php',
				'type'=>'SearchForm',
				),
*/
);
