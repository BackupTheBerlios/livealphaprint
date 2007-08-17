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
/*********************************************************************************

 * Description:  Defines the supplier SugarBean supplier entity with the necessary
 * methods and variables.
 ********************************************************************************/




require_once('data/SugarBean.php');
require_once('modules/Contacts/Contact.php');


// supplier is used to store supplier information.
class Supplier extends SugarBean {
	var $field_name_map = array();
	// Stored fields

	var $annual_revenue;
		//Genetal Info
	var $id;
	var $name;
	var $acc_name;
	var $acc_id;
	var $num_pref;
	var $num_suf;
	var $num;
	var $website;
	var $phone_alternate;
	var $phone_fax;
	var $phone_office;
	var $email1;
	var $email2;
	var $date_entered;
	var $date_modified;
	var $modified_user_id;
	var $assigned_user_id;
	var $category;
		//end Genetal Info
		
		
		//address information
	var $billing_address_street;
	var $billing_address_city;
	var $billing_address_state;
	var $billing_address_country;
	var $billing_address_postalcode;

    var $billing_address_street_2;
    var $billing_address_street_3;
    var $billing_address_street_4;
    var $shipping_address_street;
	var $shipping_address_city;
	var $shipping_address_state;
	var $shipping_address_country;
	var $shipping_address_postalcode;
    
    var $shipping_address_street_2;    
    var $shipping_address_street_3;    
    var $shipping_address_street_4;   
    
   		 //end address information 
	
    var $description;
	var $parent_id;
	var $custom_fields;
	var $created_by;
	var $created_by_name;
	var $modified_by_name;
		
		//suppliering Info
	var $cid;
	var $ctid;
	var $iban;
	var $pay_terms;
		//end suppliering Info
		
				
	// These are for related fields
	var $contact_id;
	var $parent_name;
	var $assigned_user_name;
	var $supplier_id = '';
	var $supplier_name = '';
	var $module_dir = 'Suppliers';
	
	var $table_name = "suppliers";

	var $object_name = "Supplier";

	var $new_schema = true;

	// This is used to retrieve related fields from form posts.
	var $additional_column_fields = Array('assigned_user_name', 'assigned_user_id', 'contact_id', 'parent_name'



	);
	var $relationship_fields = Array('contact_id'=>'contacts');

	function Supplier() {
        parent::SugarBean();
        
        $this->setupCustomFields('Suppliers');
		foreach ($this->field_defs as $field)
		{
			$this->field_name_map[$field['name']] = $field;
		}
	}

	function get_summary_text()
	{
		return $this->name;
	}


	function get_contacts() {
		return $this->get_linked_beans('contacts','Contact');
	}

	// This method is used to provide backward compatibility with old data that was prefixed with http://
	// We now automatically prefix http://
	function remove_redundant_http()
	{
		if(eregi("http://", $this->website))
		{
			$this->website = substr($this->website, 7);
		}
	}

	function fill_in_additional_list_fields()
	{
	// Fill in the assigned_user_name
	//	$this->assigned_user_name = get_assigned_user_name($this->assigned_user_id);

		$this->remove_redundant_http();
	}

	function fill_in_additional_detail_fields()
	{
		// Fill in the assigned_user_name
			$this->assigned_user_name = get_assigned_user_name($this->assigned_user_id);

		$query = "SELECT s1.name from suppliers s1, suppliers s2 where s1.id = s2.parent_id and s2.id = '$this->id' and s1.deleted=0";
		$result = $this->db->query($query,true," Error filling in additional detail fields: ");

		// Get the id and the name.
		$row = $this->db->fetchByAssoc($result);

		if($row != null)
		{
			$this->parent_name = $row['name'];
		}
		else
		{
			$this->parent_name = '';
		}

		$this->created_by_name = get_assigned_user_name($this->created_by);
		$this->modified_by_name = get_assigned_user_name($this->modified_user_id);

		$this->remove_redundant_http();
	}
	function get_list_view_data(){
		global $system_config;
		$temp_array = $this->get_list_view_array();
		$temp_array["ENCODED_NAME"]=$this->name;
//		$temp_array["ENCODED_NAME"]=htmlspecialchars($this->name, ENT_QUOTES);
		if(!empty($this->billing_address_state))
		{
			$temp_array["CITY"] = $this->billing_address_city . ', '. $this->billing_address_state;
		}
		else
		{
			$temp_array["CITY"] = $this->billing_address_city;
		}
		$temp_array["BILLING_ADDRESS_STREET"]  = preg_replace("/[\r]/",'',$this->billing_address_street);
		$temp_array["SHIPPING_ADDRESS_STREET"] = preg_replace("/[\r]/",'',$this->shipping_address_street);
		$temp_array["BILLING_ADDRESS_STREET"]  = preg_replace("/[\n]/",'\n',$temp_array["BILLING_ADDRESS_STREET"] );
		$temp_array["SHIPPING_ADDRESS_STREET"] = preg_replace("/[\n]/",'\n',$temp_array["SHIPPING_ADDRESS_STREET"] );
    	if(isset($system_config->settings['system_skypeout_on']) && $system_config->settings['system_skypeout_on'] == 1){
    	if(!empty($temp_array['PHONE_OFFICE']) && skype_formatted($temp_array['PHONE_OFFICE'])){
    		$temp_array['PHONE_OFFICE'] = '<a href="callto://' . $temp_array['PHONE_OFFICE']. '">'.$temp_array['PHONE_OFFICE']. '</a>' ;
    	}}
		return $temp_array;
	}
	/**
		builds a generic search based on the query string using or
		do not include any $this-> because this is called on without having the class instantiated
	*/
	function build_generic_where_clause ($the_query_string) {
	$where_clauses = Array();
	$the_query_string = PearDatabase::quote(from_html($the_query_string));
	array_push($where_clauses, "suppliers.name like '$the_query_string%'");
	if (is_numeric($the_query_string)) {
		array_push($where_clauses, "suppliers.phone_alternate like '%$the_query_string%'");
		array_push($where_clauses, "suppliers.phone_fax like '%$the_query_string%'");
		array_push($where_clauses, "suppliers.phone_office like '%$the_query_string%'");
	}

	$the_where = "";
	foreach($where_clauses as $clause)
	{
		if(!empty($the_where)) $the_where .= " or ";
		$the_where .= $clause;
	}

	return $the_where;
}

