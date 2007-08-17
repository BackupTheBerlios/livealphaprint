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
require_once('include/database/PearDatabase.php');
require_once('data/SugarBean.php');
require_once('include/upload_file.php');

// Contact is used to store customer information.
class Paper extends SugarBean
{ 
	// Stored fields
   var $id;   
   
   var $pref_supplier_id; 
   
   var $pref_supplier_name;
   
   var $pname;   
   
   var $fname;   
   
   var $description;   
   
   var $format;
   
   var $size_h;

   var $size_w; 
     
   var $weight;

   var $mweight;
   
   var $packcount;   
        
   var $cutcount;
   
   var $chrome;
   
   var $texture;
   
   var $absorbtion;
   
   var $color;
   
   var $side;
   
   var $account_name;
   
   var $is_active;
   
   var $quality;   
   
   var $man;  
   
   var $price_on;
   
   var $price;
   
   var $price_unit;
   
   var $size_unit;
   
   var $weight_unit;
         
   var $status;   
   
   var $deleted;   
   
   var $date_entered;
       
   var $date_modified;   
   var $assigned_user_id;
   var $created_by;
   var $table_name = 'paper';
   var $object_name = 'Paper';
   var $module_dir = 'Paper';
   var $new_schema = true;
	   
   var $column_fields = Array(
     'id'
     
    ,'pname'
    
    ,'pref_supplier_id'
   
    ,'pref_supplier_name'
    
	,'fname'
   
	,'description'
	
	,'format'
		
	,'size_h'
	
	,'size_w'

	,'weight'
	
	,'mweight'
   
	,'packcount'
   
	,'cutcount'
		
	,'chrome'
   
    ,'texture'
    
    ,'absorbtion'
   
    ,'color'
    
    ,'side'
   
    ,'man'
   
    ,'is_active'	
   
    ,'quality'
   
    ,'price_on'
   
    ,'price'
    
    ,'price_unit'
   
    ,'size_unit'
		
	,'weight_unit'
   
	,'status'
   
	,'deleted'
		
	,'date_entered'
		  
	,'date_modified'
		
	,'created_by'
      
	);
   

   var $list_fields= array();
   var $required_fields = array();


   var $relationship_fields = Array('pricebook_id'=>'pricebooks',

									);
									

   function Paper()
   {
		parent::SugarBean();
		$this->list_fields = $this->column_fields;
   }

   function get_xtemplate_data() {
		$return_array = array();
		global $current_user;
		foreach($this->column_fields as $field)	{
			$return_array[strtoupper($field)] = $this->$field;
		}
		return $return_array;
	}
	
	function create_export_query(&$order_by, &$where)
	{
					 $custom_join = $this->custom_fields->getJOIN();
					 $query = "SELECT
							paper.*";



					 if($custom_join){
						$query .= $custom_join['select'];
					}
					 $query .= " FROM paper ";




			if($custom_join){
				$query .= $custom_join['join'];
			}

					$where_auto = " paper.deleted=0 ";

			if($where != "")
					$query .= "where ($where) AND ".$where_auto;
			else
					$query .= "where ".$where_auto;

			if(!empty($order_by))
					$query .= " ORDER BY $order_by";

			return $query;
	}
	
	/*    function create_list_query($order_by, $where, $show_deleted= 0)
        {

			$custom_join = $this->custom_fields->getJOIN();

                $query = "SELECT ";

                $query .= "
                    products.*,
                    users.user_name assigned_user_name,
                    accounts.name as account_name,
                	accounts.id as account_id,
                	accounts.assigned_user_id account_id_owner ";
                 if($custom_join){
					$query .=  $custom_join['select'];
				}



             $query .= " FROM  products ";
			




			 $query .= "LEFT JOIN users
                    	ON products.assigned_user_id=users.id
                    	LEFT JOIN accounts
	                    ON products.manufacturerid=accounts.id  ";
             if($custom_join){
					$query .=  $custom_join['join'];
				}



     		$where_auto = '1=1';
			if($show_deleted == 0){
            	$where_auto = " products.deleted=0 ";
			}else if($show_deleted == 1){
				$where_auto = " products.deleted=1 ";	
			}

            if($where != "")
                    $query .= "where ($where) AND ".$where_auto;
            else
                    $query .= "where ".$where_auto;

            if(!empty($order_by))
                    $query .= " ORDER BY $order_by";
                    return $query;
        }*/


