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
/*********************************************************************************gf

 * Description:  Executes a step in the installation process.
 ********************************************************************************/

$moduleList = array();
// this list defines the modules shown in the top tab list of the app
//the order of this list is the default order displayed - do not change the order unless it is on purpose
$moduleList[] = 'Home';
$moduleList[] = 'iFrames';
$moduleList[] = 'Calendar';
$moduleList[] = 'Activities';
$moduleList[] = 'Contacts';
$moduleList[] = 'Accounts';
$moduleList[] = 'Leads';
$moduleList[] = 'Opportunities';
$moduleList[] = 'Cases';
$moduleList[] = 'Bugs';
$moduleList[] = 'Documents';
$moduleList[] = 'Emails';
$moduleList[] = 'Campaigns';
$moduleList[] = 'Project';
//Peter Peshev
$moduleList[] = 'Products';
$moduleList[] = 'Suppliers';
$moduleList[] = 'Feeds';
$moduleList[] = 'Supplies';
$moduleList[] = 'Prices';
$moduleList[] = 'PurchaseOrders';
$moduleList[] = 'Materials';
$moduleList[] = 'Quotes';
$moduleList[] = 'Operations';
$moduleList[] = 'ProductOperations';
$moduleList[] = 'Machines';
$moduleList[] = 'ProductLogs';

$moduleList[] = 'Pressmachine';
$moduleList[] = 'Presspricelist';
$moduleList[] = 'Paperwaste';
$moduleList[] = 'Press';
   

$moduleList[] = 'ComponentEstimateCalc';
$moduleList[] = 'Estimates';  
$moduleList[] = 'ClientOrders';  
$moduleList[] = 'EstimateComponents';  
$moduleList[] = 'EstimateCalc';
$moduleList[] = 'ClientRequest';

$moduleList[] = 'Dashboard';
//--------------------------------------------------------------------
// this list defines all of the module names and bean names in the app
// to create a new module's bean class, add the bean definition here
$beanList = array();
//ACL Objects
$beanList['ACLRoles']       = 'ACLRole';
$beanList['ACLActions']     = 'ACLAction';
//END ACL OBJECTS
$beanList['Leads']          = 'Lead';
$beanList['Contacts']       = 'Contact';
$beanList['Accounts']       = 'Account';
$beanList['DynamicFields']  = 'DynamicField';
$beanList['EditCustomFields']   = 'FieldsMetaData';
$beanList['Opportunities']  = 'Opportunity';
$beanList['Cases']          = 'aCase';
$beanList['Notes']          = 'Note';
$beanList['EmailTemplates']     = 'EmailTemplate';
$beanList['EmailMan'] = 'EmailMan';
$beanList['Calls']          = 'Call';
$beanList['Emails']         = 'Email';
$beanList['Meetings']       = 'Meeting';
$beanList['Tasks']          = 'Task';
$beanList['Users']          = 'User';
$beanList['Employees']      = 'Employee';
$beanList['Currencies']     = 'Currency';
$beanList['Trackers']       = 'Tracker';
$beanList['Import']         = 'ImportMap';
$beanList['Import_1']       = 'SugarFile';
$beanList['Import_2']       = 'UsersLastImport';
$beanList['Versions']       = 'Version';
$beanList['Administration'] = 'Administration';
$beanList['vCals']          = 'vCal';
$beanList['CustomFields']       = 'CustomFields';
$beanList['Bugs']           = 'Bug';
$beanList['Releases']       = 'Release';
$beanList['Feeds']          = 'Feed';
$beanList['iFrames']            = 'iFrame';
$beanList['Project']            = 'Project';
$beanList['ProjectTask']            = 'ProjectTask';
$beanList['Paper']            = 'Paper';

