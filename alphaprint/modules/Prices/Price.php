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
class Price extends SugarBean {
	// database table columns
	var $id;
	var $date_entered;
	var $date_modified;
	var $assigned_user_id;
	var $modified_user_id;
	var $created_by;



	var $name;
	var $isvalid;
	var $due_date;
	var $paper_id;
	var $material_id;
	var $price_usdollar;
	var $currency_id;
	var $supplier_name;
	var $supplier_id;
	var $price;
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

	var $object_name = 'Price';
	var $module_dir = 'Prices';
	var $new_schema = true;
	var $table_name = 'prices';

	// This is used to retrieve related fields from form posts.
	var $additional_column_fields = array(

	);

	var $relationship_fields = array(
	
	);

	//////////////////////////////////////////////////////////////////
	// METHODS
	//////////////////////////////////////////////////////////////////

	/**
	 *
	 */
	function Price()
	{
		parent::SugarBean();












	}

	/**
	 * overriding the base class function to do a join with users table
	 */
	function create_list_query($order_by, $where, $show_deleted = 0)
	{
		$custom_join = $this->custom_fields->getJOIN();

		$query = "SELECT users.user_name assigned_user_name, prices.*";

		if($custom_join){ $query .=  $custom_join['select']; }




		$query .= " FROM prices ";




          $query .= "LEFT JOIN users ON prices.assigned_user_id=users.id ";
          //$query .= "LEFT JOIN prices_relation ON prices.id=prices_relation.prices_id ";



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
		require_once('modules/Currencies/Currency.php');
		$currency = new Currency();
		$currency->retrieve($this->currency_id);
		if($currency->id != $this->currency_id || $currency->deleted == 1){
				$this->price = $this->price_usdollar;
				$this->currency_id = $currency->id;
		}
		
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
		array_push($where_clauses, "prices.name LIKE '%$the_query_string%'");

		$the_where = '';
		foreach($where_clauses as $clause)
		{
			if($the_where != '') $the_where .= " OR ";
			$the_where .= $clause;
		}

		return $the_where;
	}
	
	function update_currency_id($fromid, $toid){
		$idequals = '';
		require_once('modules/Currencies/Currency.php');
		$currency = new Currency();
		$currency->retrieve($toid);
		foreach($fromid as $f){
			if(!empty($idequals)){
				$idequals .=' or ';
			}
			$idequals .= "currency_id='$f'";
		}

		if(!empty($idequals)){
			$query = "select price, id from prices where (". $idequals. ") and deleted=0;";
			$result = $this->db->query($query);
			while($row = $this->db->fetchByAssoc($result)){

				$query = "update prices set currency_id='".$currency->id."', price_usdollar='".$currency->convertToDollar($row['price'])."' where id='".$row['id']."';";
				$this->db->query($query);

			}

	}
	}
	
	function get_list_view_data()
	{
		require_once('modules/Currencies/Currency.php');
		$field_list = $this->get_list_view_array();
		$field_list['USER_NAME'] = empty($this->user_name) ? '' : $this->user_name;
		$field_list['ASSIGNED_USER_NAME'] = $this->assigned_user_name;
		$field_list['PRICE'] = currency_format_number($this->price); 
		return $field_list;
	}
	  function bean_implements($interface){
		switch($interface){
			case 'ACL':return true;
		}
		return false;
	}
	
	
	function save($check_notify = FALSE) {
		require_once('modules/Prices/SaveOverload.php');
		
		perform_save($this);
		$this->unformat_all_fields();
		return parent::save($check_notify);

	}
	
	function create_export_query(&$order_by, &$where)
    {
      	$custom_join = $this->custom_fields->getJOIN();
		$query = "SELECT
				prices.*,
                users.user_name as assigned_user_name ";



        if($custom_join){
			$query .=  $custom_join['select'];
		}
        $query .= "FROM prices ";
        




		if($custom_join){
			$query .=  $custom_join['join'];
		}
        $query .= " LEFT JOIN users
                   	ON prices.assigned_user_id=users.id ";




        $where_auto = " prices.deleted=0 ";

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
    
function update_isvalid()
	{
		$query = "UPDATE prices SET isvalid = 'Not Valid' WHERE id = '$this->id' AND deleted = 0 ";
		$this->db->query($query,true,"Error updating  prices validity");
	}
	
}
?>
