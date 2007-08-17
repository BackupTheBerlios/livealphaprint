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

$dictionary['Paper'] = array('table' => 'paper', 'audited'=>true, 'unified_search' => true, 'duplicate_merge'=>true
                               ,'fields' => array (
  'id' => 
  array (
    'name' => 'id',
    'vname' => 'LBL_ID',
    'type' => 'id',
    'required'=>true,
  ),
  
  	  'pref_supplier_id' =>
  				array (
		     'name' => 'pref_supplier_id',
			 'type' => 'id',
			 'required'=>false
  			),

  		 'pref_supplier_name' =>
 				 array (
		     'name' => 'pref_supplier_name',
			 'type' => 'char',
			 'len' => '50',
			 'required'=>true
		),
		
		
  'pname' => 
  array (
     'name' => 'pname',
	 'vname' => 'LBL_PNAME',
	 'type' => 'varchar',
	 'len' => '36',
	 'reportable'=>true,
	 'required'=>true
  ),
  
  'fname' => 
  array (
     'name' => 'fname',
	 'vname' => 'LBL_FNAME',
	 'type' => 'varchar',
	 'len' => '255',
	 'reportable'=>true,
	 'required'=>true
  ),
  
  'description' => 
  array (
     'name' => 'description',
	 'vname' => 'LBL_DESCRIPTION',
	 'type' => 'varchar',
	 'len' => '255',
	 'required'=>false
  ),
  
  'format' => 
		  array (
		     'name' => 'format',
			 'type' => 'char',
			 'len' => '50',
			 'reportable'=>true,
			 'required'=>false
		  ),
		  
  'size_h' => 
  array (
     'name' => 'size_h',
     'type' => 'int',
	 'len' => '255',
	 'reportable'=>true,
	 'required'=>false
  ),
  
  'size_w' => 
  array (
     'name' => 'size_w',
     'type' => 'int',
	 'len' => '255',
	 'reportable'=>true,
	 'required'=>false
  ),
  
   'weight' => 
  array (
     'name' => 'weight',
	 'vname' => 'LBL_WEIGHT',
	 'type' => 'int',
	 'len' => '150',
	 'reportable'=>true,
	 'required'=>false
  ),
  
   'mweight' => 
  array (
     'name' => 'mweight',
	 'vname' => 'LBL_MWEIGHT',
	 'type' => 'int',
	 'len' => '150',
	 'reportable'=>true,
	 'required'=>false
  ),
    
  'packcount' => 
  array (
     'name' => 'packcount',
	 'vname' => 'LBL_PACKCOUNT',
	 'type' => 'int',
	 'len' => '150',
	 'reportable'=>true,
	 'required'=>false
  ),
  
  'cutcount' => 
  array (
     'name' => 'cutcount',
	 'vname' => 'LBL_CUTCOUNT',
	 'type' => 'int',
	 'len' => '150',
	 'reportable'=>true,
	 'required'=>false
  ),
  
  'chrome' => 
  array (
     'name' => 'chrome',
	 'vname' => 'LBL_CHROME',
	 'type' => 'varchar',
	 'len' => '10',
	 'reportable'=>true,
	 'required'=>false
  ),

  'texture' => 
  array (
     'name' => 'texture',
	 'vname' => 'LBL_TEXTURE',
	 'type' => 'varchar',
	 'len' => '36',
	 'reportable'=>true,
	 'required'=>false
  ),

  'absorbtion' => 
  array (
     'name' => 'absorbtion',
	 'vname' => 'LBL_ABSORBTION',
	 'type' => 'varchar',
	 'len' => '36',
	 'reportable'=>true,
	 'required'=>false
  ),
  
    'color' => 
  array (
     'name' => 'color',
	 'vname' => 'LBL_COLOR',
	 'type' => 'varchar',
	 'len' => '36',
	 'reportable'=>true,
	 'required'=>false
  ),
  
  'side' => 
  array (
     'name' => 'side',
	 'vname' => 'LBL_SIDE',
	 'type' => 'varchar',
	 'len' => '36',
	 'reportable'=>true,
	 'required'=>false
  ),
  

  'man' => 
  array (
    'name' => 'man',
    'vname' => 'LBL_MANUFACTURER',
    'type' => 'varchar',
    'len' => 150,
    'unified_search' => true,
    'audited'=>true,
    'reportable'=>false,
     'required'=>false
  ),  
  
    'quality' => 
  array (
     'name' => 'quality',
	 'vname' => 'LBL_QUALITY',
	 'type' => 'varchar',
	 'len' => '36',
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
	
  'price_on' => 
  array (
     'name' => 'price_on',
	 'vname' => 'LBL_PRICE_ON',
	 'type' => 'varchar',
     'len' => '36',
	 'reportable'=>true,
	 'required'=>false
  ),
  
  'price' => 
  array (
     'name' => 'price',
	 'vname' => 'LBL_PRICE',
	 'type' => 'float',
	 'reportable'=>true,
	 'required'=>false,
  ),
  
  'price_unit' => 
  array (
     'name' => 'price_unit',
	 'type' => 'varchar',
	 'len' => '36',
	 'reportable'=>true,
	 'required'=>false,
  ),
  
  'size_unit' => 
  array (
     'name' => 'size_unit',
	 'type' => 'varchar',
     'len' => '36',
	 'reportable'=>true,
	 'required'=>false,
  ),
  
    'size_unit' => 
  array (
     'name' => 'size_unit',
	 'type' => 'varchar',
     'len' => '36',
	 'reportable'=>true,
	 'required'=>false,
  ),
  
  	'weight_unit' => 
  array (
   	 'name' => 'weight_unit',
	 'type' => 'varchar',
	 'len' => '36',
	 'reportable'=>true,
	 'required'=>false,
  ),  

  /*
  'qty_available' => 
  array (
   'name' => 'qty_available',
	 'vname' => 'LBL_QTY_AVAILABLE',
	 'source' => 'function',
	 'function_name' => 'get_qty_available',
	 'function_class' => 'Product',
	 'function_params' => array('qty_onhand','qty_reserved'),
	 'function_params_source' => 'this',
	 'type' => 'function',
	 'reportable'=>true,
	 'comment' => 'Quantity on hand minus quantity reserved'
  ),*/
   
/*
    'date_start_support' => 
  array (
     'name' => 'date_start_support',
	 'vname' => 'LBL_DATE_START_SUPPORT',
	 'type' => 'date',
	 'massupdate'=>false,
	 'reportable'=>true,
	 'required'=>false
  ),    
 
   
  'date_end_support' => 
  array (
     'name' => 'date_end_support',
	 'vname' => 'LBL_DATE_END_SUPPORT',
	 'type' => 'date',
	 'massupdate'=>false,
	 'reportable'=>true,
	 'required'=>false
  ),    
  
 */  
    
  'status' => 
  array (
     'name' => 'status',
	 'vname' => 'LBL_STATUS',
	 'type' => 'enum',
	 'len' => '25',
	 'options' => 'paper_status_dom',
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
   /*'assigned_user_id' => 
  array (
    'name' => 'assigned_user_id',
    'rname' => 'user_name',
    'id_name' => 'assigned_user_id',
    'vname' => 'LBL_ASSIGNED_TO',
    'type' => 'assigned_user_name',
    'table' => 'users',
    'isnull' => 'false',
    'dbType' => 'id',
    'reportable'=>true,
    'audited'=>true,
  ),
   'assigned_user_name' => 
  array (
    'name' => 'assigned_user_name',
    'vname' => 'LBL_ASSIGNED_TO_NAME',
    'type' => 'varchar',
    'reportable'=>false,
    'source'=>'nondb',
    'table' => 'users',
  ), */ 
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
	'reportable'=>true,
    'required'=>true,
  ),
 
  'supplies' => 
  array (
    'name' => 'supplies',
    'type' => 'link',
    'relationship' => 'papers_supplies',
    'module'=>'SupplyLines',
    'bean_name'=>'SupplyLine',
    'source'=>'non-db',
        'vname'=>'LBL_SUPPLIES',
  ),		

  'suppliers' => 
  		array (
  			'name' => 'suppliers',
    		'type' => 'link',
    		'relationship' => 'papers_suppliers',
    		'source'=>'non-db',
    		'ignore_role'=>true,
				'vname'=>'LBL_PAPERS',
  		),
  		
  'prices' => 
  array (
    'name' => 'prices',
    'type' => 'link',
    'relationship' => 'papers_prices',
    'module'=>'Prices',
    'bean_name'=>'Price',
    'source'=>'non-db',
        'vname'=>'LBL_PRICES',
  ),		
  
),

	'relationships' => array(
	
	'papers_supplies' => 
   array('lhs_module'=> 'Paper', 'lhs_table'=> 'paper', 'lhs_key' => 'id',
  'rhs_module'=> 'SupplyLines', 'rhs_table'=> 'supplylines', 'rhs_key' => 'paperid',
  'relationship_type'=>'one-to-many'),
	
	'papers_prices' => 
   array('lhs_module'=> 'Paper', 'lhs_table'=> 'paper', 'lhs_key' => 'id',
  'rhs_module'=> 'Prices', 'rhs_table'=> 'prices', 'rhs_key' => 'paper_id',
  'relationship_type'=>'one-to-many'),
), 

);
?>