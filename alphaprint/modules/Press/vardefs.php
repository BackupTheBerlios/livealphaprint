<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/**
 * Table definition file for the press table
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



$dictionary['Press'] = array(
	'table' => 'press',
	'unified_search' => true,
	'comment' => 'Presss',
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
			'comment' => 'Press name'
		),
		
		'pressmachine_name' => array(
			'name' => 'pressmachine_name',
			'vname' => 'LBL_PRESSMACHINE_NAME',
			'required' => false,
			'type' => 'varchar',
			'len' => 50,
			'unified_search' => true,

		),
		
		'pressmachine_id' => array(
			'name' => 'pressmachine_id',
			'required' => false,
			'type' => 'id',
			'reportable'=>false,
		),
		
		'description' => array(
			'name' => 'description',
			'vname' => 'LBL_DESCRIPTION',
			'required' => false,
			'type' => 'text',
			'comment' => 'Press description'
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
    		'relationship' => 'presss_accounts',
    		'source'=>'non-db',
    		'ignore_role'=>true,
				'vname'=>'LBL_ACCOUNTS',
  		),		
		'quotes' => 
  		array (
  			'name' => 'quotes',
    		'type' => 'link',
    		'relationship' => 'presss_quotes',
    		'source'=>'non-db',
    		'ignore_role'=>true,
				'vname'=>'LBL_QUOTES',
  		),		
		'contacts' => 
  		array (
  			'name' => 'contacts',
    		'type' => 'link',
    		'relationship' => 'presss_contacts',
    		'source'=>'non-db',
    		'ignore_role'=>true,
				'vname'=>'LBL_CONTACTS',
  		),		
		'opportunities' => 
  		array (
  			'name' => 'opportunities',
    		'type' => 'link',
    		'relationship' => 'presss_opportunities',
    		'source'=>'non-db',
    		'ignore_role'=>true,
				'vname'=>'LBL_OPPORTUNITIES',
  		),		
  		'notes' => 
  		array (
  			'name' => 'notes',
    		'type' => 'link',
    		'relationship' => 'press_notes',
    		'source'=>'non-db',
				'vname'=>'LBL_NOTES',
  		),
  		'meetings' => 
  			array (
  			'name' => 'meetings',
    		'type' => 'link',
    		'relationship' => 'press_meetings',
    		'source'=>'non-db',
				'vname'=>'LBL_MEETINGS',
  		),
		'calls' => 
  			array (
  			'name' => 'calls',
    		'type' => 'link',
    		'relationship' => 'press_calls',
    		'source'=>'non-db',
				'vname'=>'LBL_CALLS',
  		),
  		'emails' => 
  			array (
  			'name' => 'emails',
    		'type' => 'link',
    		'relationship' => 'emails_presss_rel',
    		'source'=>'non-db',
				'vname'=>'LBL_EMAILS',
  		),
  		'presstask' => 
  			array (
  			'name' => 'presstask',
    		'type' => 'link',
    		'relationship' => 'press_press_tasks',
    		'source'=>'non-db',
				'vname'=>'LBL_PRESS_TASKS',
  		),













  'created_by_link' =>
  array (
        'name' => 'created_by_link',
    'type' => 'link',
    'relationship' => 'press_created_by',
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
    'relationship' => 'press_modified_user',
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
    'relationship' => 'press_assigned_user',
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
		array('name' =>'press_primary_key_index',
			'type' =>'primary',
			'fields'=>array('id')
		),
	),
	'relationships' => array(
		/*'press_notes' => array(
			'lhs_module'=> 'Press', 'lhs_table'=> 'press', 'lhs_key' => 'id',
			'rhs_module'=> 'Notes', 'rhs_table'=> 'notes', 'rhs_key' => 'parent_id',	
			'relationship_type'=>'one-to-many', 'relationship_role_column'=>'parent_type',
			'relationship_role_column_value'=>'Press'),
		'press_meetings' => array(
			'lhs_module'=> 'Press', 'lhs_table'=> 'press', 'lhs_key' => 'id',
			'rhs_module'=> 'Meetings', 'rhs_table'=> 'meetings', 'rhs_key' => 'parent_id',	
			'relationship_type'=>'one-to-many', 'relationship_role_column'=>'parent_type',
			'relationship_role_column_value'=>'Press'),
		'press_calls' => array(
			'lhs_module'=> 'Press', 'lhs_table'=> 'press', 'lhs_key' => 'id',
			'rhs_module'=> 'Calls', 'rhs_table'=> 'calls', 'rhs_key' => 'parent_id',	
			'relationship_type'=>'one-to-many', 'relationship_role_column'=>'parent_type',
			'relationship_role_column_value'=>'Press'),
		'press_emails' => array(
			'lhs_module'=> 'Press', 'lhs_table'=> 'press', 'lhs_key' => 'id',
			'rhs_module'=> 'Emails', 'rhs_table'=> 'emails', 'rhs_key' => 'parent_id',	
			'relationship_type'=>'one-to-many', 'relationship_role_column'=>'parent_type',
			'relationship_role_column_value'=>'Press'),
		'press_press_tasks' => array(
			'lhs_module'=> 'Press', 'lhs_table'=> 'press', 'lhs_key' => 'id',
			'rhs_module'=> 'PressTask', 'rhs_table'=> 'press_task', 'rhs_key' => 'parent_id',	
			'relationship_type'=>'one-to-many'),*/	
	'press_assigned_user' =>
   array('lhs_module'=> 'Users', 'lhs_table'=> 'users', 'lhs_key' => 'id',
   'rhs_module'=> 'Press', 'rhs_table'=> 'press', 'rhs_key' => 'assigned_user_id',
   'relationship_type'=>'one-to-many')

   ,'press_modified_user' =>
   array('lhs_module'=> 'Users', 'lhs_table'=> 'users', 'lhs_key' => 'id',
   'rhs_module'=> 'Press', 'rhs_table'=> 'press', 'rhs_key' => 'modified_user_id',
   'relationship_type'=>'one-to-many')

   ,'press_created_by' =>
   array('lhs_module'=> 'Users', 'lhs_table'=> 'users', 'lhs_key' => 'id',
   'rhs_module'=> 'Press', 'rhs_table'=> 'press', 'rhs_key' => 'created_by',
   'relationship_type'=>'one-to-many')







	),
);
?>
