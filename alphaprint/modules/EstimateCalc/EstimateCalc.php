<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/**
 * Data access layer for the estimatecalc table
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
require_once('modules/ComponentEstimateCalc/ComponentEstimateCalc.php');
require_once('modules/Estimates/Estimates.php');
require_once('XTemplate/xtpl.php');

/**
 *
 */
class EstimateCalc extends SugarBean {
	// database table columns
	var $id;
	var $date_entered;
	var $date_modified;
	var $assigned_user_id;
	var $modified_user_id;
	var $created_by;



	var $name;
	
	var $estimate_name;
	var $estimate_id;
	
	var $total_paper;
	var $total_prerpess;
	var $total_press;
	var $total_operations;
	var $total_estimate;
	
	var $status;
	
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

	var $object_name = 'EstimateCalc';
	var $module_dir = 'EstimateCalc';
	var $new_schema = true;
	var $table_name = 'estimatecalc';

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
	function EstimateCalc()
	{
		parent::SugarBean();












	}

	/**
	 * overriding the base class function to do a join with users table
	 */
	function create_list_query($order_by, $where, $show_deleted = 0)
	{
		$custom_join = $this->custom_fields->getJOIN();

		$query = "SELECT users.user_name assigned_user_name, estimatecalc.*";

		if($custom_join){ $query .=  $custom_join['select']; }




		$query .= " FROM estimatecalc ";




          $query .= "LEFT JOIN users ON estimatecalc.assigned_user_id=users.id ";
          //$query .= "LEFT JOIN estimatecalc_relation ON estimatecalc.id=estimatecalc_relation.estimatecalc_id ";



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
		array_push($where_clauses, "estimatecalc.name LIKE '%$the_query_string%'");

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
				estimatecalc.*,
                users.user_name as assigned_user_name ";



        if($custom_join){
			$query .=  $custom_join['select'];
		}
        $query .= "FROM estimatecalc ";
        




		if($custom_join){
			$query .=  $custom_join['join'];
		}
        $query .= " LEFT JOIN users
                   	ON estimatecalc.assigned_user_id=users.id ";




        $where_auto = " estimatecalc.deleted=0 ";

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
	
    function getComponentListData($fields,$select_fields,$table,$where,$is_layout=false){
    	$data = array();
    	$query = " SELECT $select_fields FROM $table WHERE deleted=0 and $where  ";
    	$result = $this->db->query($query,true,"Error filling layout fields: ");
    	while (($row = $this->db->fetchByAssoc($result)) != null){
	    	foreach($fields as $field){

	    		$data[$field] = $row[$field];
			}
			
			if ($is_layout == true){
				$data['quantity'] = null;
			}
			
			$list[] = $data;
    
    	}
    	
    	if (isset($list)) return $list;
		else return null;
    }
    
    function componentsEstimate($estimate_id){
    	
    	$component_html = "";
    	$component_estimate = new ComponentEstimateCalc();
    	$component_list = $component_estimate->get_full_list("id","estimate_id='".$estimate_id."'");
    	$total_paper = 0;
    	$total_prepress = 0;
    	$total_press = 0;
    	$total_operations = 0; 
    	
    	for ($i=0; $i<count($component_list); $i++){
    		$component_html = $component_html.'<tr>';
	        $component_html = $component_html.'<td  style="background:inherit;" width="20%"  class=tabDetailViewDF><span sugar="slot1b"><input name="component_name_'.$i.'" style="background:inherit; border-style:none;text-align:center;" readOnly tabindex="1" size="35" maxlength="50" type="text" value="'.$component_list[$i]->component_name.'" /></span sugar="slot"></td>';
	        $component_html = $component_html.'<td  style="background:inherit;" width="8%"  class=tabDetailViewDF><span sugar="slot1b"><input name="total_paper_'.$i.'" style="text-align:center;" tabindex="1" size="6" maxlength="50" type="text" value="'.$component_list[$i]->total_paper.'" /></span sugar="slot"></td>';
	        $component_html = $component_html.'<td  style="background:inherit;" width="8%"  class=tabDetailViewDF><span sugar="slot1b"><input name="total_prepress_'.$i.'" style="text-align:center;" tabindex="1" size="6" maxlength="50" type="text" value="'.$component_list[$i]->total_prepress.'" /></span sugar="slot"></td>';
	        $component_html = $component_html.'<td  style="background:inherit;" width="8%"  class=tabDetailViewDF><span sugar="slot1b"><input name="total_press_'.$i.'" style="text-align:center;" tabindex="1" size="6" maxlength="50" type="text" value="'.$component_list[$i]->total_press.'" /></span sugar="slot"></td>';
	        $component_html = $component_html.'<td  style="background:inherit;" width="8%"  class=tabDetailViewDF><span sugar="slot1b"><input name="total_operations_'.$i.'" style="text-align:center;" tabindex="1" size="6" maxlength="50" type="text" value="'.$component_list[$i]->total_operations.'" /></span sugar="slot"></td>';
	        $component_html = $component_html.'<td  style="background:inherit;" width="56%" ></td>';
	        $component_html = $component_html.'</tr>';
    		
	        $total_paper = $total_paper + $component_list[$i]->total_paper;
	    	$total_prepress = $total_prepress + $component_list[$i]->total_prepress;
	    	$total_press = $total_press + $component_list[$i]->total_press;
	    	$total_operations = $total_operations + $component_list[$i]->total_operations; 
    	}
    	
    	$total = $total_paper + $total_prepress + $total_press + $total_operations;
    	$return_data = array();
    	$return_data['component_html'] = $component_html;
    	$return_data['total_paper'] = $total_paper;
    	$return_data['total_prepress'] = $total_prepress;
    	$return_data['total_press'] = $total_press;
    	$return_data['total_operations'] = $total_operations;
    	$return_data['total'] = $total;
    	
    	return $return_data;
    	
    	
			
    	
    }
    
    function delete_estimate($id){
    	$estimate = new Estimates();
    	$query = ' UPDATE '.$estimate->table_name.' SET status="waiting_estimate" WHERE id="'.$this->estimate_id.'" ';
    	$this->db->query($query,true,"");
    }
    
    function component_estimate_details(){
    	global $current_language, $app_list_strings;
    	
    	$object = new ComponentEstimateCalc;
    	$mod_strings = return_module_language($current_language, $object->object_name);
    		
    		$html = '<br><table width="100%" border="0" cellspacing="0" cellpadding="0" class="tabDetailView">
					  <tr> 
					    <td width="30%" style="text-align:left" class="tabDetailViewDL"><span sugar="slot1">'.$mod_strings["LBL_NAME"].'</span sugar="slot"></td> 
					    <td width="10%" style="text-align:left" class="tabDetailViewDL"><span sugar="slot1">'.$mod_strings["LBL_TOTAL"].'</span sugar="slot"></td> 
					    <td width="10%" style="text-align:left" class="tabDetailViewDL"><span sugar="slot5">'.$mod_strings["LBL_PREPRESS_TOTAL"].'</span sugar="slot"></td>
					    <td width="10%" style="text-align:left" class="tabDetailViewDL"><span sugar="slot7">'.$mod_strings["LBL_PRESS_TOTAL"].'</span sugar="slot"></td>
					    <td width="10%" style="text-align:left" class="tabDetailViewDL"><span sugar="slot5">'.$mod_strings["LBL_PAPER_TOTAL"].'</span sugar="slot"></td>
					    <td width="30%" style="text-align:left" class="tabDetailViewDL"><span sugar="slot7">'.$mod_strings["LBL_OPERATIONS_TOTAL"].'</span sugar="slot"></td>
					  </tr></table>'; 
					

			echo $html;
			
    	$query = 'SELECT id FROM componentestimatecalc WHERE estimate_id="'.$this->estimate_id.'" AND deleted=0 ';
    	$result = $this->db->query($query,true,"Error filling layout fields: ");
    	$i=0;
    	while (($row = $this->db->fetchByAssoc($result)) != null){
    		$i = $i + 1;
    		$details = "details_".$i;
    		$update_estimate = "update_estimate_".$i;
    		
    			
    		$object->retrieve($row['id']);
    		$total = $object->total_prepress+$object->total_press+$object->total_paper+$object->total_operations;
    		$html = '<table  width="100%" border="0" cellspacing="0" cellpadding="0" class="tabDetailView"><tr>
					    <td align="left" width="30%" class="tabDetailViewDF"><span sugar="slot7b"><a href="index.php?module=ComponentEstimateCalc&action=DetailView&record='.$object->id.'">'.$object->name.'</a></span sugar="slot"></td> 
					    <td width="10%" class="tabDetailViewDF"><span sugar="slot5b">'.$total.' '.$mod_strings["LBL_UNITS"].'</span sugar="slot"></td>
					    <td width="10%" class="tabDetailViewDF"><span sugar="slot5b">'.$object->total_prepress.' '.$mod_strings["LBL_UNITS"].'</span sugar="slot"></td>
					    <td width="10%" class="tabDetailViewDF"><span sugar="slot7b">'.$object->total_press.' '.$mod_strings["LBL_UNITS"].'</span sugar="slot"></td>
					    <td width="10%" class="tabDetailViewDF"><span sugar="slot5b">'.$object->total_paper.' '.$mod_strings["LBL_UNITS"].'</span sugar="slot"></td>
					    <td width="30%" class="tabDetailViewDF"><span sugar="slot7b">'.$object->total_operations.' '.$mod_strings["LBL_UNITS"].'</span sugar="slot"></td>
					  </tr> 
					</table>';
			echo $html;
    		$object->estimate_details($object->id, $details, $update_estimate );
    	}
    	
    	
    }
	
}
?>
