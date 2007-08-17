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
$dictionary['SupplyLine'] = array(
'table' => 'supplylines',
'fields' => array (
  
  'id' =>
  array (
    'name' => 'id',
    'vname' => 'LBL_ID',
    'type' => 'id',
    'required'=>true,
  ),
  'supplyid' =>
  array (
    'name' => 'supplyid',
    'vname' => 'LBL_SUPPLYID',
    'type' => 'id',
    'required'=>true,
  ),
  
  'supplynum' =>
  array (
     'name' => 'supplynum',
     'vname' => 'LBL_SUPPLYNUM',
     'type' => 'char',
     'len' => '36',
     'reportable'=>true,
  ),
  
 'delivery_date' =>
  array (
    'name' => 'delivery_date',
    'vname' => 'LBL_DELIVERY_DATE',
    'type' => 'date',
    'reportable'=>true,
    'massupdate' =>true,
    'required' => false
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
  
  'delivered_date' =>
  array (
    'name' => 'delivered_date',
    'vname' => 'LBL_DELIVERED_DATE',
    'type' => 'date',
    'reportable'=>true,
    'massupdate' =>true,
    'required' => false
  ), 
  
  'materialid' =>
  array (
    'name' => 'materialid',
    'vname' => 'LBL_MATERIAL_ID',
    'type' => 'id',
    'required'=>true,
  ),
  
  'paperid' =>
  array (
    'name' => 'paperid',
    'type' => 'id',
    'required'=>true,
  ),
  

  'number' =>
  array (
     'name' => 'number',
     'vname' => 'LBL_NUMBER',
     'type' => 'int',
     'len' => '20',
     'required'=>true
  ),
  
  'materialname' =>
  array (
     'name' => 'materialname',
	 'vname' => 'LBL_MATERIAL_NAME',
	 'type' => 'char',
	 'len' => '50',
	 'required'=>true
  ),
 
  'unit' => 
  array (
     'name' => 'unit',
	 'vname' => 'LBL_UNIT',
	 'type' => 'int',
	 'len' => '10',
	 'reportable'=>true,
	 'required'=>false
  ),

  'measure' =>
  array (
     'name' => 'measure',
	 'vname' => 'LBL_MEASURE',
	 'type' => 'char',
     'len' => '36', 
     'required'=>false
  ),

  'singlep' =>
  array (
     'name' => 'singlep',
	 'vname' => 'LBL_SINGLEP',
	 'type' => 'float',
     'dbtype' => 'double',
	 'required'=>false
  ),
  
  'price' =>
  array (
     'name' => 'price',
     'vname' => 'LBL_PRICE',
     'type' => 'float',
     'dbtype' => 'double',
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

	 'required'=>false
  ),

  'date_modified' =>
  array (
     'name' => 'date_modified',
	 'vname' => 'LBL_DATE_MODIFIED',
	 'type' => 'datetime',

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
  ),
 ) 
);
?>