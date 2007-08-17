<?php
 if(!defined('sugarEntry'))define('sugarEntry', true);
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
require_once('include/entryPoint.php');
require_once('include/utils/file_utils.php');
ob_start();

require_once('soap/SoapError.php');
require_once('include/nusoap/nusoap.php');
require_once('modules/Contacts/Contact.php');
require_once('modules/Accounts/Account.php');
require_once('modules/Opportunities/Opportunity.php');
require_once('modules/Cases/Case.php');

//ignore notices
error_reporting(E_ALL ^ E_NOTICE);






global $HTTP_RAW_POST_DATA;

$administrator = new Administration();
$administrator->retrieveSettings();

$NAMESPACE = 'http://www.sugarcrm.com/sugarcrm';
$server = new soap_server;
$server->configureWSDL('sugarsoap', $NAMESPACE, $sugar_config['site_url'].'/soap.php');

$server->wsdl->addComplexType(
    'contact_detail',
    'complexType',
    'struct',
    'all',
    '',
    array(
        'email_address' => array('name'=>'email_address','type'=>'xsd:string'),
        'name1' => array('name'=>'name1','type'=>'xsd:string'),
        'name2' => array('name'=>'name2','type'=>'xsd:string'),
        'association' => array('name'=>'association','type'=>'xsd:string'),
        'id' => array('name'=>'id','type'=>'xsd:string'),
        'msi_id' => array('name'=>'id','type'=>'xsd:string'),
        'type' => array('name'=>'type','type'=>'xsd:string'),
    )
);

$server->wsdl->addComplexType(
    'contact_detail_array',
    'complexType',
    'array',
    '',
    'SOAP-ENC:Array',
    array(),
    array(
        array('ref'=>'SOAP-ENC:arrayType','wsdl:arrayType'=>'tns:contact_detail[]')
    ),
    'tns:contact_detail'
);

$server->wsdl->addComplexType(
    'user_detail',
    'complexType',
    'struct',
    'all',
    '',
    array(
        'email_address' => array('name'=>'email_address','type'=>'xsd:string'),
        'user_name' => array('name'=>'user_name', 'type'=>'xsd:string'),
        'first_name' => array('name'=>'first_name','type'=>'xsd:string'),
        'last_name' => array('name'=>'last_name','type'=>'xsd:string'),
        'department' => array('name'=>'department','type'=>'xsd:string'),
        'id' => array('name'=>'id','type'=>'xsd:string'),
        'title' => array('name'=>'title','type'=>'xsd:string'),
    )
);

$server->wsdl->addComplexType(
    'user_detail_array',
    'complexType',
    'array',
    '',
    'SOAP-ENC:Array',
    array(),
    array(
        array('ref'=>'SOAP-ENC:arrayType','wsdl:arrayType'=>'tns:user_detail[]')
    ),
    'tns:user_detail'
);


$server->register(
    'create_session',
    array('user_name'=>'xsd:string','password'=>'xsd:string'),
    array('return'=>'xsd:string'),
    $NAMESPACE);

$server->register(
    'end_session',
    array('user_name'=>'xsd:string'),
    array('return'=>'xsd:string'),
    $NAMESPACE);

$server->register(
    'contact_by_email',
    array('user_name'=>'xsd:string','password'=>'xsd:string', 'email_address'=>'xsd:string'),
    array('return'=>'tns:contact_detail_array'),
    $NAMESPACE);

$server->register(
    'user_list',
    array('user_name'=>'xsd:string','password'=>'xsd:string'),
    array('return'=>'tns:user_detail_array'),
    $NAMESPACE);

$server->register(
    'search',
    array('user_name'=>'xsd:string','password'=>'xsd:string', 'name'=>'xsd:string'),
    array('return'=>'tns:contact_detail_array'),
    $NAMESPACE);

$server->register(
	'track_email',
    array('user_name'=>'xsd:string','password'=>'xsd:string','parent_id'=>'xsd:string', 'contact_ids'=>'xsd:string', 'date_sent'=>'xsd:date', 'email_subject'=>'xsd:string', 'email_body'=>'xsd:string'),
    array('return'=>'xsd:string'),
    $NAMESPACE);

$server->register(
	'create_contact',
    array('user_name'=>'xsd:string','password'=>'xsd:string', 'first_name'=>'xsd:string', 'last_name'=>'xsd:string', 'email_address'=>'xsd:string'),
    array('return'=>'xsd:string'),
    $NAMESPACE);

