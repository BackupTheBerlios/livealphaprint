<?php
/*****************************************************************************
 * The contents of this file are subject to the RECIPROCAL PUBLIC LICENSE
 * Version 1.1 ("License"); You may not use this file except in compliance
 * with the License. You may obtain a copy of the License at
 * http://opensource.org/licenses/rpl.php. Software distributed under the
 * License is distributed on an "AS IS" basis, WITHOUT WARRANTY OF ANY KIND,
 * either express or implied.
 *
 * You may:
 * a) Use and distribute this code exactly as you received without payment or
 *    a royalty or other fee.
 * b) Create extensions for this code, provided that you make the extensions
 *    publicly available and document your modifications clearly.
 * c) Charge for a fee for warranty or support or for accepting liability
 *    obligations for your customers.
 *
 * You may NOT:
 * a) Charge for the use of the original code or extensions, including in
 *    electronic distribution models, such as ASP (Application Service
 *    Provider).
 * b) Charge for the original source code or your extensions other than a
 *    nominal fee to cover distribution costs where such distribution
 *    involves PHYSICAL media.
 * c) Modify or delete any pre-existing copyright notices, change notices,
 *    or License text in the Licensed Software
 * d) Assert any patent claims against the Licensor or Contributors, or
 *    which would in any way restrict the ability of any third party to use the
 *    Licensed Software.
 *
 * You must:
 * a) Document any modifications you make to this code including the nature of
 *    the change, the authors of the change, and the date of the change.
 * b) Make the source code for any extensions you deploy available via an
 *    Electronic Distribution Mechanism such as FTP or HTTP download.
 * c) Notify the licensor of the availability of source code to your extensions
 *    and include instructions on how to acquire the source code and updates.
 * d) Grant Licensor a world-wide, non-exclusive, royalty-free license to use,
 *    reproduce, perform, modify, sublicense, and distribute your extensions.
 *
 * The Original Code is: C3CRM Team
 *                       http://www.c3crm.com
 *                       2006-5-19 
 *
 * The Initial Developer of the Original Code is C3CRM Team.
 * Portions created by C3CRM are Copyright (C) 2005 C3CRM
 * All Rights Reserved.
 * Contributors: Goodwill Consulting http://www.goodwill.co.id
 ********************************************************************************/
/*********************************************************************************
 * $Id: Forms.php
 * Description:  Contains a variety of utility functions used to display UI
 * components such as form headers and footers.  Intended to be modified on a per
 * theme basis.
 ********************************************************************************/

/**
 * Create javascript to validate the data entered into a record.
 */
 
 require_once('include/JSON.php');
 
function get_validate_record_js () {
	return '';
}

