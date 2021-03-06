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


$dictionary['EstimateComponents'] = array('audited'=>true,
	'table' => 'estimates_components',
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
 	  

			  
	'type' =>
	  array (
	     'name' => 'type',
		 'vname' => 'LBL_TYPE',
		 'type' => 'enum',
		 'options' => 'type_options',
		 'len' => '36',
		 'required'=>false
	  ),
	  
	  'paper' =>
	  array (
	     'name' => 'paper',
		 'vname' => 'LBL_PAPER',
		 'type' => 'char',
		 'len' => '36',
		 'required'=>true,
		 'reportable'=>true,
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
		 'error_label' => 'LBL_QUANTITY',
		 'type' => 'int',
		 'len' => '36',
		 'required'=>true
	  ),
	  
	  'paperid' =>
	  array (
	     'name' => 'paperid',
	     'vname' => 'LBL_PAPER',
	     'error_label' => 'LBL_PAPERID',
		 'type' => 'char',
		 'len' => '36',
		 'required'=>true
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
			 'type' => 'format',
			 'vname' => '',
			 'reportable'=>true,
			 'required'=>true
		  ),
		  
	  'fsize_w' => 
		  array (
		     'name' => 'fsize_w',
			 'type' => 'format',
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
		  
		'pressformat' =>
	  array (
	     'name' => 'pressformat',
		 'vname' => 'LBL_PRESS_FORMAT',
		 'type' => 'char',
		 'len' => '36',
		 'required'=>false
	  ),
		  
		'pressformat_x' => 
		  array (
		     'name' => 'pressformat_x',
			 'type' => 'float',
			 'error_label' => 'LBL_PRESSSIZE_X',
			 'vname' => '',
			 'reportable'=>true,
			 'required'=>true
		  ),
		  
		'pressformat_y' => 
		  array (
		     'name' => 'pressformat_y',
			 'type' => 'float',
			 'error_label' => 'LBL_PRESSSIZE_Y',
			 'vname' => '',
			 'reportable'=>true,
			 'required'=>true
		  ),
		  
		 
		  
	   
	   'base_format' => array(
			'name' => 'base_format',
			'vname' => 'LBL_X',
			'required' => false,
			'type' => 'varchar',
			'unified_search' => true,
			
		),
		
		'base_format_id' => array(
			'name' => 'base_format_id',
			'vname' => 'LBL_Y',
			'required' => false,
			'type' => 'id',
			'unified_search' => true,
			
		),
			  
	   'base_x' => array(
			'name' => 'base_x',
			'vname' => 'LBL_X',
			'required' => false,
			'type' => 'float',
			'unified_search' => true,
			
		),
		
		'base_y' => array(
			'name' => 'base_y',
			'vname' => 'LBL_Y',
			'required' => false,
			'type' => 'float',
			'unified_search' => true,
			
		),
		
		
		'child_format' => array(
			'name' => 'child_format',
			'vname' => 'LBL_X',
			'required' => false,
			'type' => 'varchar',
			'unified_search' => true,
			
		),
		
		'child_format_id' => array(
			'name' => 'child_format_id',
			'vname' => 'LBL_Y',
			'required' => false,
			'type' => 'id',
			'unified_search' => true,
			
		),
		
		'child_x' => array(
			'name' => 'child_x',
			'vname' => 'LBL_X',
			'required' => true,
			'type' => 'float',
			'unified_search' => true,
			
		),
		
		'child_y' => array(
			'name' => 'child_y',
			'vname' => 'LBL_Y',
			'required' => true,
			'type' => 'float',
			'unified_search' => true,
			
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
      
      
	  
	   'auto_price' =>
	  array (
	     'name' => 'auto_price',
		 'vname' => 'LBL_PRICE',
		 'type' => 'char',
		 'len' => '36',
		 'required'=>false
	  ),
	  
	    
	    
	    'rate_price' =>
	  array (
	     'name' => 'rate_price',
		 'vname' => 'LBL_PAPER_RATE_PRICE',
		 'type' => 'char',
		 'len' => '50',
		 'required'=>false
	  ),
	  
	  
		'paper_rate' =>
	  array (
	     'name' => 'paper_rate',
		 'vname' => 'LBL_PAPER_RATE',
		 'type' => 'char',
		 'len' => '50',
		 'required'=>false
	  ),

		'paper_rate_id' =>
	  array (
	     'name' => 'paper_rate_id',
		 'type' => 'id',
		 'required'=>false
	  ),
	  
	  'price' =>
	  array (
	     'name' => 'price',
		 'vname' => 'LBL_PRICE',
		 'error_label' => 'LBL_PAPER_PRICE',
		 'type' => 'char',
		 'len' => '50',
		 'required'=>true
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
	  
	  
	  'calculant_id' => 
	  
	  array(
			'name' => 'calculant_id',
			'required' => false,
			'type' => 'id',
			'reportable'=>false,
		),
		
	 'calculant_name' =>
	  array (
	     'name' => 'calculant_name',
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
			'audited'=>true,
		),
		
		'parent_bean' => array(
			'name' => 'parent_bean',
			'vname' => 'LBL_PARENT_BEAN',
			'required' => false,
			'type' => 'varchar',
			'len' => 50,
			'unified_search' => true,
			'audited'=>true,
		),
		
		'status' => array(
			'name' => 'status',
			'vname' => 'LBL_STATUS',
			'type' => 'enum',
			'required' => false,
			'options' => 'estimate_component_status',
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
		
		// Client Request Related fields
		'paper_description' => array(
			'name' => 'paper_description',
			'vname' => 'LBL_PAPER_DESCRIPTION',
			'required' => false,
			'type' => 'text',
		),
		
		'paper_type' => array(
			'name' => 'paper_type',
			'vname' => 'LBL_PAPER_TYPE_DESCRIPTION',
			'required' => false,
			'type' => 'text',
		),
		
		'colors_a' => array(
			'name' => 'colors_a',
			'vname' => 'LBL_COLOR_SIDE_A_DESCRIPTION',
			'required' => true,
			'type' => 'text',
		),
		
		'colors_b' => array(
			'name' => 'colors_b',
			'vname' => 'LBL_COLOR_SIDE_B_DESCRIPTION',
			'required' => true,
			'type' => 'text',
		),
		
		'operations' => array(
			'name' => 'operations',
			'vname' => 'LBL_OPERATIONS_DESCRIPTION',
			'required' => false,
			'type' => 'text',
		),
		
		'format_description' => array(
			'name' => 'format_description',
			'vname' => 'LBL_FORMAT_DESCRIPTION',
			'required' => true,
			'type' => 'format',
		),
		
		'paper_supplier_description' => array(
			'name' => 'paper_supplier_description',
			'vname' => 'LBL_PAPER_SUPPLIER_DESCRIPTION',
			'required' => false,
			'type' => 'text',
		),
		
		'paper_weight' => 
		  array (
		     'name' => 'paper_weight',
			 'type' => 'float',
			 'error_label' => 'LBL_PAPER_WEIGHT',
			 'vname' => '',
			 'reportable'=>true,
			 'required'=>false
		  ),
		///////////////////////////
		
		
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
		'parent_name' => array(
			'name' => 'parent_name',
			'vname' => 'LBL_PARENT_NAME',
			'required' => false,
			'dbType' => 'varchar',
			'type' => 'name',
			'len' => 50,
			'unified_search' => true,
			'audited'=>true,
		),
		
//		'parent_name'=>    array(
//			'name'=>'parent_name',                 
//			'rname'=>'name',
//			'id_name'=>'parent_id',                 
//			'vname'=>'LBL_PARENT_NAME',
//			'type'=>'relate',
//            'join_name'=>'estimates',
//			'table'=>'estimates',
//			'isnull'=>'true',
//			'module'=>'Estimates',
//            'link'=>'estimates_name_link',
//			'massupdate'=>false,
//			'required' => false,
//			'source'=>'non-db'),
                
  		'notes' => 
  		array (
  			'name' => 'notes',
    		'type' => 'link',
    		'relationship' => 'estimates_components_notes',
    		'source'=>'non-db',
				'vname'=>'LBL_NOTES',
  		),
  		'meetings' => 
  			array (
  			'name' => 'meetings',
    		'type' => 'link',
    		'relationship' => 'estimates_components_meetings',
    		'source'=>'non-db',
				'vname'=>'LBL_MEETINGS',
  		),
		'calls' => 
  			array (
  			'name' => 'calls',
    		'type' => 'link',
    		'relationship' => 'estimates_components_calls',
    		'source'=>'non-db',
				'vname'=>'LBL_CALLS',
  		),
  		'emails' => 
  			array (
  			'name' => 'emails',
    		'type' => 'link',
    		'relationship' => 'emails_estimates_task_rel',/* reldef in emails */
    		'source'=>'non-db',
				'vname'=>'LBL_EMAILS',
  		),
  		'estimates' => 
  			array (
  			'name' => 'estimates',
    		'type' => 'link',
    		'relationship' => 'estimates_estimates_components',
    		'source'=>'non-db',
				'vname'=>'LBL_LIST_PARENT_NAME',
  		),  		
		
  		'productoperation' => 
  			array (
  			'name' => 'productoperation',
    		'type' => 'link',
    		'relationship' => 'estimatecomponents_operations',
    		'source'=>'non-db',
		),
		
		
		'componentstimate' => 
  			array (
  			'name' => 'componentstimate',
    		'type' => 'link',
    		'relationship' => 'estimatecomponents_estimate',
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
    'relationship' => 'estimates_components_created_by',
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
    'relationship' => 'estimates_components_modified_user',
    'vname' => 'LBL_MODIFIED_BY_USER',
    'link_type' => 'one',
    'module'=>'Users',
    'bean_name'=>'User',
    'source'=>'non-db',
  ),
  'estimates_name_link' =>
  array (
    'name' => 'estimates_name_link',
    'type' => 'link',
    'relationship' => 'estimates_estimates_components',
    'vname' => 'LBL_ESTIMATE_NAME',
    'link_type' => 'one',
    'module'=>'Estimates',
    'bean_name'=>'Estimates',
    'source'=>'non-db',
  ),
  'assigned_user_link' =>
  array (
        'name' => 'assigned_user_link',
    'type' => 'link',
    'relationship' => 'estimates_components_assigned_user',
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
			'name' =>'estimates_components_primary_key_index',
			'type' =>'primary',
			'fields'=>array('id')
		),
	),
	
 'relationships' => array (	
 
 
			
	'estimates_components_notes' => array('lhs_module'=> 'EstimateComponents', 'lhs_table'=> 'estimates_components', 'lhs_key' => 'id',
							  'rhs_module'=> 'Notes', 'rhs_table'=> 'notes', 'rhs_key' => 'parent_id',	
							  'relationship_type'=>'one-to-many', 'relationship_role_column'=>'parent_type',
							  'relationship_role_column_value'=>'EstimateComponents')	
	,'estimates_components_meetings' => array('lhs_module'=> 'EstimateComponents', 'lhs_table'=> 'estimates_components', 'lhs_key' => 'id',
							  'rhs_module'=> 'Meetings', 'rhs_table'=> 'meetings', 'rhs_key' => 'parent_id',	
							  'relationship_type'=>'one-to-many', 'relationship_role_column'=>'parent_type',
							  'relationship_role_column_value'=>'EstimateComponents')	
	,'estimates_components_calls' => array('lhs_module'=> 'EstimateComponents', 'lhs_table'=> 'estimates_components', 'lhs_key' => 'id',
							  'rhs_module'=> 'Calls', 'rhs_table'=> 'calls', 'rhs_key' => 'parent_id',	
							  'relationship_type'=>'one-to-many', 'relationship_role_column'=>'parent_type',
							  'relationship_role_column_value'=>'EstimateComponents')	
	,'estimates_components_emails' => array('lhs_module'=> 'EstimateComponents', 'lhs_table'=> 'estimates_components', 'lhs_key' => 'id',
							  'rhs_module'=> 'Emails', 'rhs_table'=> 'emails', 'rhs_key' => 'parent_id',	
							  'relationship_type'=>'one-to-many', 'relationship_role_column'=>'parent_type',
							  'relationship_role_column_value'=>'EstimateComponents')	
			
	,'estimatecomponents_operations' => array(
			'lhs_module'=> 'EstimateComponents', 'lhs_table'=> 'estimates_components', 'lhs_key' => 'id',
			'rhs_module'=> 'ProductOperation', 'rhs_table'=> 'productoperation', 'rhs_key' => 'component_id',	
			'relationship_type'=>'one-to-many')
	
	,'estimatecomponents_еstimate' => array(
			'lhs_module'=> 'EstimateComponents', 'lhs_table'=> 'estimates_components', 'lhs_key' => 'id',
			'rhs_module'=> 'ComponentEstimateCalc', 'rhs_table'=> 'componentestimatecalc', 'rhs_key' => 'component_id',	
			'relationship_type'=>'one-to-many')
									  
    ,'estimates_components_assigned_user' =>
   array('lhs_module'=> 'Users', 'lhs_table'=> 'users', 'lhs_key' => 'id',
   'rhs_module'=> 'EstimateComponents', 'rhs_table'=> 'estimates_components', 'rhs_key' => 'assigned_user_id',
   'relationship_type'=>'one-to-many')

   ,'estimates_components_modified_user' =>
   array('lhs_module'=> 'Users', 'lhs_table'=> 'users', 'lhs_key' => 'id',
   'rhs_module'=> 'EstimateComponents', 'rhs_table'=> 'estimates_components', 'rhs_key' => 'modified_user_id',
   'relationship_type'=>'one-to-many')

   ,'estimates_components_created_by' =>
   array('lhs_module'=> 'Users', 'lhs_table'=> 'users', 'lhs_key' => 'id',
   'rhs_module'=> 'EstimateComponents', 'rhs_table'=> 'estimates_components', 'rhs_key' => 'created_by',
   'relationship_type'=>'one-to-many')







),
);

?>