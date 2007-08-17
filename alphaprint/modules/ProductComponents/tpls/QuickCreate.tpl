{* /** * The contents of this file are subject to the SugarCRM Public License Version * 1.1.3 ("License"); You may not use this file except in compliance with the * License. You may obtain a copy of the License at http://www.sugarcrm.com/SPL * Software distributed under the License is distributed on an "AS IS" basis, * WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License * for the specific language governing rights and limitations under the * License. * * All copies of the Covered Code must include on each user interface screen: * (i) the "Powered by SugarCRM" logo and * (ii) the SugarCRM copyright notice * in the same form as they appear in the distribution. See full license for * requirements. * * The Original Code is: SugarCRM Open Source * The Initial Developer of the Original Code is SugarCRM, Inc. * Portions created by SugarCRM are Copyright (C) 2004-2006 SugarCRM, Inc.; * All Rights Reserved. * Contributor(s): ______________________________________. */ *}
<form name="productComponentsQuickCreate" id="productComponentsQuickCreate" method="POST" action="index.php"    onMouseMove="number_components(productComponentsQuickCreate);name_components(productComponentsQuickCreate);" > 
  <input type="hidden" name="module" value="ProductComponents"> 
  <input type="hidden" name="products_id" value="{$REQUEST.products_id}"> 
  <input type="hidden" name="contact_name" value="{$REQUEST.contact_name}"> 
  <input type="hidden" name="email_id" value="{$REQUEST.email_id}"> 
  <input type="hidden" name="bug_id" value="{$REQUEST.bug_id}"> 
  <input type="hidden" name="return_action" value="{$REQUEST.return_action}"> 
  <input type="hidden" name="return_module" value="{$REQUEST.return_module}"> 
  <input type="hidden" name="return_id" value="{$REQUEST.return_id}"> 
  <input type="hidden" name="action" value='Save'> 
  <input type="hidden" name="duplicate_parent_id" value="{$REQUEST.duplicate_parent_id}"> 
  <input id='assigned_user_id' name='assigned_user_id' type="hidden" value="{$ASSIGNED_USER_ID}" /> 
  <input type="hidden" name="to_pdf" value='1'> 
  <input type=hidden id="number" name="number" value"" /> 
  <input type=hidden id="name" name="name" value"" /> 
  <input type="hidden" id="formname" name="formname" value="productComponentsQuickCreate" />  
  <table width="100%" cellpadding="0" cellspacing="0" border="0" > 
    <tr> 
      <td align="left" style="padding-bottom: 2px;"> <input title="{$APP.LBL_SAVE_BUTTON_TITLE}" accessKey="{$APP.LBL_SAVE_BUTTON_KEY}" class="button" type="submit" name="button" {$saveOnclick|default:"onclick=\"return check_form('ProductComponentsQuickCreate');\""} value="  {$APP.LBL_SAVE_BUTTON_LABEL}  " > 
        <input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" accessKey="{$APP.LBL_CANCEL_BUTTON_KEY}" class="button" type="submit" name="button" {$cancelOnclick|default:"onclick=\"this.form.action.value='$RETURN_ACTION'; this.form.module.value='$RETURN_MODULE'; this.form.record.value='$RETURN_ID'\""} value="  {$APP.LBL_CANCEL_BUTTON_LABEL}  "> 
      <td align="right" nowrap><span class="required">{$APP.LBL_REQUIRED_SYMBOL}</span> {$APP.NTC_REQUIRED}</td> 
    </tr> 
  </table> 
  <table width="100%" border="0" cellspacing="0" cellpadding="0" class="tabForm"> 
  <tr> 
    <td> <table width="100%" border="0" cellspacing="0" cellpadding="0"> 
        <tr> 
          <th align="left" class="dataLabel" colspan="4"><h4 class="dataLabel"><slot>{$MOD.LBL_PROJECTTYPE_INFORMATION}</slot></h4></th> 
        </tr> 
        <tr> 
          <td valign="top" class="dataLabel"><slot>{$MOD.LBL_NUMBER}</slot></td> 
          <td><slot> 
            <input id="number_pref" name="number_pref"  size="1"  readonly style="background:inherit; border-style:none;text-align:right " type="text" value="{$number_pref}"/> 
            <input id="pnum" name="pnum"  size="2" readonly style="background:inherit; border-style:none;" type="text" value="{$pnum}"/> 
            -
            <input id="number_suf" name="number_suf"  size="1" readonly style="background:inherit; border-style:none;" type="text" value="{$number_suf}"/> 
            </slot></td> 
          <td valign="top"  class="dataLabel"><slot>{$MOD.LBL_TYPE} <span class="required">{$APP.LBL_REQUIRED_SYMBOL}</span></slot></td> 
          <td width="40%" ><slot> 
            <select tabindex='1' name='type'> 
               
               
               
               
               
               
               
               
           
           
               
              {$type_options} 
             
             
         
         
             
             
             
             
             
             
             
            </select> 
            </slot></td> 
        </tr> 
        <tr> 
          <td class="dataLabel">&nbsp;</td> 
          <td>&nbsp;</td> 
          <td valign="top" class="dataLabel"><slot>{$MOD.LBL_FORMAT}</slot></td> 
          <td><table width="100%" cellpadding="0" cellspacing="0" border="0"> 
              <tr> 
                <td ><slot> 
                  <input name='fsize_h' id='fsize_h' tabindex='1' size='12' maxlength='50' type="text"  onBlur="select_name(form,format.name);" value="" /> 
                  x
                  <input name='fsize_w' id='fsize_w' tabindex='1' size='12' maxlength='50' type="text"  onBlur="select_name(form,format.name);" value="" /> 
                  </slot></td> 
                <td > <slot> 
                  <div id="dropdown" > 
                    <select name="format" tabindex='1' onChange="getFormat(form,format.name);" />  {$FORMAT_OPTIONS} </select> </div> 
                  </slot> </td> 
                <td ><slot> 
                  <input tabindex='1' type="button" class="button" value='{$APP.LBL_NEW_BUTTON_LABEL}' name="new_format_btn"  onClick='newFormat();' /> 
                  </slot> </td> 
              </tr> 
            </table> 
        </tr> 
        <tr> 
          <td class="dataLabel">&nbsp;</td> 
          <td>&nbsp;</td> 
          <td valign="top" class="dataLabel"><slot>{$MOD.LBL_RUN_FORMAT}</slot></td> 
          <td><table width="100%" cellpadding="0" cellspacing="0" border="0"> 
              <tr> 
                <td ><slot> 
                  <input name='run_size_x' id='run_size_x' tabindex='1' size='12' maxlength='50' type="text"  onBlur="select_name(form,run_format.name);" value="" /> 
                  x
                  <input name='run_size_y' id='run_size_y' tabindex='1' size='12' maxlength='50' type="text"  onBlur="select_name(form,run_format.name);" value="" /> 
                  </slot></td> 
                <td > <slot> 
                  <div id="dropdown_run_format" > 
                    <select name="run_format" tabindex='1' onChange="getFormat(form,run_format.name);" />  {$RUN_FORMAT_OPTIONS} </select></div> 
                  </slot> </td> 
                <td ><slot> 
                  <input tabindex='1' type="button" class="button" value='{$APP.LBL_NEW_BUTTON_LABEL}' name="new_format_btn2"  onClick='newFormat();' /> 
                  </slot> </td> 
              </tr> 
            </table> 
        </tr> 
        <tr> 
          <td class="dataLabel"><slot>{$MOD.LBL_PAPER}</slot></td> 
          <td><slot> 
            <input type=text size="25"  value=""  readonly name='paper' > 
            <img src="themes/default/images/Search.gif" align="absmiddle" style="cursor:hand;cursor:pointer" onclick='return window.open("index.php?module=Paper&action=Popup&html=paper&form=form&form_submit=false&index=0","test","width=600,height=400,resizable=1,scrollbars=1");' /> 
            <input type=hidden  name='paperid' value""/> 
            </slot></td> 
          <td valign="top" class="dataLabel"><slot>{$MOD.LBL_BLEED_FORMAT}</slot></td> 
          <td><table width="100%" cellpadding="0" cellspacing="0" border="0"> 
              <tr> 
                <td ><slot> 
                  <input name='bleed_size_x' id='bleed_size_x' tabindex='1' size='12' maxlength='50' type="text"  onBlur="select_name(form,bleed_format.name);" value="" /> 
                  x
                  <input name='bleed_size_y' id='bleed_size_y' tabindex='1' size='12' maxlength='50' type="text"  onBlur="select_name(form,bleed_format.name);" value="" /> 
                  </slot></td> 
                <td > <slot> 
                  <div id="dropdown_bleed_format" > 
                    <select name="bleed_format" tabindex='1' onChange="getFormat(form,bleed_format.name);" />  {$BLEED_FORMAT_OPTIONS} </select></div> 
                  </slot> </td> 
                <td ><slot> 
                  <input tabindex='1' type="button" class="button" value='{$APP.LBL_NEW_BUTTON_LABEL}' name="new_format_btn3"  onClick='newFormat();' /> 
                  </slot> </td> 
              </tr> 
            </table> 
        </tr> 
        <tr> 
          <td valign="top" class="dataLabel"><slot>{$MOD.LBL_VOLUME}</slot></td> 
          <td><slot> 
            <input name="volume" tabindex="1" size="15" maxlength="50" type="text" value=""> 
            </slot></td> 
          <td valign="top" class="dataLabel"></td> 
          <td><div style="display:inline" id="newFormat"></div></td> 
        </tr> 
        <tr> 
          <td valign="top" class="dataLabel">&nbsp;</td> 
          <td>&nbsp;</td> 
          <td valign="top" class="dataLabel"><slot>{$MOD.LBL_COLOR} <span class="required">{$APP.LBL_REQUIRED_SYMBOL}</span></slot></td> 
          <td><slot> 
            <select tabindex='1' name='color_side_a'> 
               
               
               
               
              
               
               
               
               
           
           
               
              {$color_side_a} 
             
             
         
         
             
             
            
             
             
             
             
             
            </select> 
            X
            <select tabindex='1' name='color_side_b'> 
               
               
               
               
              
     
               
               
               
           
           
               
              {$color_side_b} 
             
             
         
         
             
             
            
   
             
             
             
             
            </select> 
            <span class="dataField"> </span></slot></td> 
        </tr> 
        <tr> {if $REQUEST.products_id != ''}
          <td class="dataLabel"><slot>{$MOD.LBL_PARENT_ID}</slot></td> 
          <td class="dataField"><slot>{$REQUEST.parent_name}
            <input id='parent_name' name='parent_name' type="hidden" value='{$REQUEST.parent_name}'> 
            <input id='parent_id' name='parent_id' type="hidden" value='{$REQUEST.parent_id}'> 
