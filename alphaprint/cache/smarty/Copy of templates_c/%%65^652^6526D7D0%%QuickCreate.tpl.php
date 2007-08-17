<?php /* Smarty version 2.6.11, created on 2007-04-26 10:17:00
         compiled from modules/ProductOperations/tpls/QuickCreate.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'default', 'modules/ProductOperations/tpls/QuickCreate.tpl', 15, false),)), $this); ?>
<form name="productoperationsQuickCreate" id="productoperationsQuickCreate" method="POST" action="index.php">
<input type="hidden" name="module" value="ProductOperations">
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



<table width="100%" cellpadding="0" cellspacing="0" border="0">
	<tr>
	<td align="left" style="padding-bottom: 2px;">
		<input title="<?php echo $this->_tpl_vars['APP']['LBL_SAVE_BUTTON_TITLE']; ?>
" accessKey="<?php echo $this->_tpl_vars['APP']['LBL_SAVE_BUTTON_KEY']; ?>
" class="button" type="submit" name="button" <?php echo ((is_array($_tmp=@$this->_tpl_vars['saveOnclick'])) ? $this->_run_mod_handler('default', true, $_tmp, "onclick=\"return check_form('productoperationsQuickCreate');\"") : smarty_modifier_default($_tmp, "onclick=\"return check_form('productoperationsQuickCreate');\"")); ?>
 value="  <?php echo $this->_tpl_vars['APP']['LBL_SAVE_BUTTON_LABEL']; ?>
  " >
		<input title="<?php echo $this->_tpl_vars['APP']['LBL_CANCEL_BUTTON_TITLE']; ?>
" accessKey="<?php echo $this->_tpl_vars['APP']['LBL_CANCEL_BUTTON_KEY']; ?>
" class="button" type="submit" name="button" <?php echo ((is_array($_tmp=@$this->_tpl_vars['cancelOnclick'])) ? $this->_run_mod_handler('default', true, $_tmp, "onclick=\"this.form.action.value='".($this->_tpl_vars['RETURN_ACTION'])."'; this.form.module.value='".($this->_tpl_vars['RETURN_MODULE'])."'; this.form.record.value='".($this->_tpl_vars['RETURN_ID'])."'\"") : smarty_modifier_default($_tmp, "onclick=\"this.form.action.value='".($this->_tpl_vars['RETURN_ACTION'])."'; this.form.module.value='".($this->_tpl_vars['RETURN_MODULE'])."'; this.form.record.value='".($this->_tpl_vars['RETURN_ID'])."'\"")); ?>
 value="  <?php echo $this->_tpl_vars['APP']['LBL_CANCEL_BUTTON_LABEL']; ?>
  ">
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
	<td><slot>
	  <span class="dataField">
	  <input id="name" name='name' type="text" value="">
	  </span>	  </slot></td>
	<td valign="top" class="dataLabel"><slot><?php echo $this->_tpl_vars['MOD']['LBL_MACHINE_NAME']; ?>
 <span class="required"><?php echo $this->_tpl_vars['APP']['LBL_REQUIRED_SYMBOL']; ?>
</span></slot></td>
	<td class="dataField"><slot>
	  <input id="machine_name" name='machine_name' type="text" value="">
      <input name='machine_id' id="machine_id" type="hidden" value="" />
    &nbsp;
      <input tabindex='1' title="<?php echo $this->_tpl_vars['APP']['LBL_SELECT_BUTTON_TITLE']; ?>
" accessKey="<?php echo $this->_tpl_vars['APP']['LBL_SELECT_BUTTON_KEY']; ?>
" type="button" class="button" value='<?php echo $this->_tpl_vars['APP']['LBL_SELECT_BUTTON_LABEL']; ?>
' name="btn1"
			onclick='open_popup("Machines", 600, 400, "", true, false, <?php echo $this->_tpl_vars['encoded_machine_popup_request_data']; ?>
, "", true);' />
	  </slot></td>
	</tr>
	<tr>
	  <td valign="top" class="dataLabel"><slot>
  <?php if ($this->_tpl_vars['REQUEST']['return_module'] == 'Products'): ?>
  <span class="dataLabel"><?php echo $this->_tpl_vars['MOD']['LBL_PRODUCT_NAME_SUBPANEL']; ?>
 <span class="required"><?php echo $this->_tpl_vars['APP']['LBL_REQUIRED_SYMBOL']; ?>
</span></span>
  <?php else: ?>
  <span class="dataLabel"><?php echo $this->_tpl_vars['MOD']['LBL_COMPONENT_NAME']; ?>
 <span class="required"><?php echo $this->_tpl_vars['APP']['LBL_REQUIRED_SYMBOL']; ?>
</span></span>
  <?php endif; ?>
  </slot></td>
	  <td class="dataField"><slot><?php echo $this->_tpl_vars['REQUEST']['parent_name']; ?>

  <?php if ($this->_tpl_vars['REQUEST']['return_module'] == 'Products'): ?>
  <input id='product_id' name='product_id' type="hidden" value='<?php echo $this->_tpl_vars['REQUEST']['return_id']; ?>
'>
  <input id='product_name' name='product_name' type="hidden" value='<?php echo $this->_tpl_vars['REQUEST']['parent_name']; ?>
'>
  <?php else: ?>
  <input id='component_id' name='component_id' type="hidden" value='<?php echo $this->_tpl_vars['REQUEST']['return_id']; ?>
'>
  <input id='component_name' name='component_name' type="hidden" value='<?php echo $this->_tpl_vars['REQUEST']['parent_name']; ?>
'>
  <input id='product_id' name='product_id'  type="hidden" value='<?php echo $this->_tpl_vars['product_id_value']; ?>
'>
  <?php endif; ?> &nbsp;</slot></td>
	  <td valign="top" class="dataLabel"><slot><?php echo $this->_tpl_vars['MOD']['LBL_OPERATION_NAME']; ?>
 <span class="required"><?php echo $this->_tpl_vars['APP']['LBL_REQUIRED_SYMBOL']; ?>
</span></slot></td>
	  <td class="dataField"><slot>
        <input id="operation_name" name='operation_name' type="text" value="">
        <input name='operation_id' id="operation_id" type="hidden" value="" />
&nbsp;
  <input tabindex='1' title="<?php echo $this->_tpl_vars['APP']['LBL_SELECT_BUTTON_TITLE']; ?>
" accessKey="<?php echo $this->_tpl_vars['APP']['LBL_SELECT_BUTTON_KEY']; ?>
" type="button" class="button" value='<?php echo $this->_tpl_vars['APP']['LBL_SELECT_BUTTON_LABEL']; ?>
' name="btn1"
			onclick='open_popup("Operations", 600, 400, "", true, false, <?php echo $this->_tpl_vars['encoded_operations_popup_request_data']; ?>
, "", true);' />
      </slot></td>
	</tr>
	<tr>
	  <td valign="top" class="dataLabel"><slot><?php echo $this->_tpl_vars['MOD']['LBL_OPERATIONS_COUNT']; ?>
</slot></td>
	  <td><slot> <span class="dataField">
        <input id="operations_count" name='operations_count' type="text" value="">
      </span> </slot></td>
	  <td valign="top" class="dataLabel">&nbsp;</td>
	  <td>&nbsp;</td>
	  </tr>
	<tr>
	  <td valign="top" class="dataLabel"><slot><?php echo $this->_tpl_vars['MOD']['LBL_EST_PRICE']; ?>
</slot></td>
	  <td><slot> <span class="dataField">
        <input id="est_price" name='est_price' type="text" value="">
      </span> </slot></td>
	  <td valign="top" class="dataLabel"><slot><?php echo $this->_tpl_vars['MOD']['LBL_EST_DATE']; ?>
</slot></td>
	  <td class="dataField"><slot>
	    <input name='est_date' onblur="parseDate(this, '<?php echo $this->_tpl_vars['CALENDAR_DATEFORMAT']; ?>
');" id='jscal_field' type="text" tabindex='1' size='11' maxlength='10' value="">
        <img src="themes/<?php echo $this->_tpl_vars['THEME']; ?>
/images/jscalendar.gif" alt="<?php echo $this->_tpl_vars['APP']['LBL_ENTER_DATE']; ?>
"  id="jscal_trigger" align="absmiddle"> <span class="dateFormat"><?php echo $this->_tpl_vars['USER_DATEFORMAT']; ?>
</span></slot></td>
	</tr>
	<tr>
	  <td valign="top" class="dataLabel"><slot><?php echo $this->_tpl_vars['MOD']['LBL_EXECUTOR']; ?>
</slot></td>
	  <td><slot> <span class="dataField">
        <input id="executor" name='executor' type="text" value="">
      </span> </slot></td>
	  <td valign="top" class="dataLabel"><slot><?php echo $this->_tpl_vars['MOD']['LBL_EXECUTION_DATE']; ?>
</slot></td>
	  <td class="dataField"><slot>
        <input name='execution_date' onblur="parseDate(this, '<?php echo $this->_tpl_vars['CALENDAR_DATEFORMAT']; ?>
');" id='jscal_field2' type="text" tabindex='1' size='11' maxlength='10' value="">
        <img src="themes/<?php echo $this->_tpl_vars['THEME']; ?>
/images/jscalendar.gif" alt="<?php echo $this->_tpl_vars['APP']['LBL_ENTER_DATE']; ?>
"  id="jscal_trigger2" align="absmiddle"> <span class="dateFormat"><?php echo $this->_tpl_vars['USER_DATEFORMAT']; ?>
</span></slot></td>
	</tr>
	<tr>
	<td valign="top" class="dataLabel"><slot><?php echo $this->_tpl_vars['MOD']['LBL_DESCRIPTION']; ?>
</slot></td>
	<td><slot>
	  <textarea name='description' tabindex='3' cols="50" rows="4"><?php echo $this->_tpl_vars['DESCRIPTION']; ?>
</textarea>
	  </slot></td>
	<td valign="top" class="dataLabel">&nbsp;</td>
	<td>&nbsp;</td>
	</tr>
	</table>
	</form>
<script>
<?php echo '
	Calendar.setup ({
		inputField : "jscal_field",  ifFormat : "';  echo $this->_tpl_vars['CALENDAR_DATEFORMAT'];  echo '", showsTime : false, button : "jscal_trigger", singleClick : true, step : 1		
	});
	'; ?>

<?php echo '
	Calendar.setup ({
		inputField : "jscal_field2",  ifFormat : "';  echo $this->_tpl_vars['CALENDAR_DATEFORMAT'];  echo '", showsTime : false, button : "jscal_trigger2", singleClick : true, step : 1
	});
	'; ?>

	<?php echo $this->_tpl_vars['additionalScripts']; ?>

</script>