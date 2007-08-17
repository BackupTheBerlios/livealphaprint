<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/*********************************************************************************
 * The contents of this file are subject to the SugarCRM Public License Version
 * 1.1.3 ("License"); You may not use this file except in compliance with the
 * License. You may obtain a copy of the License at http://www.sugarcrm.com/SPL
 * Software distributed under the License is distributed on an "AS IS" basis,
 * WITHOUT WARRANTY OF ANY KIND, either express or implied.  See the License
 * for the specific language governing rights and limitations under the
 * License.
 *
 * All copies of the Covered Code must include on each user interface screen:
 *    (i) the "Powered by SugarCRM" logo and
 *    (ii) the SugarCRM copyright notice
 * in the same form as they appear in the distribution.  See full license for
 * requirements.
 *
 * The Original Code is: SugarCRM Open Source
 * The Initial Developer of the Original Code is SugarCRM, Inc.
 * Portions created by SugarCRM are Copyright (C) 2004-2006 SugarCRM, Inc.;
 * All Rights Reserved.
 * Contributor(s): ______________________________________.
********************************************************************************/
/*********************************************************************************

* Description: This file handles the Data base functionality for the application.
* It acts as the DB abstraction layer for the application. It depends on helper classes
* which generate the necessary SQL. This sql is then passed to PEAR DB classes.
* The helper class is chosen in DBManagerFactory, which is driven by 'db_type' in 'dbconfig' under config.php.
*
* All the functions in this class will work with any bean which implements the meta interface.
* The passed bean is passed to helper class which uses these functions to generate correct sql.
*
* The meta interface has the following functions:
* getTableName()	        	Returns table name of the object.
* getFieldDefinitions()	    	Returns a collection of field definitions in order.
* getFieldDefintion(name)		Return field definition for the field.
* getFieldValue(name)	    	Returns the value of the field identified by name.
*                           	If the field is not set, the function will return boolean FALSE.
* getPrimaryFieldDefinition()	Returns the field definition for primary key
*
* The field definition is an array with the following keys:
*
* name 		This represents name of the field. This is a required field.
* type 		This represents type of the field. This is a required field and valid values are:
*      		int
*      		long
*      		varchar
*      		text
*      		date
*      		datetime
*      		double
*      		float
*      		uint
*      		ulong
*      		time
*      		short
*      		enum
* length	This is used only when the type is varchar and denotes the length of the string.
*  			The max value is 255.
* enumvals  This is a list of valid values for an enum separated by "|".
*			It is used only if the type is ?enum?;
* required	This field dictates whether it is a required value.
*			The default value is ?FALSE?.
* isPrimary	This field identifies the primary key of the table.
*			If none of the fields have this flag set to ?TRUE?,
*			the first field definition is assume to be the primary key.
*			Default value for this field is ?FALSE?.
* default	This field sets the default value for the field definition.
*
*
* Portions created by SugarCRM are Copyright (C) SugarCRM, Inc.
* All Rights Reserved.
* Contributor(s): ______________________________________..
********************************************************************************/

class MssqlManager extends DBManager
{
    var $dbType = 'mssql';

	function MssqlManager(){
		parent::DBManager();
	}


    function disconnect() {
		if(isset($this->database)) {
			if($this->dbType == "mssql") {
				mssql_close($this->database);
			}
			unset($this->database);
        }
    }