	function create_export_query(&$order_by, &$where)
        {
        	$custom_join = $this->custom_fields->getJOIN();
			$query = "SELECT
					suppliers.*,
                    users.user_name as assigned_user_name ";



                     if($custom_join){
						$query .=  $custom_join['select'];
					}
                    $query .= "FROM suppliers ";




			if($custom_join){
					$query .=  $custom_join['join'];
				}
            $query .= " LEFT JOIN users
                    	ON suppliers.assigned_user_id=users.id ";




            $where_auto = " suppliers.deleted=0 ";

            if($where != "")
                    $query .= "where ($where) AND ".$where_auto;
            else
                    $query .= "where ".$where_auto;

           if(!empty($order_by)){
            	//check to see if order by variable already has table name by looking for dot "."
            	$table_defined_already = strpos($order_by, ".");

            	if($table_defined_already === false){
            		//table not defined yet, define suppliers to avoid "ambigous column" SQL error 
            		$query .= " ORDER BY $order_by";
            	}else{
            		//table already defined, just add it to end of query
            	    $query .= " ORDER BY $order_by";	
            	}
                    
            }

            return $query;
        }

        function create_list_query($order_by, $where, $show_deleted= 0)
        {

			$custom_join = $this->custom_fields->getJOIN();

                $query = "SELECT ";

                $query .= "
                    users.user_name assigned_user_name,
                    suppliers.*";
                 if($custom_join){
					$query .=  $custom_join['select'];
				}



             $query .= " FROM  suppliers ";
			




			 $query .= "LEFT JOIN users
                    	ON suppliers.assigned_user_id=users.id ";
             if($custom_join){
					$query .=  $custom_join['join'];
				}



     		$where_auto = '1=1';
			if($show_deleted == 0){
            	$where_auto = " suppliers.deleted=0 ";
			}else if($show_deleted == 1){
				$where_auto = " suppliers.deleted=1 ";	
			}

            if($where != "")
                    $query .= "where ($where) AND ".$where_auto;
            else
                    $query .= "where ".$where_auto;

        if($order_by != "")
			$query .= " ORDER BY $order_by";
		else
			$query .= " ORDER BY $this->table_name.name";
                    return $query;
        }

	function set_notification_body($xtpl, $supplier)
	{
		$xtpl->assign("SUPPLIER_NAME", $supplier->name);
		$xtpl->assign("SUPPLIER_TYPE", $supplier->category);
		$xtpl->assign("SUPPLIER_DESCRIPTION", $supplier->description);

		return $xtpl;
	}
	
	function bean_implements($interface){
		switch($interface){
			case 'ACL':return true;
		}
		return false;
	}
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

function generate_number()
	{
		$return_value = '';
		$number_filed = array('num_suf');
		$rown = '';
		$n = $this->db->getRowCount($result);
		
		
		$query = 'SELECT num_suf';
		$query.= ' FROM suppliers';
		$query.= " WHERE deleted=0";
		$query.= " AND num_suf IS NOT NULL";
		$query.= " ORDER by num_suf ASC";
		
		$result = $this->db->query($query,true," Error filling in additional detail fields: ");
		$n = $this->db->getRowCount($result);
		if ($n > 0){
			while ($row = $this->db->fetchByAssoc($result)) {
		
				foreach($number_filed as $num_field)
				{
						for ($i=0; $i<$n; $i++ ){
						$rown[$i] = $row[$num_field];
						}
					
				}
				
			}
		}
			
		if($rown != null)
		{
			$return_value = $rown;
			$number = Supplier::pnum_sort($return_value);
			$numb = $number[0] + 1;
		}
		else { $numb = 10000;}
		
		return $numb;
	}


}



?>
