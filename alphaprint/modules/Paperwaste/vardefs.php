<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/**
 * Table definition file for the paperwaste table
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



$dictionary['Paperwaste'] = array(
	'table' => 'paperwaste',
	'unified_search' => true,
	'comment' => 'Paperwastes',
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
			'comment' => 'Paperwaste name'
		),
		
		'type' => array(
			'name' => 'type',
			'vname' => 'LBL_TYPE',
			'required' => false,
			'type' => 'enum',
			'options' => 'paperwaste_type_options',
			'len' => 50,
			'unified_search' => true,
		),
		
		'setup_waste_per_plate' => array(
			'name' => 'setup_waste_per_plate',
			'vname' => 'LBL_SETUP_WASTE_PER_PLATE',
			'required' => false,
			'type' => 'int',
			'len' => 50,
			'unified_search' => true,
		),
		
		'step_amount' => array(
			'name' => 'step_amount',
			'vname' => 'LBL_STEP_AMOUNT',
			'error_label' => 'LBL_STEP_AMOUNT',
			'required' => true,
			'type' => 'int',
			'unified_search' => true,
		),
		
		'pressmachine_id' => array(
			'name' => 'pressmachine_id',
			'vname' => 'LBL_PRESSMACHINE_ID',
			'required' => true,
			'type' => 'id',
			'reportable'=>false,
			'comment' => 'Unique identifier'
		),
		
		'pressmachine_name' => array(
			'name' => 'pressmachine_name',
			'vname' => 'LBL_PRESSMACHINE_NAME',
			'required' => true,
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
		
		'operation_name' => array(
			'name' => 'operation_name',
			'vname' => 'LBL_OPERATION_NAME',
			'required' => false,
			'type' => 'varchar',
			'len' => 50,
			'unified_search' => true,

		),
		
		'active' => array(
			'name' => 'active',
			'vname' => 'LBL_ACTIVE',
			'type' =>'bool',
			'dbType'=>'enum',
			'options'=>'on|off',
			'required' => false,
			),
			
		'default' => array(
			'name' => 'default',
			'vname' => 'LBL_DEFAULT',
			'type' =>'bool',
			'dbType'=>'enum',
			'options'=>'on|off',
			'required' => false,
			),
		
		
		'description' => array(
			'name' => 'description',
			'vname' => 'LBL_DESCRIPTION',
			'required' => false,
			'type' => 'text',
			'comment' => 'Paperwaste description'
		),
		'deleted' => array(
			'name' => 'deleted',
			'vname' => 'LBL_DELETED',
			'type' => 'bool',
			'required' => true,
			'default' => '0',
			'comment' => 'Record deletion indicator'
		),	
	
		
		
		'accounts' => 
  		array (
  			'name' => 'accounts',
    		'type' => 'link',
    		'relationship' => 'paperwaste_accounts',
    		'source'=>'non-db',
    		'ignore_role'=>true,
				'vname'=>'LBL_ACCOUNTS',
  		),		
		'quotes' => 
  		array (
  			'name' => 'quotes',
    		'type' => 'link',
    		'relationship' => 'paperwaste_quotes',
    		'source'=>'non-db',
    		'ignore_role'=>true,
				'vname'=>'LBL_QUOTES',
  		),		
		'contacts' => 
  		array (
  			'name' => 'contacts',
    		'type' => 'link',
    		'relationship' => 'paperwaste_contacts',
    		'source'=>'non-db',
    		'ignore_role'=>true,
				'vname'=>'LBL_CONTACTS',
  		),		
		'opportunities' => 
  		array (
  			'name' => 'opportunities',
    		'type' => 'link',
    		'relationship' => 'paperwaste_opportunities',
    		'source'=>'non-db',
    		'ignore_role'=>true,
				'vname'=>'LBL_OPPORTUNITIES',
  		),		
  		'notes' => 
  		array (
  			'name' => 'notes',
    		'type' => 'link',
    		'relationship' => 'pricelist_notes',
    		'source'=>'non-db',
				'vname'=>'LBL_NOTES',
  		),
  		'meetings' => 
  			array (
  			'name' => 'meetings',
    		'type' => 'link',
    		'relationship' => 'pricelist_meetings',
    		'source'=>'non-db',
				'vname'=>'LBL_MEETINGS',
  		),
		'calls' => 
  			array (
  			'name' => 'calls',
    		'type' => 'link',
    		'relationship' => 'pricelist_calls',
    		'source'=>'non-db',
				'vname'=>'LBL_CALLS',
  		),
  		'emails' => 
  			array (
  			'name' => 'emails',
    		'type' => 'link',
    		'relationship' => 'emails_paperwaste_rel',
    		'source'=>'non-db',
				'vname'=>'LBL_EMAILS',
  		),
  		'pricelisttask' => 
  			array (
  			'name' => 'pricelisttask',
    		'type' => 'link',
    		'relationship' => 'pricelist_pricelist_tasks',
    		'source'=>'non-db',
				'vname'=>'LBL_PAPERWASTE_TASKS',
  		),













  'created_by_link' =>
  array (
        'name' => 'created_by_link',
    'type' => 'link',
    'relationship' => 'paperwaste_created_by',
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
    'relationship' => 'paperwaste_modified_user',
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
    'relationship' => 'paperwaste_assigned_user',
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
		array('name' =>'pricelist_primary_key_index',
			'type' =>'primary',
			'fields'=>array('id')
		),
	),
	'relationships' => array(
		/*'pricelist_notes' => array(
			'lhs_module'=> 'Paperwaste', 'lhs_table'=> 'paperwaste', 'lhs_key' => 'id',
			'rhs_module'=> 'Notes', 'rhs_table'=> 'notes', 'rhs_key' => 'parent_id',	
			'relationship_type'=>'one-to-many', 'relationship_role_column'=>'parent_type',
			'relationship_role_column_value'=>'Paperwaste'),
		'pricelist_meetings' => array(
			'lhs_module'=> 'Paperwaste', 'lhs_table'=> 'paperwaste', 'lhs_key' => 'id',
			'rhs_module'=> 'Meetings', 'rhs_table'=> 'meetings', 'rhs_key' => 'parent_id',	
			'relationship_type'=>'one-to-many', 'relationship_role_column'=>'parent_type',
			'relationship_role_column_value'=>'Paperwaste'),
		'pricelist_calls' => array(
			'lhs_module'=> 'Paperwaste', 'lhs_table'=> 'paperwaste', 'lhs_key' => 'id',
			'rhs_module'=> 'Calls', 'rhs_table'=> 'calls', 'rhs_key' => 'parent_id',	
			'relationship_type'=>'one-to-many', 'relationship_role_column'=>'parent_type',
			'relationship_role_column_value'=>'Paperwaste'),
		'pricelist_emails' => array(
			'lhs_module'=> 'Paperwaste', 'lhs_table'=> 'paperwaste', 'lhs_key' => 'id',
			'rhs_module'=> 'Emails', 'rhs_table'=> 'emails', 'rhs_key' => 'parent_id',	
			'relationship_type'=>'one-to-many', 'relationship_role_column'=>'parent_type',
			'relationship_role_column_value'=>'Paperwaste'),
		'pricelist_pricelist_tasks' => array(
			'lhs_module'=> 'Paperwaste', 'lhs_table'=> 'paperwaste', 'lhs_key' => 'id',
			'rhs_module'=> 'PaperwasteTask', 'rhs_table'=> 'pricelist_task', 'rhs_key' => 'parent_id',	
			'relationship_type'=>'one-to-many'),	*/
	'paperwaste_assigned_user' =>
   array('lhs_module'=> 'Users', 'lhs_table'=> 'users', 'lhs_key' => 'id',
   'rhs_module'=> 'Paperwaste', 'rhs_table'=> 'paperwaste', 'rhs_key' => 'assigned_user_id',
   'relationship_type'=>'one-to-many')

   ,'	' =>
   array('lhs_module'=> 'Users', 'lhs_table'=> 'users', 'lhs_key' => 'id',
   'rhs_module'=> 'Paperwaste', 'rhs_table'=> 'paperwaste', 'rhs_key' => 'modified_user_id',
   'relationship_type'=>'one-to-many')

   ,'paperwaste_created_by' =>
   array('lhs_module'=> 'Users', 'lhs_table'=> 'users', 'lhs_key' => 'id',
   'rhs_module'=> 'Paperwaste', 'rhs_table'=> 'paperwaste', 'rhs_key' => 'created_by',
   'relationship_type'=>'one-to-many')







	),
);
?>