	function connect($configOptions = false, $dieOnError = false){
		global $sugar_config;
		
        if(!$configOptions)
			$configOptions = $sugar_config['dbconfig'];
		
        //SET DATEFORMAT to 'YYYY-MM-DD''
        ini_set ( 'mssql.datetimeconvert', '0' );
        
        //set the text size and textlimit to max number so that blob columns are not truncated
        ini_set ( 'mssql.textlimit','2147483647');
        ini_set ( 'mssql.textsize','2147483647');
        
        //set the connections parameters
		$connect_param = '';
		$configOptions['db_host_instance'] = trim($configOptions['db_host_instance']);
		if (empty($configOptions['db_host_instance'])){
			$connect_param =  $configOptions['db_host_name'];
		}else{
				$connect_param =  $configOptions['db_host_name']."\\".$configOptions['db_host_instance'];
		}
        
        //create persistent connection
        if ($sugar_config['dbconfigoption']['persistent'] == true) {
            $this->database =@mssql_pconnect($connect_param ,$configOptions['db_user_name'],$configOptions['db_password']);
        }
        //if no persistent connection created, then create regular connection
        if(!$this->database){
            $this->database = mssql_connect($connect_param ,$configOptions['db_user_name'],$configOptions['db_password']) or sugar_die("Could not connect to server ".$configOptions['db_host_name']." as ".$configOptions['db_user_name'].".");

            if($this->database  && $sugar_config['dbconfigoption']['persistent'] == true){
                $_SESSION['administrator_error'] = "<B>Severe Performance Degradation: Persistent Database Connections not working.  Please set \$sugar_config['dbconfigoption']['persistent'] to false in your config.php file</B>";
            }
        }
        //make sure connection exists
        if(!$this->database){
            sugar_die( "Unable to establish connection");
        }

        //select database 
        @mssql_select_db($configOptions['db_name']) or sugar_die( "Unable to select database: ");
        if($this->checkError('Could Not Connect:', $dieOnError))
        $GLOBALS['log']->info("connected to db");

        $GLOBALS['log']->info("Connect:".$this->database);

    }

	/*
	 * Return's the version of the database..
	 */
	function version() {
        $result = $this->query("SELECT @@VERSION as version");   
     	$row=$this->fetchByAssoc($result);
        return ($row['version']);
	}




	function checkError($msg='', $dieOnError=false)
	{
		if($this->dbType == "mssql")
		{
				$sqlmsg = mssql_get_last_message();
				$sqlpos = strpos($sqlmsg, 'Changed database context to');
				if ( $sqlpos !== false )  { $sqlmsg = '';}  // empty out sqlmsg if its 'Changed database context to'
				if ( strlen($sqlmsg) > 2 )
				{
					$GLOBALS['log']->fatal("SQL Server error: " . $sqlmsg);
				}

        }
        return false;
	}


