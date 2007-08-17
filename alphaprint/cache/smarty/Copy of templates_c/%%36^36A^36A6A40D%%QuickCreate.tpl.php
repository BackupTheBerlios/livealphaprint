<?php /* Smarty version 2.6.11, created on 2007-05-03 10:29:02
         compiled from modules/Prices/tpls/QuickCreate.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'default', 'modules/Prices/tpls/QuickCreate.tpl', 16, false),)), $this); ?>
<form name="pricesQuickCreate" id="pricesQuickCreate" method="POST" action="index.php">
<input type="hidden" name="module" value="Prices">
<input type="hidden" name="return_action" value="<?php echo $this->_tpl_vars['REQUEST']['return_action']; ?>
">
<input type="hidden" name="return_module" value="<?php echo $this->_tpl_vars['REQUEST']['return_module']; ?>
">
<input type="hidden" name="return_id" value="<?php echo $this->_tpl_vars['REQUEST']['return_id']; ?>
">
<input type="hidden" name="action" value='Save'>
<input type="hidden" name="duplicate_parent_id" value="<?php echo $this->_tpl_vars['REQUEST']['duplicate_parent_id']; ?>
">
<input id='assigned_user_id' name='assigned_user_id' type="hidden" value="<?php echo $this->_tpl_vars['ASSIGNED_USER_ID']; ?>
" />
<input type="hidden" name="to_pdf" value='1'>
<input name='currency_id' type='hidden' value='<?php echo $this->_tpl_vars['CURRENCY_ID']; ?>
'>


<table width="100%" cellpadding="0" cellspacing="0" border="0">
	<tr>
	<td align="left" style="padding-bottom: 2px;">
		<input title="<?php echo $this->_tpl_vars['APP']['LBL_SAVE_BUTTON_TITLE']; ?>
" accessKey="<?php echo $this->_tpl_vars['APP']['LBL_SAVE_BUTTON_KEY']; ?>
" class="button" type="submit" name="button" <?php echo ((is_array($_tmp=@$this->_tpl_vars['saveOnclick'])) ? $this->_run_mod_handler('default', true, $_tmp, "onclick=\"return check_form('PricesQuickCreate');\"") : smarty_modifier_default($_tmp, "onclick=\"return check_form('PricesQuickCreate');\"")); ?>
 value="  <?php echo $this->_tpl_vars['APP']['LBL_SAVE_BUTTON_LABEL']; ?>
  " >
		<input title="<?php echo $this->_tpl_vars['APP']['LBL_CANCEL_BUTTON_TITLE']; ?>
" accessKey="<?php echo $this->_tpl_vars['APP']['LBL_CANCEL_BUTTON_KEY']; ?>
" class="button" type="submit" name="button" <?php echo ((is_array($_tmp=@$this->_tpl_vars['cancelOnclick'])) ? $this->_run_mod_handler('default', true, $_tmp, "onclick=\"this.form.action.value='".($this->_tpl_vars['RETURN_ACTION'])."'; this.form.module.value='".($this->_tpl_vars['RETURN_MODULE'])."'; this.form.record.value='".($this->_tpl_vars['RETURN_ID'])."'\"") : smarty_modifier_default($_tmp, "onclick=\"this.form.action.value='".($this->_tpl_vars['RETURN_ACTION'])."'; this.form.module.value='".($this->_tpl_vars['RETURN_MODULE'])."'; this.form.record.value='".($this->_tpl_vars['RETURN_ID'])."'\"")); ?>
 value="  <?php echo $this->_tpl_vars['APP']['LBL_CANCEL_BUTTON_LABEL']; ?>
  ">
		<input title="<?php echo $this->_tpl_vars['APP']['LBL_FULL_FORM_BUTTON_TITLE']; ?>
" accessKey="<?php echo $this->_tpl_vars['APP']['LBL_FULL_FORM_BUTTON_KEY']; ?>
" class="button" type="submit" name="button" onclick="this.form.to_pdf.value='0';this.form.action.value='EditView'; this.form.module.value='Prices';" value="  <?php echo $this->_tpl_vars['APP']['LBL_FULL_FORM_BUTTON_LABEL']; ?>
  "></td>
	<td align="right" nowrap><span class="required"><?php echo $this->_tpl_vars['APP']['LBL_REQUIRED_SYMBOL']; ?>
</span> <?php echo $this->_tpl_vars['APP']['NTC_REQUIRED']; ?>
</td>
	</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="tabForm">
<tr>
<td>
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
	<td valign="top" class="dataLabel"><slot><?php echo $this->_tpl_vars['MOD']['LBL_NAME']; ?>
 <span class="required"><?php echo $this->_tpl_vars['APP']['LBL_REQUIRED_SYMBOL']; ?>
</span></slot></td>
	<td class="dataField"><slot><?php echo $this->_tpl_vars['REQUEST']['parent_name']; ?>

          <input id='name' name='name' type="hidden" value='<?php echo $this->_tpl_vars['REQUEST']['parent_name']; ?>
'>
  <?php if ($this->_tpl_vars['REQUEST']['return_module'] == 'Materials'): ?>
  <input id='material_id' name='material_id' type="hidden" value='<?php echo $this->_tpl_vars['REQUEST']['return_id']; ?>
'>
  <?php else: ?>
  <input id='paper_id' name='paper_id' type="hidden" value='<?php echo $this->_tpl_vars['REQUEST']['return_id']; ?>
'>
  <?php endif; ?> &nbsp;</slot></td>
	<td valign="top" class="dataLabel"><slot><?php echo $this->_tpl_vars['MOD']['LBL_DUE_DATE']; ?>
</slot></td>
	<td class="dataField"><slot><input name='due_date' onblur="parseDate(this, '<?php echo $this->_tpl_vars['CALENDAR_DATEFORMAT']; ?>
');" id='jscal_field' type="text" tabindex='1' size='11' maxlength='10' value=""> <img src="themes/<?php echo $this->_tpl_vars['THEME']; ?>
/images/jscalendar.gif" alt="<?php echo $this->_tpl_vars['APP']['LBL_ENTER_DATE']; ?>
"  id="jscal_trigger" align="absmiddle"> <span class="dateFormat"><?php echo $this->_tpl_vars['USER_DATEFORMAT']; ?>
</span></slot></td>
	</tr>
	
	    
		
	<tr>
	  <td class="dataLabel"><slot><?php echo $this->_tpl_vars['MOD']['LBL_SUPPLIER_NAME']; ?>
</slot></td>
	  <td><slot>
	    <input type=text size="25"  value=""  readonly name='supplier_name' >
	    <input type=hidden  name='supplier_id' value""/>
	    <input	title="<?php echo $this->_tpl_vars['APP']['LBL_SELECT_BUTTON_TITLE']; ?>
"
	accessKey="<?php echo $this->_tpl_vars['APP']['LBL_SELECT_BUTTON_KEY']; ?>
" type="button" class="button"
	value="<?php echo $this->_tpl_vars['APP']['LBL_SELECT_BUTTON_LABEL']; ?>
" name="change_parent" tabindex="2"
	onclick='return window.open("index.php?module=Suppliers&action=Popup&html=supplier&form=form&form_submit=false&index=0","test","width=600,height=400,resizable=1,scrollbars=1");'
	/>
      
	    </slot></td>
	  <td valign="top" class="dataLabel"><slot><?php echo $this->_tpl_vars['MOD']['LBL_ISVALID']; ?>
 </slot></td>
	  <td><slot>
        <select tabindex='1' name='isvalid'>
          
          
	      <?php echo $this->_tpl_vars['ISVALID_OPTIONS']; ?>

	      
        
        </select>
      </slot></td>
	</tr>
	<tr>
	  <td valign="top" class="dataLabel"><slot><?php echo $this->_tpl_vars['MOD']['LBL_PRICE']; ?>
</slot></td>
	  <td><slot>
        <input name="price" tabindex="1" size="15" maxlength="50" type="text" value="">
      </slot></td>
	  <td valign="top" class="dataLabel">&nbsp;</td>
	  <td>&nbsp;</td>
	</tr>
	<tr>
	<td valign="top" class="dataLabel"><slot><?php echo $this->_tpl_vars['MOD']['LBL_DESCRIPTION']; ?>
</slot></td>
	<td><slot>
	  <textarea name='description' tabindex='3' cols="50" rows="4"><?php echo $this->_tpl_vars['DESCRIPTION']; ?>
</textarea>
	  </slot></td>
	<td>&nbsp;</td>
	<td>&nbsp;</td>
	</tr>
	</table>
	</form>
	
<script>
<?php echo '
	Calendar.setup ({
		inputField : "jscal_field", ifFormat : "';  echo $this->_tpl_vars['CALENDAR_DATEFORMAT'];  echo '", showsTime : false, button : "jscal_trigger", singleClick : true, step : 1
	});
	'; ?>


	<?php echo $this->_tpl_vars['additionalScripts']; ?>

</script>
