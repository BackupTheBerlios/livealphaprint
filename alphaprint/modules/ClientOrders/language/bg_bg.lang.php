<?php

 /*********************************************************************************
  * The contents of this file are subject to the SugarCRM Professional End User
  * License Agreement ('License') which can be viewed at
  * http://www.sugarcrm.com/crm/clientorders/sugar-professional-eula.html
  * By installing or using this file, You have unconditionally agreed to the
  * terms and conditions of the License, and You may not use this file except in
  * compliance with the License.  Under the terms of the license, You shall not,
  * among other things: 1) sublicense, resell, rent, lease, redistribute, assign
  * or otherwise transfer Your rights to the Software, and 2) use the Software
  * for timesharing or service bureau purposes such as hosting the Software for
  * commercial gain and/or for the benefit of a third party.  Use of the Software
  * may be subject to applicable fees and any use of the Software without first
  * paying applicable fees is strictly prohibited.  You do not have the right to
  * remove SugarCRM copyrights from the source code or user interface.
  * All copies of the Covered Code must include on each user interface screen:
  * (i) the 'Powered by SugarCRM' logo and
  * (ii) the SugarCRM copyright notice
  * in the same form as they appear in the distribution.  See full license for
  * requirements.
  * Your Warranty, Limitations of liability and Indemnity are expressly stated
  * in the License.  Please refer to the License for the specific language
  * governing these rights and limitations under the License.  Portions created
  * by SugarCRM are Copyright (C) 2004-2005 SugarCRM, Inc.; All Rights Reserved.
  ********************************************************************************/
  
  /*********************************************************************************
  * Description : Defines the Bulgarian language pack for the base application.
  * Portions created by SugarCRM are Copyright (C) SugarCRM, Inc. All Rights Reserved.
  * Contributor(s):
  *********************************************************************************/
 
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');

