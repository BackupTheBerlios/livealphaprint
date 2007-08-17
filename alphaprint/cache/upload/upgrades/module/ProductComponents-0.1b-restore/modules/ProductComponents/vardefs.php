<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/**
 * Table definition file for the project_task table
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


$dictionary['ProductComponents'] = array('audited'=>true,
	'table' => 'products_components',
	'unified_search' => true,
	'fields' => array(
		'id' => array(
			'name' => 'id',
			'vname' => 'LBL_ID',
			'required' => true,
			'type' => 'id',
			'reportable'=>false,
		),
		'date_entered' => array(
			'name' => 'date_entered',
			'vname' => 'LBL_DATE_ENTERED',
			'type' => 'datetime',
			'required' => true,
		),
		'date_modified' => array(
			'name' => 'date_modified',
			'vname' => 'LBL_DATE_MODIFIED',
			'type' => 'datetime',
			'required' => true,
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
			'reportable'=>true,
		),









		'name' => array(
			'name' => 'name',
			'vname' => 'LBL_NAME',
			'required' => true,
			'dbType' => 'varchar',
			'type' => 'name',
			'len' => 50,
			'unified_search' => true,
		),
		
		'ppart' =>
		  array (
		     'name' => 'ppart',
			 'vname' => 'LBL_PPART',
			 'type' => 'char',
			 'len' => '50',
			 'required'=>true
		  ),
		
		  'bnumber' =>
			  array (
			     'name' => 'bnumber',
				 'vname' => 'LBL_BNUM',
				 'type' => 'int',
				 'len' => '36',
				 'required'=>false
			  ),
  
		  'bpaper' =>
		  array (
		     'name' => 'bpaper',
			 'vname' => 'LBL_BPAPER',
			 'type' => 'char',
			 'len' => '36',
			 'required'=>false
		  ),
		  
		  'btype' =>
		  array (
		     'name' => 'btype',
			 'vname' => 'LBL_BTYPE',
			 'type' => 'char',
			 'len' => '36',
			 'required'=>false
		  ),
		  
		  'bformat' =>
		  array (
		     'name' => 'bformat',
			 'vname' => 'LBL_BFORMAT',
			 'type' => 'char',
			 'len' => '36',
			 'required'=>false
		  ),
		  
		  'bvolume' =>
		  array (
		     'name' => 'bvolume',
			 'vname' => 'LBL_BVOLUME',
			 'type' => 'int',
			 'len' => '36',
			 'required'=>false
		  ),
		  
		  'bcolor' =>
		  array (
		     'name' => 'bcolor',
			 'vname' => 'LBL_BCOLOR',
			 'type' => 'char',
			 'len' => '36',
			 'required'=>false
		  ),
		  
		  'bmachine' =>
		  array (
		     'name' => 'bmachine',
			 'vname' => 'LBL_BMACHINE',
			 'type' => 'char',
			 'len' => '36',
			 'required'=>false
		  ),
		  
		  'bsupplier' =>
		  array (
		     'name' => 'bsupplier',
			 'vname' => 'LBL_BSUPLY',
			 'type' => 'char',
			 'len' => '36',
			 'required'=>false
		  ),
		  
		  'bprice' =>
		  array (
		     'name' => 'bprice',
			 'vname' => 'LBL_BPRICE',
			 'type' => 'float',
			 'required'=>false
		  ),
		  
		  'bkoli' =>
		  array (
		     'name' => 'bkoli',
			 'vname' => 'LBL_BKOLI',
			 'type' => 'char',
			 'len' => '36',
			 'required'=>false
		  ),
		  
		'status' => array(
			'name' => 'status',
			'vname' => 'LBL_STATUS',
			'type' => 'enum',
			'required' => false,
			'options' => 'products_components_status_options',
			'audited'=>true,
		),
		
		'parent_id' => array(
			'name' => 'parent_id',
			'vname' => 'LBL_PARENT_ID',
			'required' => true,
			'type' => 'id',
			'reportable'=>false,
		),
		
		'description' => array(
			'name' => 'description',
			'vname' => 'LBL_DESCRIPTION',
			'required' => false,
			'type' => 'text',
		),
		'order_number' => array(
			'name' => 'order_number',
			'vname' => 'LBL_ORDER_NUMBER',
			'required' => false,
			'type' => 'int',
			'default' => '1',
		),
		'task_number' => array(
			'name' => 'task_number',
			'vname' => 'LBL_TASK_NUMBER',
			'required' => false,
			'type' => 'int',
		),
		'depends_on_id' => array(
			'name' => 'depends_on_id',
			'vname' => 'LBL_DEPENDS_ON_ID',
			'required' => false,
			'type' => 'id',
			'reportable'=>false,
		),
		'milestone_flag' => array(
			'name' => 'milestone_flag',
			'vname' => 'LBL_MILESTONE_FLAG',
			'type' =>'bool',
			'dbType'=>'enum',
			'options'=>'on|off',
			'required' => false,
		),
		
		'utilization' => array(
			'name' => 'utilization',
			'vname' => 'LBL_UTILIZATION',
			'required' => false,
			'type' => 'int',
			'validation' => array('type' => 'range', 'min' => 0, 'max' => 100),
			'default' => 100,
		),
		
		'deleted' => array(
			'name' => 'deleted',
			'vname' => 'LBL_DELETED',
			'type' => 'bool',
			'required' => true,
			'default' => '0',
			'reportable'=>false,
		),
		'parent_name'=>    array(
			'name'=>'parent_name',                 
			'rname'=>'name',
			'id_name'=>'parent_id',                 
			'vname'=>'LBL_PARENT_NAME',
			'type'=>'relate',
            'join_name'=>'products',
			'table'=>'products',
			'isnull'=>'true',
			'module'=>'Products',
            'link'=>'products_name_link',
			'massupdate'=>false,
			'source'=>'non-db'),
                
  		
  		'products' => 
  			array (
  			'name' => 'products',
    		'type' => 'link',
    		'relationship' => 'products_products_components',
    		'source'=>'non-db',
				'vname'=>'LBL_LIST_PARENT_NAME',
  		),  		













  'created_by_link' =>
  array (
        'name' => 'created_by_link',
    'type' => 'link',
    'relationship' => 'product_component_created_by',
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
    'relationship' => 'product_component_modified_user',
    'vname' => 'LBL_MODIFIED_BY_USER',
    'link_type' => 'one',
    'module'=>'Users',
    'bean_name'=>'User',
    'source'=>'non-db',
  ),
  'products_name_link' =>
  array (
    'name' => 'products_name_link',
    'type' => 'link',
    'relationship' => 'products_products_components',
    'vname' => 'LBL_PRODUCTS_NAME',
    'link_type' => 'one',
    'module'=>'Products',
    'bean_name'=>'Products',
    'source'=>'non-db',
  ),
  'assigned_user_link' =>
  array (
        'name' => 'assigned_user_link',
    'type' => 'link',
    'relationship' => 'product_component_assigned_user',
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
		array(
			'name' =>'product_component_primary_key_index',
			'type' =>'primary',
			'fields'=>array('id')
		),
	),
	
 'relationships' => array (	
	
   'product_component_assigned_user' =>
   array('lhs_module'=> 'Users', 'lhs_table'=> 'users', 'lhs_key' => 'id',
   'rhs_module'=> 'ProductComponents', 'rhs_table'=> 'products_components', 'rhs_key' => 'assigned_user_id',
   'relationship_type'=>'one-to-many')

   ,'product_component_modified_user' =>
   array('lhs_module'=> 'Users', 'lhs_table'=> 'users', 'lhs_key' => 'id',
   'rhs_module'=> 'ProductComponents', 'rhs_table'=> 'products_components', 'rhs_key' => 'modified_user_id',
   'relationship_type'=>'one-to-many')

   ,'product_component__created_by' =>
   array('lhs_module'=> 'Users', 'lhs_table'=> 'users', 'lhs_key' => 'id',
   'rhs_module'=> 'ProductComponents', 'rhs_table'=> 'products_components', 'rhs_key' => 'created_by',
   'relationship_type'=>'one-to-many')







),
);

?>
