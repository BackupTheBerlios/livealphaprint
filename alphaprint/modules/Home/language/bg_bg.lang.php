<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/*********************************************************************************
  * The contents of this file are subject to the SugarCRM Professional End User
  * License Agreement ('License') which can be viewed at
  * http://www.sugarcrm.com/crm/products/sugar-professional-eula.html
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

$mod_strings = array (
'LBL_NEW_FORM_TITLE' => 'Нов контакт' ,
'LBL_FIRST_NAME' => 'Име:' ,
'LBL_LAST_NAME' => 'Фамилия:' ,
'LBL_LIST_LAST_NAME' => 'Фамилия' ,
'LBL_PHONE' => 'Тел.:' ,
'LBL_EMAIL_ADDRESS' => 'E-mail:' ,
'LBL_PIPELINE_FORM_TITLE' => 'Моята статистика' ,
'LNK_NEW_CONTACT' => 'Създай контакт' ,
'LNK_NEW_ACCOUNT' => 'Създай клиент' ,
'LNK_NEW_OPPORTUNITY' => 'Създай сделка' ,
'LNK_NEW_LEAD' => 'Създай предв. контакт' ,
'LNK_NEW_CASE' => 'Създай дело' ,
'LNK_NEW_NOTE' => 'Създай бележка или приложение' ,
'LNK_NEW_CALL' => 'Насрочи обаждане' ,
'LNK_NEW_EMAIL' => 'Архивирай E-mail' ,
'LNK_COMPOSE_EMAIL' => 'Състави E-mail' ,
'LNK_NEW_MEETING' => 'Насрочи среща' ,
'LNK_NEW_TASK' => 'Създай задача' ,
'LNK_NEW_BUG' => 'Нов проблем' ,
'LBL_ADD_BUSINESSCARD' => 'Въведете удостоверение' ,
'ERR_ONE_CHAR' => 'Моля, въведете поне една буква или цифра за търсене...',
'LBL_OPEN_TASKS' => 'Моите открити задачи',
'LBL_SEARCH_RESULTS' => 'Резултати от търсенето' ,
  'LBL_SEARCH_RESULTS_IN' => 'в',
'LNK_NEW_SEND_EMAIL' => 'Изпрати E-mail' ,
  'LBL_NO_RESULTS_IN_MODULE' => '-- Няма резултати --',
  'LBL_NO_RESULTS' => '<h2>Нищо не е намерено. Пробвайте да търсите отново.</h2><br>',
  'LBL_NO_RESULTS_TIPS' => '<h3>Съвет:</h3><ul><li>Уверете се че сте избрали нужната категория.</li><li>Укажете по-подробно описание на търсенето.</li><li>Ако все още няма резултат - пробвайте разширеното търсене за дадения модул.</li></ul>',
  'LBL_RELOAD_PAGE' => 'Моля, <a href="javascript: window.location.reload()">презаредете тази страница</a> за да използвате този дашлет.',
  'LBL_ADD_DASHLETS' => 'Добави дашлет',
  'LBL_CLOSE_DASHLETS' => 'Затвори',
  'LBL_OPTIONS' => 'Опции',
   
  // dashlet search fields
  'LBL_TODAY'=>'Днес',
  'LBL_YESTERDAY' => 'Вчера', 
  'LBL_TOMORROW'=>' Утре ',
  'LBL_LAST_WEEK'=>'Миналата седмица',
  'LBL_NEXT_WEEK'=>'Следващата седмица',
  'LBL_LAST_7_DAYS'=>'Последните 7 дни',
  'LBL_NEXT_7_DAYS'=>'Следващите 7 дни',
  'LBL_LAST_MONTH'=>'Последният месец',
  'LBL_NEXT_MONTH'=>'Следващият месец',
  'LBL_LAST_QUARTER'=>'Последни 4 мес.',
  'LBL_THIS_QUARTER'=>'Настоящи 4 мес.',
  'LBL_LAST_YEAR'=>'Последната година',
  'LBL_NEXT_YEAR'=>'Следващата година',
  'LBL_THIS_MONTH' => 'Този месец',
  'LBL_THIS_YEAR' => 'Тази година',
  'LBL_LAST_30_DAYS' => 'Последните 30 дни',
  'LBL_NEXT_30_DAYS' => 'Cледващите 30 дни',
  'LBL_THIS_MONTH' => 'Този месец',
  'LBL_THIS_YEAR' => 'Тази година',
'LBL_LAST_30_DAYS' => 'Прошедшие 30 дней',
  'LBL_NEXT_30_DAYS' => 'Следващите 30 дни',

  // Dashlet Categories
  'dashlet_categories_dom' => array(
      'Module Views' => 'Модули',
      'Portal' => 'Портал',
      'Charts' => 'Графики',
      'Tools' => 'Сервиз',
      'Miscellaneous' => 'Разни') ,
  'LBL_MAX_DASHLETS_REACHED' => 'Достигнахте максималният брой дашлети, разрешени от администратора. Изтрийте дашлет, ако желаете да добавите нов.',
  'LBL_ADDING_DASHLET' => 'Добавяне на дашлета...',
  'LBL_ADDED_DASHLET' => 'Дашлета е добавен',
  'LBL_REMOVE_DASHLET_CONFIRM' => 'Сигорни ли сте че искате да премахнете този дашлет?',
  'LBL_REMOVING_DASHLET' => 'Премахване на дашлета...',
  'LBL_REMOVED_DASHLET' => 'Дашлета е премахнат',
  'LBL_DASHLET_CONFIGURE_GENERAL' => 'Основни настройки',
  'LBL_DASHLET_CONFIGURE_FILTERS' => 'Настройка на филтри',
  'LBL_DASHLET_CONFIGURE_MY_ITEMS_ONLY' => 'Настрока на моите записи',
  'LBL_DASHLET_CONFIGURE_TITLE' => 'Заглавие',
  'LBL_DASHLET_CONFIGURE_DISPLAY_ROWS' => 'Покажи редиците',
//  'LBL_DASHLET_CONFIGURE_MY_ITEMS_ONLY' => 'Только мои пункты',
  
  
);


?>