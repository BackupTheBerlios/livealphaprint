<?php /* Smarty version 2.6.11, created on 2007-07-13 16:49:32
         compiled from modules/Administration/Formats.tpl */ ?>
<!-- BEGIN: main -->
<script type="text/javascript" src="modules/Format/admin.js"></script>
 <form id="ManageFormats" name="ManageFormats" enctype='multipart/form-data' method="POST" 
    action="index.php?module=Administration&action=Formats&process=true"> 
  <input type="hidden" name="edit" id="edit" value="edit">
  <input type="hidden" name="old_name" id="old_name" value=""> 
  <table width="100%" cellpadding="0" cellspacing="0" border="0"> 
     <tr> 
      <td width="20%" ><slot> 
         <input name='fsize_h' id='fsize_h' tabindex='1' size='12' maxlength='50' type="text"  onBlur="select_name(form);" value="" /> 
        x
        <input name='fsize_w' id='fsize_w' tabindex='1' size='12' maxlength='50' type="text"  onBlur="select_name(form);" value="" /> 
        </slot></td> 
      <td width="10%"> <slot> 
        <div id="dropdown" > 
          <select name="format" tabindex='1'onChange="getFormat(form,format.name);"> 
             
                       
                       
                       
                       
                
                     
                      
      <?php echo $this->_tpl_vars['FORMAT_OPTIONS']; ?>

     
                     
                   
           
             
                     
                     
                     
                     
          </select> 
        </div> 
        </slot> </td> 
      <td ><slot> 
        <input tabindex='1' type="button" class="button" value='<?php echo $this->_tpl_vars['APP']['LBL_NEW_BUTTON_LABEL']; ?>
' name="new_format_btn" onClick='newFormat();' />
		<input tabindex='1' type="button" class="button" value='<?php echo $this->_tpl_vars['APP']['LBL_MODIFY_BUTTON_LABEL']; ?>
' name="new_modify_btn" onClick='modifyFormat();' />  
        <input tabindex='1' type="button" class="button" value='<?php echo $this->_tpl_vars['APP']['LBL_DELETE_BUTTON_LABEL']; ?>
' name="delete_modify_btn" onClick='deleteFormat(form);' />
		</slot> </td> 
    </tr> 
      
   </table>
   <table width="100%">
   <tr> 
      <td><div style="display:inline" id="newFormat"></div></td> 
    </tr>
   </table> 
	  
  <?php echo $this->_tpl_vars['JAVASCRIPT']; ?>

</form> 
<DIV id="format_result"  style="display:none" ></DIV> 
<!-- END: main --> 