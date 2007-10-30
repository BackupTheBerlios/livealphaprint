<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/**
 * Data access layer for the Products table
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



require_once('data/SugarBean.php');

require_once('include/utils.php');
require_once('include/SugarPHPMailer.php');
require_once('modules/Users/User.php');

require_once('modules/Calls/Call.php');
require_once('modules/Notes/Note.php');
require_once('modules/Emails/Email.php');
require_once('modules/ProductComponents/ProductComponents.php');
require_once('modules/ComponentEstimate/ComponentEstimate.php');
require_once('modules/ProductEstimate/ProductEstimate.php');

/**
 *
 */
class Products extends SugarBean {
	// database table columns
	var $id;
	var $date_entered;
	var $date_modified;
	var $assigned_user_id;
	var $modified_user_id;
	var $created_by;
    var $name;
    var $pnum;
    var $pnum_pref;
    var $type;   
    var $spec;   
    var $category;
    var $format;   
    var $unit;   
    var $is_active;
    var $date_start_support;
    var $date_end_support;
    var $period;
    var $note;
    var $vision;
    var $quantity;
    var $fsize_h;
    var $fsize_w;
    var $samples;
    var $file;
    var $components; 
    var $volume;
    var $status; 
	var $description;
	var $deleted;
	var $deadline;
	
	var $calculant_id;
	var $calculant_name;
	
	// related information
	var $assigned_user_name;
	var $modified_by_name;
	var $created_by_name;
	
	var $clientrequest_id;




	var $account_name;
	var $account_id;
	var $contact_id;
	var $contact_name;
	var $opportunity_id;



	var $email_id;
	
	var $actions = array(
   		'estimate' => 'estimated',
   		'quote' => 'quoted',
   		'purchase' => 'purchased',
	);

	// calculated information
	var $total_estimated_effort;
	var $total_actual_effort;

	var $object_name = 'Products';
	var $module_dir = 'Products';
	var $new_schema = true;
	var $table_name = 'products';

	// This is used to retrieve related fields from form posts.
	var $additional_column_fields = array(
		'account_id',
		'contact_id',
		'opportunity_id',
	);

	var $relationship_fields = array(
		'account_id' => 'accounts',
		'contact_id'=>'contacts',



		'opportunity_id'=>'opportunities',
		'email_id' => 'emails',
	);

	//////////////////////////////////////////////////////////////////
	// METHODS
	//////////////////////////////////////////////////////////////////

	/**
	 *
	 */
	function Products()
	{
		parent::SugarBean();












	}

	/**
	 * overriding the base class function to do a join with users table
	 */
	function create_list_query($order_by, $where, $show_deleted = 0)
	{
		$custom_join = $this->custom_fields->getJOIN();

		$query = "SELECT users.user_name assigned_user_name, products.*";

		if($custom_join){ $query .=  $custom_join['select']; }




		$query .= " FROM products ";




          $query .= "LEFT JOIN users ON products.assigned_user_id=users.id ";
          //$query .= "LEFT JOIN products_relation ON products.id=products_relation.products_id ";



		if($custom_join){ $query .=  $custom_join['join']; }


			$where_auto = '1=1';
				if($show_deleted == 0){
                	$where_auto = "$this->table_name.deleted=0";
				}else if($show_deleted == 1){
                	$where_auto = "$this->table_name.deleted=1";
				}

            if($where != '')
                    $query .= "WHERE ($where) AND ".$where_auto;
            else
                    $query .= "WHERE ".$where_auto;

            if(!empty($order_by))
                    $query .= " ORDER BY $order_by";
//die($query);
		return $query;
	}

	/**
	 *
	 */
	function fill_in_additional_detail_fields()
	{
		$this->assigned_user_name = get_assigned_user_name($this->assigned_user_id);



	  /*$this->total_estimated_effort = $this->_get_total_estimated_effort($this->id);
	   *$this->total_actual_effort = $this->_get_total_actual_effort($this->id);
	   */
	}

