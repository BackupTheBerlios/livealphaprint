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
'LBL_IMPORT_MODULE_NO_DIRECTORY' => 'Директория ',
'LBL_IMPORT_MODULE_NO_DIRECTORY_END' => ' няма такава или е недостъпна за запис',
'LBL_IMPORT_MODULE_ERROR_NO_UPLOAD' => 'Неправилно зареден файл. Възможно е настройките на \'upload_max_filesize\' във файл php.ini да са с малка стойност',
'LBL_IMPORT_MODULE_ERROR_LARGE_FILE' => 'файлът е твърде голям. Макс:',
'LBL_IMPORT_MODULE_ERROR_LARGE_FILE_END' => 'Bytes. Променете $sugar_config[\'upload_maxsize\'] във файл config.php',
'LBL_MODULE_NAME' => 'Импорт',
'LBL_TRY_AGAIN' => 'Опитайте отново',
'LBL_ERROR' => 'Проблем:',
'ERR_MULTIPLE' => 'Няколко колни са дефинирани с еднакво име на поле.',
'ERR_MISSING_REQUIRED_FIELDS' => 'Пропуснато задължително поле:',
'ERR_SELECT_FULL_NAME' => 'Не можете да изберете Пълно име, когато Име и Фамилия са вече избрани.',
'ERR_SELECT_FILE' => 'Избор на файл за зареждане.',
'LBL_SELECT_FILE' => 'Избор на файл:',
'LBL_CUSTOM' => 'Собствен',
'LBL_CUSTOM_CSV' => 'CVS-файл',

  'LBL_CSV' => 'CSV файл',
  'LBL_TAB' => 'Табулиран текстов файл',
  'LBL_CUSTOM_DELIMETED' => 'Текстов файл с указан символ за разделител',
  'LBL_CUSTOM_DELIMETER' => 'Потребителски разделител:',
  
