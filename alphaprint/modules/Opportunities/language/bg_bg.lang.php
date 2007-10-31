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
'LBL_MODULE_NAME' => 'Сделки' ,
'LBL_MODULE_TITLE' => 'Сделки: Начало' ,
'LBL_SEARCH_FORM_TITLE' => 'Търси сделки' ,
  'LBL_VIEW_FORM_TITLE' => 'Сделки',
'LBL_LIST_FORM_TITLE' => 'Списък на сделки' ,
'LBL_OPPORTUNITY_NAME' => 'Име на сделка:' ,
'LBL_OPPORTUNITY' => 'Сделка:' ,
'LBL_NAME' => 'Име на сделка' ,
'LBL_INVITEE' => 'Контакти' ,
'LBL_LIST_OPPORTUNITY_NAME' => 'Сделка' ,
'LBL_LIST_ACCOUNT_NAME' => 'Име на клиент' ,
'LBL_LIST_AMOUNT' => 'Сума' ,
'LBL_LIST_DATE_CLOSED' => 'Затвори' ,
'LBL_LIST_SALES_STAGE' => 'Стадий на продажба' ,
'LBL_ACCOUNT_ID' => 'ID на клиента' ,
'LBL_CURRENCY_ID' => 'ID на валута' ,
'LBL_TEAM_ID' => 'ID на екипа' ,

//DON'T CONVERT THESE THEY ARE MAPPINGS
  'db_sales_stage' => 'LBL_LIST_SALES_STAGE',
  'db_name' => 'LBL_NAME',
  'db_amount' => 'LBL_LIST_AMOUNT',
  'db_date_closed' => 'LBL_LIST_DATE_CLOSED',
//END DON'T CONVERT

'UPDATE' => 'Сделка - валутно обновление',
'UPDATE_DOLLARAMOUNTS' => 'Обнови сумата в Щатски долари',
'UPDATE_VERIFY' => 'Провери сума',
'UPDATE_VERIFY_TXT' => 'Проверява, дали сумата е във валидни десетични числа (0-9) и правилно разположен знак (.)',
'UPDATE_FIX' => 'Фиксирай сума',
'UPDATE_FIX_TXT' => 'Опит за фиксиране на грешни суми, посредством създаване на правилни знакови разделения от текущата сума. Променяната сума се съхранява в поле amount_backup на базата данни. Ако е стартиран и получите съобщение за грешка, не се връщайте без да сте възстановили от архива; в противен случай архивът може да бъде презаписан с неврни данни.',
'UPDATE_DOLLARAMOUNTS_TXT' => 'Обновяване на сумите в Щатски Долари за възможности, които са основани на текущи валутни ставки. Тези величини се използват за изчисление на графично и по списък преглеждане на на валутните суми.',
'UPDATE_CREATE_CURRENCY' => 'Нова валута:',
'UPDATE_VERIFY_FAIL' => 'Неуспешна проверка на запис:',
'UPDATE_VERIFY_CURAMOUNT' => 'Текуща сума:',
'UPDATE_VERIFY_FIX' => 'Фиксиране на данни',
'UPDATE_INCLUDE_CLOSE' => 'Включи затворените записи',
'UPDATE_VERIFY_NEWAMOUNT' => 'Нова сума:',
'UPDATE_VERIFY_NEWCURRENCY' => 'Нова валута:',
'UPDATE_DONE' => 'Готово',
'UPDATE_BUG_COUNT' => 'Проблем и опит за разрешаването му:',
'UPDATE_BUGFOUND_COUNT' => 'Открити проблеми:',
'UPDATE_COUNT' => 'Обнови записи:',
'UPDATE_RESTORE_COUNT' => 'Сумата в записите е възстановена:',
'UPDATE_RESTORE' => 'Възстановяване на суми',
'UPDATE_RESTORE_TXT' => 'Възстановява сумите от архива, създаден по време на фиксирането.',
'UPDATE_FAIL' => 'Необновено - ',
'UPDATE_NULL_VALUE' => 'Сумата NULL установена на 0 -',
'UPDATE_MERGE' => 'Сливане на валути',
'UPDATE_MERGE_TXT' => 'Сливане на няколко валути в една. Ако сте открили, че има много записи за една и съща валута, то можете да ги слеете. Така се сливат и данните за влути от другите модули.',
'LBL_ACCOUNT_NAME' => 'Име на клиента:' ,
'LBL_AMOUNT' => 'Сума:' ,
'LBL_CURRENCY' => 'Валута:' ,
'LBL_DATE_CLOSED' => 'Очаквана дата на затваряне:',
'LBL_TYPE' => 'Тип:' ,
'LBL_NEXT_STEP' => 'Следваща стъпка:',
'LBL_LEAD_SOURCE' => 'Откъде разбрахте за нас:',
'LBL_SALES_STAGE' => 'Стадий на продажба:',
'LBL_PROBABILITY' => 'Вероятност (%):',
'LBL_DESCRIPTION' => 'Описание:' ,
'LBL_DUPLICATE' => 'Възможно е дублиране на сделки',
'MSG_DUPLICATE' => 'Чрез създаването на тази сделка, потенциално можете да създадете дублираща сделка. Можете или да изберете сделка от списъка, или да създадете нова такава с вече въведените данни.',
'LBL_NEW_FORM_TITLE' => 'Създаване на сделка',
'LNK_NEW_OPPORTUNITY' => 'Създаване на сделка',

'LNK_OPPORTUNITY_LIST' => 'Сделки' ,
'ERR_DELETE_RECORD' => 'Трябва да определите номер на записа, за да изтриете този запис.',
'LBL_TOP_OPPORTUNITIES' => 'Моите сделки',
'NTC_REMOVE_OPP_CONFIRMATION' => 'Желаете ли да изтриете този контакт от тази сделка?',
'OPPORTUNITY_REMOVE_PROJECT_CONFIRM' => 'Желаете ли да премахнете тази възможност от този проект?',
'LBL_AMOUNT_BACKUP' => 'Возврат суммы' ,
'LBL_DEFAULT_SUBPANEL_TITLE' => 'Сделки' ,
'LBL_ACTIVITIES_SUBPANEL_TITLE' => 'Дейности' ,
'LBL_HISTORY_SUBPANEL_TITLE' => 'История' ,
'LBL_RAW_AMOUNT' => 'Сырой объем' ,
	
'LBL_LEADS_SUBPANEL_TITLE' => 'Предварителни контакти' ,
'LBL_CONTACTS_SUBPANEL_TITLE' => 'Контакти' ,
'LBL_PROJECTS_SUBPANEL_TITLE' => 'Проекти' ,
'LBL_ASSIGNED_TO_NAME' => 'Отговорник: ' ,
'LBL_LIST_ASSIGNED_TO_NAME' => 'Отговорник потребител',

'LBL_LIST_SALES_STAGE' => 'Стадий на продажби' ,

);

?>