<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/**
 * Table definition file for the Products table
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



$dictionary['Products'] = array(
	'table' => 'products',
	'unified_search' => true,
	'comment' => 'Products',
	'fields' => array(
		'id' => array(
			'name' => 'id',
			'vname' => 'LBL_ID',  
			'required' => true,
			'type' => 'id',
			'reportable'=>false,
			'comment' => 'Unique identifier'
		),
		
		'clientrequest_id' => array(
			'name' => 'clientrequest_id',
			'vname' => 'LBL_CLIENT_REQUEST_ID',  
			'required' => false,
			'type' => 'id',
			'reportable'=>false,
			
		),
		
		'estimate_id' => array(
			'name' => 'estimate_id',
			'vname' => 'LBL_CLIENT_REQUEST_ID',  
			'required' => false,
			'type' => 'id',
			'reportable'=>false,
			
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
		
		'account_id' =>
  				array (
     'name' => 'account_id',
	 'type' => 'id',
	 'required'=>true
  						),
 		 'account_name' =>
 				 array (
     'name' => 'account_name',
	 'vname' => 'LBL_ACCOUNT_NAME',
	 'type' => 'char',
	 'len' => '50',
	 'required'=>true
  						),
  						
  		 'contact_id' =>
  				array (
     'name' => 'contact_id',
	 'type' => 'id',
	 'required'=>false
  						),
 		 'contact_name' =>
 				 array (
     'name' => 'contact_name',
	 'vname' => 'LBL_CONTACT_NAME',
	 'type' => 'char',
	 'len' => '50',
	 'required'=>false
  						),
//22.12.2006 Peter Peshev - Products Fields
		
  		'pnum_suf' => 
			  array (
			     'name' => 'pnum_suf',
				 'type' => 'int',
				 'len' => '5',
				 'reportable'=>true,
				 'required'=>true
			  ),
			  
		'pnum' => 
			  array (
			     'name' => 'pnum',
				 'vname' => 'LBL_PNUM',
				 'type' => 'char',
				 'len' => '36',
				 'reportable'=>true,
				 'required'=>false
			  ),


		'type' => 
		  array (
		     'name' => 'type',
			 'vname' => 'LBL_TYPE',
			 'type' => 'char',
			 'len' => '255',
			 'reportable'=>true,
			 'required'=>false
		  ),
		  
		  'pnum_pref' => 
		  array (
		     'name' => 'pnum_pref',
			 'type' => 'char',
			 'len' => '3',
			 'reportable'=>true,
			 'required'=>false
		  ),
		  'category' => 
		  array (
		     'name' => 'category',
			 'vname' => 'LBL_CATEGORY',
			 'type' => 'enum',
			 'options' => 'products_category_options',
			 'reportable'=>true,
			 'required'=>false,
			 'massupdate' => false
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
		  
		/*   'format' => 
		  array (
		     'name' => 'format',
			 'type' => 'char',
			 'len' => '50',
			 'reportable'=>true,
			 'required'=>false
		  ),
		  
	
		  
		  'is_active' =>
			array (
				'name' => 'is_active',
				'vname' => 'LBL_ISACTIVE',
				'type' => 'bool',
				'required' => false,
				'default' => '1',
				'comment' => 'Indicator whether this product is active'
			),
			
			'date_start_support' => 
		  array (
		     'name' => 'date_start_support',
			 'vname' => 'LBL_DATE_START_SUPPORT',
			 'type' => 'date',
			 'massupdate'=>false,
			 'reportable'=>true,
			 'required'=>false
		  ),    */
		 
		   
		  'deadline' => 
		  array (
		     'name' => 'deadline',
			 'vname' => 'LBL_DEADLINE',
			 'type' => 'date',
			 'massupdate'=>false,
			 'reportable'=>true,
			 'required'=>false
		  ), 
		  
		

		  
		  'status' => 
		  array (
		     'name' => 'status',
			 'vname' => 'LBL_STATUS',
			 'type' => 'enum',
			 'len' => '25',
			 'options' => 'product_status',
			 'reportable'=>true,
			 'required'=>false,
			 'massupdate' => false
		  ), 
		  
		  'period' => 
		  array (
		     'name' => 'period',
			 'vname' => 'LBL_PERIOD',
			 'type' => 'varchar',
			 'len' => '64',
			 'reportable'=>true,
			 'required'=>false
		  ),
		
		  'note' => 
		  array (
		     'name' => 'note',
			 'vname' => 'LBL_NOTE',
			 'type' => 'text',
			 'len' => '600',
			 'reportable'=>true,
			 'required'=>false
		  ),
		
		  'vision' => //publisher
		  array (
		     'name' => 'vision',
			 'vname' => 'LBL_VISION',
			 'type' => 'varchar',
			 'len' => '80',
			 'reportable'=>true,
			 'required'=>false
		  ),
		  
		  'quantity' => 
		  array (
		     'name' => 'quantity',
			 'vname' => 'LBL_QUANTITY',
			 'type' => 'int',
			 'reportable'=>true,
			 'required'=>false
		  ),
		  
		  /*'fsize_h' => 
		  array (
		     'name' => 'fsize_h',
			 'type' => 'int',
			 'reportable'=>true,
			 'required'=>false
		  ),
		  
		  'fsize_w' => 
		  array (
		     'name' => 'fsize_w',
			 'type' => 'int',
			 'reportable'=>true,
			 'required'=>false
		  ),
		  
		  'volume' => 
		  array (
		     'name' => 'volume',
			 'vname' => 'LBL_VOLUME',
			 'type' => 'int',
			 'reportable'=>true,
			 'required'=>false
		  ),*/
		  
		  'samples' => 
		  array (
		     'name' => 'samples',
			 'vname' => 'LBL_SAMPLES',
			 'type' => 'varchar',
			 'len' => '12',
			 'reportable'=>true,
			 'required'=>false
		  ),
		  
		  'file' => 
		  array (
		     'name' => 'file',
			 'vname' => 'LBL_FILE',
			 'type' => 'varchar',
			 'len' => '12',
			 'reportable'=>true,
			 'required'=>false
		  ),
		  
		  'components' => 
		  array (
		     'name' => 'components',
			 'vname' => 'LBL_COMPONENTS',
			 'type' => 'int',
			 'len' => '12',
			 'reportable'=>true,
			 'required'=>false
		  ),
		  






		'name' => array(
			'name' => 'name',
			'vname' => 'LBL_NAME',
			'required' => true,
			'dbType' => 'varchar',
			'type' => 'name',
			'len' => 50,
			'unified_search' => true,
			'comment' => 'products name'
		),
		'description' => array(
			'name' => 'description',
			'vname' => 'LBL_DESCRIPTION',
			'required' => false,
			'type' => 'text',
			'comment' => 'products description'
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
    		'relationship' => 'products_accounts',
    		'source'=>'non-db',
    		'ignore_role'=>true,
				'vname'=>'LBL_ACCOUNTS',
  		),		
		'quotes' => 
  		array (
  			'name' => 'quotes',
    		'type' => 'link',
    		'relationship' => 'products_quotes',
    		'source'=>'non-db',
    		'ignore_role'=>true,
				'vname'=>'LBL_QUOTES',
  		),		
		'contacts' => 
  		array (
  			'name' => 'contacts',
    		'type' => 'link',
    		'relationship' => 'products_contacts',
    		'source'=>'non-db',
    		'ignore_role'=>true,
				'vname'=>'LBL_CONTACTS',
  		),		
		'opportunities' => 
  		array (
  			'name' => 'opportunities',
    		'type' => 'link',
    		'relationship' => 'products_opportunities',
    		'source'=>'non-db',
    		'ignore_role'=>true,
				'vname'=>'LBL_OPPORTUNITIES',
  		),		
  		'notes' => 
  		array (
  			'name' => 'notes',
    		'type' => 'link',
    		'relationship' => 'products_notes',
    		'source'=>'non-db',
				'vname'=>'LBL_NOTES',
  		),
  		'meetings' => 
  			array (
  			'name' => 'meetings',
    		'type' => 'link',
    		'relationship' => 'products_meetings',
    		'source'=>'non-db',
				'vname'=>'LBL_MEETINGS',
  		),
		'calls' => 
  			array (
  			'name' => 'calls',
    		'type' => 'link',
    		'relationship' => 'products_calls',
    		'source'=>'non-db',
				'vname'=>'LBL_CALLS',
  		),
  		'emails' => 
  			array (
  			'name' => 'emails',
    		'type' => 'link',
    		'relationship' => 'products_emails',
    		'source'=>'non-db',
				'vname'=>'LBL_EMAILS',
  		),
  		'productcomponents' => 
  			array (
  			'name' => 'productcomponents',
    		'type' => 'link',
    		'relationship' => 'products_products_components',
    		'source'=>'non-db',
				'vname'=>'LBL_PRODUCT_COMPONENTS',
  		),
  		
  		'productoperations' => 
  			array (
  			'name' => 'productoperations',
    		'type' => 'link',
    		'relationship' => 'products_operations',
    		'source'=>'non-db',
		),
        
        'productlog' => 
              array (
              'name' => 'productlog',
            'type' => 'link',
            'relationship' => 'products_productlogs',
            'source'=>'non-db',
        ),
        
        'productestimates' => 
              array (
              'name' => 'productestimates',
            'type' => 'link',
            'relationship' => 'products_estimates',
            'source'=>'non-db',
        ),
        
        'productquotes' => 
              array (
              'name' => 'productquotes',
            'type' => 'link',
            'relationship' => 'products_quotes',
            'source'=>'non-db',
        ),
        
        

        'productprinting' => 
              array (
              'name' => 'productprinting',
            'type' => 'link',
            'relationship' => 'products_printing',
            'source'=>'non-db',
        ),












  'created_by_link' =>
  array (
        'name' => 'created_by_link',
    'type' => 'link',
    'relationship' => 'products_created_by',
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
    'relationship' => 'products_modified_user',
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
    'relationship' => 'products_assigned_user',
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
		array('name' =>'products_primary_key_index',
			'type' =>'primary',
			'fields'=>array('id')
		),
	),
	'relationships' => array(
	
		'products_notes' => array(
			'lhs_module'=> 'Products', 'lhs_table'=> 'products', 'lhs_key' => 'id',
			'rhs_module'=> 'Notes', 'rhs_table'=> 'notes', 'rhs_key' => 'parent_id',	
			'relationship_type'=>'one-to-many', 'relationship_role_column'=>'parent_type',
			'relationship_role_column_value'=>'Products'),
		'products_meetings' => array(
			'lhs_module'=> 'Products', 'lhs_table'=> 'products', 'lhs_key' => 'id',
			'rhs_module'=> 'Meetings', 'rhs_table'=> 'meetings', 'rhs_key' => 'parent_id',	
			'relationship_type'=>'one-to-many', 'relationship_role_column'=>'parent_type',
			'relationship_role_column_value'=>'Products'),
		'products_calls' => array(
			'lhs_module'=> 'Products', 'lhs_table'=> 'products', 'lhs_key' => 'id',
			'rhs_module'=> 'Calls', 'rhs_table'=> 'calls', 'rhs_key' => 'parent_id',	
			'relationship_type'=>'one-to-many', 'relationship_role_column'=>'parent_type',
			'relationship_role_column_value'=>'Products'),
		'products_emails' => array(
			'lhs_module'=> 'Products', 'lhs_table'=> 'products', 'lhs_key' => 'id',
			'rhs_module'=> 'Emails', 'rhs_table'=> 'emails', 'rhs_key' => 'parent_id',	
			'relationship_type'=>'one-to-many', 'relationship_role_column'=>'parent_type',
			'relationship_role_column_value'=>'Products'),
	
	
    
    'products_productlogs' => array(
            'lhs_module'=> 'Products', 'lhs_table'=> 'products', 'lhs_key' => 'id',
            'rhs_module'=> 'ProductLogs', 'rhs_table'=> 'productlog', 'rhs_key' => 'product_id',    
            'relationship_type'=>'one-to-many'),
            
	'products_quotes' => array(
            'lhs_module'=> 'Products', 'lhs_table'=> 'products', 'lhs_key' => 'id',
            'rhs_module'=> 'QuoteLs', 'rhs_table'=> 'quotes', 'rhs_key' => 'product_id',    
            'relationship_type'=>'one-to-many'),

	'products_estimates' => array(
			'lhs_module'=> 'Products', 'lhs_table'=> 'products', 'lhs_key' => 'id',
			'rhs_module'=> 'Estimates', 'rhs_table'=> 'estimates', 'rhs_key' => 'product_id',	
			'relationship_type'=>'one-to-many'),	
			
	'products_assigned_user' =>
   array('lhs_module'=> 'Users', 'lhs_table'=> 'users', 'lhs_key' => 'id',
   'rhs_module'=> 'Products', 'rhs_table'=> 'products', 'rhs_key' => 'assigned_user_id',
   'relationship_type'=>'one-to-many')

   ,'products_modified_user' =>
   array('lhs_module'=> 'Users', 'lhs_table'=> 'users', 'lhs_key' => 'id',
   'rhs_module'=> 'Products', 'rhs_table'=> 'products', 'rhs_key' => 'modified_user_id',
   'relationship_type'=>'one-to-many')

   ,'products_created_by' =>
   array('lhs_module'=> 'Users', 'lhs_table'=> 'users', 'lhs_key' => 'id',
   'rhs_module'=> 'Products', 'rhs_table'=> 'products', 'rhs_key' => 'created_by',
   'relationship_type'=>'one-to-many')







	),
);
?>