	/**
	 * Enter description here...
	 *
	 * @param unknown_type $sql
	 * @param unknown_type $dieOnError
	 * @param unknown_type $msg
	 * @param unknown_type $suppress
	 * @return appropriate type of result set
	 * @return false -- on error
	 */
	function query($sql, $dieOnError=false, $msg='', $suppress=false){
		global $sql_queries;
		$sql_queries++;
		$GLOBALS['log']->info('Query:' . $sql);
		$this->checkConnection();
		$this->query_time = microtime();

			if($suppress)
			{








			} else
			{ 
				//echo "<BR><b>running sql = " . $sql . "</b><BR>";

				$result = @mssql_query($sql);

			}
            if(!$result){




                if($dieOnError) {
                    sugar_die('SQL Error : ' . mssql_get_last_message());
                }
                else {
                    echo 'SQL Error : ' . mssql_get_last_message();
                }
                $GLOBALS['log']->fatal(mssql_get_last_message() . ": " . $sql );   
            }
			$this->lastmysqlrow = -1;

		$this->query_time = microtime_diff($this->query_time, microtime());
		$GLOBALS['log']->info('Query Execution Time:'.$this->query_time);

		$this->dump_slow_queries($sql);

		$this->checkError($msg.' Query Failed:' . $sql . '::', $dieOnError);
		return $result;
	}
/*
 * This function take in the sql for a union query, the start and offset,
 * and wraps it around an "mssql friendly" limit query
 */
    function handleUnionLimitQuery($sql,$start,$count){
        //set the start to 0, no negs
        if ($start < 0) $start=0;
        $GLOBALS['log']->debug(print_r(func_get_args(),true));
        $this->lastsql = $sql;   
        //change the casing to lower for easier string comparison, and trim whitespaces
        $sql = strtolower(trim($sql)) ;
        //set default sql 
        $limitUnionSQL = $sql;
        $order_by_str = 'order by';
        //make array of order by's.  substring approach was proving too inconsistent
        $orderByArray = explode($order_by_str, $sql);
        $unionOrderBy = '';
        $rowNumOrderBy = '';
        //count the number of array elements 
        $unionOrderByCount = count($orderByArray);
        $arr_count = 0;
        
        //process if there are elements
        if ($unionOrderByCount){
            //we really want the last ordery by, so reconstruct string
            //adding a 1 to count, as we dont wish to process the last element
           $unionsql = '';
           while($unionOrderByCount>$arr_count+1){
                $unionsql .= $orderByArray[$arr_count];
                $arr_count = $arr_count+1;
                //add an "order by" string back if we are coming into loop again
                //remember they were taken out when array was created  
                if($unionOrderByCount>$arr_count+1){
                    $unionsql .= "order by";
                }
            }
            //grab the last order by element, set both order by's'            
            $unionOrderBy = $orderByArray[$arr_count];
            $rowNumOrderBy = $unionOrderBy;

            //if last element contains a "select", then this is part of the union query,
            //and there is no order by to use
           if(strpos($unionOrderBy, "select")){
                $unionsql = $sql;
                //with no guidance on what to use for required order by in rownumber function,
                //resort to using name column.
                $rowNumOrderBy = 'id';
                $unionOrderBy = "";
        
            }
        }else{
        //there are no order by elements, so just pass back string
            $unionsql = $sql;
            //with no guidance on what to use for required order by in rownumber function,
            //resort to using name column.
            $rowNumOrderBy = 'id';
            $unionOrderBy = '';
        }
        //Unions need the column name being sorted on to match acroos all queries in Union statement
        //so we do not want to strip the alias like in other queries.  Just add the "order by" string and
        //pass column name as is 
         if ($unionOrderBy != '')
         {
            $unionOrderBy = ' order by ' . $unionOrderBy;
         }

        //if start is 0, then just use a top query
        if($start == 0){
            $limitUnionSQL = "select top $count * from (" .$unionsql .") as top_count ".$unionOrderBy;
        }else{
            //if start is more than 0, then use top query in conjunction 
            //with rownumber() function to create limit query.
            $limitUnionSQL = "select top $count * from( select ROW_NUMBER() OVER ( order by "
            .$rowNumOrderBy.") AS row_number, * from ("
            .$unionsql .") As numbered) "
            . "As top_count_limit WHERE row_number > $start "
            .$unionOrderBy;
        }
        return $limitUnionSQL;
    }

