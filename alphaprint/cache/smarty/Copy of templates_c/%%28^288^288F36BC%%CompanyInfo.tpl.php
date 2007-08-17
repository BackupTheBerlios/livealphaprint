<?php /* Smarty version 2.6.11, created on 2007-06-22 14:39:36
         compiled from modules/Administration/CompanyInfo.tpl */ ?>

<!-- BEGIN: main -->   
<BR>
<form id="CompanyInfo" name="CompanyInfo" enctype='multipart/form-data' method="POST" 
    action="index.php?module=Administration&action=CompanyInfo&process=true">

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
    <tr><th align="left" class="dataLabel" colspan="4"><h4 class="dataLabel"><?php echo $this->_tpl_vars['MOD']['LBL_LOGO']; ?>
</h4></th>
    </tr><tr>
<td>
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
    
        <td  class="dataLabel" nowrap><?php echo $this->_tpl_vars['MOD']['LBL_CURRENT_LOGO']; ?>
: </td>
        <td  class="dataField">
            <img src='include/images/company_logo.png' height="40" width="212">
        </td>
     </tr>
     <tr>
    
        <td  class="dataLabel" nowrap><?php echo $this->_tpl_vars['MOD']['LBL_NEW_LOGO']; ?>
: </td>
        <td  class="dataField">
            <input type='file' name='logo' value='<?php echo $this->_tpl_vars['logo']; ?>
'>
        </td>
        
    </tr>
    
  <tr><td><br></td></tr>

    
</td></tr>


<br />



 <tr>
    <th align="left" class="dataLabel" colspan="2"><h4 class="dataLabel"><?php echo $this->_tpl_vars['MOD']['LBL_ADDRESS']; ?>
</h4></th>
 </tr>
 
 <tr>
    <td  class="dataLabel" width="200"><?php echo $this->_tpl_vars['MOD']['LBL_ADDRESS_COUNTRY']; ?>
: </td>
    <td  class="dataField">
        <input type='text' size='25' name='country' value='<?php echo $this->_tpl_vars['CI']['country']; ?>
'</td>
 </tr>
 
 <tr>    
    <td  class="dataLabel" width="200"><?php echo $this->_tpl_vars['MOD']['LBL_ADDRESS_CITY']; ?>
: </td>
    <td  class="dataField">
        <input type='text' size='25' name='city' value='<?php echo $this->_tpl_vars['CI']['city']; ?>
'</td>
 </tr>
 
 <tr>    
    <td  class="dataLabel" width="200"><?php echo $this->_tpl_vars['MOD']['LBL_ADDRESS_STATE']; ?>
: </td>
    <td  class="dataField">
        <input type='text' size='25' name='state' value='<?php echo $this->_tpl_vars['CI']['state']; ?>
'</td>
 </tr>
 <tr>    
    <td  class="dataLabel" width="200"><?php echo $this->_tpl_vars['MOD']['LBL_ADDRESS_STREET']; ?>
: </td>
    <td  class="dataField">
        <input type='text' size='25' name='street' value='<?php echo $this->_tpl_vars['CI']['street']; ?>
'</td>
 </tr>
 <tr><td><br></td></tr>
 <tr>         
 <th align="left" class="dataLabel" colspan="2"><h4 class="dataLabel"><?php echo $this->_tpl_vars['MOD']['LBL_OTHER']; ?>
</h4></th>
 </tr>
 <tr>    
    <td  class="dataLabel" width="200"><?php echo $this->_tpl_vars['MOD']['LBL_PHONE']; ?>
: </td>
    <td  class="dataField">
        <input type='text' size='25' name='phone' value='<?php echo $this->_tpl_vars['CI']['phone']; ?>
'</td>
 </tr>
 <tr>    
    <td  class="dataLabel" width="200"><?php echo $this->_tpl_vars['MOD']['LBL_FAX']; ?>
: </td>
    <td  class="dataField">
        <input type='text' size='25' name='fax' value='<?php echo $this->_tpl_vars['CI']['fax']; ?>
'</td>
 </tr>
 <tr>    
    <td  class="dataLabel" width="200"><?php echo $this->_tpl_vars['MOD']['LBL_WWW']; ?>
: </td>
    <td  class="dataField">
        <input type='text' size='25' name='web' value='<?php echo $this->_tpl_vars['CI']['web']; ?>
'</td>
 </tr>
 <tr>    
    <td  class="dataLabel" width="200"><?php echo $this->_tpl_vars['MOD']['LBL_EMAIL']; ?>
: </td>
    <td  class="dataField">
        <input type='text' size='25' name='email' value='<?php echo $this->_tpl_vars['CI']['email']; ?>
'</td>
 </tr>
</table>

<br />

<div style="padding-top: 2px;">
<input title="<?php echo $this->_tpl_vars['APP']['LBL_SAVE_BUTTON_TITLE']; ?>
" class="button"  type="submit" name="save" value="  <?php echo $this->_tpl_vars['APP']['LBL_SAVE_BUTTON_LABEL']; ?>
  " onclick="document.location.href='index.php?module=Administration&action=index'" />
        &nbsp;<input title="<?php echo $this->_tpl_vars['MOD']['LBL_CANCEL_BUTTON_TITLE']; ?>
"  onclick="document.location.href='index.php?module=Administration&action=index'" class="button"  type="button" name="cancel" value="  <?php echo $this->_tpl_vars['APP']['LBL_CANCEL_BUTTON_LABEL']; ?>
  " />
</div>
<?php echo $this->_tpl_vars['JAVASCRIPT']; ?>

</form>

<script language="Javascript" type="text/javascript">
<?php echo $this->_tpl_vars['getNameJs']; ?>

</script>
<!-- END: main -->  