$server->register(
	'create_lead',
    array('user_name'=>'xsd:string','password'=>'xsd:string', 'first_name'=>'xsd:string', 'last_name'=>'xsd:string', 'email_address'=>'xsd:string'),
    array('return'=>'xsd:string'),
    $NAMESPACE);

$server->register(
	'create_account',
    array('user_name'=>'xsd:string','password'=>'xsd:string', 'name'=>'xsd:string', 'phone'=>'xsd:string', 'website'=>'xsd:string'),
    array('return'=>'xsd:string'),
    $NAMESPACE);

$server->register(
	'create_opportunity',
    array('user_name'=>'xsd:string','password'=>'xsd:string', 'name'=>'xsd:string', 'amount'=>'xsd:string'),
    array('return'=>'xsd:string'),
    $NAMESPACE);


$server->register(
	'create_case',
    array('user_name'=>'xsd:string','password'=>'xsd:string', 'name'=>'xsd:string'),
    array('return'=>'xsd:string'),
    $NAMESPACE);

/**
 * Create a new session.  This method is required before calling any other functions.
 *
 * @param string $user_name -- the user name for the session
 * @param string $password -- MD5 of user password
 * @return "Success" if the session is created
 * @return "Failed" if the session creation failed.
 */
function create_session($user_name, $password)
{
	if(validate_user($user_name, $password))
	{
		return "Success";
	}

	return "Failed";
}

/**
 * End a session.  This method will end the SOAP session.
 *
 * @param string $user_name -- the user name for the session
 * @return "Success" if the session is destroyed
 * @return "Failed" if the session destruction failed.
 */
function end_session($user_name)
{
	// get around optimizer warning
	$user_name = $user_name;
	return "Success";
}

/**
 * Validate the user session based on user name and password hash.
 *
 * @param string $user_name -- The user name to create a session for
 * @param string $password -- The MD5 sum of the user's password
 * @return true -- If the session is created
 * @return false -- If the session is not created
 */
function validate_user($user_name, $password){
	global $server, $current_user;
	$user = new User();
	$user->user_name = $user_name;

	// Check to see if the user name and password are consistent.
	if($user->authenticate_user($password)){
		// we also need to set the current_user.
		$user->retrieve($user->id);
		$current_user = $user;

		return true;
	}else{
		$GLOBALS['log']->fatal("SECURITY: failed attempted login for $user_name using SOAP api");
		$server->setError("Invalid username and/or password");
		return false;
	}

}

/**
 * Internal: When building a response to the plug-in for Microsoft Outlook, find
 * all contacts that match the email address that was provided.
 *
 * @param array by ref $output_list -- The list of matching beans.  New contacts that match
 *   the email address are appended to the $output_list
 * @param string $email_address -- an email address to search for
 * @param Contact $seed_contact -- A template SugarBean.  This is a blank Contact
 * @param ID $msi_id -- Index Count
 */
function add_contacts_matching_email_address(&$output_list, $email_address, &$seed_contact, &$msi_id)
{
    // escape the email address
	$safe_email_address = addslashes($email_address);
	global $current_user;
	
	// Verify that the user has permission to see Contact list views
	if(!$seed_contact->ACLAccess('ListView'))
	{
		return;
	}
	
	$where = "contacts.email1 like '$safe_email_address' OR contacts.email2 like '$safe_email_address'";
	$response = $seed_contact->get_list("last_name, first_name", $where, 0);
	$contactList = $response['list'];

	// create a return array of names and email addresses.
	foreach($contactList as $contact)
	{
		$output_list[] = Array("name1"	=> $contact->first_name,
			"name2" => $contact->last_name,
			"association" => $contact->account_name,
			"type" => 'Contact',
			"id" => $contact->id,
			"msi_id" => $msi_id,
			"email_address" => $contact->email1);

        $accounts = $contact->get_linked_beans('accounts','Account');
		foreach($accounts as $account)
		{
			$output_list[] = get_account_array($account, $msi_id);
		}

        $opps = $contact->get_linked_beans('opportunities','Opportunity');
		foreach($opps as $opp)
		{
			$output_list[] = get_opportunity_array($opp, $msi_id);
		}

        $cases = $contact->get_linked_beans('cases','aCase');
		foreach($cases as $case)
		{
			$output_list[] = get_case_array($case, $msi_id);
		}
		
		 $bugs = $contact->get_linked_beans('bugs','Bug');
		foreach($bugs as $bug)
		{
			$output_list[] = get_bug_array($bug, $msi_id);
		}

		$msi_id = $msi_id + 1;
	}
}

