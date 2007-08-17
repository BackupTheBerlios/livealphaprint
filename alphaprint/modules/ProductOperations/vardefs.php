<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/**
 * Table definition file for the project table
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



$dictionary['ProductOperation'] = array(
	'table' => 'productoperations',
	'unified_search' => true,
	'comment' => 'Product Operations',
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
			'comment' => 'Project name'
		),
		
		
		'product_name' => array(
			'name' => 'product_name',
			'vname' => 'LBL_PRODUCT_NAME',
			'required' => false,
			'type' => 'varchar',
			'len' => 50,
			'unified_search' => true,

		),
		
		'product_id' => array(
			'name' => 'product_id',
			'required' => false,
			'type' => 'id',
			'reportable'=>false,
			'comment' => 'Unique identifier'
		),
		
		'component_name' => array(
			'name' => 'component_name',
			'vname' => 'LBL_COMPONENT_NAME',
			'required' => false,
			'type' => 'varchar',
			'len' => 50,
			'unified_search' => true,
		),
		
		'component_id' => array(
			'name' => 'component_id',
			'required' => false,
			'type' => 'id',
			'reportable'=>false,
			'comment' => 'Unique identifier'
		),
		
		'machine_name' => array(
			'name' => 'machine_name',
			'vname' => 'LBL_MACHINE_NAME',
			'required' => false,
			'type' => 'varchar',
			'len' => 50,
			'unified_search' => true,
		),
		
		'machine_id' => array(
			'name' => 'machine_id',
			'required' => false,
			'type' => 'id',
			'reportable'=>false,
			'comment' => 'Unique identifier'
		),
		
		'operation_name' => array(
			'name' => 'operation_name',
			'vname' => 'LBL_OPERATION_NAME',
			'required' => false,
			'type' => 'varchar',
			'len' => 50,
			'unified_search' => true,
		),
		
		'operation_id' => array(
			'name' => 'operation_id',
			'required' => false,
			'type' => 'id',
			'reportable'=>false,
			'comment' => 'Unique identifier'
		),
		
		
		'operations_count' => array(
			'name' => 'operations_count',
			'vname' => 'LBL_OPERATIONS_COUNT',
			'required' => false,
			'type' => 'varchar',
			'len' => 50,
			'unified_search' => true,
		),
		
		
		
		
		'est_price' => array(
			'name' => 'est_price',
			'vname' => 'LBL_EST_PRICE',
			'required' => false,
			'type' => 'varchar',
			'len' => 50,
			'unified_search' => true,
		),
		
		'est_date' =>
			  array (
			    'name' => 'est_date',
			    'vname' => 'LBL_EST_DATE',
			    'type' => 'date',
			    'reportable'=>true,
			    'massupdate' =>true,
			    
			  ),
			  
		
			  
		'execution_date' =>
			  array (
			    'name' => 'execution_date',
			    'vname' => 'LBL_EXECUTION_DATE',
			    'type' => 'date',
			    'reportable'=>true,
			    'massupdate' =>true,
			    
			  ),
			  
		'executor' => array(
			'name' => 'executor',
			'vname' => 'LBL_EXECUTOR',
			'required' => false,
			'type' => 'varchar',
			'len' => 50,
			'unified_search' => true,
		),
		
		
		
		
		'executed_date' =>
			  array (
			    'name' => 'executed_date',
			    'vname' => 'LBL_EXECUTED_DATE',
			    'type' => 'date',
			    'reportable'=>true,
			    'massupdate' =>true,
			    
			  ),
			  
		'executored_from' => array(
			'name' => 'executored_from',
			'vname' => 'LBL_EXECUTED_FROM',
			'required' => false,
			'type' => 'varchar',
			'len' => 50,
			'unified_search' => true,
		),
		
		'executed_qty' => array(
			'name' => 'executed_qty',
			'vname' => 'LBL_EXECUTED_QTY',
			'required' => false,
			'type' => 'varchar',
			'len' => 50,
			'unified_search' => true,
		),
		
		
		
		
		
		
		'description' => array(
			'name' => 'description',
			'vname' => 'LBL_DESCRIPTION',
			'required' => false,
			'type' => 'text',
			'comment' => 'Project description'
		),
		'deleted' => array(
			'name' => 'deleted',
			'vname' => 'LBL_DELETED',
			'type' => 'bool',
			'required' => true,
			'default' => '0',
			'comment' => 'Record deletion indicator'
		),	
	

  'created_by_link' =>
  array (
        'name' => 'created_by_link',
    'type' => 'link',
    'relationship' => 'productoperations_created_by',
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
    'relationship' => 'productoperations_modified_user',
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
    'relationship' => 'productoperations_assigned_user',
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
		array('name' =>'project_primary_key_index',
			'type' =>'primary',
			'fields'=>array('id')
		),
	),
	'relationships' => array(

    'productoperations_assigned_user' =>
   array('lhs_module'=> 'Users', 'lhs_table'=> 'users', 'lhs_key' => 'id',
   'rhs_module'=> 'ProductOperations', 'rhs_table'=> 'productoperations', 'rhs_key' => 'assigned_user_id',
   'relationship_type'=>'one-to-many')

   ,'productoperations_modified_user' =>
   array('lhs_module'=> 'Users', 'lhs_table'=> 'users', 'lhs_key' => 'id',
   'rhs_module'=> 'ProductOperations', 'rhs_table'=> 'productoperations', 'rhs_key' => 'modified_user_id',
   'relationship_type'=>'one-to-many')

   ,'productoperations_created_by' =>
   array('lhs_module'=> 'Users', 'lhs_table'=> 'users', 'lhs_key' => 'id',
   'rhs_module'=> 'ProductOperations', 'rhs_table'=> 'productoperations', 'rhs_key' => 'created_by',
   'relationship_type'=>'one-to-many')







	),
);
?>