//Peter Peshev
$beanList['ProductOperations'] = 'ProductOperation';
$beanList['Operations'] = 'Operation';
$beanList['Quotes']            = 'Quote';
$beanList['Prices']            = 'Price';
$beanList['Products']            = 'Products';
$beanList['ProductComponents']            = 'ProductComponents';
$beanList['EstimateComponents'] = 'EstimateComponents';
$beanList['Estimates'] = 'Estimates';
$beanList['ClientOrders'] = 'ClientOrders';
$beanList['EstimateCalc'] = 'EstimateCalc';
$beanList['Suppliers'] = 'Supplier';
$beanList['Supplies'] = 'Supply';
$beanList['SupplyLines'] = 'SupplyLine';
$beanList['PurchaseOrders'] = 'PurchaseOrder';
$beanList['Materials']= 'Material';
$beanList['Machines'] = 'Machine';
$beanList['ProductLogs'] = 'ProductLog';
$beanList['Printing'] = 'Printing';
$beanList['Format'] = 'Format';
$beanList['Ink'] = 'Ink';
$beanList['Pressmachine'] = 'Pressmachine';
$beanList['Presspricelist'] = 'Presspricelist';
$beanList['Pricelistlines'] = 'Pricelistline';
$beanList['Paperwaste'] = 'Paperwaste';
$beanList['Paperwasteline'] = 'Paperwasteline';
$beanList['Layout'] = 'Layout';
$beanList['Layoutline'] = 'Layoutline';
$beanList['Press'] = 'Press';
$beanList['Ratefilm'] = 'Ratefilm';
$beanList['Rateplate'] = 'Rateplate';
$beanList['ComponentInk'] = 'ComponentInk';
$beanList['ComponentPrepress'] = 'ComponentPrepress';

$beanList['ComponentEstimateCalc'] = 'ComponentEstimateCalc';
$beanList['Paperformat'] = 'Paperformat';
$beanList['Paperformat'] = 'Pressformat';
$beanList['Childformat'] = 'Childformat';
$beanList['ClientRequest'] = 'ClientRequest';
$beanList['ProductStatus'] = 'ProductStatus';