	/**
	 *
	 */
	function fill_in_additional_list_fields()
	{
		$this->assigned_user_name = get_assigned_user_name($this->assigned_user_id);



		/*$this->total_estimated_effort = $this->_get_total_estimated_effort($this->id);
		 *$this->total_actual_effort = $this->_get_total_actual_effort($this->id);
	     */	
}

	
/*	function _get_total_estimated_effort($products_id)
	{
		$return_value = '';

		$query = 'SELECT SUM(estimated_effort) total_estimated_effort';
		if ($this->db->dbType=='oci8') {



		}
		$query.= ' FROM products_components';
		$query.= " WHERE parent_id='{$products_id}' AND deleted=0";
		
		$result = $this->db->query($query,true," Error filling in additional detail fields: ");
		$row = $this->db->fetchByAssoc($result);
		if($row != null)
		{
			$return_value = $row['total_estimated_effort'];
		}

		return $return_value;
	}
*/
	/**
	 *	
	 */
	/*function _get_total_actual_effort($products_id)
	{
		$return_value = '';

		$query = 'SELECT SUM(actual_effort) total_actual_effort';
		if ($this->db->dbType=='oci8') {



		}
		$query.=  ' FROM products_components';
		$query.=  " WHERE parent_id='{$products_id}' AND deleted=0";
		
		$result = $this->db->query($query,true," Error filling in additional detail fields: ");
		$row = $this->db->fetchByAssoc($result);
		if($row != null)
		{
			$return_value = $row['total_actual_effort'];
		}

		return $return_value;
	}
*/
	/**
	 *
	 */

	
function pnum_sort($array, $type='desc'){
   $result=array();
   foreach($array as $var => $val){
       $set=false;
       foreach($result as $var2 => $val2){
           if($set==false){
               if($val>$val2 && $type=='desc' || $val<$val2 && $type=='asc'){
                   $temp=array();
                   foreach($result as $var3 => $val3){
                       if($var3==$var2) $set=true;
                       if($set){
                           $temp[$var3]=$val3;
                           unset($result[$var3]);
                       }
                   }
                   $result[$var]=$val;   
                   foreach($temp as $var3 => $val3){
                       $result[$var3]=$val3;
                   }
               }
           }
       }
       if(!$set){
           $result[$var]=$val;
       }
   }
   return $result;
}

function generate_number($field, $table)
	{
		$query = 'SELECT '.$field.' FROM '.$table.' WHERE deleted=0 AND '.$field.' IS NOT NULL ORDER by '.$field.' DESC ';
		$result = $this->db->query($query,true," Error filling in additional detail fields: ");
		while (($row = $this->db->fetchByAssoc($result)) != null){
	    	
			$list[] = $row[$field];
    
    	}
		if (($list != null) && !empty($list))
		{
			$number = substr($list[0],-5);
			$number = intval($number) + 1;
			return  $number;
		}
		else { 
			return 10000;
		}
	}
	
function generate_task()
	{	
        global $current_user;
		require_once('include/utils.php');
	
		$query = 'SELECT name';
		$query.= ' FROM tasks';
		$query.= " WHERE deleted=0";
		$query.= " AND name='$this->pnum-Estimate'";
			
		$result = $this->db->query($query,true," Error filling in additional detail fields: ");
		$n = $this->db->getRowCount($result);
		if ($n == 0){
		
		$id = create_guid();	
		$query2 = "INSERT into tasks (id,  assigned_user_id, created_by, name, status,  date_due_flag,  date_start_flag, priority, description, deleted) ";
		$query2.= " VALUES ('$id', '$this->assigned_user_id', '$current_user->id', '$this->pnum-Estimate', 'In Progress', 'off', 'off', 'Medium', '$this->pnum is waiting for estimate', '0') ";
		$this->db->query($query2,true," Error filling in additional detail fields: ");
		
		}
			

	}
	
function generate_email() {
		global $mod_strings;
		global $current_user;
		global $sugar_config;
		global $locale;
		
		require_once('include/utils.php');
	
		$query = 'SELECT name';
		$query.= ' FROM emails';
		$query.= " WHERE deleted=0";
		$query.= " AND name='$this->pnum-Estimate'";
			
		$result = $this->db->query($query,true," Error filling in additional detail fields: ");
		$n = $this->db->getRowCount($result);
		if ($n == 0){
			
		$queryname = 'SELECT user_name';
		$queryname.= ' FROM users';
		$queryname.= " WHERE deleted=0";
		$queryname.= " AND id='$this->assigned_user_id'";
			
		$result_name = $this->db->query($queryname,true," Error filling in additional detail fields: ");
		$username = $this->db->fetchByAssoc($result_name); 
		$to_addrs_names = $username['user_name'];
		
		$queryemail = 'SELECT email1';
		$queryemail.= ' FROM users';
		$queryemail.= " WHERE deleted=0";
		$queryemail.= " AND id='$this->assigned_user_id'";
			
		$result_email = $this->db->query($queryemail,true," Error filling in additional detail fields: ");
		$useremail = $this->db->fetchByAssoc($result_email); 
		$to_addrs_emails = $useremail['email1'];
		
		$id = create_guid();
		$from_addr = $current_user->name;
		$from_name = $current_user->email1;
		$name = $this->pnum.'-Estimate';
		$description = $this->pnum.' is waiting for estimate';	
		$query2 = "INSERT into emails (id,  assigned_user_id, created_by, name, status,  to_addrs_names, to_addrs_emails, from_addr, from_name, description, deleted, type, intent) ";
		$query2.= " VALUES ('$id', '$this->assigned_user_id', '$current_user->id', '$name', 'sent', '$to_addrs_names', '$to_addrs_emails', '$from_addr', '$from_name', '$description', '0', 'out', 'pick') ";
		$this->db->query($query2,true," Error filling in additional detail fields: ");
		
		

		$mail = new SugarPHPMailer();
		$mail->AddAddress($to_addrs_emails, $to_addrs_names);
		$mail->Mailer = "sendmail";

		// FROM ADDRESS
		$mail->From = $from_addr;
	
		// FROM NAME
		$mail->FromName = $from_name;
	

		$mail->Sender = $mail->From; /* set Return-Path field in header to reduce spam score in emails sent via Sugar's Email module */
		$mail->AddReplyTo($mail->From,$mail->FromName);

		$encoding = version_compare(phpversion(), '5.0', '>=') ? 'UTF-8' : 'ISO-8859-1';
		$mail->Subject = html_entity_decode($name, ENT_QUOTES, $encoding);

		

		///////////////////////////////////////////////////////////////////////
		////	HANDLE EMAIL FORMAT PREFERENCE
		// the if() below is HIGHLY dependent on the Javascript unchecking the Send HTML Email box
		// HTML email
		 
			// plain text only
			$description_html = '';
			$mail->IsHTML(false);
			$mail->Body = wordwrap(from_html($description, 996));
		

		// wp: if plain text version has lines greater than 998, use base64 encoding
		foreach(explode("\n", ($mail->ContentType == "text/html") ? $mail->AltBody : $mail->Body) as $line) {
			if(strlen($line) > 998) { 
				$mail->Encoding = 'base64';
				break;
			}
		}
		////	HANDLE EMAIL FORMAT PREFERENCE
		///////////////////////////////////////////////////////////////////////
        
        ///////////////////////////////////////////////////////////////////////
        ////    SAVE RAW MESSAGE
        $mail->SetMessageType();
        $raw  = $mail->CreateHeader();
        $raw .= $mail->CreateBody();
        $raw_source = urlencode($raw);
        ////    END SAVE RAW MESSAGE
        ///////////////////////////////////////////////////////////////////////

		$GLOBALS['log']->debug('Email sending --------------------- ');
		
		///////////////////////////////////////////////////////////////////////
		////	I18N TRANSLATION
		$mail->prepForOutbound();
		////	END I18N TRANSLATION
		///////////////////////////////////////////////////////////////////////
		
		$mail->Send(); 
		}
	   
	}
	
