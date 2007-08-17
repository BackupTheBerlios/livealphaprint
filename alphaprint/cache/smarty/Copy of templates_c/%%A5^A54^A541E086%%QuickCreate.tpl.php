<?php /* Smarty version 2.6.11, created on 2007-07-31 15:40:20
         compiled from modules/Quotes/tpls/QuickCreate.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'default', 'modules/Quotes/tpls/QuickCreate.tpl', 68, false),)), $this); ?>


<form name="quotesQuickCreate" id="quotesQuickCreate" method="POST" action="index.php">
<input type="hidden" name="module" value="Quotes">
<input type="hidden" name="record" value="">

<input type="hidden" name="contact_id" value="<?php echo $this->_tpl_vars['REQUEST']['contact_id']; ?>
">
<input type="hidden" name="contact_name" value="<?php echo $this->_tpl_vars['REQUEST']['contact_name']; ?>
">

<input type="hidden" name="account_id" value="<?php echo $this->_tpl_vars['REQUEST']['account_id']; ?>
">			
<input type="hidden" name="opportunity_id" value="<?php echo $this->_tpl_vars['REQUEST']['opportunity_id']; ?>
">
<input type="hidden" name="acase_id" value="<?php echo $this->_tpl_vars['REQUEST']['acase_id']; ?>
">
<input type="hidden" name="return_action" value="<?php echo $this->_tpl_vars['REQUEST']['return_action']; ?>
">
<input type="hidden" name="return_module" value="<?php echo $this->_tpl_vars['REQUEST']['return_module']; ?>
">
<input type="hidden" name="return_id" value="<?php echo $this->_tpl_vars['REQUEST']['return_id']; ?>
">
<input type="hidden" name="action" value='Save'>
<input type="hidden" name="duplicate_parent_id" value="<?php echo $this->_tpl_vars['REQUEST']['duplicate_parent_id']; ?>
">
<!--
CL: Bug fix for 9291 and 9427 - parent_id should be parent_type, not the module type (if set)
-->
<?php if ($this->_tpl_vars['REQUEST']['parent_id']): ?>
	<input type="hidden" name="parent_id" value="<?php echo $this->_tpl_vars['REQUEST']['parent_id']; ?>
">
<?php else: ?>
	<input type="hidden" name="parent_id" value="<?php echo $this->_tpl_vars['REQUEST']['return_id']; ?>
">
<?php endif; ?>	
<?php if ($this->_tpl_vars['REQUEST']['parent_type']): ?>
	<input type="hidden" name="parent_type" value="<?php echo $this->_tpl_vars['REQUEST']['parent_type']; ?>
">
<?php else: ?>
	<input type="hidden" name="parent_type" value="<?php echo $this->_tpl_vars['REQUEST']['return_module']; ?>
">
<?php endif; ?>
<input type="hidden" name="parent_name" value="<?php echo $this->_tpl_vars['REQUEST']['parent_name']; ?>
">

<input type="hidden" name="to_pdf" value='1'>
<input id='assigned_user_id' name='assigned_user_id' type="hidden" value="<?php echo $this->_tpl_vars['ASSIGNED_USER_ID']; ?>
" />



<table width="100%" cellpadding="0" cellspacing="0" border="0">
	<tr>
	<td align="left" style="padding-bottom: 2px;">
		<input title="<?php echo $this->_tpl_vars['APP']['LBL_SAVE_BUTTON_TITLE']; ?>
" accessKey="<?php echo $this->_tpl_vars['APP']['LBL_SAVE_BUTTON_KEY']; ?>
" class="button" type="submit" name="button" <?php echo ((is_array($_tmp=@$this->_tpl_vars['saveOnclick'])) ? $this->_run_mod_handler('default', true, $_tmp, "onclick=\"return check_form('QuotesQuickCreate');\"") : smarty_modifier_default($_tmp, "onclick=\"return check_form('QuotesQuickCreate');\"")); ?>
 value="  <?php echo $this->_tpl_vars['APP']['LBL_SAVE_BUTTON_LABEL']; ?>
  " >
		<input title="<?php echo $this->_tpl_vars['APP']['LBL_CANCEL_BUTTON_TITLE']; ?>
" accessKey="<?php echo $this->_tpl_vars['APP']['LBL_CANCEL_BUTTON_KEY']; ?>
" class="button" type="submit" name="button" <?php echo ((is_array($_tmp=@$this->_tpl_vars['cancelOnclick'])) ? $this->_run_mod_handler('default', true, $_tmp, "onclick=\"this.form.action.value='".($this->_tpl_vars['RETURN_ACTION'])."'; this.form.module.value='".($this->_tpl_vars['RETURN_MODULE'])."'; this.form.record.value='".($this->_tpl_vars['RETURN_ID'])."'\"") : smarty_modifier_default($_tmp, "onclick=\"this.form.action.value='".($this->_tpl_vars['RETURN_ACTION'])."'; this.form.module.value='".($this->_tpl_vars['RETURN_MODULE'])."'; this.form.record.value='".($this->_tpl_vars['RETURN_ID'])."'\"")); ?>
 value="  <?php echo $this->_tpl_vars['APP']['LBL_CANCEL_BUTTON_LABEL']; ?>
  ">
		<input title="<?php echo $this->_tpl_vars['APP']['LBL_FULL_FORM_BUTTON_TITLE']; ?>
" accessKey="<?php echo $this->_tpl_vars['APP']['LBL_FULL_FORM_BUTTON_KEY']; ?>
" class="button" type="submit" name="button" onclick="this.form.to_pdf.value='0';this.form.action.value='EditView'; this.form.module.value='Quotes';" value="  <?php echo $this->_tpl_vars['APP']['LBL_FULL_FORM_BUTTON_LABEL']; ?>
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
	<th align="left" class="dataLabel" colspan="4"><h4 class="dataLabel"><slot><?php echo $this->_tpl_vars['MOD']['LBL_NEW_FORM_TITLE']; ?>
</slot></h4></th>
	</tr>
	
    <tr>
	<td valign="top" class="dataLabel"><slot><?php echo $this->_tpl_vars['MOD']['LBL_NAME']; ?>
 <span class="required"><?php echo $this->_tpl_vars['APP']['LBL_REQUIRED_SYMBOL']; ?>
</span></slot></td>
	<td><slot><input name='name' type="text" tabindex='1' size='25' maxlength='50'  value=""></slot></td>
	<td class="dataLabel" width="15%"><slot><?php echo $this->_tpl_vars['MOD']['LBL_STAGE']; ?>
 <span class="required"><?php echo $this->_tpl_vars['APP']['LBL_REQUIRED_SYMBOL']; ?>
</span></slot></td>
	<td width="35%"><slot><select tabindex='2' name='status'><?php echo $this->_tpl_vars['STAGE_OPTIONS']; ?>
</select></slot></td>
	</tr>
	
    <tr>
    <td valign="top" class="dataLabel" rowspan="2"><slot><?php echo $this->_tpl_vars['MOD']['LBL_QUOTENUM']; ?>
<span class="required"><?php echo $this->_tpl_vars['APP']['LBL_REQUIRED_SYMBOL']; ?>
</span></slot></td>
	<td rowspan="2"><slot><input name='quotenum' type="text" tabindex='1' size='25' maxlength='50'  value=""></slot></td>
	<td class="dataLabel"><slot><?php echo $this->_tpl_vars['MOD']['LBL_ACCOUNT_NAME']; ?>
</slot></td>
	<td class="dataField"><slot><?php echo $this->_tpl_vars['REQUEST']['parent_name']; ?>
<input id='account_name' name='account_name' type="hidden" value='<?php echo $this->_tpl_vars['REQUEST']['parent_name']; ?>
'><input id='account_id' name='account_id' type="hidden" value='<?php echo $this->_tpl_vars['REQUEST']['parent_id']; ?>
'>&nbsp;</slot></td>
	</tr>
	   
	</table>
</td>
</tr>
</table>
</form>
<script type="text/javascript">
	<?php echo $this->_tpl_vars['additionalScripts']; ?>

</script>