$mod_strings = array ( 
   	'LBL_STATUS' => 'Статус',
   	'LBL_ACCOUNT_NAME' => 'Клиент' ,
	'LBL_CONTACT_NAME' => 'Лице за контакт' ,
	'LBL_CLIENTORDER_INFORMATION' => 'Информация за Клиентска поръчка' ,
	'LBL_CODE' => 'Издание #' ,
	'LBL_VISION' => 'Визия' ,
	'LBL_NAME' => 'Име:' ,
	'LBL_PERIOD' => 'Периодичност' ,
	'LBL_NOTE' => 'Бележка' ,
	'LBL_CATEGORY' => 'Категория' ,
	'LBL_QUANTITY' => 'Тираж' ,
	'LBL_DEADLINE' => 'Краен срок' ,
	'LBL_SAMPLES' => 'Мостри/Проби',
    'LBL_FILE' => 'Доставка на файл',
   	'LBL_COMPONENTS' => 'Брой компоненти',
   	'LBL_CLIENTORDER_QTY' => 'Допълнителна информация' ,
   	'LBL_FSIZE' => 'Формат' ,
   	'LBL_COVER' => 'Корица' ,
   	'LBL_WRAPPED' => 'Обложка' ,
   	'LBL_VOLUME' => 'Брой страници' ,
   	'LBL_ADD_CLIENTORDER' => 'Добави Клиентска поръчка:' ,
   	'LBL_NUMBER' => 'Клиентска поръчка #' ,
   
	'LBL_MODULE_NAME' => 'Клиентска поръчка' ,
   	'LBL_MODULE_TITLE' => 'Клиентска поръчка: Начало' ,
   	'LBL_SEARCH_FORM_TITLE' => 'Търси в Клиентски поръчки' ,
   	'LBL_LIST_FORM_TITLE' => 'Клиентски поръчки' ,
   	'LBL_HISTORY_TITLE' => 'История' ,
   
   	'LBL_ID' => 'Id:' ,
   	'LBL_DATE_ENTERED' => 'Дата на въвеждане:' ,
   	'LBL_DATE_MODIFIED' => 'Дата на промяна:' ,
   	'LBL_ASSIGNED_USER_ID' => 'Отговорник:' ,
   	'LBL_MODIFIED_USER_ID' => 'Modified User Id:' ,
   	'LBL_CREATED_BY' => 'Създаден от' ,
   	'LBL_TEAM_ID' => 'Екип:' ,
   	'LBL_DESCRIPTION' => 'Описание:' ,
    'LBL_DELETED' => 'Изтрит:' ,
    
    'LBL_LIST_NAME' => 'Име' ,
    'LBL_LIST_ASSIGNED_USER_ID' => 'Отговорник' ,
    'LBL_PROJECT_SUBPANEL_TITLE' => 'Клиентска поръчка' ,
   
   	'LBL_CONTACT_SUBPANEL_TITLE' => 'Контакти' ,
   	'LBL_ACCOUNT_SUBPANEL_TITLE' => 'Клиенти' ,
   	'LBL_OPPORTUNITY_SUBPANEL_TITLE' => 'Сделки' ,
   	'LBL_QUOTE_SUBPANEL_TITLE' => 'Оферти' ,
   	'CONTACT_REMOVE_PROJECT_CONFIRM' => 'Сигурни ли сте че искате да премахнете този контакт?' ,
   	
   	'LNK_NEW_CLIENTORDERS' => 'Ново Клиентска поръчка' ,
   	'LNK_CLIENTORDERS_LIST' => 'Клиентски поръчки' ,
   	'LNK_NEW_CLIENTORDER_COMPONENTS' => 'Нов ПТР компонент' ,
   	'LNK_CLIENTORDER_COMPONENTS_LIST' => 'ПТР компоненти' ,
   	
	'LBL_DEFAULT_SUBPANEL_TITLE' => 'Клиентска поръчка' ,
   	'LBL_ACTIVITIES_TITLE' => 'Дейности' ,
   	'LBL_QUICK_NEW_CLIENTORDERS' => 'Нова Клиентска поръчка' ,
   	'LBL_CLIENTORDER_COMPONENTS_SUBPANEL_TITLE' => 'Компоненти' ,
   	'LBL_CLIENTORDER_OPERATIONS_SUBPANEL_TITLE' => 'Операции за продукт',
   	'LBL_ACTIVITIES_SUBPANEL_TITLE' => 'Дейности' ,
   	'LBL_HISTORY_SUBPANEL_TITLE' => 'История' ,
   	'LBL_PRINTING_SUBPANEL_TITLE'=>'Печат',
   	'LBL_CONTACTS_SUBPANEL_TITLE' => 'Контакти' ,
   	'LBL_ACCOUNTS_SUBPANEL_TITLE' => 'Клиенти' ,
   	'LBL_OPPORTUNITIES_SUBPANEL_TITLE' => 'Сделки',
   	'LBL_CLIENTORDERCLIENTORDERS_SUBPANEL_TITLE' => 'Калкулация ПТР',
   	
   	'LBL_CALC_BUTTON_TITLE' => 'Калкулирай [Alt+C]' ,
   	'LBL_QUOTE_BUTTON_TITLE' => 'Оферирай',
   	'LBL_CLIENTORDER_NOT_CLIENTORDERD' => 'Не сте калкулирали ПТР-то',
   	'LBL_COMPONENT_NOT_CLIENTORDERD' => 'Не сте калкулирали всички компонети', 
   	'LBL_COMPONENTS_NOT_CLIENTORDERD' => 'Дадените компонети не са калкулирани',
   	'LBL_CONFIRM_CLIENTORDER' => 'Желаети ли да бъдат калкулирани автоматично ?',
  	 
   	'LBL_EST_NAME_PREFIX' => 'Калкулация',   
   	'LBL_CALCULANT_NAME' => 'Калкулант',
   	'LBL_COMPONENTS_LIST' => 'Компоненти',
   	'LBL_NO_COMPONENTS' => 'Няма дефинирани компоненти',
   	'LBL_ADD_COMPONENT' => 'Добави',
   	'LBL_NO_CLIENT_REQUEST_AVAILABLE' => 'Няма дефинирана заявка за това издание. Искате ли да създадете ?',
   	
   		//for the components list in the pdf 
   	'LBL_COMP_NAME' => 'Име',
   	'LBL_COMP_TYPE' => 'Тип',
   	'LBL_COMP_NUMBER' => 'Номер',
   	'LBL_COMP_PAPER' => 'Хартия',
   	
   	'LBL_PRODUCT_INFORMATION' => 'Информация за издание' ,
   	'LBL_ESTIMATE_INFORMATION' => 'Информация за ПТР',
   	'LBL_CLIENTREQUEST' => 'Заявка:',
   	'LBL_REQUEST_INFORMATION' => 'Информация за Заявка',
    'LBL_CLIENTREQUEST_NUMBER' => 'Заявка #',
    
    'LBL_QUOTE_INFORMATION' => 'Информация за оферта',
   	'LBL_QUOTE' => 'Оферта:',
    'LBL_QUOTE_NUMBER' => 'Оферта #',
   	'LBL_CLIENTREQUEST_INFORMATION' => 'Информация за заявка'
   	
);
?>
