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
    var $volume;
    var $samples;
    var $file;
    var $components; 
    var $date_end_support;
    var $volume;
    var $status; 
	var $description;
	var $deleted;
	var $deadline;
	
	// related information
	var $assigned_user_name;
	var $modified_by_name;
	var $created_by_name;




	var $account_name;
	var $account_id;
	var $contact_id;
	var $contact_name;
	var $opportunity_id;



	var $email_id;

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

function generate_number()
	{
		$return_value = '';
		$number_filed = array('pnum_suf');
		$rown = '';
		$n = $this->db->getRowCount($result);
		
		
		$query = 'SELECT pnum_suf';
		$query.= ' FROM products';
		$query.= " WHERE deleted=0";
		$query.= " AND pnum_suf IS NOT NULL";
		$query.= " ORDER by pnum_suf ASC";
		
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
			$number = Products::pnum_sort($return_value);
			$numb = $number[0] + 1;
		}
		else { $numb = 10000;}
		
		return $numb;
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
	
}
?>