	/* function fill_in_additional_detail_fields()
	{
		$this->get_account();
		$this->imagepath=UploadFile::get_url(from_html($this->imagename),$this->id);
		
		
		// Fill in the assigned_user_name
		$this->assigned_user_name = get_assigned_user_name($this->assigned_user_id);
		
		//$query = "SELECT a.trade_price trade_price, b.limit_price limit_price from products_pricebooks a, products b where product_id='".$this->id."' and b.id='".$this->id."' and a.deleted=0 and b.deleted=0";
		//$result = $this->db->query($query,true," Error filling in additional detail fields: ");
		// Get the id and the name.
		$row = $this->db->fetchByAssoc($result);

		if($row != null)
		{
			$this->trade_price = $row['trade_price'];
		}
		else
		{
			$this->trade_price = 0;
		}
		$query2 = "SELECT accounts.assigned_user_id account_id_owner " .
				"from products " .
				"left join accounts " .
				"on products.manufacturerid=accounts.id " .
				"where products.id='$this->id' ";
		$result = $this->db->query($query2,true," Error filling in additional detail fields: ");
		$row = $this->db->fetchByAssoc($result);
		$this->account_id_owner = $row['account_id_owner'];

	}*/
	
	function get_account()
	{
		if(isset($this->id) && !empty($this->id)){
			$query = "SELECT name FROM accounts WHERE id='{$this->manufacturerid}'";
			//Goodwill: requireSingleResult has beeen deprecated.
			//$result = $this->db->requireSingleResult($query);
			$result = $this->db->limitQuery($query,0,1,true, "Retrieving record");
			//End Goodwill
			if(!empty($result)){
				$row = $this->db->fetchByAssoc($result);
				$this->account_name = $row['fname'];
			}

	}}
	
	function get_list_view_data()
	{
		global $current_language, $current_user, $mod_strings, $app_list_strings, $sugar_config;
		$temp_array = $this->get_list_view_array();
		//Goodwill
		$temp_array['UNIT'] = empty($this->unit)? "" : $app_list_strings['unit_of_measure'][$this->unit];
		//$temp_array['STATUS'] = empty($this->status)? "" : $app_list_strings['product_status_dom'][$this->status];
		//End Goodwill
		return $temp_array;
	}

	function get_summary_text()
	{
		return "$this->fname";
	}

	//Goodwill
	function listviewACLHelper(){
		$array_assign = parent::listviewACLHelper();
		$is_owner = false;
		//if(!empty($this->manufacturerid))
		if(!empty($this->account_id))
		{			
			if(!empty($this->account_id_owner))
			{
				global $current_user;
				$is_owner = $current_user->id == $this->account_id_owner;
				//$subUserIds = User::get_sub_userids($current_user->id);
				//array_push($subUserIds, $current_user->id);
				//$is_owner = in_array($this->account_id_owner, $subUserIds);
			}
		}
			
			//if(!ACLController::moduleSupportsACL('Accounts') || ACLController::checkAccess('Accounts', 'view', $is_owner, $this->manufacturerid)){
			if(!ACLController::moduleSupportsACL('Accounts') || ACLController::checkAccess('Accounts', 'view', $is_owner)){
				$array_assign['ACCOUNT'] = 'a';
			}else{
				$array_assign['ACCOUNT'] = 'span';
			}
		
		return $array_assign;
	}
	//End Goodwill
	
	/* function fill_in_additional_list_fields()
	{
	// Fill in the assigned_user_name
		$this->assigned_user_name = get_assigned_user_name($this->assigned_user_id);
		$this->qty_available = $this->qty_onhand - $this->qty_reserved;//Goodwill
	}
	*/
	
				
	function bean_implements($interface){
		switch($interface){
			case 'ACL':return true;
		}
		return false;
	}
	
}

?>