&nbsp;</slot></td> 
        <tr> 
          <td class="dataLabel"><slot>{$MOD.LBL_DESCRIPTION}</slot></td> 
          <td class="dataField"><slot> 
            <textarea name="description"
	cols="60" rows="8" tabindex="3"></textarea> 
            </slot></td> 
        </tr> 
        {else}
        <td class="dataLabel"><slot>{$MOD.LBL_PARENT_ID}</slot></td> 
          <td class="dataField"><slot> 
            <input type="text"  id="parent_name" name="parent_name"  value="{$parent_name}" /> 
            <input type="hidden" name="parent_id" id="parent_id"
	value="{$parent_id}" /> 
&nbsp; 
            <input title="{$APP.LBL_SELECT_BUTTON_TITLE}"
	accessKey="{$APP.LBL_SELECT_BUTTON_KEY}" type="button" class="button"
	value="{$APP.LBL_SELECT_BUTTON_LABEL}" name="change_parent" tabindex="2"
	onclick='open_popup("Products", 600, 400, "", true, false, {$encoded_parent_popup_request_data});'
	/> 
            </slot></td> 
          {/if} </tr> </table> 
      <br><br>  
      <TABLE class=tabForm cellSpacing=0 cellPadding=0 width="100%" border=0> 
        <TBODY> 
          <TR> 
            <TD> <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0> 
                <TBODY> 
                  <TR> 
                    <TH class=dataLabel align=left colSpan=4> <H4 class=dataLabel>{$MOD.LBL_LINEITEMS}</H4></TH> 
                  </TR> 
                  <TR> 
                    <TD colSpan=4> <table cellSpacing=0 cellPadding=0 width="100%" border=0 id="producttable" name="producttable"> 
                        <tr> 
                          <td> <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0 id="producttable1" name="producttable1"> 
                              <TR> 
                                <TD class="dataLabel" width="15%" ><span>{$MOD.LBL_NUMBER_LOTS}</span></TD> 
                                <TD class="dataLabel" width="15%" ><span>{$MOD.LBL_NUMBER_UNITS}</span></TD> 
                                <TD class="dataLabel" width="15%" ><span>{$MOD.LBL_RUN_STYLE}</span></TD> 
                                <TD class="dataLabel" width="55%" ><span>&nbsp;</span></TD> 
                              </TR> 
                            </TABLE></td> 
                        </tr> 
                      </table> 
                      <DIV id="rows"> 
                        <table cellSpacing=0 cellPadding=0 width="100%" border=0 id="producttableid2" name="producttablename2"> 
                         
                          {$LAYOUTROWS}
                         
                        </table> 
                      </DIV> 
                      <DIV id="product_row_id" name="product_row_name" style='DISPLAY: none'> 
                        <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0 id="product_row_table" name="product_row_table"> 
                          <TR> 
                           
                            <TD class=dataField width=15%><input type=text size=7 value="" name="number_lots" /></TD> 
                            <TD class=dataField width=15%><input type=text size=7  name="number_units" /></TD> 
                            <TD class=dataField width=15%><select tabindex="1"  name="run_style">{$run_style_options}<select></TD> 
                            <TD class="dataLabel" width=55%> <input type=hidden id=rowIndexId value=rowIdx> 
                              <input class="button" id="remove" onclick='removeRow(0)' type="button" value="{$MOD.LBL_REMOVEROW}" name="remove" /></TD> 
                        </TABLE> 
                      </DIV> 
                      <DIV id=grand_tally style="DISPLAY: inline"> 
                        <TABLE width="100%" cellSpacing=1 cellPadding=1 border=0> 
                          <TBODY> 
                            <TR> 
                              <TD colSpan=3><span>&nbsp;</span></TD> 
                            </TR> 
                            <TR> 
                              <TD width=20% class=dataLabel style="TEXT-ALIGN: left" noWrap> <INPUT class="button" id="add_row" onclick='add(this.form)' type="button" value="{$MOD.LBL_ADDROW}" name="add_row"></TD> 
                          </TBODY> 
                        </TABLE> 
                      </DIV></TD> 
                  </TR> 
                </TBODY> 
              </TABLE></TD> 
          </TR> 
        </TBODY> 
      </TABLE> 
</form>
<DIV id="format_result" style="display:none" ></DIV>
<script>

	{$layout_javascript} 
	{$additionalScripts}
</script>

