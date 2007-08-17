<?php
/*****************************************************************************
 * The contents of this file are subject to the RECIPROCAL PUBLIC LICENSE
 * Version 1.1 ("License"); You may not use this file except in compliance
 * with the License. You may obtain a copy of the License at
 * http://opensource.org/licenses/rpl.php. Software distributed under the
 * License is distributed on an "AS IS" basis, WITHOUT WARRANTY OF ANY KIND,
 * either express or implied.
 *
 * You may:
 * a) Use and distribute this code exactly as you received without payment or
 *    a royalty or other fee.
 * b) Create extensions for this code, provided that you make the extensions
 *    publicly available and document your modifications clearly.
 * c) Charge for a fee for warranty or support or for accepting liability
 *    obligations for your customers.
 *
 * You may NOT:
 * a) Charge for the use of the original code or extensions, including in
 *    electronic distribution models, such as ASP (Application Service
 *    Provider).
 * b) Charge for the original source code or your extensions other than a
 *    nominal fee to cover distribution costs where such distribution
 *    involves PHYSICAL media.
 * c) Modify or delete any pre-existing copyright notices, change notices,
 *    or License text in the Licensed Software
 * d) Assert any patent claims against the Licensor or Contributors, or
 *    which would in any way restrict the ability of any third party to use the
 *    Licensed Software.
 *
 * You must:
 * a) Document any modifications you make to this code including the nature of
 *    the change, the authors of the change, and the date of the change.
 * b) Make the source code for any extensions you deploy available via an
 *    Electronic Distribution Mechanism such as FTP or HTTP download.
 * c) Notify the licensor of the availability of source code to your extensions
 *    and include instructions on how to acquire the source code and updates.
 * d) Grant Licensor a world-wide, non-exclusive, royalty-free license to use,
 *    reproduce, perform, modify, sublicense, and distribute your extensions.
 *
 * The Original Code is: C3CRM Team
 *                       http://www.c3crm.com
 *                       2006-5-19 
 *
 * The Initial Developer of the Original Code is C3CRM Team.
 * Portions created by C3CRM are Copyright (C) 2005 C3CRM
 * All Rights Reserved.
 * Contributors: Goodwill Consulting http://www.goodwill.co.id
 ********************************************************************************/

