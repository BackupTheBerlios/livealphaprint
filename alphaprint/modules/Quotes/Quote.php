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


include_once('config.php');
require_once('log4php/LoggerManager.php');
require_once('include/database/PearDatabase.php');
require_once('data/SugarBean.php');
require_once('modules/QuoteLines/QuoteLine.php');

// Contact is used to store customer information.
class Quote extends SugarBean
{
	// Stored fields
   var $id;
   
   var $name;
   
   var $opportunity_id;
   
   var $opportunity_name;
   
   var $quotenum;
   
   var $num_suf;
   
   var $num_pref;
   
   var $stage;
   
   var $ordernum;
   
   var $validuntil;
   
   var $assigned_user_id;
   
   var $assigned_user_name;
   
   var $account_id;
   
   var $account_name;
   
   var $currency_id;
   
   var $payment_method;
   
   var $payment_term;
   
   var $shipping_term;
   
   var $billtocontactid;
   
   var $billtocontactname;
   
   var $billtoaddress;
   
   var $billtocity;
   
   var $billpostalcode;
   var $billtostate;
   var $billtocountry;
   
   var $description;
   
   var $status;
   
   var $deleted;
   
   var $date_entered;
   
   var $date_modified;
   
   var $created_by;
   var $table_name = 'quotes';
   var $object_name = 'Quote';
   var $module_dir = 'Quotes';
   var $new_schema = true;
   
    

   var $column_fields = Array('id'
        ,'name'

		,'opportunity_id'

		,'opportunity_name'

		,'quotenum'

        ,'num_pref'
        
        ,'num_suf'
        
		,'stage'

		,'ordernum'

		,'validuntil'

		,'assigned_user_id'

		,'assigned_user_name'

		,'account_id'

		,'account_name'
		
		,'currency_id'
		
		,'payment_method' 
		
		,'payment_term' 
   
   	    ,'shipping_term'

		,'billtocontactid'

		,'billtocontactname'

		,'billtoaddress'

		,'billtocity'

		,'billpostalcode'
		,'billtostate'
		,'billtocountry'

		,'description'

		,'status'

		,'deleted'

		,'date_entered'

		,'date_modified'

		,'created_by'
      
		);

	// This is used to retrieve related fields from form posts.
	var $additional_column_fields = Array('assigned_user_name'
	);


   var $list_fields= array();
   var $required_fields = array('name','stage');

   function Quote()
   {
		parent::SugarBean();
		$this->list_fields = $this->column_fields;
   }

   function get_xtemplate_data() {
		$return_array = array();
		global $current_user;
		foreach($this->column_fields as $field)	{
			$return_array[strtoupper($field)] = $this->$field;
		}
		return $return_array;
	}

	function create_export_query(&$order_by, &$where)
	{
					 $custom_join = $this->custom_fields->getJOIN();
					 $query = "SELECT
							quotes.*";



					 if($custom_join){
						$query .= $custom_join['select'];
					}
					 $query .= " FROM quotes ";




			if($custom_join){
				$query .= $custom_join['join'];
			}

					$where_auto = " quotes.deleted=0 ";

			if($where != "")
					$query .= "where ($where) AND ".$where_auto;
			else
					$query .= "where ".$where_auto;

			if(!empty($order_by))
					$query .= " ORDER BY $order_by";

			return $query;
	}

	function create_list_query($order_by, $where, $show_deleted=0)
	{
		$custom_join = $this->custom_fields->getJOIN();
                $query = "SELECT ";


			$query .= "$this->table_name.*, users.user_name assigned_user_name";



			if($custom_join){
   				$query .= $custom_join['select'];
 			}
            $query .= " FROM quotes ";





			$query .= "			LEFT JOIN users
                                ON quotes.assigned_user_id=users.id ";



			if($custom_join){
  				$query .= $custom_join['join'];
			}
			$where_auto = '1=1';
			if($show_deleted == 0){
				$where_auto = " quotes.deleted=0 ";
			}else if($show_deleted == 1){
				$where_auto = " quotes.deleted=1 ";
			}

		if($where != "")
			$query .= "where ($where) AND ".$where_auto;
		else
			$query .= "where ".$where_auto;

		if(!empty($order_by))
			$query .= " ORDER BY $order_by";

		return $query;
	}