	/**
	 * Return the results of the query with limits applied
	 *
	 * @param unknown_type $sql
	 * @param unknown_type $start
	 * @param unknown_type $count
	 * @param unknown_type $dieOnError
	 * @param unknown_type $msg
	 * @return appropriate result set type for the current database
	 * @return false -- on error
	 */
	function limitQuery($sql,$start,$count, $dieOnError=false, $msg=''){
    $newSQL = $sql;
        if (strpos($sql, "UNION"))
        {
            $newSQL = $this->handleUnionLimitQuery($sql,$start,$count);   
        }else{
    		if ($start < 0) $start=0;
    		$GLOBALS['log']->debug(print_r(func_get_args(),true));
            $this->lastsql = $sql;
            preg_match("/^(.*SELECT )(.*?FROM.*WHERE)(.*)$/is",$sql, $matches);
            if(!empty($matches[3])){
                if($start == 0){
                	$match_two = strtolower($matches[2]);
    				if(!strpos($match_two, "distinct")> 0 && strpos($match_two, "distinct") !==0){
    					//proceed as normal
                    	$newSQL = $matches[1] . " TOP $count " . $matches[2] . $matches[3];
    				}else{

                        $distinct_o = strpos($match_two, "distinct");
                        $up_to_distinct_str = substr($match_two, 0, $distinct_o);
                        //check to see if the distinct is within a function, if so, then proceed as normal
                        if(strpos($up_to_distinct_str,"(")){
                        //proceed as normal
                        $newSQL = $matches[1] . " TOP $count " . $matches[2] . $matches[3];

                        }else{
                        //if distinct is not within a function, then parse 
                        
        					//string contains distinct clause, "TOP needs to come after Distinct"
        					//get position of distinct
        					$match_zero = strtolower($matches[0]);
        					$distinct_pos = strpos($match_zero , "distinct");
        					//get position of where
        					$where_pos = strpos($match_zero, "where");
        					//parse through string
        					$beg = substr($matches[0], 0, $distinct_pos+9 );
        					$mid = substr($matches[0], strlen($beg), ($where_pos+5) - (strlen($beg)));
        					$end = substr($matches[0], strlen($beg) + strlen($mid) );
        					//repopulate matches array
        					$matches[1] = $beg; $matches[2] = $mid; $matches[3] = $end;
        
        					$newSQL = $matches[1] . " TOP $count " . $matches[2] . $matches[3];
                        }
    				}
                }
                else{
                    preg_match("/^(.*)(ORDER BY)(.*)$/is",$matches[3], $orderByMatch);

                    //if there is a distinct clause, parse sql string as we will have to insert the rownumber
                    //for paging, AFTER the distinct clause
                    $hasDistinct = strpos($matches[0], "distinct");
                    if($hasDistinct){
                            $matches_sql = strtolower($matches[0]);
                            $distinct_pos = strpos($matches_sql , "distinct");
                            $distinct_com_pos = strpos($matches_sql , ",",$distinct_pos );
                            $where_pos = strpos($matches_sql, "where");
                            //split the sql into a string before and after the distinct clause
                            if ($distinct_pos>0 && $distinct_com_pos>0){
                                $distinctSQLARRAY[0] = substr($matches_sql,0, $distinct_com_pos+1);
                                $distinctSQLARRAY[1] = substr($matches_sql,$distinct_com_pos+1);
                                //get position of order by (if it exists) so we can strip it from the string
                                $ob_pos = strpos($distinctSQLARRAY[1], "order by");
                                if($ob_pos){
                                $distinctSQLARRAY[1] = substr($distinctSQLARRAY[1],0,$ob_pos);    
                                    
                                }
  
                            } 
                        
                    }
               
                     if(!empty($orderByMatch[3])){
                        //if there is a distinct clause, form query with rownumber after distinct
                        if($hasDistinct){
                            $newSQL ="SELECT TOP $count * FROM
                         (
                              " . $distinctSQLARRAY[0] . " ROW_NUMBER() OVER (ORDER BY " . $this->returnOrderBy($sql, $orderByMatch[3]) . ") AS row_number, " . $distinctSQLARRAY[1]. "
                         ) AS a
                         WHERE row_number > $start";
                         
                        }else{
                        $newSQL ="SELECT TOP $count * FROM
                         (
                              " . $matches[1] . " ROW_NUMBER() OVER (ORDER BY " . $this->returnOrderBy($sql, $orderByMatch[3]) . ") AS row_number, " . $matches[2] . $orderByMatch[1]. "
                         ) AS a
                         WHERE row_number > $start";
        
                        }
                        
                    }else{
                        //if there is a distinct clause, form query with rownumber after distinct
                        if($hasDistinct){
                             $newSQL ="SELECT TOP $count * FROM
                             (
                                  " . $distinctSQLARRAY[0] . " ROW_NUMBER() OVER (ORDER BY ".$this->getTableNameFromModuleName($_REQUEST['module'],$sql).".id) AS row_number, " . $distinctSQLARRAY[1] . "
                             ) AS a
                             WHERE row_number > $start";

                        }else{
                			 $newSQL ="SELECT TOP $count * FROM
                             (
                                  " . $matches[1] . " ROW_NUMBER() OVER (ORDER BY ".$this->getTableNameFromModuleName($_REQUEST['module'],$sql).".id) AS row_number, " . $matches[2] . $matches[3]. "
                             ) AS a
                             WHERE row_number > $start";
                        }
                     }
                    
                }
            }
        
        }
		$GLOBALS['log']->debug('Limit Query: ' . $newSQL);
        $result =  $this->query($newSQL, $dieOnError, $msg);
        $this->dump_slow_queries($newSQL);
        return $result;
	}


/*This module searches for begginning and ending characters.  It places contents into
 * an array and replaces contents in original string.  This is used to account for use of
 * nested functions while aliasing column names
 **/

function removePatternFromSQL($p_sql, $strip_beg, $strip_end, $patt = 'patt'){
//strip all single quotes out
	$beg_sin = 0;
	$sec_sin = 0;
	$count = substr_count ( $p_sql, $strip_beg);
	$increment = 1;
	if($strip_beg != $strip_end){
		$increment = 2;
	}
	$i=0;
	$offset = 0;
	$strip_array = array();
	while ($i<$count){
		$beg_sin = strpos($p_sql, $strip_beg, $offset);
		$sec_sin = strpos($p_sql, $strip_end, $beg_sin+1);
		$strip_array[$patt.$i] = substr($p_sql, $beg_sin, $sec_sin - $beg_sin +1);
		if($increment>1){

			//we are in here because beginning and end patterns are not identical, so search for nesting
			$exists = strpos($strip_array[$patt.$i], $strip_beg );
			if($exists>=0){
				$nested_pos = (strrpos($strip_array[$patt.$i], $strip_beg ));
				$strip_array[$patt.$i] = substr($p_sql,$nested_pos+$beg_sin,$sec_sin - ($nested_pos+$beg_sin)+1);
				$p_sql = substr($p_sql, 0, $nested_pos+$beg_sin) . " ##". $patt.$i."## " . substr($p_sql, $sec_sin+1);
				$i = $i + 1;
				$beg_sin = $nested_pos;
				continue;
			}
		}
	$p_sql = substr($p_sql, 0, $beg_sin) . " ##". $patt.$i."## " . substr($p_sql, $sec_sin+1);
	//move the marker up
	$offset = $sec_sin+1;

	$i = $i + 1;
	}
	$strip_array['sql_string'] = $p_sql;
	return $strip_array;
}