'LBL_CUSTOM_TAB' => 'Табулиран текстов файл',
'LBL_DONT_MAP' => '-- Не изобразявай/маркирай това поле--',
'LBL_STEP_1_TITLE' => 'Стъпка 1: Избор на източник на данните',
'LBL_WHAT_IS' => 'Кой е източникът на данни?',
'LBL_MICROSOFT_OUTLOOK' => 'Microsoft Outlook',
'LBL_ACT' => 'Act!',
'LBL_ACT_2005' => 'Act! 2005',
'LBL_SALESFORCE' => 'Salesforce.com',
'LBL_MY_SAVED' => 'Моите запазени източници:',
'LBL_PUBLISH' => 'публикувай',
'LBL_DELETE' => 'изтрий',
'LBL_PUBLISHED_SOURCES' => 'Публикувани източници:',
'LBL_UNPUBLISH' => 'не публикувай',
'LBL_NEXT' => 'След. >',
'LBL_BACK' => '< Пред.',
'LBL_STEP_2_TITLE' => 'Съпка 2: Зареждане на експортния файл',
'LBL_HAS_HEADER' => 'Има хедър:',
'LBL_NUM_1' => '1.' ,
'LBL_NUM_2' => '2.' ,
'LBL_NUM_3' => '3.' ,
'LBL_NUM_4' => '4.' ,
'LBL_NUM_5' => '5.' ,
'LBL_NUM_6' => '6.' ,
'LBL_NUM_7' => '7.' ,
'LBL_NUM_8' => '8.' ,
'LBL_NUM_9' => '9.' ,
'LBL_NUM_10' => '10.' ,
'LBL_NUM_11' => '11.' ,
'LBL_NUM_12' => '12.' ,
'LBL_NOTES' => 'Бележки:',
'LBL_NOW_CHOOSE' => 'Изберете файл за импортиране:',
  'LBL_IMPORT_OUTLOOK_TITLE' => 'Microsoft Outlook 98 и 2000 могат да експортират данни в <b>CVS</b> формат, които могат да бъдат използвани за импортирането на данни в тази система. За експортиране на данни от Outlook, следвайте привдените по-долу етапи:',
  'LBL_OUTLOOK_NUM_1' => 'Заредете <b>Outlook</b>',
  'LBL_OUTLOOK_NUM_2' => 'Изберете меню <b>File</b>, след това опция<b>Import and Export ...</b>',
  'LBL_OUTLOOK_NUM_3' => 'Изберете <b>Export to a file</b> и натиснтене Next',
  'LBL_OUTLOOK_NUM_4' => 'Изберете <b>Comma Separated Values (Windows)</b> и натиснете <b>Next</b>.<br>  Замечание: Вы можете получить сообщение об необходимости установки компоненты экспортирования',
  'LBL_OUTLOOK_NUM_5' => 'Изберете папка <b>Contacts</b> и и натиснете <b>Next</b>. Можете да избирате различни папки, ако вашите контакти са разположени в няколко папки',
  'LBL_OUTLOOK_NUM_6' => 'Изберете име на файла и натиснете <b>Next</b>',
  'LBL_OUTLOOK_NUM_7' => 'Натиснете <b>Finish</b>',
  'LBL_IMPORT_ACT_TITLE' => 'Система Act! може да експортира данни във формат <b>CVS</b>, които могат да бъдат използвани за импортирането на данни в тази система. За експортиране на данни от Act!, следвайте привдените по-долу етапи:',
  'LBL_ACT_NUM_1' => 'Заредете <b>ACT!</b>',
  'LBL_ACT_NUM_2' => 'Изберете меню <b>File</b>, след това опция <b>Data Exchange</b> и после <b>Export...</b>',
  'LBL_ACT_NUM_3' => 'Изберете тип на файла <b>Text-Delimited</b>',
  'LBL_ACT_NUM_4' => 'Изберете име на файла и разположение на експортираните данни и натиснете <b>Next</b>',
  'LBL_ACT_NUM_5' => 'Изберете <b>Contacts records only</b>',
  'LBL_ACT_NUM_6' => 'Натиснете <b>Options...</b>',
  'LBL_ACT_NUM_7' => 'Изберете <b>Comma</b> за символ, разделящ полетата',
  'LBL_ACT_NUM_8' => 'Маркирайте <b>Yes, export field names</b> кутийка и натиснете <b>OK</b>',
  'LBL_ACT_NUM_9' => 'Натиснете <b>Next</b>',
  'LBL_ACT_NUM_10' => 'Изберете <b>All Records</b> и натиснете <b>Finish</b>',
  'LBL_IMPORT_SF_TITLE' => 'Система Salesforce.com може да експортира данни във формат <b>CVS</b>, които могат да бъдат използвани за импортирането на данни в тази система. За експортиране на данни от Salesforce.com, следвайте привдените по-долу етапи:',
  'LBL_SF_NUM_1' => 'Стартирайте браузъра си и отидете на http://www.salesforce.com; там се логнете с вашия e-mail адрес и парола',
  'LBL_SF_NUM_2' => 'Натинсете на таба <b>Reports</b>, намиращ се в най-горното меню',
  'LBL_SF_NUM_3' => '<b>За експортиране на акаунти:</b> Използвайте връзката <b>Active Accounts</b> <br><b>За експортиране на контакти:</b> Използвайте линка <b>Mailing List</b>',
  'LBL_SF_NUM_4' => 'На <b>Стъпка 1: Изберете желания от вас вид доклад</b>, изберете <b>Tabular Report</b> натиснете <b>Next</b>',
  'LBL_SF_NUM_5' => 'На <b>Стъпка 2: Изберете колонките на доклада</b>, изберете колонките, които искате да експортирате и натиснете <b>Next</b>',
  'LBL_SF_NUM_6' => 'На <b>Стъпка 3: Изберете информацията за резюмиране</b>, просто натиснете <b>Next</b>',
  'LBL_SF_NUM_7' => 'На <b>Стъпка 4: Подредете колонките на доклада</b>, просто натиснете <b>Next</b>',
  'LBL_SF_NUM_8' => 'На <b>Стъпка 5: Изберете вашите критерии за доклада</b>, под <b>Start Date</b>, изберете дата, достатъчно назад във времето, така че да обхване всички ваши акаунти. Можете също така да експортирате подмножеството на вашите акаунти като изпозлвате разширени критерии. След приклюване натиснете<b>Run Report</b>',
  'LBL_SF_NUM_9' => 'Ще бъде генериран доклад и би следвало на страницата да се изпише <b>Report Generation Status: Complete.</b> След това натиснете <b>Export to Excel</b>',
  'LBL_SF_NUM_10' => 'На <b>Export Report:</b>, за <b>Export File Format:</b>, изберете <b>Comma Delimited .csv</b>. Натиснете <b>Export</b>.',
  'LBL_SF_NUM_11' => 'Появилият се диалог ще ви позволи да съхраните експортния файл на вашия компютър.',
  'LBL_IMPORT_CUSTOM_TITLE' => 'Много приложения могат да ви дадат възможност за експортиране на данни във формат <b>CVS</b>. За болшинството приложения важат следните общи стъпки:',
  'LBL_CUSTOM_NUM_1' => 'Стартиране на приложенията и зареждане на файла с данни',
  'LBL_CUSTOM_NUM_2' => 'Избор на опции в меню <b>Save As...</b> или <b>Export...</b>',
  'LBL_CUSTOM_NUM_3' => 'Запазване на файла във формат <b>CSV</b> или <b>Comma Separated Values</b>',
  'LBL_IMPORT_TAB_TITLE' => 'Много приложения могат да ви дадат възможност за експортиране на данни във формат <b>Tab Delimited text file (.tsv или .tab)</b>. За болшинството приложения важат следните общи стъпки:',
  'LBL_TAB_NUM_1' => 'Стартиране на приложенията и зареждане на файла с данни',
  'LBL_TAB_NUM_2' => 'Избор на опции в меню <b>Save As...</b> или <b>Export...</b>',
  'LBL_TAB_NUM_3' => 'Запазване на файла във формат <b>TSV</b> или <b>Tab Separated Values</b>',
  'LBL_STEP_3_TITLE' => 'Стъпка 3: Потвърждение на полетата и импортирането',
  'LBL_SELECT_FIELDS_TO_MAP' => 'От списъка по-долу изберете тези полета във вашия импортен файл, които ще бътат импортирани от вас в системата. След приключване натиснете <b>Импортировать сейчас</b>:',
  'LBL_DATABASE_FIELD' => 'База данни - полета',
  'LBL_HEADER_ROW' => 'Заглавен ред',
  'LBL_ROW' => 'Ред',
  'LBL_SAVE_AS_CUSTOM' => 'Запазете като собствено разположение:',
  'LBL_CONTACTS_NOTE_1' => 'Трябва да са въведени или Пълно име или Фамилия.',
  'LBL_CONTACTS_NOTE_2' => 'Ако бъде въведено Пълно име, то Име и Фамилия ще бъдат игнорирани.',
  'LBL_CONTACTS_NOTE_3' => 'ако бъде въведено Пълно име, то данните от Пълно име ще бъат разделени на Име и Фамилия при вкарването в базата дании.',
  'LBL_CONTACTS_NOTE_4' => 'Полетата Улица 2 и Улица 3 ще бъдат обединени с основните адресни полета при вкарването в базата данни.',
  'LBL_ACCOUNTS_NOTE_1' => 'Трябва да бъде въведено название на Акаунт.',
  'LBL_ACCOUNTS_NOTE_2' => 'Полетата завършващи на Улица 2 и Улица 3 ще бъдат обединени с основните адресни полета при вкарването в базата данни.',
  'LBL_OPPORTUNITIES_NOTE_1' => 'Име на сделка, Название на Акаунт, Дата на приключванеи Стадий на продажба са задължителни полета.',
  'LBL_IMPORT_NOW' => 'Import Now',
  'LBL_' => '',
  'LBL_CANNOT_OPEN' => 'Не може да бъде отворен импортния файл',
  'LBL_NOT_SAME_NUMBER' => 'Във вашия файл няма същия брой поелта за ред',
  'LBL_NO_LINES' => 'Не бяха открити редове във вашия импортен файл',

  
  'LBL_FILE_ALREADY_BEEN_OR' => 'Този импортен файл е бил вече обработен или не съществува',
  'LBL_SUCCESS' => 'Успех:',
  'LBL_SUCCESSFULLY' => 'Успешено импортиране',
  'LBL_LAST_IMPORT_UNDONE' => 'Вашето последно импортиране беше отменено',
  'LBL_NO_IMPORT_TO_UNDO' => 'Няма импортиране, което да бъде отменено.',
  'LBL_FAIL' => 'Неуспех:',
  'LBL_RECORDS_SKIPPED' => 'записите бяха пропуснати, защото липсваха едно или няколко задължителни полета',
  'LBL_IDS_EXISTED_OR_LONGER' => 'записите бяха пропуснати, защото ID-тата или съществуват или са по-дълги от 36 знака',
  'LBL_RESULTS' => 'Резултати',
  'LBL_IMPORT_MORE' => 'Импортирай още',
  'LBL_FINISHED' => 'Завършено',
  'LBL_UNDO_LAST_IMPORT' => 'Отмяна на полсендия импорт',
  'LBL_LAST_IMPORTED'=>'Последен импорт',
  'ERR_MULTIPLE_PARENTS' => 'Можете да определите само едно родителско ID',

  'LBL_DUPLICATES' => 'Намерени са дубликати',
  'LBL_DUPLICATE_LIST' => 'Свалете списък с дубликати',
  'LBL_UNIQUE_INDEX' => 'Изберете индекс за сравнение на дубликати',

);
?>