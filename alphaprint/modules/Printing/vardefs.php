<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/**
 * Table definition file for the printing table
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



$dictionary['Printing'] = array(
	'table' => 'printing',
	'unified_search' => true,
	'comment' => 'Printing',
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



		'product_id' => array(
			'name' => 'product_id',
			'required' => true,
			'type' => 'id',
			'reportable'=>false,

			),
			
		'parent_id' => array(
			'name' => 'parent_id',
			'required' => true,
			'type' => 'id',
			'reportable'=>false,

			),

		'product_name' => array(
			'name' => 'product_name',
			'vname' => 'LBL_PRODUCT_NAME',
			'required' => true,
			'type' => 'varchar',
			'len' => 50,
			'unified_search' => true,

		),





		'name' => array(
			'name' => 'name',
			'vname' => 'LBL_NAME',
			'required' => true,
			'dbType' => 'varchar',
			'type' => 'name',
			'len' => 50,
			'unified_search' => true,
			'comment' => 'Printing name'
		),
		
		'whole_sheets' => array(
			'name' => 'whole_sheets',
			'required' => false,
			'type' => 'int',
			'len' => 50,
			'unified_search' => true,
		),
		
		'count_whole_sheets' => array(
			'name' => 'count_whole_sheets',
			'required' => false,
			'type' => 'int',
			'len' => 50,
			'unified_search' => true,
		),
		
		'count_reversal_whole_sheets' => array(
			'name' => 'count_reversal_whole_sheets',
			'required' => false,
			'type' => 'int',
			'len' => 50,
			'unified_search' => true,
		),
		
		'count_whole_sheets_multiplicity' => array(
			'name' => 'count_whole_sheets_multiplicity',
			'required' => false,
			'type' => 'int',
			'len' => 50,
			'unified_search' => true,
		),
		
		'whole_sheets_multiplicity' => array(
			'name' => 'whole_sheets_multiplicity',
			'required' => false,
			'type' => 'int',
			'len' => 50,
			'unified_search' => true,
		),
		
		'whole_sheets_quantity' => array(
			'name' => 'whole_sheets_quantity',
			'required' => false,
			'type' => 'int',
			'len' => 50,
			'unified_search' => true,
		),
		
		'whole_sheets_preparations' => array(
			'name' => 'whole_sheets',
			'required' => false,
			'type' => 'int',
			'len' => 50,
			'unified_search' => true,
		),
		
		'reversal_whole_sheets' => array(
			'name' => 'reversal_whole_sheets',
			'required' => false,
			'type' => 'int',
			'len' => 50,
			'unified_search' => true,
		),
		
		'reversal_whole_sheets_multiplicity' => array(
			'name' => 'reversal_whole_sheets_multiplicity',
			'required' => false,
			'type' => 'int',
			'len' => 50,
			'unified_search' => true,
		),
		
		'reversal_whole_sheets_quantity' => array(
			'name' => 'reversal_whole_sheets_quantity',
			'required' => false,
			'type' => 'int',
			'len' => 50,
			'unified_search' => true,
		),
		
		'reversal_whole_sheets_preparations' => array(
			'name' => 'reversal_whole_sheets_preparations',
			'required' => false,
			'type' => 'int',
			'len' => 50,
			'unified_search' => true,
		),
		
		'multiplicity_whole_sheets' => array(
			'name' => 'multiplicity_whole_sheets',
			'required' => false,
			'type' => 'int',
			'len' => 50,
			'unified_search' => true,
		),
		
		'multiplicity_whole_sheets_multiplicity' => array(
			'name' => 'multiplicity_whole_sheets_multiplicity',
			'required' => false,
			'type' => 'int',
			'len' => 50,
			'unified_search' => true,
		),
		
		'multiplicity_whole_sheets_quantity' => array(
			'name' => 'multiplicity_whole_sheets_quantity',
			'required' => false,
			'type' => 'int',
			'len' => 50,
			'unified_search' => true,
		),
		
		'multiplicity_whole_sheets_preparations' => array(
			'name' => 'multiplicity_whole_sheets_preparations',
			'required' => false,
			'type' => 'int',
			'len' => 50,
			'unified_search' => true,
		),
		
		
		'description' => array(
			'name' => 'description',
			'vname' => 'LBL_DESCRIPTION',
			'required' => false,
			'type' => 'text',
			'comment' => 'Printing description'
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
    'relationship' => 'printing_created_by',
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
    'relationship' => 'printing_modified_user',
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
    'relationship' => 'printing_assigned_user',
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
		array('name' =>'printing_primary_key_index',
			'type' =>'primary',
			'fields'=>array('id')
		),
	),
	'relationships' => array(
	
	'printing_assigned_user' =>
   array('lhs_module'=> 'Users', 'lhs_table'=> 'users', 'lhs_key' => 'id',
   'rhs_module'=> 'Printing', 'rhs_table'=> 'printing', 'rhs_key' => 'assigned_user_id',
   'relationship_type'=>'one-to-many')

   ,'printing_modified_user' =>
   array('lhs_module'=> 'Users', 'lhs_table'=> 'users', 'lhs_key' => 'id',
   'rhs_module'=> 'Printing', 'rhs_table'=> 'printing', 'rhs_key' => 'modified_user_id',
   'relationship_type'=>'one-to-many')

   ,'printing_created_by' =>
   array('lhs_module'=> 'Users', 'lhs_table'=> 'users', 'lhs_key' => 'id',
   'rhs_module'=> 'Printing', 'rhs_table'=> 'printing', 'rhs_key' => 'created_by',
   'relationship_type'=>'one-to-many')





	),
);
?>
