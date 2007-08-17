<?php

/*
 * $Id: ImportProduct.php,v 1.1 2007/08/17 08:01:52 peshev Exp $
 * Description:  Defines the Product SugarBean Product entity with the necessary
 * methods and variables.
 * Contributors: Goodwill Consulting http://www.goodwill.co.id
 ********************************************************************************/

include_once('config.php');
require_once('log4php/LoggerManager.php');
require_once('data/SugarBean.php');
require_once('modules/Products/Product.php');

global $app_list_strings;

// Account is used to store account information.
class ImportProduct extends Product {
	 var $db;

	// these are fields that may be set on import
	// but are to be processed and incorporated
	// into fields of the parent class


	// This is the list of fields that are required.
	var $required_fields =  array("name" => 1, "pnum" => 2);
	
	// This is the list of the functions to run when importing
	var $special_functions =  array(
	"add_create_assigned_user_name"
	,"fix_producturl"
	,"add_category"
	 );


        function add_create_assigned_user_name()
        {
		// global is defined in UsersLastImport.php
		global $imported_ids;
                global $current_user;

		if ( empty($this->assigned_user_name))
		{
			return;
		}

		$user_name = $this->assigned_user_name;
		
		// check if it already exists
        $focus = new User();

       	$query = "select * from {$focus->table_name} WHERE user_name='{$user_name}'";

        $GLOBALS['log']->info($query);

        $result = $this->db->query($query)
               or sugar_die("Error selecting sugarbean: ");

        $row = $this->db->fetchByAssoc($result, -1, false);

		// we found a row with that id
                if (isset($row['id']) && $row['id'] != -1)
                {
                        // if it exists but was deleted, just remove it entirely
                        if ( isset($row['deleted']) && $row['deleted'] == 1)
                        {
                                $query2 = "delete from {$focus->table_name} WHERE id='". PearDatabase::quote($row['id'])."'";

                                $GLOBALS['log']->info($query2);

                                $result2 = $this->db->query($query2)
                                        or sugar_die("Error deleting existing sugarbean: ");

                        }

			// else just use this id to link the user to the contact
                        else
                        {
                                $focus->id = $row['id'];
                        }
                }

		

		// now just link the account
                $this->assigned_user_id = $focus->id;
                $this->modified_user_id = $focus->id;

        }

    function fix_producturl()
	{
		if ( isset($this->producturl) &&
			preg_match("/^http:\/\//",$this->producturl) )
		{
			$this->producturl = substr($this->producturl,7);
		}	
	}

	
	function add_category()
	{
		global $app_list_strings;
		if ( isset($this->category) &&
			! isset( $app_list_strings['product_category_dom'][$this->category]))
		{
			unset($this->category);
		}	
	}

	//module prefix used by ImportSteplast when calling ListView.php
	var $list_view_prefix = 'PRODUCT';

	//removed importable_fields definition, this array is now built during the import process using the account
	//modules vardefs.

	//columns to be displayed in listview for displaying user's last import in ImportSteplast.php
	var $list_fields = Array(
			 'id'
			,'name'
			,'pnum'
			,'category'
			,'qty_available'
			,'unit'
			,'assigned_user_name'
			,'assigned_user_id'
			);

	//this list defines what beans get populated during an import of accounts
	var $related_modules = array("Products",); 
	

	function ImportProduct() {
		parent::Product();
	}

	function create_list_query($order_by, $where, $show_deleted = 0)
	{
		global $current_user;
		$query = '';

			$query = "SELECT distinct
							products.id,
							products.name, 
							products.pnum,
							products.type,
							products.category,
							products.qty_available,
							products.unit,
                            users.user_name as assigned_user_name ";
                



				
				$query.=" FROM users_last_import,products
                LEFT JOIN users ON products.assigned_user_id=users.id";
                



				
				$query.="	WHERE
				users_last_import.assigned_user_id=
					'{$current_user->id}'
				AND users_last_import.bean_type='Products'
				AND users_last_import.bean_id=products.id
				AND users_last_import.deleted=0
				AND products.deleted=0";
	if(! empty($order_by))
		{
			$query .= " ORDER BY $order_by";
		}

		return $query;

	
	}
}
?>