/**
 * Internal: Add Leads that match the specified email address to the result array
 *
 * @param Array $output_list -- List of matching detail records
 * @param String $email_address -- Email address
 * @param Bean $seed_lead -- Seed Lead Bean
 * @param int $msi_id -- output array offset.
 */
function add_leads_matching_email_address(&$output_list, $email_address, &$seed_lead, &$msi_id)
{
	$safe_email_address = addslashes($email_address);
	if(!$seed_lead->ACLAccess('ListView')){
		return;
	}
	$where = "leads.email1 like '$safe_email_address' OR leads.email2 like '$safe_email_address'";
	$response = $seed_lead->get_list("last_name, first_name", $where, 0);
	$leadList = $response['list'];

	// create a return array of names and email addresses.
	foreach($leadList as $lead)
	{
		$output_list[] = Array("name1"	=> $lead->first_name,
			"name2" => $lead->last_name,
			"association" => $lead->account_name,
			"type" => 'Lead',
			"id" => $lead->id,
			"msi_id" => $msi_id,
			"email_address" => $lead->email1);

		$msi_id = $msi_id + 1;
	}
}

// Define a global current user
$current_user = null;

/**
 * Return a list of contact and lead detail records based on a single email 
 * address or a  list of email addresses separated by '; '.  
 * 
 * This function does not require a session be created first.
 *
 * @param string $user_name -- User name to authenticate with
 * @param string $password -- MD5 of the user password
 * @param string $email_address -- Single email address or '; ' separated list of email addresses (e.x "test@example.com; test2@example.com"
 * @return contact detail array along with associated objects.
 */
function contact_by_email($user_name, $password, $email_address)
{
	if(!validate_user($user_name, $password)){
		return array();
	}

	$seed_contact = new Contact();
	$seed_lead = new Lead();
	$output_list = Array();
	$email_address_list = explode("; ", $email_address);

	// remove duplicate email addresses
	$non_duplicate_email_address_list = Array();
	foreach( $email_address_list as $single_address)
	{
		// Check to see if the current address is a match of an existing address
		$found_match = false;
		foreach( $non_duplicate_email_address_list as $non_dupe_single)
		{
			if(strtolower($single_address) == $non_dupe_single)
			{
				$found_match = true;
				break;
			}
		}

		if($found_match == false)
		{
			$non_duplicate_email_address_list[] = strtolower($single_address);
		}
	}

	// now copy over the non-duplicated list as the original list.
	$email_address_list =$non_duplicate_email_address_list;

	// Track the msi_id
	$msi_id = 1;

	foreach( $email_address_list as $single_address)
	{
	    // verify that contacts can be listed
		if($seed_contact->ACLAccess('ListView')){
			add_contacts_matching_email_address($output_list, $single_address, $seed_contact, $msi_id);
		}
		
	    // verify that leads can be listed
		if($seed_lead->ACLAccess('ListView')){
			add_leads_matching_email_address($output_list, $single_address, $seed_lead, $msi_id);
		}
	}

	return $output_list;
}

/**
 * Internal: convert a bean into an array
 *
 * @param Bean $bean -- The bean to convert
 * @param int $msi_id -- Russult array index
 * @return An associated array containing the detail fields.
 */
function get_contact_array($contact, $msi_id = '0'){
	 return Array("name1"	=> $contact->first_name,
			"name2" => $contact->last_name,
			"association" => $contact->account_name,
			"type" => 'Contact',
			"id" => $contact->id,
			"msi_id" => $msi_id,
			"email_address" => $contact->email1);

}

/**
 * Internal: Convert a user into an array
 *
 * @param User $user -- The user to convert
 * @return An associated array containing the detail fields.
 */
function get_user_list_array($user) {
    return Array('email_address' => $user->email1,
        'user_name' => $user->user_name,
        'first_name' => $user->first_name,
        'last_name' => $user->last_name,
        'department' => $user->department,
        'id' => $user->id,
        'title' => $user->title);
}

/**
 * Get a full user list.
 *
 * This function does not require a session be created first.
 * 
 * @param string $user -- user name for validation
 * @param password $password -- MD5 hash of the user password for validation
 * @return User Array -- An array of user detail records
 */