	function getProductRows() {
		$return_array = array();
		if($this->id != "") {
			$quoteLine = new QuoteLine();
			$return_array = $quoteLine->get_full_list("id","quoteid='".$this->id."'");
		}
		return $return_array;
	}

	function getProductRow($productrow,$index,$is_editview=false, $is_pdf=false) {
		global $mod_strings;
		global $app_strings;
        global $current_language;
        global $pdfFontSize;
        
		$changebutton = $app_strings['LBL_CHANGE_BUTTON_TITLE'];
		$changebuttonkey = $app_strings['LBL_CHANGE_BUTTON_KEY'];
		$changebuttontitle = $app_strings['LBL_CHANGE_BUTTON_LABEL'];
		$tablerow = NULL;
        $count = $index + 1;
		if ($is_pdf==false){
            $tablerow = '<tr><td>'; 
            $tablerow = $tablerow.'<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0 id="product_row_table_'.$count.'" name="product_row_table">';
		    $tablerow = $tablerow.'			<TR>';
		    if($is_editview != true)                         
		    {                                             // Listview
			    
			    $tablerow = $tablerow.'				<TD class=tabDetailViewDF width=25%><a href="index.php?module=Products&action=DetailView&record='.$productrow->productid.'" class="tabDetailViewDFLink">'.$productrow->productname.'</a></TD>';
			    $tablerow = $tablerow.'				<TD class=tabDetailViewDF width=10%>'.$productrow->productnum.'</TD>';
                $tablerow = $tablerow.'				<TD class=tabDetailViewDF width=10%>'.$productrow->pages.'</TD>';
                $tablerow = $tablerow.'             <TD class=tabDetailViewDF width=10%>'.$productrow->quantity.'</TD>';
                $tablerow = $tablerow.'				<TD class=tabDetailViewDF width=15%>'.$productrow->estp.'</TD>';
			    $tablerow = $tablerow.'				<TD class=tabDetailViewDF width=15%>'.$productrow->price.'</TD>';
                $tablerow = $tablerow.'				<TD class="tabDetailViewDF" width=10%></TD>';
		    }
		    else
		    {                                         //Editview
			    
			    $tablerow = $tablerow.'				<TD class=dataField width=25%><input type=text size=30 readonly value="'.$productrow->productname.'" name=productname_'.$count.'><input type=hidden value="'.$productrow->productid.'"  name=productid_'.$count.'>';
			    $tablerow = $tablerow.'				<img src="themes/default/images/Search.gif" align="absmiddle" style="cursor:hand;cursor:pointer" ' .'LANGUAGE=javascript onclick=\'return window.open("index.php?module=Products&action=Popup&html=quotes&form=EditView&form_submit=false&index='.$count.'","test","width=600,height=400,resizable=1,scrollbars=1");\'></TD>';
                $tablerow = $tablerow.'				<TD class=dataField width=10%><input type=text size=8 readonly value="'.$productrow->productnum.'" name=productnum_'.$count.'></TD>';
                $tablerow = $tablerow.'             <TD class=dataField width=10%><input type=text size=7 readonly value="'.$productrow->pages.'" name=pages_'.$count.'></TD>';			
                $tablerow = $tablerow.'             <TD class=dataField width=10%><input type=text size=7 readonly value="'.$productrow->quantity.'" name=quantity_'.$count.'></TD>';
                $tablerow = $tablerow.'				<TD class=dataField width=15%><input type=text size=8 readonly value="'.$productrow->estp.'"  name=estp_'.$count.'>';
			    $tablerow = $tablerow.'				<TD class=dataField width=15%><input type=text size=8 value="'.$productrow->price.'"  name=price_'.$count.'>';
                $tablerow = $tablerow.'				<TD class="dataLabel" width=10%><input type=hidden id=rowIndexId_'.$index.' value='.$index.'><INPUT class="button" id="remove" onclick="Delete(EditView,rowIndexId_'.$index.')" type="button" value="'.$mod_strings["LBL_REMOVEROW"].'" name="remove"> </TD>';
		    }
		    $tablerow = $tablerow.'							</TR>';
		    $tablerow = $tablerow.'				</TABLE></td></tr>';
        }
        
        else
        {
        	$fSize = $pdfFontSize["default"];
        	$tablerow .= "<tr>";
            $tablerow .= "<td><font color=$fSize>".$productrow->productname."</font></td>";
            $tablerow .= "<td><font color=$fSize>".$productrow->productnum."</font></td>";
            $tablerow .= "<td><font color=$fSize>".$productrow->pages."</font></td>";
            $tablerow .= "<td><font color=$fSize>".$productrow->quantity."</font></td>";
            $tablerow .= "<td><font color=$fSize>".$productrow->estp."</font></td>";
            $tablerow .= "<td><font color=$fSize>".$productrow->price."</font></td>";
            $tablerow .= "</tr>";
           
        }
            
		return $tablerow;
	}

