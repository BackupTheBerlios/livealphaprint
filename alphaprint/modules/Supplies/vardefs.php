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

$dictionary['Supply'] = array('table' => 'supplies'
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
     'len' => '36',
  ), 
  
  'supplynum' =>
  array (
     'name' => 'supplynum',
	 'vname' => 'LBL_SUPPLYNUM',
	 'type' => 'char',
	 'len' => '36',
	 'reportable'=>true,
	 'required'=>false
  ),
  
   'category' =>
  array (
     'name' => 'category',
     'vname' => 'LBL_CATEGORY',
     'type' => 'char',
     'len' => '36',
     'reportable'=>true,
     'required'=>false
  ),
  
  'status' =>
  array (
     'name' => 'status',
     'vname' => 'LBL_STATUS',
     'type' => 'char',
     'len' => '36',
     'reportable'=>true,
     'required'=>false
  ),
  
   'total_price' =>
  array (
     'name' => 'total_price',
     'vname' => 'LBL_TOTAL_PRICE',
     'type' => 'float',
     'dbtype' => 'double',
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
  
  'delivery_date' =>
  array (
    'name' => 'delivery_date',
    'vname' => 'LBL_DELIVERY_DATE',
    'type' => 'date',
    'reportable'=>true,
    'massupdate' =>true,
    'required' => true
  ),
  
  'delivered_date' =>
  array (
    'name' => 'delivered_date',
    'vname' => 'LBL_DELIVERED_DATE',
    'type' => 'date',
    'reportable'=>true,
    'massupdate' =>true,
    'required' => false
  ),
  
  'supplier_id' =>
  array (
     'name' => 'supplier_id',
     'vname' => 'LBL_SUPPLIER_NAME',
	 'type' => 'id',
	 'required'=>false
  ),
  
  'supplier_name' =>
  array (
     'name' => 'supplier_name',
	 'vname' => 'LBL_SUPPLIER_NAME',
	 'type' => 'char',
	 'len' => '50',
	 'required'=>false
  ),
  
  'purchaseorder_id' =>
  array (
     'name' => 'purchaseorder_id',
	 'vname' => 'LBL_PURCHASE_ORDER_ID',
	 'type' => 'id',
	 'required'=>false
  ),
  
  'purchaseorder_num' =>
  array (
     'name' => 'purchaseorder_num',
	 'vname' => 'LBL_PURCHASE_ORDER',
	 'type' => 'char',
	 'len' => '50',
	 'required'=>false
  ),

	'sales_order_id' => 
  array (
    'name' => 'sales_order_id',
    'type' => 'id',
    'vname' => 'LBL_SALES_ORDER_ID',
    'reportable'=>false,
  ),
  
  'sales_order_num' =>
  array (
    'name' => 'sales_order_num',
    'vname' => 'LBL_SALES_ORDER',
    'type' => 'char',
    'len'=>'50',
	'reportable'=>true,
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
   
   'note' =>
  array (
     'name' => 'note',
	 'vname' => 'LBL_NOTE',
	 'type' => 'char',
	 'len' => '200',
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
    'relationship' => 'supply_tasks',
    'module'=>'Tasks',
    'bean_name'=>'Task',
    'source'=>'non-db',
		'vname'=>'LBL_TASKS',
  ),
  'notes' =>
  array (
  	'name' => 'notes',
    'type' => 'link',
    'relationship' => 'supply_notes',
    'module'=>'Notes',
    'bean_name'=>'Note',
    'source'=>'non-db',
		'vname'=>'LBL_NOTES',
  ),
  'meetings' =>
  array (
  	'name' => 'meetings',
    'type' => 'link',
    'relationship' => 'supply_meetings',
    'module'=>'Meetings',
    'bean_name'=>'Meeting',
    'source'=>'non-db',
		'vname'=>'LBL_MEETINGS',
  ),
  'calls' =>
  array (
  	'name' => 'calls',
    'type' => 'link',
    'relationship' => 'supply_calls',
    'module'=>'Calls',
    'bean_name'=>'Call',
    'source'=>'non-db',
		'vname'=>'LBL_CALLS',
  ),
  'documents' =>
  array (
  	'name' => 'documents',
    'type' => 'link',
    'relationship' => 'supplies_documents',
    'source'=>'non-db',
    'vname'=>'LBL_DOCUMENTS',
  ), 

  'materials' => 
  array (
    'name' => 'materials',
    'type' => 'link',
    'relationship' => 'materials_supplies',
    'module'=>'Materials',
    'bean_name'=>'Material',
    'source'=>'non-db',
        'vname'=>'LBL_MATERIALS',
  ),
    
)
, 'indices' => array (
       array('name' =>'suppliespk', 'type' =>'primary', 'fields'=>array('id')),
       array('name' =>'idx_supply_id_del', 'type' =>'index', 'fields'=>array('id', 'deleted')),
  )
  
, 'relationships' => array (
	'supply_tasks' => array('lhs_module'=> 'Supplies', 'lhs_table'=> 'supplies', 'lhs_key' => 'id',
							  'rhs_module'=> 'Tasks', 'rhs_table'=> 'tasks', 'rhs_key' => 'parent_id',
							  'relationship_type'=>'one-to-many', 'relationship_role_column'=>'parent_type',
							  'relationship_role_column_value'=>'Supplies')

	,'supply_notes' => array('lhs_module'=> 'Supplies', 'lhs_table'=> 'supplies', 'lhs_key' => 'id',
							  'rhs_module'=> 'Notes', 'rhs_table'=> 'notes', 'rhs_key' => 'parent_id',
							  'relationship_type'=>'one-to-many', 'relationship_role_column'=>'parent_type',
							  'relationship_role_column_value'=>'Supplies')

	,'supply_meetings' => array('lhs_module'=> 'Supplies', 'lhs_table'=> 'Supplies', 'lhs_key' => 'id',
							  'rhs_module'=> 'Meetings', 'rhs_table'=> 'meetings', 'rhs_key' => 'parent_id',
							  'relationship_type'=>'one-to-many', 'relationship_role_column'=>'parent_type',
							  'relationship_role_column_value'=>'Supplies')

	,'supply_calls' => array('lhs_module'=> 'Supplies', 'lhs_table'=> 'Supplies', 'lhs_key' => 'id',
							  'rhs_module'=> 'Calls', 'rhs_table'=> 'calls', 'rhs_key' => 'parent_id',
							  'relationship_type'=>'one-to-many', 'relationship_role_column'=>'parent_type',
							  'relationship_role_column_value'=>'Supplies')

)  
  
);

?>