function user_list($user, $password) {
	if(!validate_user($user, $password)){
		return array();
	}

    $seed_user = new User();
    $output_list = Array();
	if(!$seed_user->ACLAccess('ListView')){
		return $output_list;
	}
    $userList = $seed_user->get_full_list();


    foreach($userList as $user) {
        $output_list[] = get_user_list_array($user);
    }

    return $output_list;
}

/**
 * Internal: Search for contacts based on the specified name and where clause.
 * Currently only the name is used.
 *
 * @param string $name -- Name to search for.
 * @param string $where -- Where clause defaults to ''
 * @param int $msi_id -- Response array index
 * @return array -- Resturns a list of contacts that have the provided name.
 */
function contact_by_search($name, $where = '', $msi_id = '0')
{
	$seed_contact = new Contact();
	if($where == ''){
		$where = $seed_contact->build_generic_where_clause($name);
	}
	if(!$seed_contact->ACLAccess('ListView')){
		return array();
	}
	$response = $seed_contact->get_list("last_name, first_name", $where, 0);
	$contactList = $response['list'];

	$output_list = Array();

	// create a return array of names and email addresses.
	foreach($contactList as $contact)
	{
		$output_list[] = get_contact_array($contact, $msi_id);
	}
	return $output_list;
}

/**
 * Internal: convert a bean into an array
 *
 * @param Bean $bean -- The bean to convert
 * @param int $msi_id -- Russult array index
 * @return An associated array containing the detail fields.
 */
function get_lead_array($lead, $msi_id = '0'){
	 return Array("name1"	=> $lead->first_name,
			"name2" => $lead->last_name,
			"association" => $lead->account_name,
			"type" => 'Lead',
			"id" => $lead->id,
			"msi_id" => $msi_id,
			"email_address" => $lead->email1);
}

function lead_by_search($name, $where = '', $msi_id = '0')
{
	$seed_lead = new Lead();
	if($where == ''){
		$where = $seed_lead->build_generic_where_clause($name);
	}
	if(!$seed_lead->ACLAccess('ListView')){
		return array();
	}
	$response = $seed_lead->get_list("last_name, first_name", $where, 0);
	$lead_list = $response['list'];

	$output_list = Array();

	// create a return array of names and email addresses.
	foreach($lead_list as $lead)
	{
		$output_list[] = get_lead_array($lead, $msi_id);
	}
	return $output_list;
}

/**
 * Internal: convert a bean into an array
 *
 * @param Bean $bean -- The bean to convert
 * @param int $msi_id -- Russult array index
 * @return An associated array containing the detail fields.
 */
function get_account_array($account, $msi_id){
	return Array("name1"	=> '',
			"name2" => $account->name,
			"association" => $account->billing_address_city,
			"type" => 'Account',
			"id" => $account->id,
			"msi_id" => $msi_id,
			"email_address" => $account->email1);
}

function account_by_search($name, $where = '', $msi_id = '0')
{
	$seed_account = new Account();
	if(!$seed_account->ACLAccess('ListView')){
		return array();
	}
	if($where == ''){
		$where = $seed_account->build_generic_where_clause($name);
	}
	$response = $seed_account->get_list("name", $where, 0);
	$accountList = $response['list'];

	$output_list = Array();

	// create a return array of names and email addresses.
	foreach($accountList as $account)
	{
		$output_list[] = get_account_array($account, $msi_id);
	}
	return $output_list;
}

/**
 * Internal: convert a bean into an array
 *
 * @param Bean $bean -- The bean to convert
 * @param int $msi_id -- Russult array index
 * @return An associated array containing the detail fields.
 */
function get_opportunity_array($value, $msi_id = '0'){
		return  Array("name1"	=> '',
			"name2" => $value->name,
			"association" => $value->account_name,
			"type" => 'Opportunity',
			"id" => $value->id,
			"msi_id" => $msi_id,
			"email_address" => '');

}

function opportunity_by_search($name, $where = '', $msi_id = '0')
{
	$seed = new Opportunity();
	if(!$seed->ACLAccess('ListView')){
		return array();
	}
	if($where == ''){
		$where = $seed->build_generic_where_clause($name);
	}
	$response = $seed->get_list("name", $where, 0);
	$list = $response['list'];

	$output_list = Array();

	// create a return array of names and email addresses.
	foreach($list as $value)
	{
		$output_list[] = get_opportunity_array($value, $msi_id);
	}
	return $output_list;
}

