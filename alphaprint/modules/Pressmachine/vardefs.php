<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/**
 * Table definition file for the pressmachine table
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



$dictionary['Pressmachine'] = array(
	'table' => 'pressmachine',
	'unified_search' => true,
	'comment' => 'Pressmachines',
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
			'required' => true,
			'comment' => 'Pressmachine name'
		),
		
		'model' => array(
			'name' => 'model',
			'vname' => 'LBL_MODEL',
			'required' => false,
			'type' => 'varchar',
			'len' => 50,
			'unified_search' => true,

		),
		
		'manufacturer' => array(
			'name' => 'manufacturer',
			'vname' => 'LBL_MANUFACTURER',
			'required' => false,
			'type' => 'varchar',
			'len' => 50,
			'unified_search' => true,

		),
		
		'gripper' => array(
			'name' => 'gripper',
			'vname' => 'LBL_GRIPPER',
			'required' => false,
			'type' => 'varchar',
			'len' => 50,
			'unified_search' => true,

		),
		
		'speed' => array(
			'name' => 'speed',
			'vname' => 'LBL_SPEED',
			'required' => false,
			'type' => 'varchar',
			'len' => 50,
			'unified_search' => true,

		),
		
		'printing_units' => array(
			'name' => 'printing_units',
			'vname' => 'LBL_PRINTING_UNITS',
			'required' => false,
			'type' => 'int',
			'unified_search' => true,

		),
		
		'sortorder' => array(
			'name' => 'sortorder',
			'vname' => 'LBL_SORTORDER',
			'required' => false,
			'type' => 'int',
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
		
		's_x' => array(
			'name' => 's_x',
			'vname' => '',
			'required' => true,
			'type' => 'float',
			'unified_search' => true,

		),
		
		's_y' => array(
			'name' => 's_y',
			'vname' => '',
			'required' => true,
			'type' => 'float',
			'unified_search' => true,

		),
		
		's_f' => array(
			'name' => 's_f',
			'required' => false,
			'vname' => 'LBL_SF',
			'type' => 'varchar',
			'unified_search' => true,

		),
		
		'm_x' => array(
			'name' => 'm_x',
			'vname' => '',
			'required' => true,
			'type' => 'float',
			'unified_search' => true,

		),
		
		'm_y' => array(
			'name' => 'm_y',
			'vname' => '',
			'required' => true,
			'type' => 'float',
			'unified_search' => true,

		),
		
		'm_f' => array(
			'name' => 'm_f',
			'required' => false,
			'vname' => 'LBL_MF',
			'type' => 'varchar',
			'unified_search' => true,

		),
		
		'mp_x' => array(
			'name' => 'mp_x',
			'vname' => '',
			'required' => true,
			'type' => 'float',
			'unified_search' => true,

		),
		
		'mp_y' => array(
			'name' => 'mp_y',
			'vname' => '',
			'required' => true,
			'type' => 'float',
			'unified_search' => true,

		),
		
		'mp_f' => array(
			'name' => 'mp_f',
			'required' => false,
			'vname' => 'LBL_MPF',
			'type' => 'varchar',
			'unified_search' => true,

		),
		
		'plate_price' => array(
			'name' => 'plate_price',
			'vname' => 'LBL_PLATE_PRICE',
			'required' => true,
			'type' => 'float',
			'unified_search' => true,

		),
		
		
		'description' => array(
			'name' => 'description',
			'vname' => 'LBL_DESCRIPTION',
			'required' => false,
			'type' => 'text',
			'comment' => 'Pressmachine description'
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
    		'relationship' => 'pressmachines_accounts',
    		'source'=>'non-db',
    		'ignore_role'=>true,
				'vname'=>'LBL_ACCOUNTS',
  		),		
		'quotes' => 
  		array (
  			'name' => 'quotes',
    		'type' => 'link',
    		'relationship' => 'pressmachines_quotes',
    		'source'=>'non-db',
    		'ignore_role'=>true,
				'vname'=>'LBL_QUOTES',
  		),		
		'contacts' => 
  		array (
  			'name' => 'contacts',
    		'type' => 'link',
    		'relationship' => 'pressmachines_contacts',
    		'source'=>'non-db',
    		'ignore_role'=>true,
				'vname'=>'LBL_CONTACTS',
  		),		
		'opportunities' => 
  		array (
  			'name' => 'opportunities',
    		'type' => 'link',
    		'relationship' => 'pressmachines_opportunities',
    		'source'=>'non-db',
    		'ignore_role'=>true,
				'vname'=>'LBL_OPPORTUNITIES',
  		),		
  		'notes' => 
  		array (
  			'name' => 'notes',
    		'type' => 'link',
    		'relationship' => 'pressmachine_notes',
    		'source'=>'non-db',
				'vname'=>'LBL_NOTES',
  		),
  		'meetings' => 
  			array (
  			'name' => 'meetings',
    		'type' => 'link',
    		'relationship' => 'pressmachine_meetings',
    		'source'=>'non-db',
				'vname'=>'LBL_MEETINGS',
  		),
		'calls' => 
  			array (
  			'name' => 'calls',
    		'type' => 'link',
    		'relationship' => 'pressmachine_calls',
    		'source'=>'non-db',
				'vname'=>'LBL_CALLS',
  		),
  		'emails' => 
  			array (
  			'name' => 'emails',
    		'type' => 'link',
    		'relationship' => 'emails_pressmachines_rel',
    		'source'=>'non-db',
				'vname'=>'LBL_EMAILS',
  		),
  		'pressmachinetask' => 
  			array (
  			'name' => 'pressmachinetask',
    		'type' => 'link',
    		'relationship' => 'pressmachine_pressmachine_tasks',
    		'source'=>'non-db',
				'vname'=>'LBL_PRESSMACHINE_TASKS',
  		),













  'created_by_link' =>
  array (
        'name' => 'created_by_link',
    'type' => 'link',
    'relationship' => 'pressmachines_created_by',
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
    'relationship' => 'pressmachines_modified_user',
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
    'relationship' => 'pressmachines_assigned_user',
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
		array('name' =>'pressmachine_primary_key_index',
			'type' =>'primary',
			'fields'=>array('id')
		),
	),
	'relationships' => array(
		
	'pressmachines_assigned_user' =>
   array('lhs_module'=> 'Users', 'lhs_table'=> 'users', 'lhs_key' => 'id',
   'rhs_module'=> 'Pressmachine', 'rhs_table'=> 'pressmachine', 'rhs_key' => 'assigned_user_id',
   'relationship_type'=>'one-to-many')

   ,'pressmachines_modified_user' =>
   array('lhs_module'=> 'Users', 'lhs_table'=> 'users', 'lhs_key' => 'id',
   'rhs_module'=> 'Pressmachine', 'rhs_table'=> 'pressmachine', 'rhs_key' => 'modified_user_id',
   'relationship_type'=>'one-to-many')

   ,'pressmachines_created_by' =>
   array('lhs_module'=> 'Users', 'lhs_table'=> 'users', 'lhs_key' => 'id',
   'rhs_module'=> 'Pressmachine', 'rhs_table'=> 'pressmachine', 'rhs_key' => 'created_by',
   'relationship_type'=>'one-to-many')







	),
);
?>
