<?php

$dictionary['Layoutline'] = array(
'table' => 'layout',
'fields' => array (
  'id' =>
  array (
    'name' => 'id',
    'vname' => 'LBL_ID',
    'type' => 'id',
    'required'=>true,
  ),
  
  'name' => array(
	'name' => 'name',
	'vname' => 'LBL_NAME',
	'required' => false,
	'type' => 'varchar',
	'len' => 50,
	'unified_search' => true,

	),
		
  'product_component_id' =>
  array (
    'name' => 'product_component_id',
    'type' => 'id',
    'required'=>false,
  ),
 
  'number_lots' =>
  array (
     'name' => 'number_lots',
	 'vname' => 'LBL_NUMBER_LOTS',
	 'type' => 'int',
	 'required'=>false
  ),

  'number_units' =>
  array (
     'name' => 'number_units',
	 'vname' => 'LBL_NUMBER_UNITS',
	 'type' => 'int',
	 'required'=>false
  ),
  
  'run_style' => 
  array (
     'name' => 'run_style',
	 'vname' => 'LBL_RUN_STYLE',
	 'type' => 'char',
	 'len' => '50',
	 'reportable'=>true,
	 'required'=>false
  ),
  
  'format' => 
  array (
     'name' => 'format',
	 'type' => 'char',
	 'len' => '50',
	 'reportable'=>true,
	 'required'=>false
  ),
  

  

  'deleted' =>
  array (
     'name' => 'deleted',
	 'vname' => 'LBL_DELETED',
	 'type' => 'bool',

	 'required'=>false
  ),

  'date_entered' =>
  array (
     'name' => 'date_entered',
	 'vname' => 'LBL_DATE_ENTERED',
	 'type' => 'datetime',

	 'required'=>false
  ),

  'date_modified' =>
  array (
     'name' => 'date_modified',
	 'vname' => 'LBL_DATE_MODIFIED',
	 'type' => 'datetime',

	 'required'=>false
  ),

  'created_by' =>
  array (
    'name' => 'created_by',
    'rname' => 'user_name',
    'id_name' => 'modified_user_id',
    'vname' => 'LBL_ASSIGNED_TO',
    'type' => 'assigned_user_name',
    'table' => 'users',
    'isnull' => 'false',
    'dbType' => 'id',
    'required'=>true,
  ),
 

   
  )
);
?>