	function addPatternToSQL($token, $pattern_array){
	//strip all single quotes out
	$pattern_array = array_reverse($pattern_array);

	foreach($pattern_array as $key => $replace){
		$token = str_replace( "##".$key."##", $replace,$token);
	}

	return $token;

}


	function getAliasFromSQL($sql,$alias){
	preg_match("/^(.*SELECT)(.*?FROM.*WHERE)(.*)$/is",$sql, $matches);
	//parse all single and double  quotes out of array
	$sin_array = $this->removePatternFromSQL($matches[2], "'", "'","sin_");
	$new_sql = array_pop($sin_array);
	$dub_array = $this->removePatternFromSQL($new_sql, "\"", "\"","dub_");
	$new_sql = array_pop($dub_array);


	//search for parenthesis
	$paren_array = $this->removePatternFromSQL($new_sql, "(", ")", "par_");
	$new_sql = array_pop($paren_array);

	//all functions should be removed now, so split the array on comma's
	$mstr_sql_array = split(",", $new_sql);
	foreach($mstr_sql_array as $token ){
		if (strpos($token, $alias)){
			//found token, add back comments
			$token = $this->addPatternToSQL($token, $paren_array);
			$token = $this->addPatternToSQL($token, $dub_array);
			$token = $this->addPatternToSQL($token, $sin_array);

			//log and break out of this function
			return $token;
		}
	}
	return null;

}


/*
 * This function will find the alias of the order by column, and then return the preceding column name
 */
function findColumnByAlias($sql, $orderMatch){

    //change case to lowercase
    $sql = strtolower($sql);
    //check for the alias plus a space and comma
    $found_in_sql = strpos($sql, $orderMatch." ,");
    //if no match found, then try with no space and comma
    if(!$found_in_sql){
        $found_in_sql = strpos($sql, $orderMatch.",");
    }
    //set default for found variable
    $found = $found_in_sql;

    //if still no match found, then we need to parse through the string
    if(!$found_in_sql){
        //get count of how many times the match exists in string 
        $found_count = substr_count($sql, $orderMatch);
        $i = 0;
        $first_ = 0;
        $len = strlen($orderMatch);
        //loop through string as many times as there is a match
        while($found_count>$i){
            //get the first match
            $found_in_sql = strpos($sql, $orderMatch,$first_);
                //make sure there was a match
                if($found_in_sql){
                    //grab the next 2 individual characters
                    $str_plusone = substr($sql,$found_in_sql + $len,1);
                    $str_plustwo = substr($sql,$found_in_sql + $len+1,1);
                    //if one of those characters is a comma, then we have our alias
                    if ($str_plusone === "," || $str_plustwo === ","){
                        //keep track of this position
                        $found = $found_in_sql;
                    }
                }
            //set the offset and increase the iteration counter    
            $first_ = $found_in_sql+$len;
            $i = $i+1;
            }
        }
    //return $found, defaults have been set, so if no match was found it will be a negative number
    return $found;
}


/*This module will return the order by string to use in case the column has been aliased
 * */
function returnOrderBy($sql, $orig_order_match){
//_pp($sql);_pp($orig_order_match);
    $sql = strtolower($sql);
	$orig_order_match = trim($orig_order_match);
	if(strpos($orig_order_match, ".")){
		//this has a tablename defined, pass in the order match
		return $orig_order_match;
	}
	//grab first space in order by
	$firstSpace = strpos($orig_order_match, " ");

	//split order by into column name and ascending/descending
	$orderMatch = " " . strtolower(substr($orig_order_match, 0, $firstSpace));
	$asc_desc =  substr($orig_order_match,$firstSpace);

	//look for column name as an alias in sql string
    $found_in_sql = $this->findColumnByAlias($sql, $orderMatch);

	if(!$found_in_sql){
		//break out of here, log this
		$GLOBALS['log']->debug("No match was found for order by, pass string back untouched as: $orig_order_match");
		return $orig_order_match;
	}else{
		//if found, then parse and return
		//grab string up to the aliased column
		$GLOBALS['log']->debug("order by found, process sql string");
		//$psql = substr($sql, 0, $found_in_sql);

		$psql = (trim($this->getAliasFromSQL($sql, $orderMatch ))); 

		//_pp($psql);
		if (empty($psql)){
			$psql = trim(substr($sql, 0, $found_in_sql));
		}


		//grab the last comma before the alias
		$comma_pos = strrpos($psql, " ");
		//substring between the comma and the alias to find the joined_table alias and column name
		$col_name = substr($psql,0, $comma_pos);

		//make sure the string does not have an end parenthesis
		//and is not part of a function (i.e. "ISNULL(leads.last_name,'') as name"  )
		//this is especially true for unified search from home screen

    	if(strpos($psql, " as ")){
			$alias_beg_pos = strpos($psql, " as ");
		}else{
			$alias_beg_pos = strpos($psql, " ");
		}
		$col_name = substr($psql,0, $alias_beg_pos );
		//add the "asc/desc" order back
		$col_name = $col_name. " ". $asc_desc;

		//pass in new order by
		$GLOBALS['log']->debug("order by being returned is " . $col_name);
		return $col_name;
	}

}
/*
 * This function will take in a string of the module and retrieve the correspondent table name
 * */
function getTableNameFromModuleName($module_str,$sql){
	require_once('include/modules.php');
	global $beanList, $beanFiles;
	$GLOBALS['log']->debug("Module being processed is " . $module_str);
	//get the right module files
	//the module string exists in bean list, then process bean for correct table name
	if (isset($beanList[$module_str])  &&  isset($beanFiles[$beanList[$module_str]])){
		//if the class is not already loaded, then load files
		if (!class_exists($beanList[$module_str])) {
			require_once($beanFiles[$beanList[$module_str]]);
		}

	//instantiate new bean
	$module_bean = new $beanList[$module_str]();
	//get table name from bean
	$tbl_name = $module_bean->table_name;
	//make sure table name is not just a blank space, or empty
	$tbl_name = trim($tbl_name);

	if(empty($tbl_name)){
		$GLOBALS['log']->debug("Could not find table name for module $module_str. ");
		$tbl_name = $module_str;
	}
	}else{
		//since the module does NOT exist in beanlist, then we have to parse the string
		//and grab the table name from the passed in sql
		$GLOBALS['log']->debug("Could not find table name from module in request, retrieve from passed in sql");
		$tbl_name = $module_str;
		$sql = strtolower($sql);

		//look for the location of the "from" in sql string
		$fromLoc = strpos ( $sql,"from" );
		if ($fromLoc>0){
			//found from, substring from the "FROM" string in sql to end
			$tableEnd = substr($sql, $fromLoc+5);
			//We know that tablename will be next parameter after from, so
			//grab the next space after table name.
			$next_space = strpos ( $tableEnd," " );
			if ($next_space > 0){
				$tbl_name= substr($tableEnd,0, $next_space);
				if(empty($tbl_name)){
					$GLOBALS['log']->debug("Could not find table name sql either, return $module_str. ");
					$tbl_name = $module_str;
				}
			}

			//grab the table, to see if it is aliased
			$aliasTableEnd = trim(substr($tableEnd, $next_space));
			$alias_space = strpos ($aliasTableEnd, " " );
			if ($alias_space > 0){
				$alias_tbl_name= substr($aliasTableEnd,0, $alias_space);
				strtolower($alias_tbl_name);
				if(empty($alias_tbl_name) ||$alias_tbl_name == "where" ||$alias_tbl_name == "inner"
				||$alias_tbl_name == "left" ||$alias_tbl_name == "join"||$alias_tbl_name == "outer" ||$alias_tbl_name == "right"){
					//not aliased, do nothing
				}elseif($alias_tbl_name == "as"){
						//the next word is the table name
						$aliasTableEnd = trim(substr($aliasTableEnd, $alias_space));
						$alias_space = strpos ($aliasTableEnd, " " );
						if ($alias_space > 0){
							$alias_tbl_name= trim(substr($aliasTableEnd,0, $alias_space));
							if(!empty($alias_tbl_name)){$tbl_name = $alias_tbl_name;}
						}

				}else{
					//this is table alias
					$tbl_name = $alias_tbl_name;
				}
			}
		}
	}
	//return table name
	$GLOBALS['log']->debug("Table name for module $module_str is: ".$tbl_name);
	return $tbl_name;
}