	function get_summary_text()
	{
		return $this->name;
	}

	/**
	 *
	 */
	function build_generic_where_clause ($the_query_string)
	{
		$where_clauses = array();
		$the_query_string = PearDatabase::quote(from_html($the_query_string));
		array_push($where_clauses, "products.name LIKE '%$the_query_string%'");

		$the_where = '';
		foreach($where_clauses as $clause)
		{
			if($the_where != '') $the_where .= " OR ";
			$the_where .= $clause;
		}

		return $the_where;
	}
	
	function get_list_view_data()
	{
		$field_list = $this->get_list_view_array();
		$field_list['USER_NAME'] = empty($this->user_name) ? '' : $this->user_name;
		$field_list['ASSIGNED_USER_NAME'] = $this->assigned_user_name;
		return $field_list;
	}
	  function bean_implements($interface){
		switch($interface){
			case 'ACL':return true;
		}
		return false;
	}
	
	function create_export_query(&$order_by, &$where)
    {
      	$custom_join = $this->custom_fields->getJOIN();
		$query = "SELECT
				products.*,
                users.user_name as assigned_user_name ";



        if($custom_join){
			$query .=  $custom_join['select'];
		}
        $query .= "FROM products ";
        




		if($custom_join){
			$query .=  $custom_join['join'];
		}
        $query .= " LEFT JOIN users
                   	ON products.assigned_user_id=users.id ";




        $where_auto = " products.deleted=0 ";

        if($where != "")
        	$query .= "where ($where) AND ".$where_auto;
        else
            $query .= "where ".$where_auto;

        if(!empty($order_by)){
           	//check to see if order by variable already has table name by looking for dot "."
           	$table_defined_already = strpos($order_by, ".");

	        if($table_defined_already === false){
	        	//table not defined yet, define accounts to avoid "ambigous column" SQL error 
	        	$query .= " ORDER BY $order_by";
	        }else{
	        	//table already defined, just add it to end of query
	            $query .= " ORDER BY $order_by";	
	        }           
        }
        return $query;
    }
    
