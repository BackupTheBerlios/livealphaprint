<?php /* Smarty version 2.6.11, created on 2007-08-10 15:42:52
         compiled from modules/Administration/Locale.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'html_options', 'modules/Administration/Locale.tpl', 82, false),)), $this); ?>


<script type="text/javascript">
	var ERR_NO_SINGLE_QUOTE = '<?php echo $this->_tpl_vars['APP']['ERR_NO_SINGLE_QUOTE']; ?>
';
<?php echo '
	function verify_data(formName) {
		var f = document.getElementById(formName);
		
		for(i=0; i<f.elements.length; i++) {
			if(f.elements[i].value == "\'") {
				alert(ERR_NO_SINGLE_QUOTE + " " + f.elements[i].name);
				return false;
			}
		}
		
		return true;
	}
</script>
'; ?>


<BR>
<form id="ConfigureSettings" name="ConfigureSettings" enctype='multipart/form-data' method="POST" 
	action="index.php?module=Administration&action=Locale&process=true">

<span class='error'><?php echo $this->_tpl_vars['error']['main']; ?>
</span>

<table width="100%" cellpadding="0" cellspacing="0" border="0">
<tr>
	<td style="padding-bottom: 2px;">
		<input title="<?php echo $this->_tpl_vars['APP']['LBL_SAVE_BUTTON_TITLE']; ?>
" 
			accessKey="<?php echo $this->_tpl_vars['APP']['LBL_SAVE_BUTTON_KEY']; ?>
" 
			class="button"  
			type="submit" 
			name="save" 
			onclick="return verify_data('ConfigureSettings');"
			value="  <?php echo $this->_tpl_vars['APP']['LBL_SAVE_BUTTON_LABEL']; ?>
  " >
		&nbsp;<input title="<?php echo $this->_tpl_vars['MOD']['LBL_CANCEL_BUTTON_TITLE']; ?>
"  onclick="document.location.href='index.php?module=Administration&action=index'" class="button"  type="button" name="cancel" value="  <?php echo $this->_tpl_vars['APP']['LBL_CANCEL_BUTTON_LABEL']; ?>
  " > </td>	
	</tr>
</table>

<br>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td>

<table width="100%" border="0" cellspacing="0" cellpadding="0" class="tabForm">
	<tr><th align="left" class="dataLabel" colspan="4"><h4 class="dataLabel"><?php echo $this->_tpl_vars['MOD']['LBL_LOCALE_DEFAULT_SYSTEM_SETTINGS']; ?>
</h4></th>
	</tr><tr>
<td>
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td  class="dataLabel" width="200"><?php echo $this->_tpl_vars['MOD']['LBL_LOCALE_DEFAULT_DATE_FORMAT']; ?>
: </td>
		<td  class="dataField">
			<?php echo smarty_function_html_options(array('name' => 'default_date_format','selected' => $this->_tpl_vars['config']['default_date_format'],'options' => $this->_tpl_vars['config']['date_formats']), $this);?>

		</td>
		<td  class="dataLabel" width="200"><?php echo $this->_tpl_vars['MOD']['LBL_LOCALE_DEFAULT_TIME_FORMAT']; ?>
: </td>
		<td  class="dataField">
			<?php echo smarty_function_html_options(array('name' => 'default_time_format','selected' => $this->_tpl_vars['config']['default_time_format'],'options' => $this->_tpl_vars['config']['time_formats']), $this);?>

		</td>
	</tr><tr>
		<td  class="dataLabel"><?php echo $this->_tpl_vars['MOD']['LBL_LOCALE_DEFAULT_LANGUAGE']; ?>
: </td>
		<td  class="dataField">
			<?php echo smarty_function_html_options(array('name' => 'default_language','selected' => $this->_tpl_vars['config']['default_language'],'options' => $this->_tpl_vars['LANGUAGES']), $this);?>

		</td>
	</tr>
	</tr><tr>
		<td  class="dataLabel" valign="top"><?php echo $this->_tpl_vars['MOD']['LBL_LOCALE_DEFAULT_NAME_FORMAT']; ?>
: </td>
		<td  class="dataField">
			<input onkeyup="setPreview();" onkeydown="setPreview();" id="default_locale_name_format" type="text" name="default_locale_name_format" value="<?php echo $this->_tpl_vars['config']['default_locale_name_format']; ?>
">
			<br>
			<?php echo $this->_tpl_vars['MOD']['LBL_LOCALE_NAME_FORMAT_DESC']; ?>

		</td>
		<td  class="dataLabel" valign="top"><?php echo $this->_tpl_vars['MOD']['LBL_LOCALE_EXAMPLE_NAME_FORMAT']; ?>
: </td>
		<td  class="dataField" valign="top"><input name="no_value" id="nameTarget" value="" disabled></td>		
	</tr>

	</table>
</td></tr>
</table>

<br />

<table width="100%" border="0" cellspacing="0" cellpadding="0" class="tabForm">
	<tr>
		<th align="left" class="dataLabel" colspan="4"><h4 class="dataLabel"><?php echo $this->_tpl_vars['MOD']['LBL_LOCALE_DEFAULT_CURRENCY']; ?>
</h4></th>
	</tr><tr>
<td>
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td  class="dataLabel" width="200"><?php echo $this->_tpl_vars['MOD']['LBL_LOCALE_DEFAULT_CURRENCY_NAME']; ?>
: </td>
		<td  class="dataField">
			<input type='text' size='25' name='default_currency_name' value='<?php echo $this->_tpl_vars['config']['default_currency_name']; ?>
'
		</td>
		<td  class="dataLabel" width="200"><?php echo $this->_tpl_vars['MOD']['LBL_LOCALE_DEFAULT_CURRENCY_SYMBOL']; ?>
: </td>
		<td  class="dataField">
			<input type='text' size='4' name='default_currency_symbol'  value='<?php echo $this->_tpl_vars['config']['default_currency_symbol']; ?>
' >
		</td>
	</tr><tr>
		<td  class="dataLabel" width="200"><?php echo $this->_tpl_vars['MOD']['LBL_LOCALE_DEFAULT_CURRENCY_ISO4217']; ?>
: </td>
		<td  class="dataField">
			<input type='text' size='4' name='default_currency_iso4217' value='<?php echo $this->_tpl_vars['config']['default_currency_iso4217']; ?>
'>
		</td>
		<td  class="dataLabel"><?php echo $this->_tpl_vars['MOD']['LBL_LOCALE_DEFAULT_NUMBER_GROUPING_SEP']; ?>
: </td>
		<td  class="dataField">
			<input type='text' size='3' maxlength='1' name='default_number_grouping_seperator' value='<?php echo $this->_tpl_vars['config']['default_number_grouping_seperator']; ?>
'>
		</td>
	</tr><tr>
		<td  class="dataLabel"><?php echo $this->_tpl_vars['MOD']['LBL_LOCALE_DEFAULT_DECIMAL_SEP']; ?>
: </td>
		<td  class="dataField">
			<input type='text' size='3' maxlength='1' name='default_decimal_seperator'  value='<?php echo $this->_tpl_vars['config']['default_decimal_seperator']; ?>
'>
		</td>
		<td  class="dataLabel"></td>
		<td  class="dataField"></td>		
	</tr>
</table>
</td></tr>
</table>

<br />

<div style="padding-top: 2px;">
<input title="<?php echo $this->_tpl_vars['APP']['LBL_SAVE_BUTTON_TITLE']; ?>
" class="button"  type="submit" name="save" value="  <?php echo $this->_tpl_vars['APP']['LBL_SAVE_BUTTON_LABEL']; ?>
  " />
		&nbsp;<input title="<?php echo $this->_tpl_vars['MOD']['LBL_CANCEL_BUTTON_TITLE']; ?>
"  onclick="document.location.href='index.php?module=Administration&action=index'" class="button"  type="button" name="cancel" value="  <?php echo $this->_tpl_vars['APP']['LBL_CANCEL_BUTTON_LABEL']; ?>
  " />
</div>
<?php echo $this->_tpl_vars['JAVASCRIPT']; ?>

</form>

<script language="Javascript" type="text/javascript">
<?php echo $this->_tpl_vars['getNameJs']; ?>

</script>