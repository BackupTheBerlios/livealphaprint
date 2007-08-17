<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/*********************************************************************************
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
 ********************************************************************************/
$dictionary['Supplier'] = array('table' => 'suppliers', 'audited'=>true, 'unified_search' => true, 'duplicate_merge'=>true,
  'comment' => 'Accounts are organizations or entities that are the target of selling, support, and marketing activities, or have already purchased products or services',
  'fields' => array (
  'id' => 
  array (
    'name' => 'id',
    'vname' => 'LBL_ID',
    'required'=>true,
    'reportable'=>false,
    'type' => 'id',
    'comment' => 'Unique identifier',
  ),
  
    'acc_id' => 
  array (
    'name' => 'acc_id',
    'required'=>true,
    'reportable'=>false,
    'type' => 'id',
    'comment' => 'Unique identifier',
  ),
  
  
   'date_entered' => 
  array (
    'name' => 'date_entered',
    'vname' => 'LBL_DATE_ENTERED',
    'type' => 'datetime',
    'required'=>true,
    'comment' => 'Date record created',
  ),
  'date_modified' => 
  array (
    'name' => 'date_modified',
    'vname' => 'LBL_DATE_MODIFIED',
    'type' => 'datetime',
    'required'=>true,
    'comment' => 'Date record last modified',
  ),
    'modified_user_id' => 
  array (
    'name' => 'modified_user_id',
    'rname' => 'user_name',
    'id_name' => 'modified_user_id',
    'vname' => 'LBL_MODIFIED',
    'type' => 'assigned_user_name',
    'table' => 'modified_user_id_users',
    'reportable'=>true,
    'isnull' => 'false',
    'dbType' => 'id',
    'required'=> true,
    'len' => 36,
    'comment' => 'User ID that last modified record',
  ),
   'assigned_user_id' =>    
  array (
    'name' => 'assigned_user_id',
    'rname' => 'user_name',
    'id_name' => 'assigned_user_id',
    'vname' => 'LBL_ASSIGNED_TO',
    'type' => 'assigned_user_name',
    'reportable'=>true,
    'table' => 'users',
    'isnull' => 'false',
    'dbType' => 'id',
    'len' => 36,
    'audited'=>true,    
    'comment' => 'User ID of the assigned-to user',
    'duplicate_merge'=>'disabled' 
  ),
  'assigned_user_name' => 
  array (
    'name' => 'assigned_user_name',
    'vname' => 'LBL_ASSIGNED_TO_NAME',
    'type' => 'relate',
    'reportable'=>false,
    'source'=>'nondb',
    'table' => 'users',
    'id_name' => 'assigned_user_id',
    'module'=>'Users',
    'duplicate_merge'=>'disabled' 

  ),
    'created_by' => 
  array (
    'name' => 'created_by',
    'rname' => 'user_name',
    'id_name' => 'created_by',
    'vname' => 'LBL_CREATED',
    'type' => 'assigned_user_name',
    'table' => 'created_by_users',
    'isnull' => 'false',
    'dbType' => 'id',
    'len' => 36,
    'comment' => 'User name who created record',
  ),
   'name' => 
  array (
    'name' => 'name',
    'type' => 'name',
    'dbType' => 'varchar',
    'vname' => 'LBL_NAME',
    'len' => 150,
    'comment' => 'Name of the account',
    'unified_search' => true,
    'audited'=>true,




  ),
  
     'acc_name' => 
  array (
    'name' => 'acc_name',
    'type' => 'name',
    'dbType' => 'varchar',
    'vname' => 'LBL_ACC_NAME',
    'len' => 150,
    'comment' => 'Name of the account',
    'unified_search' => true,
    'audited'=>true,




  ),
  
  
   'parent_id' => 
  array (
    'name' => 'parent_id',
    'vname' => 'LBL_PARENT_ACCOUNT_ID',
    'type' => 'id',
    'required'=>false,
    'reportable'=>false,
    'audited'=>true,   
    'comment' => 'Account ID of the parent of this account', 
  ),
   'category' => 
  array (
    'name' => 'category',
    'vname' => 'LBL_CATEGORY',
    'type' => 'varchar',
    'options' => 'supplier_category_dom',
    'len'=>25,
    'comment' => 'The account is of this type',
  ),  
	'num' => 
  array (
    'name' => 'num',
    'vname' => 'LBL_NUMBER',
    'type' => 'varchar',
    'len'=>25,
    'comment' => 'The account belongs in this industry',



  ),
    'num_suf' => 
  array (
    'name' => 'num_suf',
    'type' => 'int',
    'len' => 5,
    'comment' => 'Annual revenue for this account',



  ),
  'phone_fax' => 
  array (
    'name' => 'phone_fax',
    'vname' => 'LBL_PHONE_FAX',
    'type' => 'phone',
    'dbType' => 'varchar',
    'len' => 25,
    'unified_search' => true,
    'comment' => 'The fax phone number of this account',
  ), 
  
  'billing_address_street' => 
  array (
    'name' => 'billing_address_street',
    'vname' => 'LBL_BILLING_ADDRESS_STREET',
    'type' => 'varchar',
    'len' => '150',
    'comment' => 'The street address used for billing address',



  ),
  'billing_address_city' => 
  array (
    'name' => 'billing_address_city',
    'vname' => 'LBL_BILLING_ADDRESS_CITY',
    'type' => 'varchar',
    'len' => '100',
    'comment' => 'The city used for billing address',



  ),
  'billing_address_state' => 
  array (
    'name' => 'billing_address_state',
    'vname' => 'LBL_BILLING_ADDRESS_STATE',
    'type' => 'varchar',
    'len' => '100',
    'comment' => 'The state used for billing address',



  ),
  'billing_address_postalcode' => 
  array (
    'name' => 'billing_address_postalcode',
    'vname' => 'LBL_BILLING_ADDRESS_POSTALCODE',
    'type' => 'varchar',
    'len' => '20',
    'comment' => 'The postal code used for billing address',



    
  ),
  'billing_address_country' => 
  array (
    'name' => 'billing_address_country',
    'vname' => 'LBL_BILLING_ADDRESS_COUNTRY',
    'type' => 'varchar',
    'len' => '100',
    'comment' => 'The country used for the billing address',



  ),
   'description' => 
  array (
    'name' => 'description',
    'vname' => 'LBL_DESCRIPTION',
    'type' => 'text',
    'comment' => 'Descriptive information about the account',
  ),
   'num_pref' => 
  array (
    'name' => 'num_pref',
    'type' => 'varchar',
    'len' => 3,
    'comment' => 'An arbitrary rating for this account for use in comparisons with others',
  ),
    'phone_office' => 
  array (
    'name' => 'phone_office',
    'vname' => 'LBL_PHONE_OFFICE',
    'type' => 'phone',
    'dbType' => 'varchar',
    'len' => 25,
    'audited'=>true,
    'unified_search' => true,  
    'comment' => 'The office phone number',



  ),
    'phone_alternate' => 
  array (
    'name' => 'phone_alternate',
    'vname' => 'LBL_PHONE_ALT',
    'type' => 'phone',
    'dbType' => 'varchar',
    'len' => 25,
    'unified_search' => true,
    'comment' => 'An alternate phone number',



  ),
  'email1' => 
  array (
    'name' => 'email1',
    'vname' => 'LBL_EMAIL',
    'type' => 'email',
    'dbType' => 'varchar',
    'len' => 100,
    'audited'=>true,  
    'comment' => 'Primary email address',



  ),
  'email2' => 
  array (
    'name' => 'email2',
    'vname' => 'LBL_OTHER_EMAIL_ADDRESS',
    'type' => 'email',
    'dbType' => 'varchar',
    'len' => 100,
    'comment' => 'Secondary email address',



  ),
   'website' => 
  array (
    'name' => 'website',
    'vname' => 'LBL_WEBSITE',
    'type' => 'varchar',
    'len' => 255,
    'comment' => 'URL of website for the account',
  ),
   'cid' => 
  array (
    'name' => 'cid',
    'vname' => 'LBL_CID',
    'type' => 'varchar',
    'len' => 100,
    'comment' => '',
  ),
   'ctid' => 
  array (
    'name' => 'ctid',
    'vname' => 'LBL_CTID',
    'type' => 'num',
    'len' => 30,
    'dbType' => 'varchar',

  ),
  'iban' => 
  array (
    'name' => 'iban',
    'vname' => 'LBL_IBAN',
    'type' => 'varchar',
    'len' => 40,
   ),
  'pay_terms' => 
  array (
    'name' => 'pay_terms',
    'vname' => 'LBL_PAY_TERMS',
    'type' => 'varchar',
    'len' => 40,
    'comment' => 'The stock trading (ticker) symbol for the account',



  ),
  'shipping_address_street' => 
  array (
    'name' => 'shipping_address_street',
    'vname' => 'LBL_SHIPPING_ADDRESS_STREET',
    'type' => 'varchar',
    'len' => 150,
    'comment' => 'The street address used for for shipping purposes',



  ),
  'shipping_address_city' => 
  array (
    'name' => 'shipping_address_city',
    'vname' => 'LBL_SHIPPING_ADDRESS_CITY',
    'type' => 'varchar',
    'len' => 100,
    'comment' => 'The city used for the shipping address',



  ),
  'shipping_address_state' => 
  array (
    'name' => 'shipping_address_state',
    'vname' => 'LBL_SHIPPING_ADDRESS_STATE',
    'type' => 'varchar',
    'len' => 100,
    'comment' => 'The state used for the shipping address',



  ),
  'shipping_address_postalcode' => 
  array (
    'name' => 'shipping_address_postalcode',
    'vname' => 'LBL_SHIPPING_ADDRESS_POSTALCODE',
    'type' => 'varchar',
    'len' => 20,
    'comment' => 'The zip code used for the shipping address',



  ),
  'shipping_address_country' => 
  array (
    'name' => 'shipping_address_country',
    'vname' => 'LBL_SHIPPING_ADDRESS_COUNTRY',
    'type' => 'varchar',
    'len' => 100,
    'comment' => 'The country used for the shipping address',



  ),
    'deleted' => 
  array (
    'name' => 'deleted',
    'vname' => 'LBL_DELETED',
    'type' => 'bool',
    'required' => true,
    'reportable'=>false,
    'default' => '0',
    'comment' => 'Record deletion indicator',
  ),




























  'account_name' => 
  array (
    'name' => 'account_name',
    'rname' => 'name',
    'id_name' => 'account_id',
    'vname' => 'LBL_MEMBER_OF',
    'type' => 'relate',
    'table' => 'parent_accounts',
    'isnull' => 'true',
    'module' => 'Accounts',
    'massupdate' => false,
    'source'=>'non-db',
    'len' => 36,
    'link'=>'member_of',
    'unified_search' => true,
  ),  
  'billing_address_street_2' => 
  array (
    'name' => 'billing_address_street_2',
    'vname' => 'LBL_BILLING_ADDRESS_STREET_2',
    'type' => 'varchar',
    'len' => '150',
    'source'=>'non-db',
  ),
  'billing_address_street_3' => 
  array (
    'name' => 'billing_address_street_3',
    'vname' => 'LBL_BILLING_ADDRESS_STREET_3',
    'type' => 'varchar',
    'len' => '150',
    'source'=>'non-db',
  ),
  'billing_address_street_4' => 
  array (
    'name' => 'billing_address_street_4',
    'vname' => 'LBL_BILLING_ADDRESS_STREET_4',
    'type' => 'varchar',
    'len' => '150',
    'source'=>'non-db',
  ),
  'shipping_address_street_2' => 
  array (
    'name' => 'shipping_address_street_2',
    'vname' => 'LBL_SHIPPING_ADDRESS_STREET_2',
    'type' => 'varchar',
    'len' => 150,
    'source'=>'non-db',
  ),
  'shipping_address_street_3' => 
  array (
    'name' => 'shipping_address_street_3',
    'vname' => 'LBL_SHIPPING_ADDRESS_STREET_3',
    'type' => 'varchar',
    'len' => 150,
    'source'=>'non-db',
  ),
  'shipping_address_street_4' => 
  array (
    'name' => 'shipping_address_street_4',
    'vname' => 'LBL_SHIPPING_ADDRESS_STREET_4',
    'type' => 'varchar',
    'len' => 150,
    'source'=>'non-db',
  ),
  
  'members' => 
  array (
    'name' => 'members',
    'type' => 'link',
    'relationship' => 'member_accounts',
    'module'=>'Accounts',
    'bean_name'=>'Account',
    'source'=>'non-db',
        'vname'=>'LBL_MEMBERS',
  ),
  'member_of' => 
  array (
    'name' => 'member_of',
    'type' => 'link',
    'relationship' => 'member_accounts',
    'module'=>'Accounts',
    'bean_name'=>'Account',
        'link_type'=>'one',
    'source'=>'non-db',
        'vname'=>'LBL_MEMBER_OF',
    'side'=>'right',
  ),
  'cases' => 
  array (
    'name' => 'cases',
    'type' => 'link',
    'relationship' => 'account_cases',
    'module'=>'Cases',
    'bean_name'=>'aCase',
    'source'=>'non-db',
        'vname'=>'LBL_CASES',
  ),
  'tasks' => 
  array (
    'name' => 'tasks',
    'type' => 'link',
    'relationship' => 'account_tasks',
    'module'=>'Tasks',
    'bean_name'=>'Task',
    'source'=>'non-db',
        'vname'=>'LBL_TASKS',
  ),
  'notes' => 
  array (
    'name' => 'notes',
    'type' => 'link',
    'relationship' => 'account_notes',
    'module'=>'Notes',
    'bean_name'=>'Note',
    'source'=>'non-db',
        'vname'=>'LBL_NOTES',
  ),
  'meetings' => 
  array (
    'name' => 'meetings',
    'type' => 'link',
    'relationship' => 'account_meetings',
    'module'=>'Meetings',
    'bean_name'=>'Meeting',
    'source'=>'non-db',
        'vname'=>'LBL_MEETINGS',
  ),

////////////////// quotes/////////////
    'quotes' => 
  array (
    'name' => 'quotes',
    'type' => 'link',
    'relationship' => 'account_quotes',
    'module'=>'Quotes',
    'bean_name'=>'Quote',
    'source'=>'non-db',
        'vname'=>'LBL_QUOTES',
  ),
//////////////////////////////////

'supplies' => 
  array (
    'name' => 'supplies',
    'type' => 'link',
    'relationship' => 'suppliers_supplies',
    'module'=>'Supplies',
    'bean_name'=>'Supply',
    'source'=>'non-db',
        'vname'=>'LBL_SUPPLIES',
  ),
  
  'purchaseorders' => 
  array (
    'name' => 'purchaseorders',
    'type' => 'link',
    'relationship' => 'suppliers_purchaseorders',
    'module'=>'PurchaseOrders',
    'bean_name'=>'PurchaseOrder',
    'source'=>'non-db',
        'vname'=>'LBL_SUPPLIES',
  ),      
  
  'calls' => 
  array (
    'name' => 'calls',
    'type' => 'link',
    'relationship' => 'account_calls',
    'module'=>'Calls',
    'bean_name'=>'Call',
    'source'=>'non-db',
        'vname'=>'LBL_CALLS',
  ),
  'emails' => 
  array (
    'name' => 'emails',
    'type' => 'link',
    'relationship' => 'emails_accounts_rel', /* reldef in emails */
    'module'=>'Emails',
    'bean_name'=>'Email',
    'source'=>'non-db',
        'vname'=>'LBL_EMAILS',
  ),
  'bugs' => 
  array (
    'name' => 'bugs',
    'type' => 'link',
    'relationship' => 'accounts_bugs',
    'module'=>'Bugs',
    'bean_name'=>'Bug',
    'source'=>'non-db',
        'vname'=>'LBL_BUGS',
  ),
  'contacts' => 
  array (
    'name' => 'contacts',
    'type' => 'link',
    'relationship' => 'suppliers_contacts',
    'module'=>'Contacts',
    'bean_name'=>'Contact',
    'source'=>'non-db',
        'vname'=>'LBL_CONTACTS',
  ),
  
   'materials' => 
  array (
    'name' => 'materials',
    'type' => 'link',
    'relationship' => 'materials_suppliers',
    'module'=>'Materials',
    'bean_name'=>'Material',
    'source'=>'non-db',
        'vname'=>'LBL_MATERIALS',
  ),
  
  'papers' => 
  array (
    'name' => 'papers',
    'type' => 'link',
    'relationship' => 'papers_suppliers',
    'module'=>'Paper',
    'bean_name'=>'Paper',
    'source'=>'non-db',
        'vname'=>'LBL_PAPERS',
  ),
  
 
  'created_by_link' =>
  array (
    'name' => 'created_by_link',
    'type' => 'link',
    'relationship' => 'suppliers_created_by',
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
    'relationship' => 'suppliers_modified_user',
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
    'relationship' => 'suppliers_assigned_user',
    'vname' => 'LBL_ASSIGNED_TO_USER',
    'link_type' => 'one',
    'module'=>'Users',
    'bean_name'=>'User',
    'source'=>'non-db',
    'duplicate_merge'=>'enabled',
    'rname' => 'user_name',
    'id_name' => 'assigned_user_id',
    'table' => 'users',         
  ),
  
  ),
  

 'indices' => array (
       array('name' =>'accountspk', 'type' =>'primary', 'fields'=>array('id')),
       array('name' =>'idx_accnt_id_del', 'type' =>'index', 'fields'=>array('id', 'deleted')),



       array('name' =>'idx_accnt_assigned_del', 'type' =>'index', 'fields'=>array( 'deleted', 'assigned_user_id')),
        array('name' =>'idx_accnt_parent_id', 'type' =>'index', 'fields'=>array( 'parent_id')),
  )
                                                      
, 'relationships' => array (
  
  'suppliers_supplies' => 
  array('lhs_module'=> 'Suppliers', 'lhs_table'=> 'suppliers', 'lhs_key' => 'id',
  'rhs_module'=> 'Supplies', 'rhs_table'=> 'supplies', 'rhs_key' => 'supplier_id',
  'relationship_type'=>'one-to-many'),
  
  'suppliers_purchaseorders' => 
  array('lhs_module'=> 'Suppliers', 'lhs_table'=> 'suppliers', 'lhs_key' => 'id',
  'rhs_module'=> 'PurchaseOrders', 'rhs_table'=> 'purchaseorders', 'rhs_key' => 'supplier_id',
  'relationship_type'=>'one-to-many'),  
   
  'suppliers_assigned_user' =>
  array('lhs_module'=> 'Users', 'lhs_table'=> 'users', 'lhs_key' => 'id',
  'rhs_module'=> 'Suppliers', 'rhs_table'=> 'suppliers', 'rhs_key' => 'assigned_user_id',
  'relationship_type'=>'one-to-many'),

  'suppliers_modified_user' =>
  array('lhs_module'=> 'Users', 'lhs_table'=> 'users', 'lhs_key' => 'id',
  'rhs_module'=> 'Suppliers', 'rhs_table'=> 'suppliers', 'rhs_key' => 'modified_user_id',
  'relationship_type'=>'one-to-many'),

  'suppliers_created_by' =>
  array('lhs_module'=> 'Users', 'lhs_table'=> 'users', 'lhs_key' => 'id',
  'rhs_module'=> 'Suppliers', 'rhs_table'=> 'suppliers', 'rhs_key' => 'created_by',
  'relationship_type'=>'one-to-many'),
 )
    //This enables optimistic locking for Saves From EditView
    ,'optimistic_locking'=>true, 
);
?>
