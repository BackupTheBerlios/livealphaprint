<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/**
 * Table definition file for the clientorder table
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



$dictionary['ClientOrder'] = array(
	'table' => 'clientorder',
	'unified_search' => true,
	'comment' => 'ClientOrders',
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







		######### Additional Fields #########
		'number' => array(
			'name' => 'number',
			'vname' => 'LBL_NUMBER',
			'required' => false,
			'type' => 'varchar',
		),
		
		'due_date' => array(
			'name' => 'due_date',
			'vname' => 'LBL_DUE_DATE',
			'required' => false,
			'type' => 'date',
		),
		
		'quantity' => array(
			'name' => 'quantity',
			'vname' => 'LBL_QUANTITY',
			'required' => false,
			'type' => 'int',
		),
		
		'periodic' => array(
			'name' => 'periodic',
			'vname' => 'LBL_PERIODIC',
			'required' => false,
			'type' => 'enum',
			'options' => 'clientorder_period_options',
    		'len'=>25,
		),
		
		'special_requirements' => array(
			'name' => 'special_requirements',
			'vname' => 'LBL_SPECIAL_REQUIREMENTS',
			'required' => false,
			'type' => 'text',
		),
		
		'samples' => array(
			'name' => 'samples',
			'vname' => 'LBL_SAMPLES',
			'required' => false,
			'type' => 'enum',
			'options' => 'clientorder_samples_options',
    		'len'=>25,
		),
		
		'files' => array(
			'name' => 'files',
			'vname' => 'LBL_FILES',
			'required' => false,
			'type' => 'enum',
			'options' => 'clientorder_files_options',
    		'len'=>25,
		),
		
		'operation_description' => array(
			'name' => 'operation_description',
			'vname' => 'LBL_OPERATIONS_DESCRIPTION',
			'required' => false,
			'type' => 'text',
		),
		
		'transport' => array(
			'name' => 'transport',
			'vname' => 'LBL_TRANSPORT',
			'required' => false,
			'type' => 'text',
		),
		
		'pack' => array(
			'name' => 'pack',
			'vname' => 'LBL_PACK',
			'required' => false,
			'type' => 'text',
		),

		#########################################
		
		'name' => array(
			'name' => 'name',
			'vname' => 'LBL_NAME',
			'required' => true,
			'dbType' => 'varchar',
			'type' => 'name',
			'len' => 50,
			'unified_search' => true,
			'comment' => 'ClientOrder name'
		),
		
		'product_id' => array(
			'name' => 'product_id',
			'vname' => 'LBL_PRODUCT_ID',
			'required' => false,
			'type' => 'id',
			'reportable'=>false,
			'comment' => 'Unique identifier'
		),
		
		'description' => array(
			'name' => 'description',
			'vname' => 'LBL_DESCRIPTION',
			'required' => false,
			'type' => 'text',
			'comment' => 'ClientOrder description'
		),
		'deleted' => array(
			'name' => 'deleted',
			'vname' => 'LBL_DELETED',
			'type' => 'bool',
			'required' => true,
			'default' => '0',
			'comment' => 'Record deletion indicator'
		),	
		'total_estimated_effort' => 
  		array (
  			'name' => 'total_estimated_effort',
			'type' => 'int',
    		'source'=>'non-db',
			'vname'=>'LBL_LIST_TOTAL_ESTIMATED_EFFORT',
  		),		
		'total_actual_effort' => 
  		array (
  			'name' => 'total_actual_effort',
			'type' => 'int',
    		'source'=>'non-db',
			'vname'=>'LBL_LIST_TOTAL_ACTUAL_EFFORT',
  		),		
		
		'accounts' => 
  		array (
  			'name' => 'accounts',
    		'type' => 'link',
    		'relationship' => 'clientorders_accounts',
    		'source'=>'non-db',
    		'ignore_role'=>true,
				'vname'=>'LBL_ACCOUNTS',
  		),		
		'quotes' => 
  		array (
  			'name' => 'quotes',
    		'type' => 'link',
    		'relationship' => 'clientorders_quotes',
    		'source'=>'non-db',
    		'ignore_role'=>true,
				'vname'=>'LBL_QUOTES',
  		),		
		'contacts' => 
  		array (
  			'name' => 'contacts',
    		'type' => 'link',
    		'relationship' => 'clientorders_contacts',
    		'source'=>'non-db',
    		'ignore_role'=>true,
				'vname'=>'LBL_CONTACTS',
  		),		
		'opportunities' => 
  		array (
  			'name' => 'opportunities',
    		'type' => 'link',
    		'relationship' => 'clientorders_opportunities',
    		'source'=>'non-db',
    		'ignore_role'=>true,
				'vname'=>'LBL_OPPORTUNITIES',
  		),		
  		'notes' => 
  		array (
  			'name' => 'notes',
    		'type' => 'link',
    		'relationship' => 'clientorder_notes',
    		'source'=>'non-db',
				'vname'=>'LBL_NOTES',
  		),
  		'meetings' => 
  			array (
  			'name' => 'meetings',
    		'type' => 'link',
    		'relationship' => 'clientorder_meetings',
    		'source'=>'non-db',
				'vname'=>'LBL_MEETINGS',
  		),
		'calls' => 
  			array (
  			'name' => 'calls',
    		'type' => 'link',
    		'relationship' => 'clientorder_calls',
    		'source'=>'non-db',
				'vname'=>'LBL_CALLS',
  		),
  		'emails' => 
  			array (
  			'name' => 'emails',
    		'type' => 'link',
    		'relationship' => 'emails_clientorders_rel',
    		'source'=>'non-db',
				'vname'=>'LBL_EMAILS',
  		),
  		'clientordertask' => 
  			array (
  			'name' => 'clientordertask',
    		'type' => 'link',
    		'relationship' => 'clientorder_clientorder_tasks',
    		'source'=>'non-db',
				'vname'=>'LBL_CLIENTREQUEST_TASKS',
  		),

		'clientorder_components' => 
  			array (
  			'name' => 'clientorder_components',
    		'type' => 'link',
    		'relationship' => 'clientorder_estimatecomponents',
    		'source'=>'non-db',
		),











  'created_by_link' =>
  array (
        'name' => 'created_by_link',
    'type' => 'link',
    'relationship' => 'clientorders_created_by',
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
    'relationship' => 'clientorders_modified_user',
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
    'relationship' => 'clientorders_assigned_user',
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
		array('name' =>'clientorder_primary_key_index',
			'type' =>'primary',
			'fields'=>array('id')
		),
	),
	'relationships' => array(
	
	'clientorder_estimatecomponents' => array(
			'lhs_module'=> 'ClientOrder', 'lhs_table'=> 'clientorder', 'lhs_key' => 'id',
			'rhs_module'=> 'EstimateComponents', 'rhs_table'=> 'estimates_components', 'rhs_key' => 'parent_id',	
			'relationship_type'=>'one-to-many')
	
	,'clientorders_assigned_user' =>
   array('lhs_module'=> 'Users', 'lhs_table'=> 'users', 'lhs_key' => 'id',
   'rhs_module'=> 'ClientOrder', 'rhs_table'=> 'clientorder', 'rhs_key' => 'assigned_user_id',
   'relationship_type'=>'one-to-many')

   ,'clientorders_modified_user' =>
   array('lhs_module'=> 'Users', 'lhs_table'=> 'users', 'lhs_key' => 'id',
   'rhs_module'=> 'ClientOrder', 'rhs_table'=> 'clientorder', 'rhs_key' => 'modified_user_id',
   'relationship_type'=>'one-to-many')

   ,'clientorders_created_by' =>
   array('lhs_module'=> 'Users', 'lhs_table'=> 'users', 'lhs_key' => 'id',
   'rhs_module'=> 'ClientOrder', 'rhs_table'=> 'clientorder', 'rhs_key' => 'created_by',
   'relationship_type'=>'one-to-many')







	),
);
?>
