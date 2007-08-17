<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/**
 * Data access layer for the presspricelist table
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
require_once('modules/Pricelistlines/Pricelistline.php');

require_once('modules/Calls/Call.php');
require_once('modules/Notes/Note.php');
require_once('modules/Emails/Email.php');

/**
 *
 */
class Presspricelist extends SugarBean {
	// database table columns
	var $id;
	var $date_entered;
	var $date_modified;
	var $assigned_user_id;
	var $modified_user_id;
	var $created_by;



	var $name;
	
	var $type;
	var $inks_number;
	var $step_amount;
	var $pressmachine_id;
	var $pressmachine_name;
	var $active;
	
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

	var $object_name = 'Presspricelist';
	var $module_dir = 'Presspricelist';
	var $new_schema = true;
	var $table_name = 'presspricelist';

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
	function Presspricelist()
	{
		parent::SugarBean();












	}

	/**
	 * overriding the base class function to do a join with users table
	 */
	function create_list_query($order_by, $where, $show_deleted = 0)
	{
		$custom_join = $this->custom_fields->getJOIN();

		$query = "SELECT users.user_name assigned_user_name, presspricelist.*";

		if($custom_join){ $query .=  $custom_join['select']; }




		$query .= " FROM presspricelist ";




          $query .= "LEFT JOIN users ON presspricelist.assigned_user_id=users.id ";
          //$query .= "LEFT JOIN pricelist_relation ON presspricelist.id=pricelist_relation.pricelist_id ";



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
	
	function getPricelistlineRows() {
		$return_array = array();
		if($this->id != "") {
			$pricelistLine = new Pricelistline();
			$return_array = $pricelistLine->get_full_list("id","pricelist_id='".$this->id."'");
		}
		return $return_array;
	}

	function getPricelistlineRow($pricelistrow,$index,$is_editview=false) {
		global $mod_strings;
		global $app_strings;
		$changebutton = $app_strings['LBL_CHANGE_BUTTON_TITLE'];
		$changebuttonkey = $app_strings['LBL_CHANGE_BUTTON_KEY'];
		$changebuttontitle = $app_strings['LBL_CHANGE_BUTTON_LABEL'];
		$tablerow = '<tr><td>';
		$count = $index + 1;
		$tablerow = $tablerow.'<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0 id="product_row_table_'.$count.'" name="product_row_table">';
		$tablerow = $tablerow.'			<TR>';
		if($is_editview != true)                         
		{                                             // Listview
			
			$tablerow = $tablerow.'             <TD class=tabDetailViewDF width=10%>'.$pricelistrow->impressions_number.'</TD>';
            $tablerow = $tablerow.'				<TD class=tabDetailViewDF width=10%>'.$pricelistrow->base_price.'</TD>';
            $tablerow = $tablerow.'				<TD class=tabDetailViewDF width=10%>'.$pricelistrow->step_price.'</TD>';
            $tablerow = $tablerow.'             <TD class=tabDetailViewDF width=70%></TD>';
         /*   $tablerow = $tablerow.'				<TD class="tabDetailViewDF" width=10%></TD>';*/
		}
		else
		{                                         //Editview
			

            $tablerow = $tablerow.'				<TD class=dataField width=30%><input type=text size=7 value="'.$pricelistrow->impressions_number.'" id=impressions_number_'.$count.' name=impressions_number_'.$count.'></TD>';
            $tablerow = $tablerow.'             <TD class=dataField width=30%><input type=text size=7 value="'.$pricelistrow->base_price.'" id=base_price_'.$count.' name=base_price_'.$count.'></TD>';
            $tablerow = $tablerow.'             <TD class=dataField width=30%><input type=text size=7 value="'.$pricelistrow->step_price.'" id=step_price_'.$count.' name=step_price_'.$count.'></TD>';			
          /*  $tablerow = $tablerow.'				<TD class=dataField width=15%><input type=text size=8 value="'.$pricelistrow->singlep.'"  name=singlep_'.$count.'>';
			$tablerow = $tablerow.'				<TD class=dataField width=15%><input type=text size=8 value="'.$pricelistrow->price.'"  name=price_'.$count.' onfocus="calcprice(this);">';*/
            $tablerow = $tablerow.'				<TD class="dataLabel" width=10%><input type=hidden id=rowIndexId_'.$index.' value='.$index.'><INPUT class="button" id="remove" onclick="Delete(EditView,rowIndexId_'.$index.')" type="button" value="'.$mod_strings["LBL_REMOVEROW"].'" name="remove"> </TD>';
		}
		$tablerow = $tablerow.'							</TR>';
		$tablerow = $tablerow.'				</TABLE></td></tr>';
		return $tablerow;
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
		array_push($where_clauses, "presspricelist.name LIKE '%$the_query_string%'");

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
				presspricelist.*,
                users.user_name as assigned_user_name ";



        if($custom_join){
			$query .=  $custom_join['select'];
		}
        $query .= "FROM presspricelist ";
        




		if($custom_join){
			$query .=  $custom_join['join'];
		}
        $query .= " LEFT JOIN users
                   	ON presspricelist.assigned_user_id=users.id ";




        $where_auto = " presspricelist.deleted=0 ";

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
    
    function calc_price($impressions_number, $prev_impressions_number, $step_amount, $step_price, $base_price){
    
        if ($impressions_number <= $prev_impressions_number){
            return $base_price;
        }
        
        
         $temp_steps = ($impressions_number - $prev_impressions_number)/$step_amount;
         ceil($temp_steps);
         $price = $base_price + ($temp_steps*$step_price);
         return $price; 
    
    } 
	
}
?>