/**
 * Internal: convert a bean into an array
 *
 * @param Bean $bean -- The bean to convert
 * @param int $msi_id -- Russult array index
 * @return An associated array containing the detail fields.
 */
function get_bug_array($value, $msi_id){
	return Array("name1" => '',
			"name2" => $value->get_summary_text(),
			"association" => '',
			"type" => 'Bug',
			"id" => $value->id,
			"msi_id" => $msi_id,
			"email_address" => '');

}

/**
 * Internal: convert a bean into an array
 *
 * @param Bean $bean -- The bean to convert
 * @param int $msi_id -- Russult array index
 * @return An associated array containing the detail fields.
 */
function get_case_array($value, $msi_id){
	return Array("name1" => '',
			"name2" => $value->get_summary_text(),
			"association" => $value->account_name,
			"type" => 'Case',
			"id" => $value->id,
			"msi_id" => $msi_id,
			"email_address" => '');

}

function bug_by_search($name, $where = '', $msi_id='0')
{
	$seed = new Bug();
	if(!$seed->ACLAccess('ListView')){
		return array();
	}
	if($where == ''){
		$where = $seed->build_generic_where_clause($name);
	}
	$response = $seed->get_list("name", $where, 0);
	$list = $response['list'];

	$output_list = Array();

	// create a return array of names and email addresses.
	foreach($list as $value)
	{
		$output_list[] = get_bug_array($value, $msi_id);
	}
	return $output_list;
}

function case_by_search($name, $where = '', $msi_id='0')
{
	$seed = new aCase();
	if(!$seed->ACLAccess('ListView')){
		return array();
	}
	if($where == ''){
		$where = $seed->build_generic_where_clause($name);
	}
	$response = $seed->get_list("name", $where, 0);
	$list = $response['list'];

	$output_list = Array();

	// create a return array of names and email addresses.
	foreach($list as $value)
	{
		$output_list[] = get_case_array($value, $msi_id);
	}
	return $output_list;
}

/**
 * Record and email message and associated it with the specified parent bean and contact ids.
 *
 * This function does not require a session be created first.
 * 
 * @param string $user_name -- Name of the user to authenticate
 * @param string $password -- MD5 hash of the user password for authentication
 * @param id $parent_id -- [optional] The parent record to link the email to.
 * @param unknown_type $contact_ids
 * @param string $date_sent -- Date/time the email was sent in Visual Basic Date format. (e.g. '7/22/2004 9:36:31 AM')
 * @param string $email_subject -- The subject of the email
 * @param string $email_body -- The body of the email
 * @return "Invalid username and/or password"
 * @return -1 If the authenticated user does not have ACL access to save Email.
 */
function track_email($user_name, $password,$parent_id, $contact_ids, $date_sent, $email_subject, $email_body)
{
	if(!validate_user($user_name, $password)){
		return "Invalid username and/or password";
	}
	global $current_user;

	$GLOBALS['log']->info("In track email: username: $user_name contacts: $contact_ids date_sent: $date_sent");

	// translate date sent from VB format 7/22/2004 9:36:31 AM
	// to yyyy-mm-dd 9:36:31 AM

	$date_sent = ereg_replace("([0-9]*)/([0-9]*)/([0-9]*)( .*$)", "\\3-\\1-\\2\\4", $date_sent);

	require_once('modules/Users/User.php');
	$seed_user = new User();

	$user_id = $seed_user->retrieve_user_id($user_name);
	$seed_user->retrieve($user_id);
	$current_user = $seed_user;
	require_once('modules/Emails/Email.php');

	$email = new Email();
	if(!$email->ACLAccess('Save')){
		return -1;
	}
	$email->description = $email_body;
	$email->name = $email_subject;
	$email->user_id = $user_id;
	$email->assigned_user_id = $user_id;
	$email->assigned_user_name = $user_name;
	$email->date_start = $date_sent;

	// Save one copy of the email message
	$parent_id_list = explode(";", $parent_id);
	$parent_id = explode(':', $parent_id_list[0]);

	// Having a parent object is optional.  If it is set, then associate it.
	if(isset($parent_id[0]) && isset($parent_id[1]))
	{
		$email->parent_type = $parent_id[0];
		$email->parent_id = $parent_id[1];
	}

	$email->save();
	// for each contact, add a link between the contact and the email message
	$id_list = explode(";", $contact_ids);

	foreach( $id_list as $id)
	{
		if(!empty($id))
		$email->set_emails_contact_invitee_relationship($email->id, $id);
	}

	return "Succeeded";
}