	function getOne($sql, $dieOnError=false, $msg=''){
		$GLOBALS['log']->info("Get One: . |$sql|");
		$this->checkConnection();

		$queryresult =$this->query($sql, $dieOnError, $msg);
        if (!$queryresult)
        {
	        $result = false;
        }else
        {
	        $result =mssql_result($queryresult,0,0);
        }
		$this->checkError($msg.' Get One Failed:' . $sql . '::', $dieOnError);

		return $result;
	}

	function getFieldsArray(&$result, $make_lower_case=false)
	{
		$field_array = array();

		if(! isset($result) || empty($result))
		{
			return 0;
		}

			$i = 0;
			while ($i < mssql_num_fields($result))
			{
   				$meta = mssql_fetch_field($result, $i);

   				if (!$meta)
				{
					return 0;
   				}

				array_push($field_array,$meta->name);

   				$i++;
			}

		return $field_array;

	}

	function getRowCount(&$result){
		if(isset($result) && !empty($result)){
				return mssql_num_rows($result);
		}
		return 0;
	}


	function getAffectedRowCount(&$result){
				$result = mssql_query("SELECT @@ROWCOUNT");
				list($affected) = mssql_fetch_row($result);
				return $affected;

	}


	function requireSingleResult($sql, $dieOnError=false,$msg='', $encode=true){
			$result = $this->query($sql, $dieOnError, $msg);

			//$GLOBALS['log']->fatal("requireSingleResult result:$result");
            	$rowcount = $this->getRowCount($result );
    			if (  $rowcount == 1){
	       			return $result;
    			}
			$GLOBALS['log']->error('Rows Returned:'. $this->getRowCount($result) .' No row or more than 1 row returned for '. $sql);
			return '';
	}

