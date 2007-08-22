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
		'assigned_user_id' => array(
			'name' => 'assigned_user_id',
			'rname' => 'user_name',
			'id_name' => 'assigned_user_id',
			'type' => 'assigned_user_name',
			'vname' => 'LBL_ASSIGNED_USER_ID',
			'required' => false,
			'dbType' => 'id',
			'table' => 'users',
			'isnull' => false,
			'reportable'=>true,
			'audited'=>true,
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


		//Peter Peshev 08.01.2007
		
	'number' =>
 	 array (
     'name' => 'number',
	 'vname' => 'LBL_NUMBER',
	 'type' => 'char',
	 'len' => '36',
	 'reportable'=>true,
	 'required'=>false
 	  ),
 	  
 	  'number_pref' => 
			  array (
			     'name' => 'number_pref',
				 'type' => 'char',
				 'len' => '3',
				 'reportable'=>true,
				 'required'=>true
			  ),
			  
			  
	'number_suf' => 
			  array (
			     'name' => 'number_suf',
				 'type' => 'int',
				 'len' => '3',
				 'reportable'=>true,
				 'required'=>true
			  ),
			  
	'type' =>
	  array (
	     'name' => 'type',
		 'vname' => 'LBL_TYPE',
		 'type' => 'char',
		 'len' => '36',
		 'required'=>false
	  ),
	  
	  'paper' =>
	  array (
	     'name' => 'paper',
		 'vname' => 'LBL_PAPER',
		 'type' => 'char',
		 'len' => '36',
		 'required'=>false
	  ),
	  
		'volume' =>
	  array (
	     'name' => 'volume',
		 'vname' => 'LBL_VOLUME',
		 'type' => 'int',
		 'len' => '36',
		 'required'=>true
	  ),
	  
	    'quantity' =>
	  array (
	     'name' => 'quantity',
		 'vname' => 'LBL_QUANTITY',
		 'type' => 'int',
		 'len' => '36',
		 'required'=>true
	  ),
	  
	  'paperid' =>
	  array (
	     'name' => 'paperid',
	     'error_label' => 'LBL_PAPERID',
		 'type' => 'char',
		 'len' => '36',
		 'required'=>false
	  ),
	  
	  'client_paper' =>
	  array (
	     'name' => 'client_paper',
		 'type' => 'char',
		 'len' => '10',
		 'required'=>false
	  ),
	  
	  
	  
	    'format' =>
	  array (
	     'name' => 'format',
		 'vname' => 'LBL_FORMAT',
		 'type' => 'char',
		 'len' => '36',
		 'required'=>false
	  ),
	  
	  'fsize_h' => 
		  array (
		     'name' => 'fsize_h',
			 'type' => 'int',
			 'vname' => '',
			 'reportable'=>true,
			 'required'=>true
		  ),
		  
	  'fsize_w' => 
		  array (
		     'name' => 'fsize_w',
			 'type' => 'int',
			 'vname' => '',
			 'reportable'=>true,
			 'required'=>true
		  ),
		  
		'run_format' =>
	  array (
	     'name' => 'run_format',
		 'vname' => 'LBL_RUN_FORMAT',
		 'type' => 'char',
		 'len' => '36',
		 'required'=>false
	  ),
	  
	  'bleed_format' =>
	  array (
	     'name' => 'bleed_format',
		 'vname' => 'LBL_BLEED_FORMAT',
		 'type' => 'char',
		 'len' => '36',
		 'required'=>false
	  ),
		  
		'run_size_x' => 
		  array (
		     'name' => 'run_size_x',
			 'type' => 'float',
			 'reportable'=>true,
			 'vname' => '',
			 'required'=>true,
		  ),
		  
		'run_size_y' => 
		  array (
		     'name' => 'run_size_y',
			 'type' => 'float',
			 'reportable'=>true,
			 'vname' => '',
			 'required'=>true,
		  ),
		  
		  
		'bleed_size_x' => 
		  array (
		     'name' => 'bleed_size_x',
			 'type' => 'float',
			 'vname' => '', 
			 'reportable'=>true,
			 'required'=>true,
		  ),
		  
		'bleed_size_y' => 
		  array (
		     'name' => 'bleed_size_y',
			 'type' => 'float',
			 'reportable'=>true,
			 'vname' => '',
			 'required'=>true,
		  ),
		  
		'press_format' =>
	  array (
	     'name' => 'press_format',
		 'vname' => 'LBL_PRESS_FORMAT',
		 'type' => 'char',
		 'len' => '36',
		 'required'=>false
	  ),
		  
		'press_size_x' => 
		  array (
		     'name' => 'press_size_x',
			 'type' => 'float',
			 'error_label' => 'LBL_PRESSSIZE_X',
			 'vname' => '',
			 'reportable'=>true,
			 'required'=>true
		  ),
		  
		'press_size_y' => 
		  array (
		     'name' => 'press_size_y',
			 'type' => 'float',
			 'error_label' => 'LBL_PRESSSIZE_Y',
			 'vname' => '',
			 'reportable'=>true,
			 'required'=>true
		  ),
		  
		  
	  
	   'color_side_a' =>
	  array (
	     'name' => 'color_side_a',
		 'type' => 'int',
		 'len' => '36',
		 'required'=>false
	  ),
      
      'color_side_b' =>
      array (
         'name' => 'color_side_b',
         'type' => 'int',
         'len' => '36',
         'required'=>false
      ),
	  
	   'machine' =>
	  array (
	     'name' => 'machine',
		 'vname' => 'LBL_MACHINE',
		 'type' => 'char',
		 'len' => '36',
		 'required'=>false
	  ),
	  
	    'price_id' =>
	  array (
	     'name' => 'price_id',
		 'type' => 'id',
		 'required'=>false
	  ),
	  
	  'price' =>
	  array (
	     'name' => 'price',
		 'vname' => 'LBL_PAPER_PRICE',
		 'error_label' => 'LBL_PAPER_PRICE',
		 'type' => 'char',
		 'len' => '50',
		 'required'=>false
	  ),
	  
	  'supplier_id' => 
	  
	  array(
			'name' => 'supplier_id',
			'required' => false,
			'type' => 'id',
			'reportable'=>false,
		),
		
	 'supplier_name' =>
	  array (
	     'name' => 'supplier_name',
		 'vname' => 'LBL_PAPER_SUPLLIER',
		 'type' => 'char',
		 'len' => '50',
		 'required'=>false
	  ),




		'name' => array(
			'name' => 'name',
			'vname' => 'LBL_NAME',
			'required' => false,
			'dbType' => 'varchar',
			'type' => 'name',
			'len' => 50,
			'unified_search' => true,
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
                
  		'notes' => 
  		array (
  			'name' => 'notes',
    		'type' => 'link',
    		'relationship' => 'products_components_notes',
    		'source'=>'non-db',
				'vname'=>'LBL_NOTES',
  		),
  		'meetings' => 
  			array (
  			'name' => 'meetings',
    		'type' => 'link',
    		'relationship' => 'products_components_meetings',
    		'source'=>'non-db',
				'vname'=>'LBL_MEETINGS',
  		),
		'calls' => 
  			array (
  			'name' => 'calls',
    		'type' => 'link',
    		'relationship' => 'products_components_calls',
    		'source'=>'non-db',
				'vname'=>'LBL_CALLS',
  		),
  		'emails' => 
  			array (
  			'name' => 'emails',
    		'type' => 'link',
    		'relationship' => 'emails_products_task_rel',/* reldef in emails */
    		'source'=>'non-db',
				'vname'=>'LBL_EMAILS',
  		),
  		'products' => 
  			array (
  			'name' => 'products',
    		'type' => 'link',
    		'relationship' => 'products_products_components',
    		'source'=>'non-db',
				'vname'=>'LBL_LIST_PARENT_NAME',
  		),  		
		
  		'productoperations' => 
  			array (
  			'name' => 'productoperations',
    		'type' => 'link',
    		'relationship' => 'productcomponents_operations',
    		'source'=>'non-db',
		),

		
	    'componentsprinting' => 
            array (
            'name' => 'componentsprinting',
            'type' => 'link',
            'relationship' => 'components_printing',
            'source'=>'non-db',
        ),
		










  'created_by_link' =>
  array (
        'name' => 'created_by_link',
    'type' => 'link',
    'relationship' => 'products_components_created_by',
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
    'relationship' => 'products_components_modified_user',
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
    'vname' => 'LBL_PRODUCT_NAME',
    'link_type' => 'one',
    'module'=>'Products',
    'bean_name'=>'Products',
    'source'=>'non-db',
  ),
  'assigned_user_link' =>
  array (
        'name' => 'assigned_user_link',
    'type' => 'link',
    'relationship' => 'products_components_assigned_user',
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
			'name' =>'products_components_primary_key_index',
			'type' =>'primary',
			'fields'=>array('id')
		),
	),
	
 'relationships' => array (	
 
 
 	'components_printing' => array(
							  'lhs_module'=> 'ProductComponents', 'lhs_table'=> 'products_components', 'lhs_key' => 'id',
							  'rhs_module'=> 'Printing', 'rhs_table'=> 'printing', 'rhs_key' => 'product_id',	
							  'relationship_type'=>'one-to-many'),
			
	'products_components_notes' => array('lhs_module'=> 'ProductComponents', 'lhs_table'=> 'products_components', 'lhs_key' => 'id',
							  'rhs_module'=> 'Notes', 'rhs_table'=> 'notes', 'rhs_key' => 'parent_id',	
							  'relationship_type'=>'one-to-many', 'relationship_role_column'=>'parent_type',
							  'relationship_role_column_value'=>'ProductComponents')	
	,'products_components_meetings' => array('lhs_module'=> 'ProductComponents', 'lhs_table'=> 'products_components', 'lhs_key' => 'id',
							  'rhs_module'=> 'Meetings', 'rhs_table'=> 'meetings', 'rhs_key' => 'parent_id',	
							  'relationship_type'=>'one-to-many', 'relationship_role_column'=>'parent_type',
							  'relationship_role_column_value'=>'ProductComponents')	
	,'products_components_calls' => array('lhs_module'=> 'ProductComponents', 'lhs_table'=> 'products_components', 'lhs_key' => 'id',
							  'rhs_module'=> 'Calls', 'rhs_table'=> 'calls', 'rhs_key' => 'parent_id',	
							  'relationship_type'=>'one-to-many', 'relationship_role_column'=>'parent_type',
							  'relationship_role_column_value'=>'ProductComponents')	
	,'products_components_emails' => array('lhs_module'=> 'ProductComponents', 'lhs_table'=> 'products_components', 'lhs_key' => 'id',
							  'rhs_module'=> 'Emails', 'rhs_table'=> 'emails', 'rhs_key' => 'parent_id',	
							  'relationship_type'=>'one-to-many', 'relationship_role_column'=>'parent_type',
							  'relationship_role_column_value'=>'ProductComponents')	


	,'productcomponents_operations' => array(
			'lhs_module'=> 'ProductComponents', 'lhs_table'=> 'products_components', 'lhs_key' => 'id',
			'rhs_module'=> 'ProductOperations', 'rhs_table'=> 'productoperations', 'rhs_key' => 'component_id',	
			'relationship_type'=>'one-to-many')
									  
    ,'products_components_assigned_user' =>
   array('lhs_module'=> 'Users', 'lhs_table'=> 'users', 'lhs_key' => 'id',
   'rhs_module'=> 'ProductComponents', 'rhs_table'=> 'products_components', 'rhs_key' => 'assigned_user_id',
   'relationship_type'=>'one-to-many')

   ,'products_components_modified_user' =>
   array('lhs_module'=> 'Users', 'lhs_table'=> 'users', 'lhs_key' => 'id',
   'rhs_module'=> 'ProductComponents', 'rhs_table'=> 'products_components', 'rhs_key' => 'modified_user_id',
   'relationship_type'=>'one-to-many')

   ,'products_components_created_by' =>
   array('lhs_module'=> 'Users', 'lhs_table'=> 'users', 'lhs_key' => 'id',
   'rhs_module'=> 'ProductComponents', 'rhs_table'=> 'products_components', 'rhs_key' => 'created_by',
   'relationship_type'=>'one-to-many')







),
);

?>