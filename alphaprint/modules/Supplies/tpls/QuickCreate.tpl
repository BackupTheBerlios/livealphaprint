{*

/**
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

// $Id: QuickCreate.tpl,v 1.3 2007/02/06 13:39:35 ivan_garbev Exp $

*}


<form name="suppliesQuickCreate" id="suppliesQuickCreate" method="POST" action="index.php">
<input type="hidden" name="module" value="Supplies">
<input type="hidden" name="record" value="">
<input type="hidden" name="acase_id" value="{$REQUEST.acase_id}">
<input type="hidden" name="return_action" value="{$REQUEST.return_action}">
<input type="hidden" name="return_module" value="{$REQUEST.return_module}">
<input type="hidden" name="return_id" value="{$REQUEST.return_id}">
<input type="hidden" name="action" value='Save'>
<input type="hidden" name="duplicate_parent_id" value="{$REQUEST.duplicate_parent_id}">
<!--
CL: Bug fix for 9291 and 9427 - parent_id should be parent_type, not the module type (if set)
-->
{if $REQUEST.parent_id}
	<input type="hidden" name="parent_id" value="{$REQUEST.parent_id}">
{else}
	<input type="hidden" name="parent_id" value="{$REQUEST.return_id}">
{/if}	
{if $REQUEST.parent_type}
	<input type="hidden" name="parent_type" value="{$REQUEST.parent_type}">
{else}
	<input type="hidden" name="parent_type" value="{$REQUEST.return_module}">
{/if}
<input type="hidden" name="parent_name" value="{$REQUEST.parent_name}">

<input type="hidden" name="to_pdf" value='1'>
<input id='assigned_user_id' name='assigned_user_id' type="hidden" value="{$ASSIGNED_USER_ID}" />



<table width="100%" cellpadding="0" cellspacing="0" border="0">
	<tr>
	<td align="left" style="padding-bottom: 2px;">
		<input title="{$APP.LBL_SAVE_BUTTON_TITLE}" accessKey="{$APP.LBL_SAVE_BUTTON_KEY}" class="button" type="submit" name="button" {$saveOnclick|default:"onclick=\"return check_form('SuppliesQuickCreate');\""} value="  {$APP.LBL_SAVE_BUTTON_LABEL}  " >
		<input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" accessKey="{$APP.LBL_CANCEL_BUTTON_KEY}" class="button" type="submit" name="button" {$cancelOnclick|default:"onclick=\"this.form.action.value='$RETURN_ACTION'; this.form.module.value='$RETURN_MODULE'; this.form.record.value='$RETURN_ID'\""} value="  {$APP.LBL_CANCEL_BUTTON_LABEL}  ">
		<input title="{$APP.LBL_FULL_FORM_BUTTON_TITLE}" accessKey="{$APP.LBL_FULL_FORM_BUTTON_KEY}" class="button" type="submit" name="button" onclick="this.form.to_pdf.value='0';this.form.action.value='EditView'; this.form.module.value='Supplies';" value="  {$APP.LBL_FULL_FORM_BUTTON_LABEL}  "></td>
	<td align="right" nowrap><span class="required">{$APP.LBL_REQUIRED_SYMBOL}</span> {$APP.NTC_REQUIRED}</td>
	</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="tabForm">
<tr>
<td>
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
	
    <tr>
	<th align="left" class="dataLabel" colspan="4"><h4 class="dataLabel"><slot>{$MOD.LBL_NEW_FORM_TITLE}</slot></h4></th>
	</tr>
	
    <tr>
	<td valign="top" class="dataLabel"><slot>{$MOD.LBL_SUPPLYNUM} <span class="required">{$APP.LBL_REQUIRED_SYMBOL}</span></slot></td>
	<td><slot><input name='supplynum' type="text" tabindex='1' size='25' maxlength='50'  value=""></slot></td>
	<td class="dataLabel" width="15%"><slot>{$MOD.LBL_DATE} <span class="required">{$APP.LBL_REQUIRED_SYMBOL}</span></slot></td>
	<td width="35%"><slot><input name='delivery_date' onblur="parseDate(this, '{$CALENDAR_DATEFORMAT}');" id='jscal_field' type="text" tabindex='1' size='11' maxlength='10' value=""> <img src="themes/{$THEME}/images/jscalendar.gif" alt="{$APP.LBL_ENTER_DATE}"  id="jscal_trigger" align="absmiddle"><span class="dateFormat">{$USER_DATEFORMAT}</span></slot></td>
	</tr>
	
    <tr>
    <td class="dataLabel"><slot>{$MOD.LBL_SUPPLIER_NAME}</slot></td>
	<td class="dataField"><slot>{$REQUEST.parent_name}<input id='supplier_name' name='supplier_name' type="hidden" value='{$REQUEST.parent_name}'><input id='supplier_id' name='supplier_id' type="hidden" value='{$REQUEST.parent_id}'>&nbsp;</slot></td>
	</tr>
	   
	</table>
</td>
</tr>
</table>
</form>

<script type="text/javascript">
{literal}
Calendar.setup ({
        inputField : "jscal_field", ifFormat : "{/literal}{$CALENDAR_DATEFORMAT}{literal}", showsTime : false, button : "jscal_trigger", singleClick : true, step : 1
});
  {/literal}
	{$additionalScripts}
</script>