		/**
	 * Retrieve rows from the result set.  If the result set is false do nothing.
	 *
	 * @param unknown_type $result
	 * @param unknown_type $rowNum
	 * @param unknown_type $encode
	 * @return unknown
	 */
    function fetchByAssoc(&$result, $rowNum = -1, $encode=true)
	{
		if(isset($result) && $result && $rowNum < 0)
		{
		$row = mssql_fetch_assoc($result);
		//MSSQL returns a space " " when a varchar column is empty ("") and not null.
		//We need to iterate through the returned row array and strip empty spaces
		if(!empty($row)){
				foreach($row as $key => $column){
					//notice we only strip if one space is returned.  we do not want to strip
					//strings with intentional spaces (" foo ")
					if (!empty($column) && $column ==" "){
						$row[$key] = '';
					}
				}
		}

				if($encode && $this->encode&& is_array($row))return array_map('to_html', $row);
				return $row;
		}
		if($this->getRowCount($result) > $rowNum)
		{
			if ( $rowNum == -1 ) { $rowNum = 0; }
			@mssql_data_seek($result, $rowNum);
		}
		$this->lastmysqlrow = $rowNum;
		$row = @mssql_fetch_assoc($result);
		if($encode && $this->encode && is_array($row))return array_map('to_html', $row);
		{
			    return $row;
        }
        $row = $result->fetchRow(DB_FETCHMODE_ASSOC, $rowNum);
        if($encode && $this->encode){
            return array_map('to_html', $row);
        }
		return $row;
	}


