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

 * Description:  Contains field arrays that are used for caching
 * Portions created by SugarCRM are Copyright (C) SugarCRM, Inc.
 * All Rights Reserved.
 * Contributor(s): ______________________________________..
 ********************************************************************************/
$fields_array['ClientOrder'] = array ('column_fields' => array(
		'id',
		'date_entered',
		'date_modified',
		'assigned_user_id',
		'modified_user_id',
		'created_by',

		'number',
		'due_date',
		'quantity',
		'periodic',
		'special_requirements',
		'samples',
		'files',
		'operation_description',
		'transport',
		'pack',

		'name',
		'product_id',
		'description',
		'deleted',
	),
        'list_fields' =>  array(
		'id',
		'assigned_user_id',
		'assigned_user_name',


		'number',
		'due_date',
		'quantity',
		'periodic',
		'special_requirements',
		'samples',
		'files',
		'operation_description',
		'transport',
		'pack',

		'name',
		'product_id',
		'relation_id',
		'relation_name',
		'relation_type',

	),
    'required_fields' =>  array('name'=>1, ),
);
?>