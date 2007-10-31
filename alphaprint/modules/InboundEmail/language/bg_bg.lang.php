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

$mod_strings = array(



	
	'ERR_BAD_LOGIN_PASSWORD' => 'Потребителското име или парола са грешни' ,
		'ERR_BODY_TOO_LONG'		=> '\rТекстът на писмото е прекалено голям. Част от текста е отрязана.',
		'ERR_INI_ZLIB'			=> 'Невъзможно е временно да изключите Zlib. Тестовите настройки може да се провалят.',
	'ERR_MAILBOX_FAIL' => 'Не могат да бъдат върнати никакви пощенски кутии.' ,
	'ERR_NO_IMAP' => 'Не могат да бъдат IMAP библиотеки. Моля, поправете това преди да продължите с входящата поща' ,
	'ERR_NO_OPTS_SAVED' => 'Няма съхранени оптимални настройки за вашата пощенска кутия. Моля, проверете настройките' ,
	'ERR_TEST_MAILBOX' => 'Моля, проверете си настройките и опитайте отново.' ,
	
	'LBL_APPLY_OPTIMUMS' => 'Поставете оптимални настройки' ,
	'LBL_ASSIGN_TO_USER' => 'Назначено на потребител' ,
	'LBL_AUTOREPLY_OPTIONS' => 'Опции за автоматичен отговор' ,
	'LBL_AUTOREPLY' => 'Шаблон за автоматичен отговор' ,
	'LBL_BASIC' => 'Основни настройки' ,
	'LBL_CASE_MACRO'		=> 'Макро за Случаи',
	'LBL_CASE_MACRO_DESC'	=> 'Укажете макро, което ще бъде използвано за да свързва импортирани писма към "Дела".',
	'LBL_CASE_MACRO_DESC2'	=> 'Настройте това на каквато и да е стойност, но запазете <b>"%1"</b>.',
	'LBL_CERT_DESC' => 'Провери валидността на сертификата за сигурност на email сървъра - не го използвайте, ако е самоподписан.' ,
	'LBL_CERT' => 'Проверка на сертификата' ,
	'LBL_CLOSE_POPUP' => 'Затвори прозореца' ,
	'LBL_CREATE_NEW_GROUP' => '--Създай пощенска група при съхранение--' ,
	'LBL_CREATE_TEMPLATE' => 'Създай' ,
	'LBL_DEFAULT_FROM_ADDR' => 'По подразбиране: ' ,
	'LBL_DEFAULT_FROM_NAME' => 'По подразбиране: ' ,
	'LBL_EDIT_TEMPLATE' => 'Редактирай' ,
	'LBL_EMAIL_OPTIONS' => 'Опции за обработка на email-и' ,
	'LBL_FILTER_DOMAIN_DESC' => 'Не изпращайте автоматични отговори на този домейн.' ,
	'LBL_FILTER_DOMAIN' => 'Без автоматични отговори към домейн' ,
	'LBL_FIND_OPTIMUM_KEY' => 'f' ,
	'LBL_FIND_OPTIMUM_MSG' => 'Търсене на оптимални променливи за връзка.' ,
	'LBL_FIND_OPTIMUM_TITLE' => 'Търсене на оптимален конфигуратор' ,
	'LBL_FIND_SSL_WARN' => 'Тестването на SSL може да продължи известно количество време. Моля, бьдете търпеливи.' ,
	'LBL_FORCE_DESC' => 'Some IMAP/POP3 servers require special switches. Check to force a negative switch when connecting (i.e., /notls)' ,
	'LBL_FORCE' => 'Force Negative' ,
	'LBL_FOUND_MAILBOXES' => 'Намерени са следните използваеми папки:' ,
	'LBL_FOUND_OPTIMUM_MSG' => 'Намерени са оптимални настройки. Натиснете бутона по-долу, за да ги приложите за вашата пощенска кутия.' ,
	'LBL_FROM_ADDR' => '"От" Адрес' ,
	'LBL_FROM_NAME_ADDR' => '"От" Име/Адрес' ,
	'LBL_FROM_NAME' => '"От" Име' ,
	'LBL_GROUP_QUEUE' => 'Назначи към група' ,
	'LBL_HOME'              => 'Начало',
	'LBL_LIST_MAILBOX_TYPE' => 'Използваемост на пощенската кутия' ,
	'LBL_LIST_NAME' => 'Име:' ,
	'LBL_LIST_SERVER_URL' => 'Пощенски сървър:' ,
	'LBL_LIST_STATUS' => 'Статус:' ,
	'LBL_LOGIN' => 'Потребителско име' ,
	'LBL_MAILBOX_DEFAULT' => 'ВХОДЯЩИ' ,
	'LBL_MAILBOX_SSL_DESC' => 'Използвайте SSL при свързване. Ако не работи проверете дали вашата PHP инсталация включва "--with-imap-ssl" в конфигурацията.' ,
	'LBL_MAILBOX_SSL' => 'Използвай SSL' ,
	'LBL_MAILBOX_TYPE' => 'Възможни действия' ,
	'LBL_MAILBOX' => 'Наблюдавани папки' ,
	'LBL_MARK_READ_DESC' => 'Импортирани или маркирани съобщения, прочетени на сървъра. Не трий.' ,
	'LBL_MARK_READ_NO' => 'E-mail маркирани като изтрити след импорт' ,
	'LBL_MARK_READ_YES' => 'E-mail оставени на сървъра след импорт' ,
	'LBL_MARK_READ' => 'Оставете съобщения на сървъра' ,
	'LBL_MODULE_NAME' => 'Входящи E-mail-и' ,
	'LBL_MODULE_TITLE' => 'Входящи E-mail-и' ,
	'LBL_NAME' => 'Име' ,
	'LBL_NO_OPTIMUMS' => 'Не могат да бъдат намерено оптимални настройки. Моля, проверете вашите настройките и опитайте отново.' ,
	'LBL_ONLY_SINCE_DESC' => 'PHP не може да различи Нови от Непрочетени съобщения, когато използва POP3. Отметнете тук, за да търсите съобщения от последното изтриване на пощенската кутия. Това значително ще увеличи производителността на системата, ако сървърът ви не поддържа IMAP.' ,
	'LBL_ONLY_SINCE_NO' => 'Не. Проверете съответстващите писма на сървъра.' ,
	'LBL_ONLY_SINCE_YES' => 'Да.' ,
	'LBL_ONLY_SINCE' => 'Импортирай само след последната проверка' ,
	'LBL_PASSWORD_CHECK' => 'Проверка на парола' ,
	'LBL_PASSWORD' => 'Парола' ,
	'LBL_POP3_SUCCESS' => 'Тестовата POP3 връзка беше успешна.' ,
	'LBL_POPUP_FAILURE' => 'Тестовата връзка се провали. Грешката е показана по-долу.' ,
	'LBL_POPUP_SUCCESS' => 'Тестовата връзка беше успешна. Настройките ви работят правилно.' ,
	'LBL_POPUP_TITLE' => 'Тестови настройки' ,
	'LBL_PORT' => 'Порт' ,
	'LBL_QUEUE' => 'Опашка на пощенската кутия' ,
	'LBL_SERVER_OPTIONS' => 'Допълнителни настройки' ,
	'LBL_SERVER_TYPE' => 'Протокол на email сървъра' ,
	'LBL_SERVER_URL' => 'Адрес на email сървъра' ,
	'LBL_SSL_DESC' => 'Ако вашият сървър поддържа SSL, при включване на тази опция ще се правят SSL свързвания, когато импортирате email-и.' ,
	'LBL_SSL' => 'Използвай SSL' ,
	'LBL_STATUS' => 'Статус' ,
	'LBL_SYSTEM_DEFAULT' => 'По подразбиране' ,
	'LBL_TEST_BUTTON_KEY' => 't' ,
	'LBL_TEST_BUTTON_TITLE' => 'Тест [Alt+T]' ,
	'LBL_TEST_SETTINGS' => 'Настройки на теста' ,
	'LBL_TEST_SUCCESSFUL' => 'Връзката завършена успешно' ,
	'LBL_TEST_WAIT_MESSAGE' => 'Моля, изчакайте...' ,
	'LBL_TLS_DESC' => 'Използвай TLS (Transport Layer Security) при  връзка със сървъра - използвайте това само ако сървъра ви го поддържа.' ,
	'LBL_TLS' => 'Използвай TLS' ,
	'LBL_WARN_IMAP_TITLE' => 'IMAP предупреждение' ,
	'LBL_WARN_IMAP' => 'Предупреждения:' ,
	'LBL_WARN_NO_IMAP' => 'Входящи email-и не могат да работят без клиентските библиотеки IMAP да са включени или компилирани в PHP модула. Моля, свържете се с администратора, за да разрешите проблема.' ,
		
	'LNK_CREATE_GROUP' => 'Нова група' ,
	'LNK_LIST_CREATE_NEW' => 'Мониторинг на нова пощенска кутия' ,
	'LNK_LIST_MAILBOXES' => 'Всички пощенски кутии' ,
	'LNK_LIST_QUEUES' => 'Всички чакащи' ,
	'LNK_LIST_QUEUES' => 'Всички чакащи' ,
	'LNK_LIST_SCHEDULER' => 'Разписания' ,
	'LNK_LIST_TEST_IMPORT' => 'Тестване на email импорта' ,
	'LNK_NEW_QUEUES' => 'Нова опашка' ,
	'LNK_NEW_QUEUES' => 'Нова опашка' ,
	'LNK_SEED_QUEUES' => 'Seed Queues From Teams' ,
);

?>