	function fill_in_additional_detail_fields()
	{
		// Fill in the assigned_user_name
		$this->assigned_user_name = get_assigned_user_name($this->assigned_user_id);

		$quoteLines = $this->getProductRows();
	
		


	}
    function get_summary_text()
	{
		return $this->name;
	}

	function get_list_view_data(){
		global $current_language, $image_path, $mod_strings;
		$app_list_strings = return_app_list_strings_language($current_language);
		$temp_array = $this->get_list_view_array();
		//Goodwill
		//$temp_array['STAGE'] = empty($this->stage)? "" : $app_list_strings['stage_options'][$this->stage];
		$temp_array['STAGE'] = empty($this->stage)? "" : $app_list_strings['quote_stage_dom'][$this->stage];
		$temp_array['PAYMENT_TERM'] = empty($this->payment_term)? "" : $app_list_strings['payment_terms'][$this->payment_term];
		$temp_array['SHIPPING_TERM'] = empty($this->shipping_term)? "" : $app_list_strings['shipping_term_dom'][$this->shipping_term];
		$temp_array['PAYMENT_METHOD'] = empty($this->payment_method)? "" : $app_list_strings['payment_method_dom'][$this->payment_method];		
		//End Goodwill
		$temp_array['ASSIGNED_USER_NAME'] = get_assigned_user_name($this->assigned_user_id);
		return $temp_array;

	}
	
	function listviewACLHelper()
	{
		$array_assign = parent::listviewACLHelper();

		$is_owner = false;
		
		if(!empty($this->account_id)){
			
			if(!ACLController::moduleSupportsACL('Accounts') || ACLController::checkAccess('Accounts', 'view', $is_owner, $this->account_id)){
				$array_assign['ACCOUNT'] = 'a';
			}else{
				$array_assign['ACCOUNT'] = 'span';
			}
			
			}else{
				$array_assign['ACCOUNT'] = 'span';
		}
		
		return $array_assign;
	}

		
	function bean_implements($interface){
		switch($interface){
			case 'ACL':return true;
		}
		return false;
	}
    
    function pnum_sort($array, $type='desc'){
   $result=array();
   foreach($array as $var => $val){
       $set=false;
       foreach($result as $var2 => $val2){
           if($set==false){
               if($val>$val2 && $type=='desc' || $val<$val2 && $type=='asc'){
                   $temp=array();
                   foreach($result as $var3 => $val3){
                       if($var3==$var2) $set=true;
                       if($set){
                           $temp[$var3]=$val3;
                           unset($result[$var3]);
                       }
                   }
                   $result[$var]=$val;   
                   foreach($temp as $var3 => $val3){
                       $result[$var3]=$val3;
                   }
               }
           }
       }
       if(!$set){
           $result[$var]=$val;
       }
   }
   return $result;
}

function generate_number()
    {
        $return_value = '';
        $number_filed = array('num_suf');
        $rown = '';
        $n = $this->db->getRowCount($result);
        
        
        $query = 'SELECT num_suf';
        $query.= ' FROM quotes';
        $query.= " WHERE deleted=0";
        $query.= " AND num_suf IS NOT NULL";
        $query.= " ORDER by num_suf ASC";
        
        $result = $this->db->query($query,true," Error filling in additional detail fields: ");
        $n = $this->db->getRowCount($result);
        if ($n > 0){
            while ($row = $this->db->fetchByAssoc($result)) {
        
                foreach($number_filed as $num_field)
                {
                        for ($i=0; $i<$n; $i++ ){
                        $rown[$i] = $row[$num_field];
                        }
                    
                }
                
            }
        }
            
        if($rown != null)
        {
            $return_value = $rown;
            $number = Quote::pnum_sort($return_value);
            $numb = $number[0] + 1;
        }
        else { $numb = 10000;}
        
        return $numb;
    }
    
}

?>