<?php 
/*****************************************************************************
 * The contents of this file are subject to the RECIPROCAL PUBLIC LICENSE
 * Version 1.1 ("License"); You may not use this file except in compliance
 * with the License. You may obtain a copy of the License at
 * http://opensource.org/licenses/rpl.php. Software distributed under the
 * License is distributed on an "AS IS" basis, WITHOUT WARRANTY OF ANY KIND,
 * either express or implied.
 *
 * You may:
 * a) Use and distribute this code exactly as you received without payment or
 *    a royalty or other fee.
 * b) Create extensions for this code, provided that you make the extensions
 *    publicly available and document your modifications clearly.
 * c) Charge for a fee for warranty or support or for accepting liability
 *    obligations for your customers.
 *
 * You may NOT:
 * a) Charge for the use of the original code or extensions, including in
 *    electronic distribution models, such as ASP (Application Service
 *    Provider).
 * b) Charge for the original source code or your extensions other than a
 *    nominal fee to cover distribution costs where such distribution
 *    involves PHYSICAL media.
 * c) Modify or delete any pre-existing copyright notices, change notices,
 *    or License text in the Licensed Software
 * d) Assert any patent claims against the Licensor or Contributors, or
 *    which would in any way restrict the ability of any third party to use the
 *    Licensed Software.
 *
 * You must:
 * a) Document any modifications you make to this code including the nature of
 *    the change, the authors of the change, and the date of the change.
 * b) Make the source code for any extensions you deploy available via an
 *    Electronic Distribution Mechanism such as FTP or HTTP download.
 * c) Notify the licensor of the availability of source code to your extensions
 *    and include instructions on how to acquire the source code and updates.
 * d) Grant Licensor a world-wide, non-exclusive, royalty-free license to use,
 *    reproduce, perform, modify, sublicense, and distribute your extensions.
 *
 * The Original Code is: C3CRM Team
 *                       http://www.c3crm.com
 *                       2006-5-19 
 *
 * The Initial Developer of the Original Code is C3CRM Team.
 * Portions created by C3CRM are Copyright (C) 2005 C3CRM
 * All Rights Reserved.
 * Contributors: Goodwill Consulting http://www.goodwill.co.id
 ********************************************************************************/

global $mod_strings;
$module_menu = array();
//Peter Peshev 15.12.2006
if(ACLController::checkAccess('Materials', 'edit', true))$module_menu[] = array("index.php?module=Materials&action=EditView&return_module=Materials&return_action=DetailView",
	$mod_strings['LNK_NEW_MATERIAL'], 'CreateMaterial');
if(ACLController::checkAccess('Paper', 'edit', true))$module_menu[] = array('index.php?module=Paper&action=EditView&return_module=Paper&return_action=DetailView', $mod_strings['LBL_ADD_PAPER'], 'CreatePapers');
if(ACLController::checkAccess('Rateplate', 'edit', true))$module_menu[] = array("index.php?module=Rateplate&action=EditView&return_module=Rateplate&return_action=DetailView",
	$mod_strings['LNK_NEW_RATEPLATE'], 'CreateRateplate');
if(ACLController::checkAccess('Ratefilm', 'edit', true))$module_menu[] = array("index.php?module=Ratefilm&action=EditView&return_module=Ratefilm&return_action=DetailView",
	$mod_strings['LNK_NEW_RATEFILM'], 'CreateRatefilm');
if(ACLController::checkAccess('Ink', 'edit', true))$module_menu[] = array("index.php?module=Ink&action=EditView&return_module=Ink&return_action=DetailView",
	$mod_strings['LNK_NEW_INK'], 'CreateInk');



if(ACLController::checkAccess('Materials', 'list', true))$module_menu[] = array('index.php?module=Materials&action=index',
	$mod_strings['LNK_MATERIAL_LIST'], 'Materials');
if(ACLController::checkAccess('Materials','list', true)) $module_menu[] = Array('#', '<span style="display: none">wp_shortcut_fill_0</span>', '');
if(ACLController::checkAccess('Paper', 'list', true))$module_menu[] = array('index.php?module=Paper&action=index&return_module=Paper&return_action=DetailView', $mod_strings['LBL_LIST_PAPER'],  'Paper');
if(ACLController::checkAccess('Rateplate', 'list', true))$module_menu[] = array('index.php?module=Rateplate&action=index',
	$mod_strings['LNK_RATEPLATE_LIST'], 'Rateplate');
if(ACLController::checkAccess('Ratefilm', 'list', true))$module_menu[] = array('index.php?module=Ratefilm&action=index',
	$mod_strings['LNK_RATEFILM_LIST'], 'Ratefilm');
if(ACLController::checkAccess('Ink', 'list', true))$module_menu[] = array('index.php?module=Ink&action=index',
	$mod_strings['LNK_INK_LIST'], 'Ink');
if(ACLController::checkAccess('Paperformat', 'list', true))$module_menu[] = array('index.php?module=Paperformat&action=Formats',
	$mod_strings['LNK_PAPERFORMAT_LIST'], 'Paperformat');

?>
