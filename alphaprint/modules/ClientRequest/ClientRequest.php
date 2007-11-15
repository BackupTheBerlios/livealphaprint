<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/**
 * Data access layer for the clientrequest table
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


require_once('modules/Calls/Call.php');
require_once('modules/Notes/Note.php');
require_once('modules/Emails/Email.php');
require_once('modules/EstimateComponents/EstimateComponents.php');
require_once('modules/Products/Products.php');

/**
 *
 */
class ClientRequest extends SugarBean {
	// database table columns
	var $id;
	var $date_entered;
	var $date_modified;
	var $assigned_user_id;
	var $modified_user_id;
	var $created_by;

	var $name;
	var $product_id;
	var $description;
	
	var $number;
	var $due_date;
	var $quantity;
	var $periodic;
	var $special_requirements;
	var $samples;
	var $files;
	var $operation_description;
	var $transport;
	var $pack;
	
	var $deleted;

	// related information
	var $assigned_user_name;
	var $modified_by_name;
	var $created_by_name;




	var $account_id;
	var $contact_id;
	var $opportunity_id;



	var $email_id;

	// calculated information
	var $total_estimated_effort;
	var $total_actual_effort;

	var $object_name = 'ClientRequest';
	var $module_dir = 'ClientRequest';
	var $new_schema = true;
	var $table_name = 'clientrequest';

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
	function ClientRequest()
	{
		parent::SugarBean();












	}

	/**
	 * overriding the base class function to do a join with users table
	 */
	function create_list_query($order_by, $where, $show_deleted = 0)
	{
		$custom_join = $this->custom_fields->getJOIN();

		$query = "SELECT users.user_name assigned_user_name, clientrequest.*";

		if($custom_join){ $query .=  $custom_join['select']; }




		$query .= " FROM clientrequest ";




          $query .= "LEFT JOIN users ON clientrequest.assigned_user_id=users.id ";
          //$query .= "LEFT JOIN clientrequest_relation ON clientrequest.id=clientrequest_relation.clientrequest_id ";



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

	}

	/**
	 *
	 */
	function fill_in_additional_list_fields()
	{
		$this->assigned_user_name = get_assigned_user_name($this->assigned_user_id);



	}

	/**
	 *
	 */
	

	/**
	 *
	 */
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
		array_push($where_clauses, "clientrequest.name LIKE '%$the_query_string%'");

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
				clientrequest.*,
                users.user_name as assigned_user_name ";



        if($custom_join){
			$query .=  $custom_join['select'];
		}
        $query .= "FROM clientrequest ";
        




		if($custom_join){
			$query .=  $custom_join['join'];
		}
        $query .= " LEFT JOIN users
                   	ON clientrequest.assigned_user_id=users.id ";




        $where_auto = " clientrequest.deleted=0 ";

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
    
    function getEstimateComponentsRows() {
		$return_array = array();
		if($this->id != "") {
			$estimateComponent = new EstimateComponents();
			$return_array = $estimateComponent->get_full_list("id","parent_id='".$this->id."'");
		}
		return $return_array;
	}

	function getEstimateComponentsRow($productrow,$index) {
		global $mod_strings;
		global $app_strings;
        global $current_language;
        
		$changebutton = $app_strings['LBL_CHANGE_BUTTON_TITLE'];
		$changebuttonkey = $app_strings['LBL_CHANGE_BUTTON_KEY'];
		$changebuttontitle = $app_strings['LBL_CHANGE_BUTTON_LABEL'];
		$tablerow = NULL;
        $count = $index + 1;

		$tablerow = $tablerow.'				<TR>';
        $tablerow = $tablerow.'				<TD width="20%" class=listViewThS1 ><a href="index.php?module=EstimateComponents&action=DetailView&record='.$productrow->id.'&return_module=ClientRequest&return_action=EditView&return_id='.$this->id.'"><input type=text style="background:inherit; border-style:none;text-align:center;"  readonly title="'.$productrow->name.'" value="'.$productrow->name.'" name=name_'.$count.'></a></TD>';
        $tablerow = $tablerow.'				<TD width="10%" class=listViewThS1 ><input type=text style="background:inherit; border-style:none;text-align:center;" size=3 readonly title="'.$productrow->fsize_h.'x'.$productrow->fsize_w.'" value="'.$productrow->fsize_h.'" name=fsize_h_'.$count.'>x<input type=text size=3 readonly style="background:inherit; border-style:none;text-align:center;" title="'.$productrow->fsize_h.'x'.$productrow->fsize_w.'" value="'.$productrow->fsize_w.'" name=fsize_w_'.$count.'></TD>';
        $tablerow = $tablerow.'				<TD width="20%"class=listViewThS1 ><input type=text style="background:inherit; border-style:none;text-align:center;"   readonly title="'.$productrow->paper_description.'" value="'.$productrow->paper_description.'" name=paper_description_'.$count.'></TD>';
        $tablerow = $tablerow.'             <TD width="5%"class=listViewThS1 ><input type=text style="background:inherit; border-style:none;text-align:center;"  readonly title="'.$productrow->volume.'" size=3 value="'.$productrow->volume.'" name=volume_'.$count.'></TD>';	
        $tablerow = $tablerow.'				<TD width="5%"class=listViewThS1 ><input type=text style="background:inherit; border-style:none;text-align:center;"   readonly title="'.$productrow->colors_a.'" size=5 value="'.$productrow->colors_a.'" name=colors_side_a_'.$count.'></TD>';
        $tablerow = $tablerow.'				<TD width="5%" class=listViewThS1 ><input type=text style="background:inherit; border-style:none;text-align:center;" readonly title="'.$productrow->colors_b.'" size=5 value="'.$productrow->colors_b.'" name=colors_side_b_'.$count.'></TD>';
		$tablerow = $tablerow.'				<TD width="5%" class=listViewThS1 ><a href="index.php?module=EstimateComponents&action=EditView&record='.$productrow->id.'&return_module=ClientRequest&return_action=EditView&return_id='.$this->id.'"><img src="themes/AlphaLight/images/edit_inline.gif" width="12" height="12" align="absmiddle" alt="Промени" border="0"></a></TD>';
		$tablerow = $tablerow.'				<TD width="30%" class=listViewThS1 ><a href="index.php?module=EstimateComponents&action=Delete&record='.$productrow->id.'&return_module=ClientRequest&return_action=EditView&return_id='.$this->id.'"><img src="themes/AlphaLight/images/delete_inline.gif" width="12" height="12" align="absmiddle" alt="Премахни" border="0"></a></TD>';
		$tablerow = $tablerow.'				</TR>';
		return $tablerow;
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
	
	function get_status ($id=null) {
		if (!is_null($id)){
			$clientrequest = new ClientRequest();
			$clientrequest->retrieve($id);
			
			$product = new Products();
			$product->retrieve($clientrequest->product_id);
			if (!is_null($product->status)) {
				//var_dump($clientrequest);
				//var_dump($product->id);
				return $product->status;	
			}
		}
		return 'new_client_request';
		
	}
	
}
?>
