<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/**
 * Table definition file for the componentestimatecalc table
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



$dictionary['ComponentEstimateCalc'] = array(
	'table' => 'componentestimatecalc',
	'unified_search' => true,
	'comment' => 'ComponentEstimateCalcs',
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
			'comment' => 'ComponentEstimateCalc name'
		),
		
		'component_name' => array(
			'name' => 'component_name',
			'vname' => 'LBL_COMPONENT_NAME',
			'required' => true,
			'type' => 'varchar',
			'len' => 50,
			'unified_search' => true,
		),
		
		'component_id' => array(
			'name' => 'component_id',
			'required' => true,
			'type' => 'id',
			'reportable'=>false,
			'comment' => 'Unique identifier'
		),
		
		'estimate_name' => array(
			'name' => 'estimate_name',
			'vname' => 'LBL_ESTIMATE_NAME',
			'required' => true,
			'type' => 'varchar',
			'len' => 50,
			'unified_search' => true,
		),
		
		'estimate_id' => array(
			'name' => 'estimate_id',
			'required' => true,
			'type' => 'id',
			'reportable'=>false,
			'comment' => 'Unique identifier'
		),
		
		'total_paper' => array(
			'name' => 'total_paper',
			'vname' => 'LBL_PAPER_TOTAL',
			'required' => false,
			'type' => 'float',
			//	'len' => 50,
			'unified_search' => true,
		),
		
		'total_press' => array(
			'name' => 'total_press',
			'vname' => 'LBL_PAPER_TOTAL',
			'required' => false,
			'type' => 'float',
			//'len' => 50,
			'unified_search' => true,
		),
		
		'total_prepress' => array(
			'name' => 'total_prepress',
			'vname' => 'LBL_PAPER_TOTAL',
			'required' => false,
			'type' => 'float',
			//'len' => 50,
			'unified_search' => true,
		),
		
		'total_operations' => array(
			'name' => 'total_operations',
			'vname' => 'LBL_PAPER_TOTAL',
			'required' => false,
			'type' => 'float',
			//'len' => 50,
			'unified_search' => true,
		),
		
		'paper_singleprice' => array(
			'name' => 'paper_singleprice',
			'vname' => 'LBL_PAPER_SINGLEPRICE',
			'required' => false,
			'type' => 'float',
			//'len' => 50,
			'unified_search' => true,
		),
		
		
		'status' => array(
			'name' => 'status',
			'vname' => 'LBL_STATUS',
			'required' => true,
			'type' => 'enum',
			'options' => 'componentestimatecalc_status_dom',
			'len' => 50,
			'unified_search' => true,
		),
		
		'press_rate_a_name' => array(
			'name' => 'press_rate_a_name',
			//'vname' => 'LBL_NAME',
			'required' => false,
			'type' => 'varchar',
			'len' => 50,
			'unified_search' => true,

		),
		
		'press_rate_b_name' => array(
			'name' => 'press_rate_b_name',
			//'vname' => 'LBL_NAME',
			'required' => false,
			'type' => 'varchar',
			'len' => 50,
			'unified_search' => true,

		),
		
		'press_rate_a_id' => array(
			'name' => 'press_rate_a_id',
			'required' => true,
			'type' => 'id',
			'reportable'=>false,
			'comment' => 'Unique identifier'
		),
		
		'press_rate_b_id' => array(
			'name' => 'press_rate_b_id',
			'required' => true,
			'type' => 'id',
			'reportable'=>false,
			'comment' => 'Unique identifier'
		),
		
		'press_rate_a_machine' => array(
			'name' => 'press_rate_a_machine',
			'required' => true,
			'type' => 'id',
			'reportable'=>false,
			'comment' => 'Unique identifier'
		),
		
		
		'press_rate_b_machine' => array(
			'name' => 'press_rate_b_machine',
			'required' => true,
			'type' => 'id',
			'reportable'=>false,
			'comment' => 'Unique identifier'
		),
		
		'press_rate_a_inks' => array(
			'name' => 'press_rate_a_inks',
			//'vname' => 'LBL_PAPER_TOTAL',
			'required' => false,
			'type' => 'int',
			//'len' => 50,
			'unified_search' => true,
		),
		
		'press_rate_b_inks' => array(
			'name' => 'press_rate_b_inks',
			//'vname' => 'LBL_PAPER_TOTAL',
			'required' => false,
			'type' => 'int',
			//'len' => 50,
			'unified_search' => true,
		),
		
		'press_paperwaste_rate_id' => array(
			'name' => 'press_paperwaste_rate_id',
			'required' => true,
			'type' => 'id',
			'reportable'=>false,
			'comment' => 'Unique identifier'
		),
		
		'press_paperwaste_rate_name' => array(
			'name' => 'press_paperwaste_rate_name',
			//'vname' => 'LBL_NAME',
			'required' => false,
			'type' => 'varchar',
			'len' => 50,
			'unified_search' => true,

		),
		
		'press_paperwaste_rate_machine' => array(
			'name' => 'press_paperwaste_rate_machine',
			'required' => true,
			'type' => 'id',
			'reportable'=>false,
			'comment' => 'Unique identifier'
		),
		
		
		
		
		'description' => array(
			'name' => 'description',
			'vname' => 'LBL_DESCRIPTION',
			'required' => false,
			'type' => 'text',
			'comment' => 'ComponentEstimateCalc description'
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
    		'relationship' => 'componentestimatecalcs_accounts',
    		'source'=>'non-db',
    		'ignore_role'=>true,
				'vname'=>'LBL_ACCOUNTS',
  		),		
		'quotes' => 
  		array (
  			'name' => 'quotes',
    		'type' => 'link',
    		'relationship' => 'componentestimatecalcs_quotes',
    		'source'=>'non-db',
    		'ignore_role'=>true,
				'vname'=>'LBL_QUOTES',
  		),		
		'contacts' => 
  		array (
  			'name' => 'contacts',
    		'type' => 'link',
    		'relationship' => 'componentestimatecalcs_contacts',
    		'source'=>'non-db',
    		'ignore_role'=>true,
				'vname'=>'LBL_CONTACTS',
  		),		
		'opportunities' => 
  		array (
  			'name' => 'opportunities',
    		'type' => 'link',
    		'relationship' => 'componentestimatecalcs_opportunities',
    		'source'=>'non-db',
    		'ignore_role'=>true,
				'vname'=>'LBL_OPPORTUNITIES',
  		),		
  		'notes' => 
  		array (
  			'name' => 'notes',
    		'type' => 'link',
    		'relationship' => 'componentestimatecalc_notes',
    		'source'=>'non-db',
				'vname'=>'LBL_NOTES',
  		),
  		'meetings' => 
  			array (
  			'name' => 'meetings',
    		'type' => 'link',
    		'relationship' => 'componentestimatecalc_meetings',
    		'source'=>'non-db',
				'vname'=>'LBL_MEETINGS',
  		),
		'calls' => 
  			array (
  			'name' => 'calls',
    		'type' => 'link',
    		'relationship' => 'componentestimatecalc_calls',
    		'source'=>'non-db',
				'vname'=>'LBL_CALLS',
  		),
  		'emails' => 
  			array (
  			'name' => 'emails',
    		'type' => 'link',
    		'relationship' => 'emails_componentestimatecalcs_rel',
    		'source'=>'non-db',
				'vname'=>'LBL_EMAILS',
  		),
  		'componentestimatecalctask' => 
  			array (
  			'name' => 'componentestimatecalctask',
    		'type' => 'link',
    		'relationship' => 'componentestimatecalc_componentestimatecalc_tasks',
    		'source'=>'non-db',
				'vname'=>'LBL_COMPONENTESTIMATECALC_TASKS',
  		),













  'created_by_link' =>
  array (
        'name' => 'created_by_link',
    'type' => 'link',
    'relationship' => 'componentestimatecalcs_created_by',
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
    'relationship' => 'componentestimatecalcs_modified_user',
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
    'relationship' => 'componentestimatecalcs_assigned_user',
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
		array('name' =>'componentestimatecalc_primary_key_index',
			'type' =>'primary',
			'fields'=>array('id')
		),
	),
	'relationships' => array(
		/*'componentestimatecalc_notes' => array(
			'lhs_module'=> 'ComponentEstimateCalc', 'lhs_table'=> 'componentestimatecalc', 'lhs_key' => 'id',
			'rhs_module'=> 'Notes', 'rhs_table'=> 'notes', 'rhs_key' => 'parent_id',	
			'relationship_type'=>'one-to-many', 'relationship_role_column'=>'parent_type',
			'relationship_role_column_value'=>'ComponentEstimateCalc'),
		'componentestimatecalc_meetings' => array(
			'lhs_module'=> 'ComponentEstimateCalc', 'lhs_table'=> 'componentestimatecalc', 'lhs_key' => 'id',
			'rhs_module'=> 'Meetings', 'rhs_table'=> 'meetings', 'rhs_key' => 'parent_id',	
			'relationship_type'=>'one-to-many', 'relationship_role_column'=>'parent_type',
			'relationship_role_column_value'=>'ComponentEstimateCalc'),
		'componentestimatecalc_calls' => array(
			'lhs_module'=> 'ComponentEstimateCalc', 'lhs_table'=> 'componentestimatecalc', 'lhs_key' => 'id',
			'rhs_module'=> 'Calls', 'rhs_table'=> 'calls', 'rhs_key' => 'parent_id',	
			'relationship_type'=>'one-to-many', 'relationship_role_column'=>'parent_type',
			'relationship_role_column_value'=>'ComponentEstimateCalc'),
		'componentestimatecalc_emails' => array(
			'lhs_module'=> 'ComponentEstimateCalc', 'lhs_table'=> 'componentestimatecalc', 'lhs_key' => 'id',
			'rhs_module'=> 'Emails', 'rhs_table'=> 'emails', 'rhs_key' => 'parent_id',	
			'relationship_type'=>'one-to-many', 'relationship_role_column'=>'parent_type',
			'relationship_role_column_value'=>'ComponentEstimateCalc'),
		'componentestimatecalc_componentestimatecalc_tasks' => array(
			'lhs_module'=> 'ComponentEstimateCalc', 'lhs_table'=> 'componentestimatecalc', 'lhs_key' => 'id',
			'rhs_module'=> 'ComponentEstimateCalcTask', 'rhs_table'=> 'componentestimatecalc_task', 'rhs_key' => 'parent_id',	
			'relationship_type'=>'one-to-many'),*/	
	'componentestimatecalcs_assigned_user' =>
   array('lhs_module'=> 'Users', 'lhs_table'=> 'users', 'lhs_key' => 'id',
   'rhs_module'=> 'ComponentEstimateCalc', 'rhs_table'=> 'componentestimatecalc', 'rhs_key' => 'assigned_user_id',
   'relationship_type'=>'one-to-many')

   ,'componentestimatecalcs_modified_user' =>
   array('lhs_module'=> 'Users', 'lhs_table'=> 'users', 'lhs_key' => 'id',
   'rhs_module'=> 'ComponentEstimateCalc', 'rhs_table'=> 'componentestimatecalc', 'rhs_key' => 'modified_user_id',
   'relationship_type'=>'one-to-many')

   ,'componentestimatecalcs_created_by' =>
   array('lhs_module'=> 'Users', 'lhs_table'=> 'users', 'lhs_key' => 'id',
   'rhs_module'=> 'ComponentEstimateCalc', 'rhs_table'=> 'componentestimatecalc', 'rhs_key' => 'created_by',
   'relationship_type'=>'one-to-many')







	),
);
?>
