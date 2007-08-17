<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/**
 * Data access layer for the press table
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
require_once('modules/Pressline/Pressline.php');
/**
 *
 */
class Press extends SugarBean {
	// database table columns
	var $id;
	var $date_entered;
	var $date_modified;
	var $assigned_user_id;
	var $modified_user_id;
	var $created_by;



	var $name;
	var $description;
	var $deleted;
	
	var $pressmachine_name;
	var $pressmachine_id;

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

	var $object_name = 'Press';
	var $module_dir = 'Press';
	var $new_schema = true;
	var $table_name = 'press';

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
	function Press()
	{
		parent::SugarBean();












	}

	/**
	 * overriding the base class function to do a join with users table
	 */
	function create_list_query($order_by, $where, $show_deleted = 0)
	{
		$custom_join = $this->custom_fields->getJOIN();

		$query = "SELECT users.user_name assigned_user_name, press.*";

		if($custom_join){ $query .=  $custom_join['select']; }




		$query .= " FROM press ";




          $query .= "LEFT JOIN users ON press.assigned_user_id=users.id ";
          //$query .= "LEFT JOIN press_relation ON press.id=press_relation.press_id ";



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
		array_push($where_clauses, "press.name LIKE '%$the_query_string%'");

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
				press.*,
                users.user_name as assigned_user_name ";



        if($custom_join){
			$query .=  $custom_join['select'];
		}
        $query .= "FROM press ";
        




		if($custom_join){
			$query .=  $custom_join['join'];
		}
        $query .= " LEFT JOIN users
                   	ON press.assigned_user_id=users.id ";




        $where_auto = " press.deleted=0 ";

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
    
    
	function getPresslineRows() {
		$return_array = array();
		if($this->id != "") {
			$paperwasteline = new Pressline();
			$return_array = $paperwasteline->get_full_list("id","press_id='".$this->id."'");
		}
		return $return_array;
	}

	function getPresslineRow($pressrow,$index,$is_editview=false) {
		global $mod_strings;
		global $app_strings;
		$changebutton = $app_strings['LBL_CHANGE_BUTTON_TITLE'];
		$changebuttonkey = $app_strings['LBL_CHANGE_BUTTON_KEY'];
		$changebuttontitle = $app_strings['LBL_CHANGE_BUTTON_LABEL'];

		$tablerow = '<tr><td>';
		$count = $index + 1;
		
		if($is_editview == true){ 
			$json = getJSONobj();
			$popup_request_data = array(
				'call_back_function' => 'set_return',
				'form_name' => 'EditView',
				'field_to_name_array' => array(
					'id' => "layout_id_$count",
					'name' => "layout_name_$count",
					),
			);
			$popup_data = $json->encode($popup_request_data);
			
		}

		$tablerow = $tablerow.'<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0 id="product_row_table_'.$count.'" name="product_row_table">';
		$tablerow = $tablerow.'			<TR>';
		
		if($is_editview != true)                         
		{                                             // DetailView
			
			$tablerow = $tablerow.'             <TD class=tabDetailViewDF width=30%>'.$pressrow->layout_name.'</TD>';
            $tablerow = $tablerow.'				<TD class=tabDetailViewDF width=15%>'.$pressrow->part.'</TD>';
            $tablerow = $tablerow.'             <TD class=tabDetailViewDF width=55%></TD>';
         /*   $tablerow = $tablerow.'				<TD class="tabDetailViewDF" width=10%></TD>';*/
		}
		
		else
		{                                         //Editview
			

            $tablerow = $tablerow.'				<TD class=dataField width=30%><input type=hidden value="'.$pressrow->layout_id.'" id=layout_id_'.$count.' name=layout_id_'.$count.'><input type=text size=35 value="'.$pressrow->layout_name.'" id=layout_name_'.$count.' name=layout_name_'.$count.'>';
            $tablerow = $tablerow.'				<input title="'.$app_strings['LBL_SELECT_BUTTON_TITLE'].'" accessKey="'.$app_strings['LBL_SELECT_BUTTON_KEY'].'" type="button" tabindex="1" class="button" value="'.$app_strings['LBL_SELECT_BUTTON_LABEL'].'" name=btn1 onclick=\'open_popup("Layout", 600, 400, "", true, false, '.$popup_data.');\' />';
            $tablerow = $tablerow.'             <TD class=dataField width=15%><input type=text size=7 value="'.$pressrow->part.'" id=part_'.$count.' name=part_'.$count.'></TD>';			
            $tablerow = $tablerow.'				<TD class="dataLabel" width=55%><input type=hidden id=rowIndexId_'.$index.' value='.$index.'><INPUT class="button" id="remove" onclick="Delete(EditView,rowIndexId_'.$index.')" type="button" value="'.$mod_strings["LBL_REMOVEROW"].'" name="remove"> </TD>';
		}
		$tablerow = $tablerow.'							</TR>';
		$tablerow = $tablerow.'				</TABLE></td></tr>';
		return $tablerow;
	}
	
	function generateName($id){
		global $mod_strings;
		
		$query = " SELECT name FROM press WHERE deleted=0 AND id = '$id' ORDER BY name DESC  ";
		$result = $this->db->query($query,true," Error filling in additional detail fields: ");
	    $field = array('name');
	    	    $n = $this->db->getRowCount($result);
	        if ($n > 0){
	            while ($row = $this->db->fetchByAssoc($result)) {
	        
	                foreach($field as $name_field)
	                {
	                        for ($i=0; $i<$n; $i++ ){
	                        $name_array[$i] = $row[$name_field];
	                        }
	                    
	                }
	                
	            }
	        }
	      
	    $index = substr($name_array[0],-1,1);
	    if ($index == null){
	    	$index = 1;
	    }
	    else{
	    	$index = $index + 1;
	    }
	    
	    $name = $mod_strings['LBL_PREF_PRESS_NAME']."-".$index;
	    return $name;
	}
	
	
}
?>