    function status_update($status,$id, $action='', $calculant_id=''){
		if($calculant_id != ''){
			$status = 'waiting_estimate';	
		}
		elseif ($action != ''){
			$status = $this->actions[$action];	
		}
		else{
			$status = $this->status;
			if ($status == 'closed'){
				$this->product_update($id, true);
			}
		}
		
		$query = ' UPDATE '.$this->table_name.' SET status="'.$status.'" WHERE id="'.$id.'" AND deleted=0 ';
		$this->db->query($query,true,"");
	}
	
	/*function components_estimate_check($id){
		
		$components_estimate = array();
		
		$query = ' SELECT status FROM products_components WHERE parent_id="'.$id.'" AND deleted=0 ';
		$result = $this->db->query($query,true,"");
		while ($data = $this->db->fetchByAssoc($result)){
			$components[] = $data['status'];
		}
		$components_count = $this->db->getRowCount($result);
		
		$query = ' SELECT status FROM componentestimate WHERE product_id="'.$id.'" AND deleted=0 ';
		$result = $this->db->query($query,true,"");
		while($data = $this->db->fetchByAssoc($result)){
			$components_estimate[] = $data['status'];
		}
		$components_estimate_count = $this->db->getRowCount($result);
		
		foreach($components as $value){
			if ($value != 'estimated'){
				return true;
			}
		}
		
		if ($components_estimate != false){
			foreach($components_estimate as $value){
				if ($value != 'uptodate'){
					return true;
				}
			}
		
			if($components_estimate_count != $components_count){
				return true;	
			}
		}
		else{
			return true;
		}
		return false; 
		
		
	}*/
	
	function product_estimate_check($id){
		$query = ' SELECT status FROM productestimate WHERE product_id="'.$id.'" AND deleted=0 ';
		$result = $this->db->query($query,true,"");
		$product = $this->db->fetchByAssoc($result);
		$product_count = $this->db->getRowCount($result);
		if ($product_count == 0){
			return true;
		}
		if ($product['status'] != 'uptodate'){
			return true;
		}
		return false; 
	}
	
	function quote_check($id){
		$query = ' SELECT status FROM products WHERE id="'.$id.'" AND deleted=0 ';
		$result = $this->db->query($query,true,"");
		$product = $this->db->fetchByAssoc($result);
		
		$component_estimate_echeck = $this->build_component_estimates_list($this->id);
		if (!empty($component_estimate_echeck)){
			return true;
		}
		$product_estimate_check = $this->product_estimate_check($id);
		/*if ($this->status != "estimated"){
			return true;
		}*/
		if($product_estimate_check == true){
			return true;	
		}
		
		return false; 
	}
	