function create_contact($user_name,$password, $first_name, $last_name, $email_address)
{
	if(!validate_user($user_name, $password)){
		return 0;
	}

	require_once('modules/Users/User.php');
	$seed_user = new User();
	$user_id = $seed_user->retrieve_user_id($user_name);
	$seed_user->retrieve($user_id);

	require_once('modules/Contacts/Contact.php');
	$contact = new Contact();
	if(!$contact->ACLAccess('Save')){
		return -1;
	}
	$contact->first_name = $first_name;
	$contact->last_name = $last_name;
	$contact->email1 = $email_address;
	$contact->assigned_user_id = $user_id;
	$contact->assigned_user_name = $user_name;



	return $contact->save();
}

function create_lead($user_name,$password, $first_name, $last_name, $email_address)
{
	if(!validate_user($user_name, $password)){
		return 0;
	}

	//todo make the activity body not be html encoded

	require_once('modules/Users/User.php');
	$seed_user = new User();
	$user_id = $seed_user->retrieve_user_id($user_name);

	require_once('modules/Leads/Lead.php');
	$lead = new Lead();
	if(!$lead->ACLAccess('Save')){
		return -1;
	}
	$lead->first_name = $first_name;
	$lead->last_name = $last_name;
	$lead->email1 = $email_address;
	$lead->assigned_user_id = $user_id;
	$lead->assigned_user_name = $user_name;
	return $lead->save();
}

function create_account($user_name,$password, $name, $phone, $website)
{
	if(!validate_user($user_name, $password)){
		return 0;
	}

	//todo make the activity body not be html encoded

	require_once('modules/Users/User.php');
	$seed_user = new User();
	$user_id = $seed_user->retrieve_user_id($user_name);
	$account = new Account();
	if(!$account->ACLAccess('Save')){
		return -1;
	}
	$account->name = $name;
	$account->phone_office = $phone;
	$account->website = $website;
	$account->assigned_user_id = $user_id;
	$account->assigned_user_name = $user_name;
	return $account->save();

}
function create_case($user_name,$password, $name)
{
	if(!validate_user($user_name, $password)){
		return 0;
	}

	//todo make the activity body not be html encoded

	require_once('modules/Users/User.php');
	$seed_user = new User();
	$user_id = $seed_user->retrieve_user_id($user_name);
	$case = new aCase();
	if(!$case->ACLAccess('Save')){
		return -1;
	}
	$case->assigned_user_id = $user_id;
	$case->assigned_user_name = $user_name;
	$case->name = $name;
	return $case->save();
}

function create_opportunity($user_name,$password, $name, $amount)
{
	if(!validate_user($user_name, $password)){
		return 0;
	}

	require_once('modules/Users/User.php');
	$seed_user = new User();
	$user_id = $seed_user->retrieve_user_id($user_name);
	$opp = new Opportunity();
	if(!$opp->ACLAccess('Save')){
		return -1;
	}
	$opp->name = $name;
	$opp->amount = $amount;
	$opp->assigned_user_id = $user_id;
	$opp->assigned_user_name = $user_name;
	return $opp->save();
}

function search($user_name, $password,$name){
	if(!validate_user($user_name, $password)){
		return array();
	}
    $name_list = explode("; ", $name);
    $list = array();
	foreach( $name_list as $single_name)
	{
	    $list = array_merge($list, contact_by_search($single_name));
	    $list = array_merge($list, lead_by_search($single_name));
	    $list = array_merge($list, account_by_search($single_name));
	    $list = array_merge($list, case_by_search($single_name));
	    $list = array_merge($list, opportunity_by_search($single_name));
	    $list = array_merge($list, bug_by_search($single_name));
    }
	return $list;
}

//New API is in these files
if(!empty($administrator->settings['portal_on'])) {
	require_once('soap/SoapPortalUsers.php');
}

require_once('soap/SoapSugarUsers.php');





require_once('soap/SoapData.php');

/* Begin the HTTP listener service and exit. */
ob_clean();
$HTTP_RAW_POST_DATA = isset($HTTP_RAW_POST_DATA) ? $HTTP_RAW_POST_DATA : '';
$server->service($HTTP_RAW_POST_DATA);

ob_end_flush();
sugar_cleanup();
exit();



?>