function get_product_js () {
	
    global $mod_strings;
	global $app_strings;
	
	$err_invalidnumber = $app_strings['ERR_INVALIDNUMBER'];
	$err_invalid_count = $mod_strings['ERR_INVALID_COUNT'];
	$err_duplicated = $app_strings['ERR_DUPLICATED'];
	$no_product_selected = $mod_strings['ERR_NO_PRODUCT_SELECTED'];
	$err_one_product_required = $app_strings['ERR_ONE_PRODUCT_REQUIRED'];
	
	$the_script  = <<<EOQ
	<SCRIPT language="Javascript" type="text/javascript" >
	
	<!--
	function copyAddressRight(form) {
	    //alert(document.EditView.shiptoaccountname.value);
		form.shiptocontactid.value = form.billtocontactid.value;
		form.shiptocontactname.value = form.billtocontactname.value;
		form.shiptoaddress.value = form.billtoaddress.value;
		form.shiptocity.value = form.billtocity.value;
		form.shippostalcode.value = form.billpostalcode.value;
		form.shiptostate.value = form.billtostate.value;
		form.shiptocountry.value = form.billtocountry.value;
		return true;
	}
	
    function gennumber(form) {
        var pref = form['num_pref'].value;
        var suf = form['num_suf'].value;
        var numb = pref + suf;
        form.quotenum.value = numb;
        
    }
    
	function copyAddressLeft(form) {
		form.billtocontactid.value = form.shiptocontactid.value;
		form.billtocontactname.value = form.shiptocontactname.value;
		form.billtoaddress.value = form.shiptoaddress.value;
		form.billtocity.value = form.shiptocity.value;
		form.billpostalcode.value = form.shippostalcode.value;
		form.billtostate.value = form.shiptostate.value;
		form.billtocountry.value = form.shiptocountry.value;
		return true;
	}

	var i=0
	var count = document.getElementById("producttableid2").rows.length;
	
    function add(form)
	{ 
	     count ++;
		 var temp = document.getElementById("producttableid2");
		 temp.insertRow(temp.rows.length);
		 temp.rows.item(temp.rows.length - 1).insertCell(0);
		 var xx=temp.rows.length -1 ;//-1
		 
		 var sHTML = document.getElementById("product_row_id").innerHTML;
		 sHTML = sHTML.replace('product_row_table','product_row_table_' + count);
		 sHTML = sHTML.replace('index=0','index=' + count);
         
         sHTML = sHTML.replace('productname','productname_' + count);
		 sHTML = sHTML.replace('productid','productid_' + count );
         sHTML = sHTML.replace('productnum','productnum_' + count);
         sHTML = sHTML.replace('pages','pages_' + count ); 
         sHTML = sHTML.replace('price','price_' + count ); 
         sHTML = sHTML.replace('estp','estp_' + count ); 
         sHTML = sHTML.replace('quantity','quantity_' + count ); 
         
		 sHTML = sHTML.replace('removeRow(0)','Delete(EditView,rowIndexId_'+count+')');
	 	 sHTML = sHTML.replace('rowIndexId','rowIndexId_'+count);
	 	 sHTML = sHTML.replace('order_id','order_id_'+count);
		 sHTML = sHTML.replace('rowIdx',temp.rows.length-1);   

		 temp.rows.item(temp.rows.length-1).cells.item(0).innerHTML=sHTML;
		 form.product_count.value = count; 
	}
	
	function Delete(form,x)
	{ 
		 var temp = document.getElementById("producttableid2");
		 
		 if(temp.rows.length == 1)
		 {
		 	alert('$err_one_product_required');
		 	return;
		 }
		 
		 var curIdxId = x.id
		 var curCount = eval(curIdxId.substr(curIdxId.indexOf("_")+1));
		 var curIdx = x.value;
		 temp.deleteRow(x.value)
	
	 	 while (curCount <= count)
		 {
		 	curCount++;
		 	var rowIdx = document.getElementById("rowIndexId_" + curCount);
		 	if(rowIdx != null && rowIdx != undefined)
		 	{
		 		rowIdx.value=curIdx++;
		 	}
		 }
		
	}
	
	function removeRow(form,count,index) {
		if(count > 1) {
			var temp = document.getElementById("producttable2");
			var table1 = document.getElementById('product_row_table_' + count);
			temp.deleteRow(index);
			count--;
		}
		form.product_count.value = count;
		calculate(form);
	}

	
	
	
	
	function checkDup(productId, idx)
	{
		for(var i = 0; i < count; i++)
		{
			if(idx == i) continue;
			
			var elem = getElementsByName("productid_" + i);
			if(elem == null) break;
				
			if(elem[0].value==productId)
			{
				alert("$err_duplicated");
				break;	
			}
	
		}
	}
	
	function check_product(form)
	{
		var temp = document.getElementById("producttableid2");
		var hasProduct = false;
		for(var i = 1; i <= count ; i++)
		{
			
			var productid = form.elements['productid_' + i];
			
			if(productid != undefined)
			{
				if(productid.value != '')
				{
				
					hasProduct = true;
				}
			}
		}
		
		if(!hasProduct)alert('$err_one_product_required');
		return hasProduct;
	}
	//-->
	</script>

EOQ;

	return $the_script;
}


/**
 * Create HTML form to enter a new record with the minimum necessary fields.
 */
function get_new_record_form () {
	//Goodwill (Not Working)
	//$json = new JSON(JSON_LOOSE_TYPE);
	//include('include/QuickSearchDefaults.php');
	//$sqs_objects = array('assigned_user_name' => $qsUser);
	//$quicksearch_js = $qsScripts;
	//$quicksearch_js .= '<script type="text/javascript" language="javascript">sqs_objects = ' . $json->encode($sqs_objects) . '</script>';
	//echo $quicksearch_js;
	//End Goodwill
}

?>