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
*}

<!-- BEGIN: main -->   
<BR>
<form id="CompanyInfo" name="CompanyInfo" enctype='multipart/form-data' method="POST" 
    action="index.php?module=Administration&action=CompanyInfo&process=true">

<span class='error'>{$error.main}</span>

<table width="100%" cellpadding="0" cellspacing="0" border="0">
<tr>
    <td style="padding-bottom: 2px;">
        <input title="{$APP.LBL_SAVE_BUTTON_TITLE}" 
            accessKey="{$APP.LBL_SAVE_BUTTON_KEY}" 
            class="button"  
            type="submit" 
            name="save" 
            onclick="return verify_data('ConfigureSettings');"
            value="  {$APP.LBL_SAVE_BUTTON_LABEL}  " >
        &nbsp;<input title="{$MOD.LBL_CANCEL_BUTTON_TITLE}"  onclick="document.location.href='index.php?module=Administration&action=index'" class="button"  type="button" name="cancel" value="  {$APP.LBL_CANCEL_BUTTON_LABEL}  " > </td>    
    </tr>
</table>

<br>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
        <td>

<table width="100%" border="0" cellspacing="0" cellpadding="0" class="tabForm">
    <tr><th align="left" class="dataLabel" colspan="4"><h4 class="dataLabel">{$MOD.LBL_LOGO}</h4></th>
    </tr><tr>
<td>
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
    
        <td  class="dataLabel" nowrap>{$MOD.LBL_CURRENT_LOGO}: </td>
        <td  class="dataField">
            <img src='include/images/company_logo.png' height="40" width="212">
        </td>
     </tr>
     <tr>
    
        <td  class="dataLabel" nowrap>{$MOD.LBL_NEW_LOGO}: </td>
        <td  class="dataField">
            <input type='file' name='logo' value='{$logo}'>
        </td>
        
    </tr>
    
  <tr><td><br></td></tr>

    
</td></tr>


<br />



 <tr>
    <th align="left" class="dataLabel" colspan="2"><h4 class="dataLabel">{$MOD.LBL_ADDRESS}</h4></th>
 </tr>
 
 <tr>
    <td  class="dataLabel" width="200">{$MOD.LBL_ADDRESS_COUNTRY}: </td>
    <td  class="dataField">
        <input type='text' size='25' name='country' value='{$CI.country}'</td>
 </tr>
 
 <tr>    
    <td  class="dataLabel" width="200">{$MOD.LBL_ADDRESS_CITY}: </td>
    <td  class="dataField">
        <input type='text' size='25' name='city' value='{$CI.city}'</td>
 </tr>
 
 <tr>    
    <td  class="dataLabel" width="200">{$MOD.LBL_ADDRESS_STATE}: </td>
    <td  class="dataField">
        <input type='text' size='25' name='state' value='{$CI.state}'</td>
 </tr>
 <tr>    
    <td  class="dataLabel" width="200">{$MOD.LBL_ADDRESS_STREET}: </td>
    <td  class="dataField">
        <input type='text' size='25' name='street' value='{$CI.street}'</td>
 </tr>
 <tr><td><br></td></tr>
 <tr>         
 <th align="left" class="dataLabel" colspan="2"><h4 class="dataLabel">{$MOD.LBL_OTHER}</h4></th>
 </tr>
 <tr>    
    <td  class="dataLabel" width="200">{$MOD.LBL_PHONE}: </td>
    <td  class="dataField">
        <input type='text' size='25' name='phone' value='{$CI.phone}'</td>
 </tr>
 <tr>    
    <td  class="dataLabel" width="200">{$MOD.LBL_FAX}: </td>
    <td  class="dataField">
        <input type='text' size='25' name='fax' value='{$CI.fax}'</td>
 </tr>
 <tr>    
    <td  class="dataLabel" width="200">{$MOD.LBL_WWW}: </td>
    <td  class="dataField">
        <input type='text' size='25' name='web' value='{$CI.web}'</td>
 </tr>
 <tr>    
    <td  class="dataLabel" width="200">{$MOD.LBL_EMAIL}: </td>
    <td  class="dataField">
        <input type='text' size='25' name='email' value='{$CI.email}'</td>
 </tr>
</table>

<br />

<div style="padding-top: 2px;">
<input title="{$APP.LBL_SAVE_BUTTON_TITLE}" class="button"  type="submit" name="save" value="  {$APP.LBL_SAVE_BUTTON_LABEL}  " onclick="document.location.href='index.php?module=Administration&action=index'" />
        &nbsp;<input title="{$MOD.LBL_CANCEL_BUTTON_TITLE}"  onclick="document.location.href='index.php?module=Administration&action=index'" class="button"  type="button" name="cancel" value="  {$APP.LBL_CANCEL_BUTTON_LABEL}  " />
</div>
{$JAVASCRIPT}
</form>

<script language="Javascript" type="text/javascript">
{$getNameJs}
</script>
<!-- END: main -->  