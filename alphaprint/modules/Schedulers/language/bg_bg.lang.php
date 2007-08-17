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
  
global $sugar_config;

$mod_strings = array (
// OOTB Scheduler Job Names:
'LBL_OOTB_WORKFLOW' => 'Обработване задачите от процеса на работа' ,
   'LBL_OOTB_REPORTS' => 'Пусни Генератора на доклади за планирани задачи' ,
   'LBL_OOTB_IE' => 'Провери входящите писма' ,
   'LBL_OOTB_BOUNCE' => 'Възвръщане на писмо отправено при при провалено изпращане' ,
   'LBL_OOTB_CAMPAIGN' => 'Пусни нощно масово разпращане на писма' ,

'LBL_OOTB_PRUNE' => 'Прочиствай базата данни на първо число от месеца',
// List Labels
'LBL_LIST_JOB_INTERVAL' => 'Интервал:' ,
'LBL_LIST_LIST_ORDER' => 'Разписания:' ,
'LBL_LIST_NAME' => 'Планировчик:' ,
'LBL_LIST_RANGE' => 'Обхват:' ,
'LBL_LIST_REMOVE' => 'Премахни:' ,
'LBL_LIST_STATUS' => 'Статус:' ,
'LBL_LIST_TITLE' => 'Списък с планове:' ,
'LBL_LIST_EXECUTE_TIME' => 'Ще бъде пуснат в:' ,
// human readable:
'LBL_SUN' => 'Неделя' ,
'LBL_MON' => 'Понеделник' ,
'LBL_TUE' => 'Вторник' ,
'LBL_WED' => 'Сряда' ,
'LBL_THU' => 'Четвъртък' ,
'LBL_FRI' => 'Петък' ,
'LBL_SAT' => 'Събота' ,
'LBL_ALL' => 'Всеки ден' ,
'LBL_EVERY_DAY' => 'Всеки ден' ,
'LBL_AT_THE' => 'В ' ,
'LBL_EVERY' => 'Всеки ' ,
'LBL_FROM' => 'от ' ,
'LBL_ON_THE' => 'на ' ,
'LBL_RANGE' => ' до ' ,
'LBL_AT' => 'в ' ,
'LBL_IN' => 'В ' ,
'LBL_AND' => 'и ' ,
'LBL_MINUTES' => ' минути ' ,
'LBL_HOUR' => 'часа' ,
'LBL_HOUR_SING' => ' час' ,
'LBL_MONTH' => ' месец' ,
'LBL_OFTEN' => 'Колкото може по-често' ,
'LBL_MIN_MARK' => ' минути' ,


// crontabs
'LBL_MINS' => 'мин' ,
'LBL_HOURS' => 'ч' ,
'LBL_DAY_OF_MONTH' => 'дата' ,
'LBL_MONTHS' => 'месец' ,
'LBL_DAY_OF_WEEK' => 'ден' ,
'LBL_CRONTAB_EXAMPLES' => 'Горните използват стандартни crontab-нотации' ,
// Labels
'LBL_ALWAYS' => 'Винаги' ,
'LBL_CATCH_UP' => 'Изпълни, ако е пропуснат' ,
'LBL_CATCH_UP_WARNING' => 'Махнете отметката, ако тази задача може да отнеме повече от момент.' ,
'LBL_DATE_TIME_END' => 'Дата и час на край' ,
'LBL_DATE_TIME_START' => 'Дата и час на начало' ,
'LBL_INTERVAL' => 'Интервал' ,
'LBL_JOB' => 'Действие' ,
'LBL_LAST_RUN' => 'Последен успешен опит' ,
'LBL_MODULE_NAME' => 'Планиране' ,
'LBL_MODULE_TITLE' => 'Планиране' ,
'LBL_NAME' => 'Име на задача' ,
'LBL_NEVER' => 'Никога' ,
'LBL_NEW_FORM_TITLE' => 'Нов план' ,
'LBL_PERENNIAL' => 'Безсрочно' ,
'LBL_SEARCH_FORM_TITLE' => 'Търси в планове' ,
'LBL_SCHEDULER' => 'Планировчик:' ,
'LBL_STATUS' => 'Статус' ,
'LBL_TIME_FROM' => 'Активна форма' ,
'LBL_TIME_TO' => 'Активна до' ,
'LBL_WARN_CURL_TITLE' => 'cURL предупреждение:' ,
'LBL_WARN_CURL' => 'Предупреждение:' ,
'LBL_WARN_NO_CURL' => 'Системата няма включени/компилирани cURL библиотеки в PHP модула (--with-curl=/path/to/curl_library).  Моля, свържете се с вашия администратор, за да разрешите проблема. Без cURL-функционалността, Планировчика няма да може да работи правилно.' ,
'LBL_BASIC_OPTIONS' => 'Основни опции' ,
'LBL_ADV_OPTIONS' => 'Дополнителни опции' ,
'LBL_TOGGLE_ADV' => 'Дополнителни опции' ,
'LBL_TOGGLE_BASIC' => 'Основни опции' ,
// Links
'LNK_LIST_SCHEDULER' => 'Планове' ,
'LNK_NEW_SCHEDULER' => 'Нов план' ,
'LNK_LIST_SCHEDULED' => 'Запланирани задачи' ,



// Messages
'SOCK_GREETING' =>"\nТова е интерфейсът за услугата планиране. \n[ Достъпни команди: start|restart|shutdown|status ]\nЗа да излезете напишете 'quit'.\n",
'ERR_DELETE_RECORD' => 'Трябва да бъде указан номер на запис, за да изтриете този план.' ,
'NTC_DELETE_CONFIRMATION' => 'Сигурни ли сте че искате да изтриете този запис?' ,
'NTC_STATUS' => 'Променете статуса на "Неактивно", за да премахнете този план от падащите списъци' ,
'NTC_LIST_ORDER' => 'Настройте поредността, по която този план ще се появи в падащите списъци' ,
'LBL_CRON_INSTRUCTIONS_WINDOWS' => 'Конфигуриране на Windows планировчика' ,
'LBL_CRON_INSTRUCTIONS_LINUX' => 'Конфигуриране на сrontab' ,
'LBL_CRON_LINUX_DESC' => 'Добавете този ред във вашия crontab: ' ,
'LBL_CRON_WINDOWS_DESC' => 'Направете batch файл със следните команди: ' ,
'LBL_NO_PHP_CLI' => 'Ако хостингът ви няма PHP binary на разположение, можете да използвате wget или curl, за да изпълните вашите приложения.<br>за wget: <b>*&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;&nbsp;&nbsp;&nbsp;wget --spider /cron.php</b><br>за curl: <b>*&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;&nbsp;&nbsp;&nbsp;curl --silent /cron.php' ,
// Subpanels
'LBL_JOBS_SUBPANEL_TITLE' => 'Лог на задачите' ,
'LBL_EXECUTE_TIME' => 'Време за изпълнение' ,
// _DOM
'scheduler_status_dom' => 	array (
'Active' => 'Активно' ,
'Inactive' => 'Неактивно'    ,
	),
'scheduler_period_dom' => 	array (
'min' => 'Минути' ,
'hour' => 'Часа'    ,
	),
);

?>