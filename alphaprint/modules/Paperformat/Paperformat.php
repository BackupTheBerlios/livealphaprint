<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/**
 * Data access layer for the paperformat table
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
require_once('modules/Childformat/Childformat.php');
require_once('XTemplate/xtpl.php');

/**
 *
 */
class Paperformat extends SugarBean {
	// database table columns
	var $id;
	var $date_entered;
	var $date_modified;
	var $assigned_user_id;
	var $modified_user_id;
	var $created_by;



	var $name;
	var $x;
	var $y;
	
	var $description;
	var $deleted;
	

	// related information
	var $assigned_user_name;
	var $modified_by_name;
	var $created_by_name;


	var $object_name = 'Paperformat';
	var $module_dir = 'Paperformat';
	var $new_schema = true;
	var $table_name = 'paperformat';

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
	function Paperformat()
	{
		parent::SugarBean();












	}

	/**
	 * overriding the base class function to do a join with users table
	 */
	function create_list_query($order_by, $where, $show_deleted = 0)
	{
		$custom_join = $this->custom_fields->getJOIN();

		$query = "SELECT users.user_name assigned_user_name, paperformat.*";

		if($custom_join){ $query .=  $custom_join['select']; }




		$query .= " FROM paperformat ";




          $query .= "LEFT JOIN users ON paperformat.assigned_user_id=users.id ";
          //$query .= "LEFT JOIN paperformat_relation ON paperformat.id=paperformat_relation.paperformat_id ";



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
		array_push($where_clauses, "paperformat.name LIKE '%$the_query_string%'");

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
				paperformat.*,
                users.user_name as assigned_user_name ";



        if($custom_join){
			$query .=  $custom_join['select'];
		}
        $query .= "FROM paperformat ";
        




		if($custom_join){
			$query .=  $custom_join['join'];
		}
        $query .= " LEFT JOIN users
                   	ON paperformat.assigned_user_id=users.id ";




        $where_auto = " paperformat.deleted=0 ";

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
    
    
   function Get_Dropdown_Data(){
	
		$query = 'SELECT name FROM '.$this->table_name.' ORDER BY name ASC ';		
		$result = $this->db->query($query,true," Error selecting dropdown data");
		
		$dropdown_data = array();
         
		while($data = $this->db->fetchByAssoc($result)) {
		$v = $data['name'];
		$dropdown_data[$v] = $v;			
		}
		
		return $dropdown_data;

	}
	
	function New_Format($type){
		global $app_strings;
		$xtpl = new XTemplate('modules/Paperformat/format_ui_elements.html');
		$xtpl->assign('APP', $app_strings);
		$xtpl->assign('type', '".$type."');
		
		$xtpl->parse("new_format");
		$xtpl->out("new_format");
		
	}
	
	function Save_Format($x, $y, $type){
		if ($x<=$y){
			$h=$x;
			$w=$y;
		}
		if ($x>$y){
			$h=$y;
			$w=$x;	
		}
		
		
		//Type check (if it`s base or child format)
		if ($type == 'base'){
		
			//Duplicate check
			$query = ' SELECt x, y FROM '.$this->table_name.' WHERE x='.$h.' AND  y='.$w.' ';
			$result = $this->db->query($query,true," Error inserting format");
			$data = $this->db->fetchByAssoc($result);
				
			if ($data == null){
				global $app_list_strings;
				global $app_strings;
				global $mod_strings;
				$xtpl = new XTemplate('modules/Paperformat/format_ui_elements.html');
				
				
				//Save format
				$this->x = $h;
				$this->y = $w;
				$this->name = $h.' x '.$w;
				$this->save($GLOBALS['check_notify']);
				////////////
				$xtpl->assign('APP', $app_strings);
				$xtpl->assign('MOD', $mod_strings);	
				$app_list_strings['format_options'] = $this->Get_Dropdown_Data();
				$xtpl->assign("BASE_FORMAT_OPTIONS", get_select_options_with_id($app_list_strings['format_options'], ''));
				
				$xtpl->parse("base_format");
				$xtpl->out("base_format");
			
			
			
			}	
			
		}
	}
	
	function Get_Format($selected_format,$name){
		global $app_list_strings;
		global $app_strings;
		global $mod_strings;
		$xtpl = new XTemplate('modules/Paperformat/format_ui_elements.html');
		$xtpl->assign('APP', $app_strings);
		$xtpl->assign('MOD', $mod_strings);
		
		$query = " SELECT id,x,y FROM $this->table_name where name='$selected_format' ";		
		$result = $this->db->query($query,true," Error getting format");
		$data = $this->db->fetchByAssoc($result);
		
		$xtpl->assign('base_x', $data['x']);
		$xtpl->assign('base_y', $data['y']);
		$app_list_strings['format_options'] = $this->Get_Dropdown_Data();
		$xtpl->assign("BASE_FORMAT_OPTIONS", get_select_options_with_id($app_list_strings['format_options'], $selected_format));
		
		//ob_start();
		$xtpl->parse("base_format");
		$xtpl->out("base_format");
		//$base_format = ob_get_contents();
		//ob_end_clean();
		
		//Retrieve child formats
		$child = new Childformat();
		$query = ' SELECT id,x,y FROM '.$child->table_name.' where parent_id="'.$data['id'].'" ';		
		$result = $this->db->query($query,true," Error getting format");
		$data = $this->db->fetchByAssoc($result);
		

		if ($data == null){
			$xtpl->parse("no_child_defined");
			$xtpl->out("no_child_defined");	
		}
		else{
			//TO DO
		}		
		
	}	
	
}
?>
