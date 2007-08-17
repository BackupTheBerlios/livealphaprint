<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/**
 * Data access layer for the estimate table
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
require_once('modules/EstimateLines/EstimateLine.php');
require_once('modules/EstimatePrinting/EstimatePrinting.php');
/**
 *
 */
class Estimate extends SugarBean {
	// database table columns
	var $id;
	var $date_entered;
	var $date_modified;
	var $assigned_user_id;
	var $modified_user_id;
	var $created_by;
	
	
	var $product_name;
	var $product_id;
	
	var $print_price;
	var $paper_price;
	var $material_price;
	var $other_price;
	var $total_price;


	var $name;
	var $description;
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

	var $object_name = 'Estimate';
	var $module_dir = 'Estimates';
	var $new_schema = true;
	var $table_name = 'estimate';

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
	function Estimate()
	{
		parent::SugarBean();












	}

	/**
	 * overriding the base class function to do a join with users table
	 */
	function create_list_query($order_by, $where, $show_deleted = 0)
	{
		$custom_join = $this->custom_fields->getJOIN();

		$query = "SELECT users.user_name assigned_user_name, estimate.*";

		if($custom_join){ $query .=  $custom_join['select']; }




		$query .= " FROM estimate ";




          $query .= "LEFT JOIN users ON estimate.assigned_user_id=users.id ";
          //$query .= "LEFT JOIN estimate_relation ON estimate.id=estimate_relation.estimate_id ";



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
	
	function getProductRows() {
		$return_array = array();
		
			$estimateLine = new EstimateLine();
			$return_array = $estimateLine->get_full_list("id","parent_id='".$_REQUEST['parent_id']."'");
			
		return $return_array;
	}

	function getProductRow($productrow,$index,$is_editview=false) {
		global $mod_strings;
		global $app_strings;
		
		$query = "SELECT quantity from products where deleted=0 AND id='$productrow->parent_id'";
	    $result = $this->db->query($query,true," Error filling in additional detail fields: ");
	    $quantity_array = $this->db->fetchByAssoc($result);
	    
	    $query2 = "SELECT price from prices where deleted=0 AND paper_id='$productrow->paperid'";
	    $result2 = $this->db->query($query2,true," Error filling in additional detail fields: ");
	    $price_array = $this->db->fetchByAssoc($result2);
	    
	    $price = $price_array['price'];
	    $quantity = $quantity_array['quantity'];
    
				
		$tablerow = '<tr><td>';
		$count = $index + 1;
		$tablerow = $tablerow.'<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0 id="product_row_table_'.$count.'" name="product_row_table">';
		$tablerow = $tablerow.'			<TR>';
		$tablerow = $tablerow.'				<TD class=dataField width=25%><input type=text size=30 readonly value="'.$productrow->type.'" name=type_'.$count.'></TD>';
        $tablerow = $tablerow.'				<TD class=dataField width=25%><input type=text size=8 readonly value="'.$productrow->volume.'" name=volume_'.$count.'></TD>';
        $tablerow = $tablerow.'             <TD class=dataField width=25%><input type=text size=7 value="'.$quantity.'" name=quantity_'.$count.'></TD>';			
        $tablerow = $tablerow.'             <TD class=dataField width=25%><input type=text size=7 value="'.$price.'" name=paper_price_'.$count.'></TD>';
    	$tablerow = $tablerow.'							</TR>';
		$tablerow = $tablerow.'				</TABLE></td></tr>';
		return $tablerow;
	}
	
	
	//Printing Estimate

	
function getPrintRows() {
		$return_array = array();
		
			$estimateLine = new EstimatePrinting();
			$return_array = $estimateLine->get_full_list("id","parent_id='".$_REQUEST['parent_id']."'");
			
		return $return_array;
	}

	function getPrintRow($printrow,$index,$is_editview=false) {
		global $mod_strings;
		global $app_strings;
		
		$query = "SELECT color_side_B from products_components where deleted=0 AND id='$printrow->product_id'";
	    $color_result = $this->db->query($query,true," Error filling in additional detail fields: ");
	    $color_array = $this->db->fetchByAssoc($color_result);
	    $color = $color_array['color_side_B'];
	    
	    $quantity_query = "SELECT quantity from products where deleted=0 AND id='$printrow->parent_id'";
	    $quantity_result = $this->db->query($quantity_query,true," Error filling in additional detail fields: ");
	    $quantity_array = $this->db->fetchByAssoc($quantity_result);
	    $quantity = $quantity_array['quantity'];
	    
	    $machine_query = "SELECT machine from products_components where deleted=0 AND id='$printrow->product_id'";
	    $machine_result = $this->db->query($machine_query,true," Error filling in additional detail fields: ");
	    $machine_array = $this->db->fetchByAssoc($machine_result);
	    $machine = $machine_array['machine'];
	    
	    $price_query = "SELECT price from printing_prices where color='$color' AND quantity='$quantity' AND machine='$machine' ";
	    $price_result = $this->db->query($price_query,true," Error filling in additional detail fields: ");
	    $price_array = $this->db->fetchByAssoc($price_result);
	    $price = $price_array['price'];

    
				
		$tablerow = '<tr><td>';
		$count = $index + 1;
		$tablerow = $tablerow.'<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0 id="print_row_table_'.$count.'" name="print_row_table">';
		$tablerow = $tablerow.'			<TR>';
		$tablerow = $tablerow.'				<TD class=dataField width=25%><input type=text size=30 readonly value="'.$printrow->name.'" name=name_'.$count.' onBlur="calc_print(this);"></TD>';
        $tablerow = $tablerow.'				<TD class=dataField width=25%><input type=text size=8 readonly value="'.$printrow->count_whole_sheets.'" id=count_whole_sheets_'.$count.' name=count_whole_sheets_'.$count.' onBlur="calc_print(this);"></TD>';
        $tablerow = $tablerow.'             <TD class=dataField width=25%><input type=text size=7 value="'.$printrow->whole_sheets_quantity.'" name=whole_sheets_quantity_'.$count.' onBlur="calc_print(this);"></TD>';			
        $tablerow = $tablerow.'             <TD class=dataField width=25%><input type=text size=7 value="'.$price.'" id=print_price_'.$count.' name=print_price_'.$count.' onBlur="calc_print(this);"></TD>';
    	$tablerow = $tablerow.'							</TR>';
		$tablerow = $tablerow.'				</TABLE></td></tr>';
		return $tablerow;
	}

	/**
	 *
	 */


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
		array_push($where_clauses, "estimate.name LIKE '%$the_query_string%'");

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
				estimate.*,
                users.user_name as assigned_user_name ";



        if($custom_join){
			$query .=  $custom_join['select'];
		}
        $query .= "FROM estimate ";
        




		if($custom_join){
			$query .=  $custom_join['join'];
		}
        $query .= " LEFT JOIN users
                   	ON estimate.assigned_user_id=users.id ";




        $where_auto = " estimate.deleted=0 ";

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