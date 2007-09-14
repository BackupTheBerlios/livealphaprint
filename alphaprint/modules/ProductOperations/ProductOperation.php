<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/**
 * Data access layer for the project table
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


/**
 *
 */
class ProductOperation extends SugarBean {
	// database table columns
	var $id;
	var $date_entered;
	var $date_modified;
	var $assigned_user_id;
	var $modified_user_id;
	var $created_by;



	var $name;
	
	var $operations_count;
	
	var $est_price;
	var $est_date;
	
	var $execution_date;
	var $executor;
	
	var $executed_date;
	var $executored_from;
	var $executed_qty;
	
	var $product_name;
	var $product_id;
	var $component_name;
	var $component_id;
	var $machine_name;
	var $machine_id;
	var $operation_name;
	var $operation_id;
	
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

	var $object_name = 'ProductOperation';
	var $module_dir = 'ProductOperations';
	var $new_schema = true;
	var $table_name = 'productoperations';
	
	var $observed_fields = array(
   		'operations_count' => 'CutngOperations_count_',
   		'operations_count2' => 'OtherOperations_count_',
   );

	// This is used to retrieve related fields from form posts.
	var $additional_column_fields = array(
		'account_id',

	);

	var $relationship_fields = array(
		'account_id' => 'accounts',

	);

	//////////////////////////////////////////////////////////////////
	// METHODS
	//////////////////////////////////////////////////////////////////

	/**
	 *
	 */
	function ProductOperation()
	{
		parent::SugarBean();

	}

	/**
	 * overriding the base class function to do a join with users table
	 */
	function create_list_query($order_by, $where, $show_deleted = 0)
	{
		$custom_join = $this->custom_fields->getJOIN();

		$query = "SELECT users.user_name assigned_user_name, productoperations.*";

		if($custom_join){ $query .=  $custom_join['select']; }




		$query .= " FROM productoperations ";




          $query .= "LEFT JOIN users ON productoperations.assigned_user_id=users.id ";
         

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
		array_push($where_clauses, "productoperations.name LIKE '%$the_query_string%'");

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
				productoperations.*,
                users.user_name as assigned_user_name ";



        if($custom_join){
			$query .=  $custom_join['select'];
		}
        $query .= "FROM productoperations ";
        




		if($custom_join){
			$query .=  $custom_join['join'];
		}
        $query .= " LEFT JOIN users
                   	ON productoperations.assigned_user_id=users.id ";




        $where_auto = " productoperations.deleted=0 ";

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
    
	function mark_deletedByComponentId($component_id) {
		$return_array = $this->get_full_list("id","component_id='".$component_id."'");
		foreach ($return_array as $value) {
			$this->mark_deleted($value->id);
		}
	}
	
	
	
}
?>
