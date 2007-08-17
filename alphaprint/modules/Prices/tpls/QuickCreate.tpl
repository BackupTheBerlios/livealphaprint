<form name="pricesQuickCreate" id="pricesQuickCreate" method="POST" action="index.php">
<input type="hidden" name="module" value="Prices">
<input type="hidden" name="return_action" value="{$REQUEST.return_action}">
<input type="hidden" name="return_module" value="{$REQUEST.return_module}">
<input type="hidden" name="return_id" value="{$REQUEST.return_id}">
<input type="hidden" name="action" value='Save'>
<input type="hidden" name="duplicate_parent_id" value="{$REQUEST.duplicate_parent_id}">
<input id='assigned_user_id' name='assigned_user_id' type="hidden" value="{$ASSIGNED_USER_ID}" />
<input type="hidden" name="to_pdf" value='1'>
<input name='currency_id' type='hidden' value='{$CURRENCY_ID}'>


<table width="100%" cellpadding="0" cellspacing="0" border="0">
	<tr>
	<td align="left" style="padding-bottom: 2px;">
		<input title="{$APP.LBL_SAVE_BUTTON_TITLE}" accessKey="{$APP.LBL_SAVE_BUTTON_KEY}" class="button" type="submit" name="button" {$saveOnclick|default:"onclick=\"return check_form('PricesQuickCreate');\""} value="  {$APP.LBL_SAVE_BUTTON_LABEL}  " >
		<input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" accessKey="{$APP.LBL_CANCEL_BUTTON_KEY}" class="button" type="submit" name="button" {$cancelOnclick|default:"onclick=\"this.form.action.value='$RETURN_ACTION'; this.form.module.value='$RETURN_MODULE'; this.form.record.value='$RETURN_ID'\""} value="  {$APP.LBL_CANCEL_BUTTON_LABEL}  ">
		<input title="{$APP.LBL_FULL_FORM_BUTTON_TITLE}" accessKey="{$APP.LBL_FULL_FORM_BUTTON_KEY}" class="button" type="submit" name="button" onclick="this.form.to_pdf.value='0';this.form.action.value='EditView'; this.form.module.value='Prices';" value="  {$APP.LBL_FULL_FORM_BUTTON_LABEL}  "></td>
	<td align="right" nowrap><span class="required">{$APP.LBL_REQUIRED_SYMBOL}</span> {$APP.NTC_REQUIRED}</td>
	</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="tabForm">
<tr>
<td>
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
	<td valign="top" class="dataLabel"><slot>{$MOD.LBL_NAME} <span class="required">{$APP.LBL_REQUIRED_SYMBOL}</span></slot></td>
	<td class="dataField"><slot>{$REQUEST.parent_name}
          <input id='name' name='name' type="hidden" value='{$REQUEST.parent_name}'>
  {if $REQUEST.return_module == 'Materials'}
  <input id='material_id' name='material_id' type="hidden" value='{$REQUEST.return_id}'>
  {else}
  <input id='paper_id' name='paper_id' type="hidden" value='{$REQUEST.return_id}'>
  {/if} &nbsp;</slot></td>
	<td valign="top" class="dataLabel"><slot>{$MOD.LBL_DUE_DATE}</slot></td>
	<td class="dataField"><slot><input name='due_date' onblur="parseDate(this, '{$CALENDAR_DATEFORMAT}');" id='jscal_field' type="text" tabindex='1' size='11' maxlength='10' value=""> <img src="themes/{$THEME}/images/jscalendar.gif" alt="{$APP.LBL_ENTER_DATE}"  id="jscal_trigger" align="absmiddle"> <span class="dateFormat">{$USER_DATEFORMAT}</span></slot></td>
	</tr>
	
	    
		
	<tr>
	  <td class="dataLabel"><slot>{$MOD.LBL_SUPPLIER_NAME}</slot></td>
	  <td><slot>
	    <input type=text size="25"  value=""  readonly name='supplier_name' >
	    <input type=hidden  name='supplier_id' value""/>
	    <input	title="{$APP.LBL_SELECT_BUTTON_TITLE}"
	accessKey="{$APP.LBL_SELECT_BUTTON_KEY}" type="button" class="button"
	value="{$APP.LBL_SELECT_BUTTON_LABEL}" name="change_parent" tabindex="2"
	onclick='return window.open("index.php?module=Suppliers&action=Popup&html=supplier&form=form&form_submit=false&index=0","test","width=600,height=400,resizable=1,scrollbars=1");'
	/>
      
	    </slot></td>
	  <td valign="top" class="dataLabel"><slot>{$MOD.LBL_ISVALID} </slot></td>
	  <td><slot>
        <select tabindex='1' name='isvalid'>
          
          
	      {$ISVALID_OPTIONS}
	      
        
        </select>
      </slot></td>
	</tr>
	<tr>
	  <td valign="top" class="dataLabel"><slot>{$MOD.LBL_PRICE}</slot></td>
	  <td><slot>
        <input name="price" tabindex="1" size="15" maxlength="50" type="text" value="">
      </slot></td>
	  <td valign="top" class="dataLabel">&nbsp;</td>
	  <td>&nbsp;</td>
	</tr>
	<tr>
	<td valign="top" class="dataLabel"><slot>{$MOD.LBL_DESCRIPTION}</slot></td>
	<td><slot>
	  <textarea name='description' tabindex='3' cols="50" rows="4">{$DESCRIPTION}</textarea>
	  </slot></td>
	<td>&nbsp;</td>
	<td>&nbsp;</td>
	</tr>
	</table>
	</form>
	
<script>
{literal}
	Calendar.setup ({
		inputField : "jscal_field", ifFormat : "{/literal}{$CALENDAR_DATEFORMAT}{literal}", showsTime : false, button : "jscal_trigger", singleClick : true, step : 1
	});
	{/literal}

	{$additionalScripts}
</script>