//
$beanList['Campaigns']          = 'Campaign';
$beanList['ProspectLists']      = 'ProspectList';
$beanList['Prospects']  = 'Prospect';
$beanList['Documents']  = 'Document';
$beanList['DocumentRevisions']  = 'DocumentRevision';
$beanList['Roles']  = 'Role';
$beanList['EmailMarketing']  = 'EmailMarketing';
$beanList['Audit']  = 'Audit';
$beanList['Schedulers']  = 'Scheduler';
$beanList['SchedulersJobs']  = 'SchedulersJob';
// deferred
//$beanList['Queues'] = 'Queue';
$beanList['InboundEmail'] = 'InboundEmail';
$beanList['Groups'] = 'Group';
$beanList['DocumentRevisions'] = 'DocumentRevision';
$beanList['CampaignLog']        = 'CampaignLog';
$beanList['Dashboard']          = 'Dashboard';
$beanList['CampaignTrackers']   = 'CampaignTracker';
$beanList['SavedSearch']   = 'SavedSearch';
$beanList['UserPreferences']        = 'UserPreference';
$beanList['MergeRecords'] = 'MergeRecord';
//------------------------------------------------------------------
// this list defines all of the files that contain the SugarBean class definitions from $beanList
// to create a new module's bean class, add the file definition here
$beanFiles = array();
$beanFiles['Relationship']  = 'modules/Relationships/Relationship.php';
$beanFiles['ACLRole'] = 'modules/ACLRoles/ACLRole.php';
$beanFiles['ACLAction'] = 'modules/ACLActions/ACLAction.php';
$beanFiles['Lead'] = 'modules/Leads/Lead.php';
$beanFiles['Contact']       = 'modules/Contacts/Contact.php';
$beanFiles['Account']  = 'modules/Accounts/Account.php';
$beanFiles['Opportunity']   = 'modules/Opportunities/Opportunity.php';
$beanFiles['aCase']    = 'modules/Cases/Case.php';
$beanFiles['Note'] = 'modules/Notes/Note.php';
$beanFiles['EmailTemplate']    = 'modules/EmailTemplates/EmailTemplate.php';
$beanFiles['EmailMan'] = 'modules/EmailMan/EmailMan.php';
$beanFiles['Call'] = 'modules/Calls/Call.php';
$beanFiles['Email']    = 'modules/Emails/Email.php';
$beanFiles['Meeting']  = 'modules/Meetings/Meeting.php';
$beanFiles['iFrame']   = 'modules/iFrames/iFrame.php';
$beanFiles['Task'] = 'modules/Tasks/Task.php';
$beanFiles['User'] = 'modules/Users/User.php';
$beanFiles['Employee'] = 'modules/Employees/Employee.php';
$beanFiles['Currency'] = 'modules/Currencies/Currency.php';
$beanFiles['Tracker']  = 'data/Tracker.php';
$beanFiles['ImportMap']     = 'modules/Import/ImportMap.php';
$beanFiles['SugarFile']     = 'modules/Import/SugarFile.php';
$beanFiles['UsersLastImport']= 'modules/Import/UsersLastImport.php';
$beanFiles['Administration']= 'modules/Administration/Administration.php';
$beanFiles['UpgradeHistory']= 'modules/Administration/UpgradeHistory.php';
$beanFiles['vCal'] = 'modules/vCals/vCal.php';
$beanFiles['Bug']  = 'modules/Bugs/Bug.php';
$beanFiles['Version']  = 'modules/Versions/Version.php';
$beanFiles['Release']  = 'modules/Releases/Release.php';
$beanFiles['Feed'] = 'modules/Feeds/Feed.php';
$beanFiles['Project']  = 'modules/Project/Project.php';
$beanFiles['ProjectTask']  = 'modules/ProjectTask/ProjectTask.php';
$beanFiles['Paper']  = 'modules/Paper/Paper.php';
//Peter Peshev
$beanFiles['ProductOperation']  = 'modules/ProductOperations/ProductOperation.php';
$beanFiles['Operation']  = 'modules/Operations/Operation.php';
$beanFiles['Quote']  = 'modules/Quotes/Quote.php';
$beanFiles['Products'] = 'modules/Products/Products.php';
$beanFiles['ProductComponents']  = 'modules/ProductComponents/ProductComponents.php';
$beanFiles['Estimates'] = 'modules/Estimates/Estimates.php';
$beanFiles['ClientOrders'] = 'modules/ClientOrders/ClientOrders.php';
$beanFiles['EstimateComponents']  = 'modules/EstimateComponents/EstimateComponents.php';
$beanFiles['Supplier']  = 'modules/Suppliers/Supplier.php';
$beanFiles['Supply']  = 'modules/Supplies/Supply.php';
$beanFiles['SupplyLine']  = 'modules/SupplyLines/SupplyLine.php';
$beanFiles['PurchaseOrder']  = 'modules/PurchaseOrders/PurchaseOrder.php';
$beanFiles['Material']  = 'modules/Materials/Material.php';
$beanFiles['Machine']  = 'modules/Machines/Machine.php';
$beanFiles['Printing']  = 'modules/Printing/Printing.php';
$beanFiles['Format']  = 'modules/Format/Format.php';
$beanFiles['Ink']  = 'modules/Ink/Ink.php';
$beanFiles['Pressmachine']  = 'modules/Pressmachine/Pressmachine.php';
$beanFiles['Presspricelist']  = 'modules/Presspricelist/Presspricelist.php';
$beanFiles['Pricelistline']  = 'modules/Pricelistlines/Pricelistline.php';
$beanFiles['Paperwaste']  = 'modules/Paperwaste/Paperwaste.php';
$beanFiles['Paperwasteline']  = 'modules/Paperwasteline/Paperwasteline.php';
$beanFiles['Layout']  = 'modules/Layout/Layout.php';
$beanFiles['Layoutline']  = 'modules/Layoutline/Layoutline.php';
$beanFiles['Press']  = 'modules/Press/Press.php';
$beanFiles['Ratefilm']  = 'modules/Ratefilm/Ratefilm.php';
$beanFiles['Rateplate']  = 'modules/Rateplate/Rateplate.php';
$beanFiles['ComponentInk']  = 'modules/ComponentInk/ComponentInk.php';
$beanFiles['ComponentPrepress']  = 'modules/ComponentPrepress/ComponentPrepress.php';

$beanFiles['ComponentEstimateCalc']  = 'modules/ComponentEstimateCalc/ComponentEstimateCalc.php';

$beanFiles['Paperformat']= 'modules/Paperformat/Paperformat.php';
$beanFiles['Pressformat']= 'modules/Pressformat/Pressformat.php';
$beanFiles['Childformat']= 'modules/Childformat/Childformat.php';
$beanFiles['EstimateComponents'] = 'modules/EstimateComponents/EstimateComponents.php';
$beanFiles['EstimateCalc'] = 'modules/EstimateCalc/EstimateCalc.php';
$beanFiles['ClientRequest'] = 'modules/ClientRequest/ClientRequest.php';
$beanFiles['ClientRequest'] = 'modules/ProductStatus/ProductStatus.php';