    function quote($string,$isLike=true)
	{
        global $sugar_config;
        $string = from_html($string);
        $string = str_replace("'","''", $string);
        return $string;
    }

	 /* Samething as quote, except for arrays.
	  */
	 function arrayQuote(&$array, $isLike=true) {
	 	for($i = 0; $i < count($array); $i++)
	 		$array[$i] = MssqlManager::quote($array[$i]);
	 }


    function tableExists($tableName)
	{

        $GLOBALS['log']->info("tableExists: $tableName");

        $this->checkConnection();
        $result = $this->query("SELECT * FROM SYSOBJECTS WHERE XTYPE = 'U' and name = '".$tableName."'");
         return ($this->getRowCount($result) == 0) ? false : true;
    }

    /**
     * Returns an array of table for this database
     * @return	$tables		an array of with table names
     * @return	false		if no tables found
     */
    function getTablesArray() {

	   	global $sugar_config;
    	$GLOBALS['log']->debug('MsSQL::getTablesArray() is not implemented yet, returning false');
    	$this->checkConnection();

    	return false; // not implemented yet
    }


    /**
	* This method implements creation of a db table for a bean.
	* Portions created by SugarCRM are Copyright (C) SugarCRM, Inc.
	* All Rights Reserved.
	* Contributor(s): ______________________________________..
	*/
    function createTable($bean){
        $sql = $this->helper->createTableSQL($bean);
        $this->tableName = $bean->getTableName();
        $this->createTableSQL($sql);
    }


} // end class definition

?>
