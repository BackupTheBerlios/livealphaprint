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
	'DESC_MODULES_INSTALLED' => 'Следните модули бяха инсталирани:',
	'DESC_MODULES_QUEUED'	=> 'Следните модули са готови за инсталация:',

	'ERR_UW_CANNOT_DETERMINE_GROUP'	=> 'Не може да бъде определена група',
	'ERR_UW_CANNOT_DETERMINE_USER'	=> 'Не може да бъде определен собственик',
	'ERR_UW_CONFIG_WRITE'	=> 'Проблем при добавянето на нова информация в config.php файла.',
	'ERR_UW_CONFIG'	=> 'Направете config.php достъпен за запис и презаредете страницата.',
	'ERR_UW_DIR_NOT_WRITABLE' => 'Директорията не е достъпна за запис',
	'ERR_UW_FILE_NOT_COPIED' => 'Файлът не е копиран',
	'ERR_UW_FILE_NOT_DELETED'=> 'Проблем при изтриване на файла',
	'ERR_UW_FILE_NOT_READABLE'=> 'Файлът не може да бъде прочетен.',
	'ERR_UW_FILE_NOT_WRITABLE'=> 'Файл не може да бъде преместе или променен',
	'ERR_UW_FLAVOR_2'=> 'Upgrade Flavor: ',
	'ERR_UW_FLAVOR'	=> 'SugarCRM System Flavor: ',
	'ERR_UW_LOG_FILE_UNWRITABLE'=> './upgradeWizard.log не може да бъде създаден/променян. Моля, настройте правата за достъп до системната папка.',
	'ERR_UW_MYSQL_VERSION'=> 'Необходима е MySQL версия 4.1.2 или по-нова. Открита: ',
	'ERR_UW_NO_FILE_UPLOADED'=> 'Моля, укажете файл и опитайте още веднъж!<br>\n',
	'ERR_UW_NO_FILES' => 'Проблем - няма намерени файлове за проверка.',
	'ERR_UW_NO_MANIFEST'	=> 'В архива не е открит файл manifest.php. Операцията не може да бъде продължена.',
	'ERR_UW_NO_VIEW'=> 'Указан е невалиден изглед.',
	'ERR_UW_NO_VIEW2'=> 'Изгледа не е дефиниран. Моля, върнете се в Администрация: Начало, за да намерите страницата.',
	'ERR_UW_NOT_VALID_UPLOAD'=> 'Невалиден файл за качване.',
	'ERR_UW_ONLY_PATCHES' => 'На тази страница можете да качвате само обновления.',
	'ERR_UW_PREFLIGHT_ERRORS'=> 'Открити са грешки при предварителната проверка.',
	'ERR_UW_UPLOAD_ERR'=> 'Грешка при качването на файла, моля, опитайте отново!<br>\n',
	'ERR_UW_VERSION'=> 'Системна версия: ',
	'ERR_UW_WRONG_TYPE'=> 'Грешна страница',

	'LBL_BUTTON_BACK'=> 'Назад',
	'LBL_BUTTON_CANCEL'=> 'Откажи',
	'LBL_BUTTON_DELETE'=> 'Изтрий пакета',
	'LBL_BUTTON_DONE'=> 'Готово',
	'LBL_BUTTON_INSTALL'=> 'Инсталирай',
	'LBL_BUTTON_NEXT'=> 'Напред',
	'LBL_BUTTON_RECHECK'=> 'Препровери',

	'LBL_UPLOAD_UPGRADE'=> 'Качи обновление: ',

	'LBL_UW_BACKUP_FILES_EXIST_TITLE'=> 'Резервни копия',
	'LBL_UW_BACKUP_FILES_EXIST'=> 'Резервни копия на този файл вече съществуват в',
	'LBL_UW_BACKUP'	=> 'Създай резервно копие',
	'LBL_UW_CANCEL_DESC'=> 'Помощника за обновления беше спрян. Всички временни и качени файлове са изтрити.<br><br>Натиснете "Напред", за да пуснете помощника отново.',
	'LBL_UW_CHARSET_SCHEMA_CHANGE'=> 'Промени в схемата на кодировка',
	'LBL_UW_CHECK_ALL'=> 'Отментни всички',
	'LBL_UW_CHECKLIST'=> 'Стъпки на обновление',
	'LBL_UW_COMMIT_ADD_TASK_DESC_1'	=> "Резервни копия на презаписани файлове се намират в директорията: \n",
	'LBL_UW_COMMIT_ADD_TASK_DESC_2'	=> "Слейте следните файлове ръчно:\n",
	'LBL_UW_COMMIT_ADD_TASK_NAME'=> 'Обновление: ръчно сливане на файлове',
	'LBL_UW_COMMIT_ADD_TASK_OVERVIEW'=> 'Please use whichever diff method is most familiar to you to merge these files.  Until this is complete, your SugarCRM installation will be in an uncertain state, and the upgrade is not complete.',
	'LBL_UW_COMPLETE'=> 'Завършено',

	'LBL_UW_COMPLIANCE_ALL_OK'=> 'Всички изисквания на системата са задоволени',
	'LBL_UW_COMPLIANCE_CALLTIME'=> 'PHP настройка: Call Time Pass By Reference',
	'LBL_UW_COMPLIANCE_CURL'=> 'cURL модул',
	'LBL_UW_COMPLIANCE_IMAP'=> 'IMAP модул',
	'LBL_UW_COMPLIANCE_MBSTRING'=> 'MBStrings модул',
	'LBL_UW_COMPLIANCE_MEMORY'=> 'PHP настройка: Максимален размер на използваната памет',
	'LBL_UW_COMPLIANCE_MSSQL_MAGIC_QUOTES'=> 'MS SQL Server & PHP Magic Quotes GPC',
	'LBL_UW_COMPLIANCE_MYSQL'=> 'Минимална версия на MySQL ',
	'LBL_UW_COMPLIANCE_PHP_INI'	=> 'Местоположение на php.ini',
	'LBL_UW_COMPLIANCE_PHP_VERSION'	=> 'Минимална версия на PHP',
	'LBL_UW_COMPLIANCE_SAFEMODE'=> 'PHP настройка: Safe Mode',
	'LBL_UW_COMPLIANCE_TITLE'=> 'Проверка на настройките на сървъра',
	'LBL_UW_COMPLIANCE_TITLE2'=> 'Открити настройки',
	'LBL_UW_COMPLIANCE_XML'	=> 'XML Parsing',

	'LBL_UW_COPIED_FILES_TITLE'=> 'Файловете са копирани успешно',
	'LBL_UW_CUSTOM_TABLE_SCHEMA_CHANGE'=> 'Custom Table Schema Changes',

	'LBL_UW_DB_CHOICE1'=> 'Upgrade Wizard Runs SQL',
	'LBL_UW_DB_CHOICE2'=> 'Manual SQL Queries',
	'LBL_UW_DB_INSERT_FAILED'=> 'INSERT failed - compared results differ',
	'LBL_UW_DB_ISSUES_PERMS'=> 'Database Privileges',
	'LBL_UW_DB_ISSUES'=> 'Database Issues',
	'LBL_UW_DB_METHOD'=> 'Database Update Method',
	'LBL_UW_DB_NO_ADD_COLUMN'=> 'ALTER TABLE [table] ADD COLUMN [column]',
	'LBL_UW_DB_NO_CHANGE_COLUMN'=> 'ALTER TABLE [table] CHANGE COLUMN [column]',
	'LBL_UW_DB_NO_CREATE'=> 'CREATE TABLE [table]',
	'LBL_UW_DB_NO_DELETE'=> 'DELETE FROM [table]',
	'LBL_UW_DB_NO_DROP_COLUMN'=> 'ALTER TABLE [table] DROP COLUMN [column]',
	'LBL_UW_DB_NO_DROP_TABLE'=> 'DROP TABLE [table]',
	'LBL_UW_DB_NO_ERRORS'=> 'All Privileges Available',
	'LBL_UW_DB_NO_INSERT'=> 'INSERT INTO [table]',
	'LBL_UW_DB_NO_SELECT'=> 'SELECT [x] FROM [table]',
	'LBL_UW_DB_NO_UPDATE'=> 'UPDATE [table]',
	'LBL_UW_DB_PERMS'=> 'Necessary Privilege',

	'LBL_UW_DESC_MODULES_INSTALLED'=> 'Следните обновления бяха инсталирани:',
	'LBL_UW_END_DESC'=> 'Поздравления, системата е успешно обновена.',
	'LBL_UW_END_DESC2'=> 'Ако сте избрали да направите някои от стъпките ръчно - като сливане на файлове или SQL заявки - моля, направете ги сега. Системата няма да е стабилна докато не ги направите.',
	'LBL_UW_REPAIR_INDEX'=> 'За по-добра производителност на базата данни можете да използвате този скрипт: <a href="index.php?module=Administration&action=RepairIndex" target="_blank">Възстановяване на индекса</a>.',

	'LBL_UW_FILE_DELETED'=> " бяха изтрити.<br>",
	'LBL_UW_FILE_GROUP'=> 'Група',
	'LBL_UW_FILE_ISSUES_PERMS'=> 'Права за файл',
	'LBL_UW_FILE_ISSUES'=> 'Въпроси за файла',
	'LBL_UW_FILE_NEEDS_DIFF'=> 'File Requires Manual Diff',
	'LBL_UW_FILE_NO_ERRORS'=> '<b>Всички файлове са достъпни за запис</b>',
	'LBL_UW_FILE_OWNER'=> 'Собственик',
	'LBL_UW_FILE_PERMS'=> 'Права за достъп',
	'LBL_UW_FILE_UPLOADED'=> ' бяха качени.',
	'LBL_UW_FILE'=> 'Име файла',
	'LBL_UW_FILES_QUEUED'=> 'Следните обновления са готови за инсталация:',
	'LBL_UW_FILES_REMOVED'=> "Следните файлове ще бъдат изтрити от системата:<br>\n",

	'LBL_UW_FROZEN'	=> 'Задължителните стъпки трябва да бъдат преключени преди да продължите.',
	'LBL_UW_HIDE_DETAILS'=> 'Скрий подробности',
	'LBL_UW_IN_PROGRESS'=> 'В процес на работа',
	'LBL_UW_INCLUDING'=> 'Включително',
	'LBL_UW_INCOMPLETE'=> 'Не завършено',
	'LBL_UW_INSTALL'=> 'Инсталирай файла',
	'LBL_UW_MANUAL_MERGE'=> 'Сливане на файлове',
	'LBL_UW_MODULE_READY_UNINSTALL'=> "Модульт е готов за деинсталация.  <br>\n",
	'LBL_UW_MODULE_READY'=> "Модульт е готов за инсталация . ",
	'LBL_UW_NO_INSTALLED_UPGRADES'=> 'Не са намерени записани обновления.',
	'LBL_UW_NONE'=> 'Няма',
	'LBL_UW_NOT_AVAILABLE'=> 'Недостъпно',
	'LBL_UW_OVERWRITE_DESC'=> "Всички променени файлове ще бъдат презаписани, включително всякакви промени в кода и шаблоните, които сте правили. Желаете ли да продължите?",
	'LBL_UW_OVERWRITE_FILES_CHOICE1'=> 'Презапиши всички файлове',
	'LBL_UW_OVERWRITE_FILES_CHOICE2'=> 'Manual Merge - Preserve All',
	'LBL_UW_OVERWRITE_FILES'=> 'Метод на сливането',
	'LBL_UW_PATCH_READY'=> 'Обновлението е готово за инсталация. Натиснете бутона "Commit", за да продължите.',
	'LBL_UW_PATCH_READY2'=> '<h2>Бележка: Намерени са променени изгледи</h2><br />The following file(s) have new fields or modified screen layouts applied via the Studio. The patch you are about to install also contains changes to the file(s). For <u>each file</u> you may:<br><ul><li>[<b>Default</b>] Retain your version by leaving the checkbox blank. The patch modifications will be ignored.</li>or<li>Accept the updated files by selecting the checkbox. Your layouts will need to be re-applied via Studio.</li></ul>',

	'LBL_UW_PREFLIGHT_ADD_TASK'=> 'Създай задача за ръчно сливане?',
	'LBL_UW_PREFLIGHT_COMPLETE'=> 'Предварителна проверка',
	'LBL_UW_PREFLIGHT_DIFF'=> 'Differentiated ',
	'LBL_UW_PREFLIGHT_EMAIL_REMINDER'=> 'Изпратете си напомняне за ръчно сливане?',
	'LBL_UW_PREFLIGHT_FILES_DESC'=> 'Файловете изброени отдолу са променени. Махнете отметката на файловете, които трябва да се сливат ръчно. <i>Всички засечени промени в изгледа са отметнати; махнете отметката ако искате някои от тях да бъдат презаписани.',
	'LBL_UW_PREFLIGHT_NO_DIFFS'=> 'Не е нужно ръчно сливане.',
	'LBL_UW_PREFLIGHT_NOT_NEEDED'=> 'Ненужно.',
	'LBL_UW_PREFLIGHT_PRESERVE_FILES'=> 'Автоматично запазени файлове:',
	'LBL_UW_PREFLIGHT_TESTS_PASSED'=> 'Всички предварителни тестове са преминати успешно. Нажмите "Comit", за да продължите.',
	'LBL_UW_PREFLIGHT_TOGGLE_ALL'=> 'Toggle All Files',

	'LBL_UW_REBUILD_TITLE'=> 'Преправи резултати',
	'LBL_UW_SCHEMA_CHANGE'=> 'Изменения в схемата',

	'LBL_UW_SHOW_COMPLIANCE'=> 'Покажи засечени настройки',
	'LBL_UW_SHOW_DB_PERMS'=> 'Покажи липсващи права за достъп в БД.',
	'LBL_UW_SHOW_DETAILS'=> 'Покажи подробности',
	'LBL_UW_SHOW_DIFFS'=> 'Покажи файлове, които се нуждаят от ръчно сливане',
	'LBL_UW_SHOW_NW_FILES'=> 'Покажи файлове с недостатъчни права за достъп',
	'LBL_UW_SHOW_SCHEMA'=> 'Покажи скрипта за промяна на схемата',
	'LBL_UW_SHOW_SQL_ERRORS'=> 'Покажи некоректни заявки',
	'LBL_UW_SHOW'=> 'Покажи',

	'LBL_UW_SKIPPED_FILES_TITLE'=> 'Пропуснати файлове',
	'LBL_UW_SKIPPING_FILE_OVERWRITE'=> 'Пропускане на презаписани файлове - Избрано е ръчно сливане.',
	'LBL_UW_SQL_RUN'=> 'Провери, кога SQL е бил пускан ръчно',
	'LBL_UW_START_DESC'=> 'Добре дошли в помощника за обновления. Този помощник е създаден, за да помага на администраторите да обновяват сиситемата. Моля, следвайте внимателно инструкциите.',
	'LBL_UW_START_DESC2'=> 'Силно ви препоръчваме да създадете резервни копия на базата данни и системните файлове преди да продължите с тази операция.',
	'LBL_UW_START_UPGRADED_UW_DESC'=> 'Помощникът ще възстанови обновяването. Моля, продължете.',
	'LBL_UW_START_UPGRADED_UW_TITLE'=> 'Добре дошли в помощника за обновления.',

	'LBL_UW_SYSTEM_CHECK_CHECKING'=> 'Проверка..., моля, изчакайте. Операцията може да отнеме около 30 секунди.',
	'LBL_UW_SYSTEM_CHECK_FILE_CHECK_START'=> 'Намиране на всички уместни файлове за проверка.',
	'LBL_UW_SYSTEM_CHECK_FILES'=> 'Файлове',
	'LBL_UW_SYSTEM_CHECK_FOUND'=> 'Намерени',

	'LBL_UW_TITLE_CANCEL'=> 'Откажи',
	'LBL_UW_TITLE_COMMIT'=> 'Започни обновление',
	'LBL_UW_TITLE_END'=> 'Последни щрихи',
	'LBL_UW_TITLE_PREFLIGHT'=> 'Предварителна проверка',
	'LBL_UW_TITLE_START'=> 'Старт',
	'LBL_UW_TITLE_SYSTEM_CHECK'=> 'Проверка на системата',
	'LBL_UW_TITLE_UPLOAD'=> 'Качи обновления',
	'LBL_UW_TITLE'=> 'Помощник за обновления',
	'LBL_UW_UNINSTALL'=> 'Деинсталирай',

);
?>