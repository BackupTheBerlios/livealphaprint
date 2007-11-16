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

include_once('config.php');
require_once('log4php/LoggerManager.php');
require_once('include/database/PearDatabase.php');
require_once('data/SugarBean.php');
require_once('modules/Products/Products.php');
require_once('modules/ProductLogs/ProductLog.php');

// Contact is used to store customer information.
class ProductStatus extends SugarBean
{

   
   var $object_name = 'ProductStatus';
   var $module_dir = 'ProductStatus';
   

   var $product_status_action = Array(
   'create_newproduct' => 'newproduct',
   'create_clientrequest' => 'client_request',
   'create_estimate' => 'estimate',
   'create_quote' => 'quote',
   'create_clientorder' => 'client_order',
   'newproduct' => 'newproduct',
   'client_request' => 'client_request',
   'estimate' => 'estimate',
   'quote' => 'quote',
   'client_order' => 'client_order',
   'closed' => 'closed');  
    

   function ProductStatus()
   {
		parent::SugarBean();
		//$this->list_fields = $this->column_fields;
   }
   
   function product_log($id,$status, $bean, $status_action, $old_status){
   		$productLog = new ProductLog();
   		$product = new Products();
   		$product->retrieve($id);
   		if (($old_status != $status) || empty($product->date_modified)) {
			
			$productLog->product_name = $product->name;
			$productLog->product_id = $product->id;
	   		$productLog->from_status = $old_status;
	   		$product->status = $status;
	   		$product->save($GLOBALS['check_notify']);
	   		$productLog->to_status = $product->status;
	   		var_dump($productLog->object_name);
	   		var_dump($productLog->object_id);
	   		$productLog->bean_name = $bean->object_name;
	   		$productLog->bean_id = $bean->id;
	   		var_dump($productLog->object_name);
	   		var_dump($productLog->object_id);
	   		var_dump($bean->object_name);
	   		var_dump($bean->object_id);
	   		$productLog->action = $status_action;
			if (!empty($_REQUEST['status_action'])) {
				$productLog->action = $_REQUEST['status_action'];	
			}
			$productLog->save($GLOBALS['check_notify']);  
   		} 		
   }
   
   function update_product_status($status_action, $bean, $old_status){
   		$product_status_action = $this->product_status_action;
   		$status = $product_status_action[$status_action];
   		if ($bean->object_name == "Products") {
			$id = $bean->id;
		}
		else{
			$id = $bean->product_id;
		}	
   		$this->product_log($id, $status, $bean, $status_action, $old_status);
   		
   		return $status;
   }

	

}

?>