<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/**
 * Table definition file for the materials table
 *
 * The contents of this file are subject to the SugarCRM Public License Version
 * 1.1.3 ("License"); You may not use this file except in compliance with the
 * License. You may obtain a copy of the License at http://www.sugarcrm.com/SPL
 * Software distributed under the License is distributed on an "AS IS" basis,
 * WITHOUT WARRANTY OF ANY KIND, either express or implied.  See the License
 * for the specific language governing rights and limitations under the
 * License.
 *
 * All copies of the Covered Code must include on each user interface screen:
 *    (i) the "Powered by SugarCRM" logo and
 *    (ii) the SugarCRM copyright notice
 * in the same form as they appear in the distribution.  See full license for
 * requirements.
 *
 * The Original Code is: SugarCRM Open Source
 * The Initial Developer of the Original Code is SugarCRM, Inc.
 * Portions created by SugarCRM are Copyright (C) 2004-2006 SugarCRM, Inc.;
 * All Rights Reserved.
 * Contributor(s): ______________________________________.
 */



$dictionary['Material'] = array(
	'table' => 'materials',
	'unified_search' => true,
	'comment' => 'Materials',
	'fields' => array(
		'id' => array(
			'name' => 'id',
			'vname' => 'LBL_ID',
			'required' => true,
			'type' => 'id',
			'reportable'=>false,
			'comment' => 'Unique identifier'
		),
		'date_entered' => array(
			'name' => 'date_entered',
			'vname' => 'LBL_DATE_ENTERED',
			'type' => 'datetime',
			'required' => true,
			'comment' => 'Date record created'
		),
		'date_modified' => array(
			'name' => 'date_modified',
			'vname' => 'LBL_DATE_MODIFIED',
			'type' => 'datetime',
			'required' => true,
			'comment' => 'Date record last modified'
		),
		'assigned_user_id' => array(
			'name' => 'assigned_user_id',
			'rname' => 'user_name',
			'id_name' => 'assigned_user_id',
			'type' => 'assigned_user_name',
			'vname' => 'LBL_ASSIGNED_USER_ID',
			'required' => false,
			'len' => 36,
			'dbType' => 'id',
			'table' => 'users',
			'isnull' => false,
			'reportable'=>true,
			'comment' => 'User assigned to this record'
		),
		'modified_user_id' => array(
			'name' => 'modified_user_id',
			'rname' => 'user_name',
			'id_name' => 'modified_user_id',
			'vname' => 'LBL_MODIFIED_USER_ID',
			'type' => 'assigned_user_name',
			'table' => 'users',
			'isnull' => 'false',
			'dbType' => 'id',
			'reportable'=>true,
			'comment' => 'User who last modified record'
		),
		'created_by' => array(
			'name' => 'created_by',
			'rname' => 'user_name',
			'id_name' => 'modified_user_id',
			'vname' => 'LBL_CREATED_BY',
			'type' => 'assigned_user_name',
			'table' => 'users',
			'isnull' => 'false',
			'dbType' => 'id',
			'comment' => 'User who created record'
		),











		'name' => array(
			'name' => 'name',
			'vname' => 'LBL_NAME',
			'required' => true,
			'dbType' => 'varchar',
			'type' => 'name',
			'len' => 50,
			'unified_search' => true,
			'comment' => ' name'
		),
		'description' => array(
			'name' => 'description',
			'vname' => 'LBL_DESCRIPTION',
			'required' => false,
			'type' => 'text',
			'comment' => ' description'
		),
		
		'num_suf' => 
			  array (
			     'name' => 'num_suf',
				 'type' => 'int',
				 'len' => '5',
				 'reportable'=>true,
				 'required'=>true
			  ),
			  
		'num' => 
			  array (
			     'name' => 'num',
				 'vname' => 'LBL_NUM',
				 'type' => 'char',
				 'len' => '36',
				 'reportable'=>true,
				 'required'=>false
			  ),
			  
	 	'num_pref' => 
		  array (
		     'name' => 'num_pref',
			 'type' => 'char',
			 'len' => '3',
			 'reportable'=>true,
			 'required'=>false
		  ),
		
		 'category' => 
		  array (
		     'name' => 'category',
			 'vname' => 'LBL_CATEGORY',
			 'type' => 'char',
			 'len' => '50',
			 'reportable'=>true,
			 'required'=>false
		  ),
		  
		  'measure' => 
		  array (
		     'name' => 'measure',
			 'vname' => 'LBL_MEASURE',
			 'type' => 'char',
			 'len' => '50',
			 'reportable'=>true,
			 'required'=>false
		  ),
		  
		 'type' => 
		  array (
		     'name' => 'type',
			 'vname' => 'LBL_TYPE',
			 'type' => 'char',
			 'len' => '255',
			 'reportable'=>true,
			 'required'=>false
		  ),
		  
		   'characteristic' => 
		  array (
		     'name' => 'characteristic',
			 'vname' => 'LBL_CHAR',
			 'type' => 'char',
			 'len' => '255',
			 'reportable'=>true,
			 'required'=>false
		  ),
		  
		   'manufacturer' => 
		  array (
		     'name' => 'manufacturer',
			 'vname' => 'LBL_MAN',
			 'type' => 'char',
			 'len' => '255',
			 'reportable'=>true,
			 'required'=>false
		  ),
		  
		  
		  
		  'pref_supplier_id' =>
  				array (
		     'name' => 'pref_supplier_id',
			 'type' => 'id',
			 'required'=>false
  			),

  		 'pref_supplier_name' =>
 				 array (
		     'name' => 'pref_supplier_name',
			 'type' => 'char',
			 'len' => '50',
			 'required'=>true
		),
		
		'deleted' => array(
			'name' => 'deleted',
			'vname' => 'LBL_DELETED',
			'type' => 'bool',
			'required' => true,
			'default' => '0',
			'comment' => 'Record deletion indicator'
		),	
		
		
		
	'suppliers' => 
  		array (
  			'name' => 'suppliers',
    		'type' => 'link',
    		'relationship' => 'materials_suppliers',
    		'source'=>'non-db',
    		'ignore_role'=>true,
				'vname'=>'LBL_SUPPLIERS',
  		),

	'supplies' => 
  array (
    'name' => 'supplies',
    'type' => 'link',
    'relationship' => 'materials_supplies',
    'module'=>'SupplyLines',
    'bean_name'=>'SupplyLine',
    'source'=>'non-db',
        'vname'=>'LBL_SUPPLIES',
  ),		
	
  	'prices' => 
  array (
    'name' => 'prices',
    'type' => 'link',
    'relationship' => 'materials_prices',
    'module'=>'Prices',
    'bean_name'=>'Price',
    'source'=>'non-db',
        'vname'=>'LBL_PRICES',
  ),		
  
  'created_by_link' =>
  array (
        'name' => 'created_by_link',
    'type' => 'link',
    'relationship' => 'materials_created_by',
    'vname' => 'LBL_CREATED_BY_USER',
    'link_type' => 'one',
    'module'=>'Users',
    'bean_name'=>'User',
    'source'=>'non-db',
  ),
  'modified_user_link' =>
  array (
        'name' => 'modified_user_link',
    'type' => 'link',
    'relationship' => 'materials_modified_user',
    'vname' => 'LBL_MODIFIED_BY_USER',
    'link_type' => 'one',
    'module'=>'Users',
    'bean_name'=>'User',
    'source'=>'non-db',
  ),
  'assigned_user_link' =>
  array (
        'name' => 'assigned_user_link',
    'type' => 'link',
    'relationship' => 'materials_assigned_user',
    'vname' => 'LBL_ASSIGNED_TO_USER',
    'link_type' => 'one',
    'module'=>'Users',
    'bean_name'=>'User',
    'source'=>'non-db',
  ),
'assigned_user_name' => 
array (
	'name' => 'assigned_user_name',
	'rname' => 'user_name',
	'id_name' => 'assigned_user_id',
	'vname' => 'LBL_ASSIGNED_USER_NAME',
	'type' => 'relate',
	'table' => 'users',
	'module' => 'Users',
	'dbType' => 'varchar',
	'link'=>'users',
	'len' => '255',
	'source'=>'non-db',
	), 


	),
	'indices' => array(
		array('name' =>'material_primary_key_index',
			'type' =>'primary',
			'fields'=>array('id')
		),
	),
	'relationships' => array(
	
	'materials_prices' => 
   array('lhs_module'=> 'Materials', 'lhs_table'=> 'materials', 'lhs_key' => 'id',
  'rhs_module'=> 'Prices', 'rhs_table'=> 'prices', 'rhs_key' => 'material_id',
  'relationship_type'=>'one-to-many'),
	
	'materials_supplies' => 
   array('lhs_module'=> 'Materials', 'lhs_table'=> 'materials', 'lhs_key' => 'id',
  'rhs_module'=> 'SupplyLines', 'rhs_table'=> 'supplylines', 'rhs_key' => 'materialid',
  'relationship_type'=>'one-to-many'),
			
	'materials_assigned_user' =>
   array('lhs_module'=> 'Users', 'lhs_table'=> 'users', 'lhs_key' => 'id',
   'rhs_module'=> 'Materials', 'rhs_table'=> 'materials', 'rhs_key' => 'assigned_user_id',
   'relationship_type'=>'one-to-many')

   ,'materials_modified_user' =>
   array('lhs_module'=> 'Users', 'lhs_table'=> 'users', 'lhs_key' => 'id',
   'rhs_module'=> 'Materials', 'rhs_table'=> 'materials', 'rhs_key' => 'modified_user_id',
   'relationship_type'=>'one-to-many')

   ,'materials_created_by' =>
   array('lhs_module'=> 'Users', 'lhs_table'=> 'users', 'lhs_key' => 'id',
   'rhs_module'=> 'Materials', 'rhs_table'=> 'materials', 'rhs_key' => 'created_by',
   'relationship_type'=>'one-to-many')







	),
);
?>