//
$beanFiles['ProductLog']      = 'modules/ProductLogs/ProductLog.php';
$beanFiles['Price']      = 'modules/Prices/Price.php';
$beanFiles['Role']     = 'modules/Roles/Role.php';
$beanFiles['EmailMarketing']     = 'modules/EmailMarketing/EmailMarketing.php';
$beanFiles['Campaign']     = 'modules/Campaigns/Campaign.php';
$beanFiles['ProspectList'] = 'modules/ProspectLists/ProspectList.php';
$beanFiles['Prospect']  = 'modules/Prospects/Prospect.php';
$beanFiles['Document']  = 'modules/Documents/Document.php';
$beanFiles['DocumentRevision']  = 'modules/DocumentRevisions/DocumentRevision.php';
$beanFiles['FieldsMetaData']  = 'modules/EditCustomFields/FieldsMetaData.php';
//$beanFiles['Audit']      = 'modules/Audit/Audit.php';
$beanFiles['Scheduler']  = 'modules/Schedulers/Scheduler.php';
$beanFiles['SchedulersJob']  = 'modules/SchedulersJobs/SchedulersJob.php';

// deferred
//$beanFiles['Queue'] = 'modules/Queues/Queue.php';
$beanFiles['InboundEmail'] = 'modules/InboundEmail/InboundEmail.php';
$beanFiles['Group'] = 'modules/Groups/Group.php';
$beanFiles['CampaignLog']  = 'modules/CampaignLog/CampaignLog.php';
$beanFiles['Dashboard']  = 'modules/Dashboard/Dashboard.php';
$beanFiles['CampaignTracker']  = 'modules/CampaignTrackers/CampaignTracker.php';
$beanFiles['SavedSearch']  = 'modules/SavedSearch/SavedSearch.php';
$beanFiles['UserPreference']  = 'modules/UserPreferences/UserPreference.php';
$beanFiles['MergeRecord']  = 'modules/MergeRecords/MergeRecord.php';
// added these lists for security settings for tabs
$modInvisList = array('Administration', 'Currencies', 'CustomFields',
    'Dropdown', 'Dynamic', 'DynamicFields', 'DynamicLayout', 'EditCustomFields',
    'EmailTemplates', 'Help', 'Import',  'MySettings', 'EditCustomFields','FieldsMetaData',
    'UpgradeWizard', 



    'Releases','Sync','Layout',
    'Users',  'Versions', 'EmailMan', /* Peter Peshev */'Ink', 'Rateplate', 'Ratefilm', 'Paperformat', 'Pressformat', 'ProductComponents', 'ProjectTask', 'Paper', 'ProspectLists', 'Prospects', 'Employees', 'LabelEditor','Roles','EmailMarketing'
    ,'OptimisticLock', 'TeamMemberships', 'Audit', 'MailMerge', 'MergeRecords',



    'Schedulers','Schedulers_jobs', /*'Queues',*/ 'InboundEmail',
    'CampaignLog', 'Groups',
    'ACLActions', 'ACLRoles','CampaignTrackers','DocumentRevisions','Format',



    );
$adminOnlyList = array(
                    //module => list of actions  (all says all actions are admin only)
                    'Administration'=>array('all'=>1, 'SupportPortal'=>'allow'),
                    'Dropdown'=>array('all'=>1),
                    'Dynamic'=>array('all'=>1),
                    'DynamicFields'=>array('all'=>1),
                    'Currencies'=>array('all'=>1),
                    'EditCustomFields'=>array('all'=>1),
                    'FieldsMetaData'=>array('all'=>1),
                    'LabelEditor'=>array('all'=>1),
                    'ACL'=>array('all'=>1),
                    'ACLActions'=>array('all'=>1),
                    'ACLRoles'=>array('all'=>1),
                    //'Groups'=>array('all'=>1),
                    'UpgradeWizard' => array('all' => 1),
                    'Studio' => array('all' => 1),
                    );



$modInvisListActivities = array('Calls', 'Meetings','Notes','Tasks');

$modInvisList[] = 'ACL';
$modInvisList[] = 'ACLRoles';
$modInvisList[] = 'Configurator';
$modInvisList[] = 'UserPreferences';
$modInvisList[] = 'SavedSearch';
// deferred
//$modInvisList[] = 'Queues';
$modInvisList[] = 'Studio';
if (file_exists('include/modules_override.php'))
{
    include('include/modules_override.php');
}
if (file_exists('custom/application/Ext/Include/modules.ext.php'))
{
    include('custom/application/Ext/Include/modules.ext.php');
}
?>