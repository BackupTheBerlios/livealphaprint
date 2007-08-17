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

 * Description:  TODO: To be written.
 * Portions created by SugarCRM are Copyright (C) SugarCRM, Inc.
 * All Rights Reserved.
 * Contributor(s): ______________________________________..
 ********************************************************************************/




require_once('data/SugarBean.php');
require_once('modules/Contacts/Contact.php');
require_once('modules/Tasks/Task.php');
require_once('modules/Notes/Note.php');
require_once('modules/Calls/Call.php');
require_once('modules/Emails/Email.php');
require_once('modules/Bugs/Bug.php');
require_once('include/utils.php');

// Machine is used to store customer information.
class Machine extends SugarBean {
        var $field_name_map = array();
	// Stored fields
	var $id;
	var $date_entered;
	var $date_modified;
	var $modified_user_id;
	var $assigned_user_id;
    var $assigned_user_name;

	var $name;
	var $category;
	var $format;
	var $description;

	var $created_by;
	var $created_by_name;
	var $modified_by_name;

	
	



	var $table_name = "machines";
	var $module_dir = 'Machines';
	var $object_name = "Machine";
	/** "%1" is the machine_number, for emails
	 * leave the %1 in if you customize this
	 * YOU MUST LEAVE THE BRACKETS AS WELL*/
	var $emailSubjectMacro = '[MACHINE:%1]'; 

	// This is used to retrieve related fields from form posts.
	var $additional_column_fields = Array('assigned_user_name', 'assigned_user_id');

	/*var $relationship_fields = Array('account_id'=>'account', 'bug_id' => 'bugs',
									'task_id'=>'tasks', 'note_id'=>'notes',
									'meeting_id'=>'meetings', 'call_id'=>'calls', 'email_id'=>'emails',									
									);*/

	function Machine() {
		parent::SugarBean();
		global $sugar_config;
		/*if(!$sugar_config['require_accounts']){
			unset($this->required_fields['account_name']);
		}*/

		

		;
		
		 $this->setupCustomFields('Machines');
		foreach ($this->field_defs as $field)
                {
                        $this->field_name_map[$field['name']] = $field;
                }





	}

	var $new_schema = true;

	

	

	function get_summary_text()
	{
		return "$this->name";
	}
	
	

	function create_list_query($order_by, $where, $show_deleted = 0)
	{
		// Fill in the assigned_user_name
//		$this->assigned_user_name = get_assigned_user_name($this->assigned_user_id);

				$custom_join = $this->custom_fields->getJOIN();
                $query = "SELECT users.user_name as assigned_user_name, machines.*";
            
                if($custom_join){$query .= $custom_join['select'];}
                                
                $query .= " FROM machines ";

                $query .= "	LEFT JOIN users ON machines.assigned_user_id=users.id";



                           

								if($custom_join){
  									$query .= $custom_join['join'];
								}
			$where_auto = '1=1';
			if($show_deleted == 0){
            	$where_auto = " $this->table_name.deleted=0 ";
			}else if($show_deleted == 1){
				$where_auto = " $this->table_name.deleted=1 ";	
			}
                



		if($where != "")
			$query .= " where $where AND ".$where_auto;
		else
			$query .= " where ".$where_auto;

		if($order_by != "")
			$query .= " ORDER BY $order_by";
		else
			$query .= " ORDER BY machines.name";
		
		return $query;
	}

        function create_export_query($order_by, $where)
        {
				$custom_join = $this->custom_fields->getJOIN();
                $query = "SELECT
                                machines.*,
                                users.user_name as assigned_user_name";
             					if($custom_join){
   									$query .= $custom_join['select'];
 								}
                                $query .= " FROM machines ";




		$query .= "				LEFT JOIN users
                                ON machines.assigned_user_id=users.id";
                                
                                
                 			if($custom_join){
  								$query .= $custom_join['join'];
							}	
                $where_auto = " machines.deleted=0";

                if($where != "")
                        $query .= " where $where AND ".$where_auto;
                else
                        $query .= " where ".$where_auto;

                if($order_by != "")
                        $query .= " ORDER BY $order_by";
                else
                        $query .= " ORDER BY machines.name";
                return $query;
        }


	function fill_in_additional_list_fields()
	{
		// Fill in the assigned_user_name
		//$this->assigned_user_name = get_assigned_user_name($this->assigned_user_id);
	}

	

function get_list_view_data()
	{
		$field_list = $this->get_list_view_array();
		$field_list['USER_NAME'] = empty($this->user_name) ? '' : $this->user_name;
		$field_list['ASSIGNED_USER_NAME'] = $this->assigned_user_name;
		return $field_list;
	}

	

	/*function set_notification_body($xtpl, $machine)
	{
		global $app_list_strings;		
		
		$xtpl->assign("MACHINE_SUBJECT", $machine->name);
		$xtpl->assign("MACHINE_PRIORITY", (isset($machine->priority) ? $app_list_strings['machine_priority_dom'][$machine->priority]:""));
		$xtpl->assign("MACHINE_STATUS", (isset($machine->status) ? $app_list_strings['machine_status_dom'][$machine->status]:""));
		$xtpl->assign("MACHINE_DESCRIPTION", $machine->description);

		return $xtpl;
	}*/
	
		function bean_implements($interface){
		switch($interface){
			case 'ACL':return true;
		}
		return false;
	}
	
	function save($check_notify = FALSE){













		return parent::save($check_notify);
	}
	
	/**
	 * retrieves the Subject line macro for InboundEmail parsing
	 * @return string
	 */
	/*function getEmailSubjectMacro() {
		global $sugar_config;
		return (isset($sugar_config['inbound_email_machine_subject_macro']) && !empty($sugar_config['inbound_email_machine_subject_macro'])) ?
			$sugar_config['inbound_email_machine_subject_macro'] : $this->emailSubjectMacro; 
	}*/
}
?>