	function product_update($id, $close=false){
		
		$product_estimate = new ProductEstimate();
		$components_estimate = new ComponentEstimate();
		$component = new ProductComponents();
		
		if (close == true){
			$query = ' UPDATE '.$product_estimate->table_name.' SET status="closed" WHERE product_id="'.$id.'" AND deleted=0 ';
			$this->db->query($query,true,"");
		}
		else{
			$query = ' SELECT id FROM '.$product_estimate->table_name.' WHERE product_id="'.$id.'" AND deleted=0 ';
			$result = $this->db->query($query,true,"");
			if ($result != false){
				while ($data = $this->db->fetchByAssoc($result)){
					$product_estimate->mark_deleted($data['id']);
				}
			}
		}
		
		$query = ' SELECT id FROM '.$component->table_name.' WHERE parent_id="'.$id.'" AND deleted=0 ';
		$result = $this->db->query($query,true,"");
		if ($result != false){
			if (close == true){
				$query = ' UPDATE '.$component->table_name.' SET status="closed" WHERE parent_id="'.$id.'" AND deleted=0 ';
				$this->db->query($query,true,"");
			}
			while ($data = $this->db->fetchByAssoc($result)){
				if (close == true){
					$query = ' UPDATE '.$components_estimate->table_name.' SET status="closed" WHERE component_id="'.$data['id'].'" AND deleted=0 ';
					$this->db->query($query,true,"");
				}
				else{
					$component->mark_deleted($data['id']);
					$query = ' SELECT id FROM '.$components_estimate->table_name.' WHERE component_id="'.$data['id'].'" AND deleted=0 ';
					$result_components_estimate = $this->db->query($query,true,"");
					if ($result_components_estimate != false){
						while ($data = $this->db->fetchByAssoc($result)){
							$components_estimate->mark_deleted($data['id']);
						}
					}		
				}
			}
		}
	}
	
	function get_calc_record($id){
    	$query = " SELECT id FROM productestimate WHERE product_id='$id' AND deleted=0 ";
		$result = $this->db->query($query,true,"");
		$data =  $this->db->fetchByAssoc($result);	
		return $data['id'];
    }
    
    function get_calculant(){
		if (isset($this->calculant_id) && !empty($this->calculant_id) && !is_null($this->calculant_id)){
			return $this->calculant_id;
		}
		return null;
	}
	
	function getComponentListData($fields,$select_fields,$table,$where,$is_layout=false,$order_by=null){
    	$data = array();
    	$query = " SELECT $select_fields FROM $table WHERE deleted=0 and $where $order_by  ";
    	$result = $this->db->query($query,true,"Error filling layout fields: ");
    	while (($row = $this->db->fetchByAssoc($result)) != null){
	    	foreach($fields as $field){

	    		$data[$field] = $row[$field];
			}
			
			$list[] = $data;
    
    	}
    	
    	if (isset($list)) return $list;
		else return null;
    }
    
	function build_component_estimates_list($id){
		
		
		$fields = array("id", "price");
		$query_fields = " id, price ";
		$where = " parent_id = '$id' ";
		$component_list = $this->getComponentListData($fields, $query_fields, 'products_components', $where);
		$components_to_estimate = array();
		
		for ($i = 0; $i < count($component_list); $i++) {
			$component = new ProductComponents();
			$component->retrieve($component_list[$i]['id']);
			$query = " SELECT id, status FROM componentestimate WHERE deleted=0 and component_id='$component->id'  ";
    		$result = $this->db->query($query,true,"Error filling layout fields: ");
    		$data = $this->db->fetchByAssoc($result);
    		if ($data == null){
    			$temp = array();
    			$temp['id'] = $component->id;
    			$temp['name'] = $component->name;
    			$temp['price'] = $component->price;
    			
    			$temp['outdated'] = false;
    			
    			$components_to_estimate[] = $temp;	
    		}
    		if($data['status'] == "outdated"){
    			$temp = array();
    			$temp['id'] = $component->id;
    			$temp['name'] = $component->name;
    			$temp['product_id'] = $component->parent_id;
    			$temp['product_name'] = $component->parent_name;
    			$temp['price'] = $component->price;
    			$temp['estimate_id'] = $data['id'];
    			
    			$temp['outdated'] = true;
    			
    			$components_to_estimate[] = $temp;		
    		}
		}
		
		return $components_to_estimate;
	}
	
	function check_component_estimates(){
		global $mod_strings;

		$components_to_estimate = $this->build_component_estimates_list($this->id);
		if (!empty($components_to_estimate)){
			$warning_msg = $mod_strings['LBL_COMPONENTS_NOT_ESTIMATED'].': \r\n  \r\n';
			for ($i = 0; $i < count($components_to_estimate); $i++) {
				$n = $i+1;
				$warning_msg .= $n.'. '.$components_to_estimate[$i]['name'].' \r\n';
			}
			$warning_msg .= '\r\n  \r\n'.$mod_strings['LBL_CONFIRM_ESTIMATE'];
			echo '<script>var estimate_warning_msg="'.$warning_msg.'" </script>';
		}
		else{
			echo '<script>var estimate_warning_msg="" </script>';	
		}
	}
    
    
}
?>