$dictionary['Quote'] = array('table' => 'quotes'
                               ,'fields' => array (
  'id' =>
  array (
    'name' => 'id',
    'vname' => 'LBL_ID',
    'type' => 'id',
    'required'=>true,
  ),
  'name' =>
  array (
     'name' => 'name',
	 'vname' => 'LBL_NAME',
	 'type' => 'char',
	 'len' => '50',
	 'reportable'=>true,
	 'required'=>true
  ),
  'quotenum' =>
  array (
     'name' => 'quotenum',
	 'vname' => 'LBL_QUOTENUM',
	 'type' => 'char',
	 'len' => '8',
	 'reportable'=>true,
	 'required'=>false
  ),
  
  'num_pref' =>
  array (
     'name' => 'num_pref',
     'type' => 'char',
     'len' => '36',
     'reportable'=>true,
     'required'=>true
  ),
  
  'num_suf' =>
  array (
     'name' => 'num_suf',
     'type' => 'char',
     'len' => '36',
     'reportable'=>true,
     'required'=>true
  ),

  'opportunity_id' =>
  array (
     'name' => 'opportunity_id',
	 'vname' => 'LBL_OPPORTUNITY_ID',
	 'type' => 'id',
	 'required'=>false
  ),
  'opportunity_name' =>
  array (
     'name' => 'opportunity_name',
	 'vname' => 'LBL_OPPORTUNITY_NAME',
	 'type' => 'char',
	 'len' => '50',
	 'required'=>false
  ),
  
  'account_id' =>
  array (
     'name' => 'account_id',
	 'vname' => 'LBL_ACCOUNT_ID',
	 'type' => 'id',
	 'required'=>false
  ),
  'account_name' =>
  array (
     'name' => 'account_name',
	 'vname' => 'LBL_ACCOUNT_NAME',
	 'type' => 'char',
	 'len' => '50',
	 'required'=>true
  ),

	'currency_id' => 
  array (
    'name' => 'currency_id',
    'type' => 'id',
    'vname' => 'LBL_CURRENCY',
    'reportable'=>false,
    'comment' => 'Currency used for display purposes'
  ),
  'payment_method' =>
  array (
    'name' => 'payment_method',
    'vname' => 'LBL_PAYMENT_METHOD',
    'type' => 'enum',
    'options' => 'payment_method_dom',
    'len'=>20,
		'reportable'=>true,
  ),
  'payment_term' =>
  array (
    'name' => 'payment_term',
    'vname' => 'LBL_PAYMENT_TERM',
    'type' => 'enum',
    'options' => 'payment_terms',
    'len'=>20,
		'reportable'=>true,
  ),
  'shipping_term' =>
  array (
    'name' => 'shipping_term',
    'vname' => 'LBL_SHIPPING_TERM',
    'type' => 'enum',
    'options' => 'shipping_term_dom',
    'len'=>20,
		'reportable'=>true,
  ),
  'stage' =>
  array (
    'name' => 'stage',
    'vname' => 'LBL_STAGE',
    'type' => 'enum',
    'options' => 'quote_stage_dom',
    'len'=>20,
	'reportable'=>true,
  ),
  'ordernum' =>
  array (
     'name' => 'ordernum',
	 'vname' => 'LBL_ORDERNUM',
	 'type' => 'int',
     'reportable'=>true,
	 'required'=>false
  ),
 'validuntil' =>
  array (
	'name' => 'validuntil',
	'vname' => 'LBL_VALIDUNTIL',
	'type' => 'date',
	'reportable'=>true,
	'massupdate' =>true,
	'required' => false
  ),

  'assigned_user_id' =>
  array (
    'name' => 'assigned_user_id',
    'rname' => 'user_name',
    'id_name' => 'assigned_user_id',
    'vname' => 'LBL_ASSIGNED_TO',
    'type' => 'assigned_user_name',
    'table' => 'users',
    'isnull' => 'false',
    'dbType' => 'id',
    'audited'=>true,
	'reportable'=>true,
  ),
   'assigned_user_name' =>
  array (
    'name' => 'assigned_user_name',
    'vname' => 'LBL_ASSIGNED_TO_NAME',
    'type' => 'varchar',
    'reportable'=>false,
    'source'=>'nondb',
    'table' => 'users',
  ),

   
   'billtocontactid' =>
  array (
     'name' => 'billtocontactid',
     'vname' => 'LBL_BILLTOCONTACTID',
     'type' => 'id',
     'required'=>false
  ),
  
  'billtocontactname' =>
  array (
     'name' => 'billtocontactname',
	 'vname' => 'LBL_BILLTOCONTACTNAME',
	 'type' => 'char',
	 'len' => '36',
	 'required'=>false
  ),

  'billtoaddress' =>
  array (
     'name' => 'billtoaddress',
	 'vname' => 'LBL_BILLTOADDRESS',
	 'type' => 'char',
	 'len' => '150',
	 'required'=>false
  ),

  'billtocity' =>
  array (
     'name' => 'billtocity',
	 'vname' => 'LBL_BILLTOCITY',
	 'type' => 'char',
	 'options' => 'city_dom',
	 'len' => '100',
	 'required'=>false
  ),

  'billpostalcode' =>
  array (
     'name' => 'billpostalcode',
	 'vname' => 'LBL_BILLPOSTALCODE',
	 'type' => 'char',
	 'len' => '20',
	 'required'=>false
  ),

  'billtostate' =>
  array (
     'name' => 'billtostate',
	 'vname' => 'LBL_BILLTOSTATE',
	 'type' => 'char',
	  'options' => 'state_dom',
	 'len' => '100',
	 'required'=>false
  ),

  'billtocountry' =>
  array (
     'name' => 'billtocountry',
	 'vname' => 'LBL_BILLTOCOUNTRY',
	 'type' => 'char',
	 'options' => 'country_dom',
	 'len' => '100',
	 'required'=>false
  ),

  'description' =>
  array (
     'name' => 'description',
	 'vname' => 'LBL_DESCRIPTION',
	 'type' => 'char',
	 'len' => '200',
	 'required'=>false
  ),

  'status' =>
  array (
     'name' => 'status',
	 'vname' => 'LBL_STATUS',
	 'type' => 'bool',
     'reportable'=>true,
	 'required'=>false
  ),

  'deleted' =>
  array (
     'name' => 'deleted',
	 'vname' => 'LBL_DELETED',
	 'type' => 'bool',

	 'required'=>false
  ),

  'date_entered' =>
  array (
     'name' => 'date_entered',
	 'vname' => 'LBL_DATE_ENTERED',
	 'type' => 'datetime',
     'reportable'=>true,
	 'required'=>false
  ),

  'date_modified' =>
  array (
     'name' => 'date_modified',
	 'vname' => 'LBL_DATE_MODIFIED',
	 'type' => 'datetime',
     'reportable'=>true,
	 'required'=>false
  ),

  'created_by' =>
  array (
    'name' => 'created_by',
    'rname' => 'user_name',
    'id_name' => 'modified_user_id',
    'vname' => 'LBL_ASSIGNED_TO',
    'type' => 'assigned_user_name',
    'table' => 'users',
    'isnull' => 'false',
    'dbType' => 'id',
    'required'=>true,
	'reportable'=>true,
  ),
  
  'tasks' =>
  array (
  	'name' => 'tasks',
    'type' => 'link',
    'relationship' => 'quote_tasks',
    'module'=>'Tasks',
    'bean_name'=>'Task',
    'source'=>'non-db',
		'vname'=>'LBL_TASKS',
  ),
  'notes' =>
  array (
  	'name' => 'notes',
    'type' => 'link',
    'relationship' => 'quote_notes',
    'module'=>'Notes',
    'bean_name'=>'Note',
    'source'=>'non-db',
		'vname'=>'LBL_NOTES',
  ),
  'meetings' =>
  array (
  	'name' => 'meetings',
    'type' => 'link',
    'relationship' => 'quote_meetings',
    'module'=>'Meetings',
    'bean_name'=>'Meeting',
    'source'=>'non-db',
		'vname'=>'LBL_MEETINGS',
  ),
  'calls' =>
  array (
  	'name' => 'calls',
    'type' => 'link',
    'relationship' => 'quote_calls',
    'module'=>'Calls',
    'bean_name'=>'Call',
    'source'=>'non-db',
		'vname'=>'LBL_CALLS',
  ),
  'documents' =>
  array (
  	'name' => 'documents',
    'type' => 'link',
    'relationship' => 'quotes_documents',
    'source'=>'non-db',
    'vname'=>'LBL_DOCUMENTS',
  ),  
    
)
, 'indices' => array (
       array('name' =>'quotespk', 'type' =>'primary', 'fields'=>array('id')),
       array('name' =>'idx_quote_id_del', 'type' =>'index', 'fields'=>array('id', 'deleted')),
  )
  
, 'relationships' => array (
	'quote_tasks' => array('lhs_module'=> 'Quotes', 'lhs_table'=> 'quotes', 'lhs_key' => 'id',
							  'rhs_module'=> 'Tasks', 'rhs_table'=> 'tasks', 'rhs_key' => 'parent_id',
							  'relationship_type'=>'one-to-many', 'relationship_role_column'=>'parent_type',
							  'relationship_role_column_value'=>'Quotes')

	,'quote_notes' => array('lhs_module'=> 'Quotes', 'lhs_table'=> 'quotes', 'lhs_key' => 'id',
							  'rhs_module'=> 'Notes', 'rhs_table'=> 'notes', 'rhs_key' => 'parent_id',
							  'relationship_type'=>'one-to-many', 'relationship_role_column'=>'parent_type',
							  'relationship_role_column_value'=>'Quotes')

	,'quote_meetings' => array('lhs_module'=> 'Quotes', 'lhs_table'=> 'quotes', 'lhs_key' => 'id',
							  'rhs_module'=> 'Meetings', 'rhs_table'=> 'meetings', 'rhs_key' => 'parent_id',
							  'relationship_type'=>'one-to-many', 'relationship_role_column'=>'parent_type',
							  'relationship_role_column_value'=>'Quotes')

	,'quote_calls' => array('lhs_module'=> 'Quotes', 'lhs_table'=> 'quotes', 'lhs_key' => 'id',
							  'rhs_module'=> 'Calls', 'rhs_table'=> 'calls', 'rhs_key' => 'parent_id',
							  'relationship_type'=>'one-to-many', 'relationship_role_column'=>'parent_type',
							  'relationship_role_column_value'=>'Quotes')

)  
  
);

?>