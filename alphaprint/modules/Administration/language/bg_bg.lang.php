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

'LBL_REPAIR_IE' => 'Възстановяване профилите на входящата поща',
'LBL_REPAIR_IE_DESC' => 'Възстановяване профилите на входящата поща, криптиране на паролите.',
'LBL_REPAIR_IE_SUCCESS' => 'Всички профили на входящата поща бяха успешно възстановени!',
'LBL_REPAIR_IE_FAILURE' => 'Следните профили от входящата поща трябва да се възстановят ръчно - моля въведете отново потребителско име и парола за всеки:',


 'LBL_OOTB_WORKFLOW' => 'Обработване на задачите от работния процес' ,
   'LBL_OOTB_REPORTS' => 'Пусни справки за насрочените задачи' ,
   'LBL_OOTB_IE' => 'Провери входящите пощ. кутии' ,
   'LBL_OOTB_BOUNCE' => 'Возвращать письмо отправителю при неудачной рассылке' ,
   'LBL_OOTB_CAMPAIGN' => 'Пусни нощният масови email кампании' ,

  'LBL_OOTB_PRUNE'		=> 'Изчиствай базата данни на 1 число от месеца',

'BTN_REBUILD_CONFIG' => 'Възстанови' ,
'DESC_MODULES_INSTALLED' => 'Бяха инсталирани следните модули:',
'DESC_FILES_QUEUED' => 'Следните ъпгрейди очакват инсталация:',
'DESC_FILES_INSTALLED' => 'Следните обновления бяха инсталирани:' ,

'DESC_DROPDOWN_EDITOR' => 'Добавяне, премахване или смяна на dropdown списъци в приложението',
'DESC_EDIT_CUSTOM_FIELDS' => 'Редактиране на собствените полета създадени за "Разположение на полета',
'DESC_IFRAME' => 'Добавяне на табове, които могат да се показват към всеки сайт' ,

'ERR_DELETE_RECORD' => 'Трябва да определите номер на записа, за да бъде изтрит този акаунт.',
'ERR_NOT_FOR_ORACLE' => 'Функцията не се поддържа от настоящата конфигурация.' ,
    'ERR_NOT_FOR_MSSQL'=>'Функцията не се поддържа от настоящата конфигурация.',



	'ERR_UW_CONFIG_FAILED'						=> "Грешла при записването в config.php файла",
	'ERR_UW_COPY_FAILED'						=> 'Невъзможно е копирането на файла',
	'ERR_UW_INVALID_VIEW'						=> 'Указан е невалиден изглед.',
	'ERR_UW_NO_FILES'							=> "Не са указани файлове за копиране.",
	'ERR_UW_NO_INSTALL_FILE'					=> "Не е указан инсталационен файл.",
	'ERR_UW_NO_LANG'							=> "Не е указан име на език.",
	'ERR_UW_NO_LANG_DESC'						=> "Не е оказано описание на език.",
	'ERR_UW_NO_MODE'							=> "Не е указан режим на операции.",
	'ERR_UW_NO_TEMP_DIR'						=> "Не е указана временна директория за копиране на файлове.",
	//
	'ERR_UW_NO_UPDATE_RECORD'					=> 'Не може да бъде намерен инсталационен запис за',
	'ERR_UW_NO_VIEW'							=> "Страницата не е определена. Моля, върнете се в началото на администрацията и се придвижете до тази страница.",
	'ERR_UW_UPLOAD_ERROR'						=> "Грешка при качването на файла, моля опитайте пак!<br>\n",
	'ERR_UW_NO_UPLOAD_FILE'						=> "Моля, посочете файл и опитайте отново!<br>\n",
	'ERR_UW_NOT_RECOGNIZED'						=> 'не е разпознат',
	'ERR_UW_NOT_VALID_UPLOAD'					=> 'Невалиден файл за качване.',


	'ERR_UW_NOT_ACCEPTIBLE_TYPE'				=> "Можете да качвате само модулни пакети, теми или езикови пакети на тази страница.",
	'ERR_UW_ONLY_PATCHES'						=> "Можете да качвате само обновления на тази страница.",
	'ERR_UW_NO_MANIFEST'						=> "В архива липсва manifest.php файл. Продължаването е невъзможно .",
	'ERR_UW_REMOVE_FAILED'						=> 'Не може да се премахне файла',
	'ERR_UW_REMOVE_PACKAGE'						=> "Не може да се премахне пакета",
	'ERR_UW_RUN_SQL'							=> "Грешка при използване на sql файл: ",
	'ERR_UW_UPDATE_CONFIG'						=> "Грешка при добавяне на нова информация в config.php файла.",


	'LBL_UW_BTN_DELETE_PACKAGE'				=> 'Изтрий пакет',
	'LBL_UW_BTN_INSTALL'						=> 'Инсталирай',
	'LBL_UW_BTN_UPLOAD'							=> 'Качване',
	'LBL_UW_BTN_BACK_TO_MOD_LOADER'			=> 'Обратно към страницата за зареждане на модули',
	'LBL_UW_BTN_BACK_TO_UW'						=> 'Обратно към помощника за обновления',
	//
	'LBL_UW_FOLLOWING_FILES'					=> 'Следните файлове бяха',
	'LBL_UW_INCLUDING'							=> 'Включително',
	//
	'LBL_UW_NO_FILES_SELECTED'					=> 'Не са избрани файлове',
	'LBL_UW_NO_INSTALLED_UPGRADES'				=> "<i>Няма записани обновления.</i><br>\n",
	'LBL_UW_NONE'							=> 'Няма',
	'LBL_UW_NOT_AVAILABLE'						=> "Не е достъпно",
	'LBL_UW_OP_MODE'							=> 'Режим операции:',
	'LBL_UW_PACKAGE_REMOVED'					=> " беше премахнат.<br>\n",
	'LBL_UW_UNINSTALL'							=> 'Деинсталация',
	'LBL_UW_UPGRADE_SUCCESSFUL'				=> "<b>Обновлението е успешно прибавено!</b><br>\n",
	'LBL_UW_UPLOAD_MODULE'						=> 'Модул',
	'LBL_UW_UPLOAD_SUCCESS'						=> " беше качен успешно.<br>\n",

	'LBL_UW_DESC_MODULES_INSTALLED'			=> 'Следните модули бяха инсталирани:',
	'LBL_UW_DESC_MODULES_QUEUED'				=> 'Следните модули са готови за инсталация:',
	'LBL_UW_MODULE_READY' 			=> 'Модулът е готов за инсталация.',
	'LBL_UW_MODULE_READY_UNISTALL' 			=> 'Модулът е готов за деинсталация.',
'ERROR_FLAVOR_INCOMPATIBLE' => 'Ъплоудваният файл не е съвместим с тази версия на Sugar Suite: ' ,
'ERROR_LICENSE_EXPIRED' => 'Грешка: лицензът ви е изтекъл' ,
'ERROR_LICENSE_EXPIRED2' => "дена. Моля, посетете <a href='index.php?action=LicenseSettings&module=Administration'>'\"Управление на лицензи\"</a>  в администрационния панел, за да въведете нов лицензионен ключ. Ако не въведете нов ключ в период от 30 дни няма да можете да влезете в системата.",
'ERROR_MANIFEST_TYPE' => 'В Manifest-файла трябва да бъде указан типа на пакета.' ,
'ERROR_PACKAGE_TYPE' => 'В Manifest-файла е указан неизвестен тип пакет' ,
'ERROR_VALIDATION_EXPIRED' => 'Грешка: Срокът на вашия лицензионен ключ е изтекъл' ,
	'ERROR_VALIDATION_EXPIRED2' => " дена. Моля, посетете <a href='index.php?action=LicenseSettings&module=Administration'>'\"Управление на лицензи\"</a> в администрционния панел, за да въведете нов лицензионен ключ. Ако не въведете нов ключ в период от 30 дни няма да можете да влезете в системата.",
'ERROR_VERSION_INCOMPATIBLE' => 'Качваният файл не е съвместим с тази версия на Sugar Suite: ' ,
//

'FATAL_LICENSE_ALTERED' => 'Your license has been altered since the last time you were able to validate it. ',
'FATAL_LICENSE_EXPIRED' => 'Грешка: Лицензът ви е изтекъл от повече от 30 дена' ,
'FATAL_LICENSE_EXPIRED2' => 'Моля, обновете лицензът си в администрационния панел, за да възстановите пълната функционалност на системата.' ,
'FATAL_LICENSE_REQUIRED' => 'Грешка: Необходима е информация за вашия лицензионен ключ.',
'FATAL_VALIDATION_EXPIRED' => 'Грешка: Лицензът ви е изтекъл от повече от 30 дена' ,
'FATAL_VALIDATION_EXPIRED2' => 'Моля, обновете лицензът си в администрационния панел, за да възстановите пълната функционалност на системата.' ,
'FATAL_VALIDATION_REQUIRED' => 'Грешка: Необходима е информация за вашия лицензионен ключ.',
'HEARTBEAT_MESSAGE' => '<BR>Механизмът на Sugar Updates позволява сървърът да провери за нови версии на продукта.' ,


     'LBL_ADMINISTRATION_HOME_TITLE' => 'Система' ,
'LBL_ALLOW_USER_TABS' => 'Позволява на потребителите да конфигурират табове',
'LBL_APPLY_DST_FIX_DESC' => 'Тази стъпка ще обнови функционалността за обработка на времето (MYSQL ONLY).' ,
'LBL_APPLY_DST_FIX' => 'Apply Daylight Savings Time Fix' ,
'LBL_AVAILABLE_UPDATES' => 'Достъпни обновления' ,
'LBL_BACKUP_BACK_HOME' => 'Върни се в началото на администрацията' ,
'LBL_BACKUP_CONFIRM' => 'Потвърди настройки' ,
'LBL_BACKUP_CONFIRMED' => 'Настройки потвърдени. Натиснете "Backup", за да извършите Backup.' ,
'LBL_BACKUP_DIRECTORY_ERROR' => 'Трябва да бъде указана Backup директория.' ,
'LBL_BACKUP_DIRECTORY_EXISTS' => 'Backup директорията не съществува и не може да бъде създадена.' ,
'LBL_BACKUP_DIRECTORY_NOT_WRITABLE' => 'Backup директорията съществува, но не може да се записва в нея.' ,
'LBL_BACKUP_DIRECTORY_WRITABLE' => 'Трябва да бъде достъпна за записи от системата' ,
'LBL_BACKUP_DIRECTORY' => 'Директория:' ,
'LBL_BACKUP_FILE_AS_SUB' => 'Файлът съществува като суб-директория' ,
'LBL_BACKUP_FILE_EXISTS' => 'Файлът вече съществува в директорията.' ,
'LBL_BACKUP_FILE_STORED' => 'Резервното копие е успешно съхранено като' ,
'LBL_BACKUP_FILENAME_ERROR' => 'Трябва да бъде указано име на резервния файл.' ,
'LBL_BACKUP_FILENAME' => 'Име на файла:' ,
'LBL_BACKUP_INSTRUCTIONS_1' => 'Целта на този инструмент е да помага в създаването на резервни копия на системните файлове.<br><br>Добре е да се правят резервни копия и на базата данни.<br>Обърнете се към документацията на вашата база данни за повече информация.<br>' ,



'LBL_BACKUP_INSTRUCTIONS_2' => 'За да създадете резервни копия на системните файлове като zip-архив въведете следната информация:' ,
'LBL_BACKUP_RUN_BACKUP' => 'Създай резервно копие' ,
'LBL_BACKUP_TITLE' => 'Online резервни копия ' ,
'LBL_BACKUP' => 'Възстановете системата от резервни копия' ,
'LBL_BACKUPS_TITLE' => 'Резервни копия' ,
'LBL_BACKUPS' => 'Създаване на резервни копия' ,
'LBL_BUG_TITLE' => 'Bug Tracker' ,
'LBL_CHANGE_NAME_TABS' => 'Промяна на заглавия на табове.',
'LBL_CHECK_NOW_LABEL' => 'Провери сега' ,
'LBL_CHECK_NOW_TITLE' => 'Провери сега' ,
'LBL_CHOOSE_WHICH' => 'Избор на табове, които да бъдат показвани в цялата система',
'LBL_CLEAR_CHART_DATA_CACHE_DESC' => 'Изтриване на кеширани файлове от таблиците.' ,
'LBL_CLEAR_CHART_DATA_CACHE_TITLE' => 'Изтриване на кеширани данни от таблиците' ,
'LBL_CONFIG_CHECK' => 'Проверка на конфигурацията' ,
'LBL_CONFIGURATOR_DESC' => 'Установяване на Config.php файла' ,
'LBL_CONFIGURATOR_TITLE' => 'Конфигуратор' ,
'LBL_CONFIGURE_SETTINGS_TITLE' => 'Системни настройки' ,
'LBL_CONFIGURE_SETTINGS' => 'Конфигурирай системните настройки' ,
'LBL_CONFIGURE_TABS' => 'Конфигуриране на табовете' ,
	'LBL_CONFIGURE_GROUP_TABS' => 'Конфигуриране на групи табове',
	'LBL_CONFIGURE_GROUP_TABS_DESC' => 'Създаване и редактиране на групи табове',
'LBL_CONFIGURE_UPDATER' => 'Конфигуриране на обновленията' ,
'LBL_COULD_NOT_CONNECT' => 'Грешка: Невъзможно е свързване със сървъра. Моля проверете настройките на прокси сървъра в администраторския панел. Последен опит за връзка: @' ,
'LBL_CURRENCY' => 'Валути и валутни курсове',
'LBL_DIAG_CANCEL_BUTTON' => 'Откажи' ,
'LBL_DIAG_EXECUTE_BUTTON' => 'Започни диагностика' ,
'LBL_DIAGNOSTIC_ACCESS' => 'Трябва да сте администратор за да използвате инструмента за диагностика.' ,
//

'LBL_DIAGNOSTIC_BEANLIST_DESC' => 'This information tells us whether or not the beanFiles specified in the beanList actually exists. This can be an issue with an improperly defined module loaded extension.' ,
'LBL_DIAGNOSTIC_BEANLIST_GREEN' => 'Зеленият цвят означава, че файла съществува.' ,
'LBL_DIAGNOSTIC_BEANLIST_ORANGE' => 'Оранжевият цвят означава, че файла не е индексиран и не може да бъде предприето търсенето му.' ,
'LBL_DIAGNOSTIC_BEANLIST_RED' => 'Червеният цвят означава, че файла не съществува.' ,
'LBL_DIAGNOSTIC_BLBF' => 'BeanList/BeanFiles файлове съществуват',
'LBL_DIAGNOSTIC_CALCMD5'=>'&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;Copy MD5 Calculated array',
'LBL_DIAGNOSTIC_CONFIGPHP' => 'SugarCRM config.php' ,
'LBL_DIAGNOSTIC_CUSTOMDIR' => 'SugarCRM Custom directory' ,
'LBL_DIAGNOSTIC_DELETELINK' => 'Изтрийте файла от диагностиката' ,
'LBL_DIAGNOSTIC_DESC' => 'Събиране на системна информация за диагностика и анализ' ,



'LBL_DIAGNOSTIC_DONE' => 'Готово' ,
'LBL_DIAGNOSTIC_DOWNLOADLINK' => 'Свали файла от диагностиката' ,
'LBL_DIAGNOSTIC_EXECUTING' => 'Изпълнение на операции по диагностиката...' ,
	'LBL_DIAGNOSTIC_FILESMD5'=>'&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;Copy files.md5',
	'LBL_DIAGNOSTIC_GETBEANFILES' => 'Проверяване на bean файловете...',
	'LBL_DIAGNOSTIC_GETCONFPHP' => 'Взимане на config.php...',
	'LBL_DIAGNOSTIC_GETCUSTDIR' => 'Взимане на custom папка...',
	'LBL_DIAGNOSTIC_GETMD5INFO' => 'Взимане на md5 информация...',
	'LBL_DIAGNOSTIC_GETMYSQLINFO' => 'mysql информация',
	'LBL_DIAGNOSTIC_GETMYSQLTD' => 'mysql dumps',
	'LBL_DIAGNOSTIC_GETMYSQLTS' => 'mysql schema',
	'LBL_DIAGNOSTIC_GETPHPINFO' => 'Взимане на phpinfo()',
	'LBL_DIAGNOSTIC_GETSUGARLOG' => 'Взимане на sugarcrm.log',
	'LBL_DIAGNOSTIC_GETTING' => 'Взимане...',
	'LBL_DIAGNOSTIC_MD5'=>'MD5 информация',
	'LBL_DIAGNOSTIC_MYSQLDUMPS'=>'MySQL - Configuration Table Dumps',
	'LBL_DIAGNOSTIC_MYSQLINFO'=>'MySQL - General Information',
	'LBL_DIAGNOSTIC_MYSQLSCHEMA'=>'MySQL - All Tables Schema',
        'LBL_DIAGNOSTIC_NO_MYSQL' => 'БД MySQL не е установена. MySQL функциите са недостъпни.' ,
	'LBL_DIAGNOSTIC_PHPINFO'=>'phpinfo()',
	'LBL_DIAGNOSTIC_SUGARLOG'=>'SugarCRM Log File',

'LBL_DIAGNOSTIC_TITLE' => 'Диагностика' ,
	'LBL_DIAGNOSTIC_VARDEFS'=>'Sugar schema output (VARDEFS)',
	'LBL_DIAGNOSTIC_DELETED' => 'Файлът беше изтрит',
'LBL_DISPLAY_TABS' => 'Покажи табовете' ,
'LBL_DOCUMENTATION_TITLE' => 'Online-документация' ,
'LBL_DOCUMENTATION' => 'Получете потребителска и администраторска документация' ,
'LBL_DROPDOWN_EDITOR' => 'Редактор на падащите менюта' ,
'LBL_DST_APPLY_FIX' => 'Добавяне на Daylight Savings Time поправка към съществуващите данни. Моля, създайте резервно копие на вашите данни.' ,
'LBL_DST_BEFORE_DESC' => 'Тази поправка ще направи промени във вашите данни. Моля, създайте резервно копие на вашите данни преди да го пуснете.' ,
'LBL_DST_BEFORE' => 'Преди началото:' ,
'LBL_DST_CURRENT_SERVER_TIME_ZONE_LOCALE' => 'Локална времева зона на сървъра:' ,
'LBL_DST_CURRENT_SERVER_TIME_ZONE' => 'Времева зона на сървъра:' ,
'LBL_DST_CURRENT_SERVER_TIME' => 'Засечено локално време на сървъра:' ,
'LBL_DST_END_DATE_TIME' => 'Крайни Дата/Време' ,
'LBL_DST_FIX_CONFIRM_DESC' => 'Моля, проверете следните данни за да видите дали системата ви е правилно конфигурирана.' ,
'LBL_DST_FIX_CONFIRM' => 'Потвърждение: ' ,
'LBL_DST_FIX_DONE_DESC' => 'Поправката Daylight Saving Time беше успешно добавена.' ,

//Company info lables 
	'LBL_COMP_INFO' => 'Информация за компания',
	'LBL_COMP_INFO_DESC' => 'Редактирай информацията за компания за PDF файлове',
	'LBL_CURRENT_LOGO' => 'Tекущо лого',
    'LBL_NEW_LOGO' => 'Ново лого',
    'LBL_LOGO' => 'Промяна на лого',   
    'LBL_ADDRESS' => 'Информация за адрес',
    'LBL_ADDRESS_CITY' => 'Град', 
	'LBL_ADDRESS_STATE' => 'Област',
    'LBL_ADDRESS_COUNTRY' => 'Държава',
    'LBL_ADDRESS_STREET' => 'Улица',
    'LBL_OTHER' => 'Друга информация',
    'LBL_PHONE' => 'Телефон',
    'LBL_FAX' => 'Факс',
    'LBL_WWW' => 'Уеб страница',
    'LBL_EMAIL' => 'E-mail',
   // 	
	
	
		
	
'LBL_DST_FIX_TARGET' => 'Цел:' ,
'LBL_DST_FIX_USER_TZ' => 'Тази стъпка настройва времевата зона на всичко потребители на най-вероятната.' ,
'LBL_DST_FIX_USER' => 'Потребителска времева зона:<br>(не е задължително)' ,
'LBL_DST_SET_USER_TZ' => 'Настройте потребителските времеви зони' ,
'LBL_DST_START_DATE_TIME' => 'Начални Дата/Време' ,
'LBL_DST_UPGRADE' => 'Обновяване:' ,
'LBL_EDIT_CUSTOM_FIELDS' => 'Редакция на собствени полета',
'LBL_EDIT_TABS' => 'Редактирай табове',
'LBL_EMAIL_TITLE' => 'E-mail' ,
'LBL_ENABLE_MAILMERGE' => 'Включете сливане на писма?' ,
'LBL_ERROR_VERSION_INFO' => 'Грешка при доставянето на информация относно версията, моля, опитайте отново.' ,

       'LBL_EXPORT_CUSTOM_FIELDS_TITLE' => 'Експортиране на структура на собствени полета',
'LBL_EXPORT_CUSTOM_FIELDS' => 'Експортране на дефиниции на собствени полета в .sugar файл', 
'LBL_EXPORT_DOWNLOAD_KEY' => 'Експортране на Download Key' ,
'LBL_EXTERNAL_DEV_DESC' => 'Пренасяне на структурата на собствени полета от една система на друга',
'LBL_EXTERNAL_DEV_TITLE' => 'Пренасяне на собствени полета',
'LBL_FORECAST_TITLE' => 'Прогноза' ,
'LBL_GLOBAL_TEAM_DESC' => 'Глобална видимост' ,
'LBL_GO' => 'Давай' ,
	'LBL_HELP_BOOKMARK' => 'Добави тази страница към Bookmark',
	'LBL_HELP_EMAIL' => 'Email',
	'LBL_HELP_LINK' => 'Свържи с тази страница',
	'LBL_HELP_PRINT' => 'Печат',
'LBL_HIDE_TABS' => 'Скрий табове' ,
'LBL_HT_DONE' => '--- ГОТОВО ---' ,
'LBL_HT_NO_WRITE_2' => 'Ако искате да защитите файловете си от достъп чрез браузър, създайте .htaccess файл в главната директория със следните редове:' ,
'LBL_HT_NO_WRITE' => 'Този файл не е достъпен за запис: ' ,
'LBL_ICF_ADDING' => 'Добавяне метаданни за собствени полета - ' ,
'LBL_ICF_DROPPING' => 'Премахване на метаданни от собствени полета' ,
'LBL_ICF_IMPORT_S' => 'Импортиране на структури' ,
'LBL_IFRAME' => 'Портал' ,
'LBL_IMPORT_CUSTOM_FIELDS_DESC' => ' <br>Импортиране на .sug файл файл, който е бил експортиран от друга машна. Структурата на Собствени полета на двете машни ще бъде уеднаквена. Препоръчително е да експортирате настоящата си структура на Собствени полета, преди да импортирате друга. След импортирането на структурата на собствени полета, системата автоматично ще ви преведе през Ъпгрейд на Собствени полета и ще ви информира за промените, които ще бъдат направени в базата данни. Ако сте съгласни с тези промени, кликнете на линка най-долу за извършване на процеса без симулация. Ако желаете да обърнете процеса на импортиране, просто импортирайте предварително експортираната структура. Ако направите това <br> Внимание: Това ще премахне всяка предварително дефинирана структура на собствени полета, която не е дефинирана в .sug файл, както и всякаква информация съхраняване в тези полета.',
'LBL_IMPORT_CUSTOM_FIELDS_STRUCT' => ' Структура на Собсвени полета(SugarCustomFieldStruct.sug)',
'LBL_IMPORT_CUSTOM_FIELDS_TITLE' => 'Импортиране на структура на собствени полета Custom Fields Structure',
'LBL_IMPORT_CUSTOM_FIELDS' => 'Импортиране на структура на собствени полета Custom Fields Structure',
'LBL_IMPORT_VALIDATION_KEY' => 'Импортиране на лицензионен ключ' ,
'LBL_INBOUND_EMAIL_TITLE' => 'Входящи E-mail-и' ,
'LBL_LAYOUT' => 'Добавяне, премахване, смяна на полета и на разположението на полета и панели в приложението',
	'LBL_LOCALE_DEFAULT_CURRENCY_ISO4217'		=> 'ISO 4217 Currency Code',
	'LBL_LOCALE_DEFAULT_CURRENCY_NAME'			=> 'Валута',
	'LBL_LOCALE_DEFAULT_CURRENCY_SYMBOL'		=> 'Валутен символ',
	'LBL_LOCALE_DEFAULT_CURRENCY'				=> 'Валута по подразбиране',
	'LBL_LOCALE_DEFAULT_DATE_FORMAT'			=> 'Формат на датата по подразбиране',
	'LBL_LOCALE_DEFAULT_DECIMAL_SEP'			=> 'Десетичен разделител',
	'LBL_LOCALE_DEFAULT_LANGUAGE'				=> 'Език',
	'LBL_LOCALE_DEFAULT_NAME_FORMAT'			=> 'Формат на името ',
	'LBL_LOCALE_DEFAULT_NUMBER_GROUPING_SEP'	=> '1000s Separator',
	'LBL_LOCALE_DEFAULT_SYSTEM_SETTINGS'		=> 'Потребителски интерфейс',
	'LBL_LOCALE_DEFAULT_TIME_FORMAT'			=> 'Формат на времето',
	'LBL_LOCALE_EXAMPLE_NAME_FORMAT'			=> 'Пример',
	'LBL_LOCALE_NAME_FORMAT_DESC'				=> '"s" Salutation<br>"f" First Name<br>"l" Last Name',
	'LBL_LOCALE_TITLE'							=> 'System Locale Settings',

	'LBL_LOCALE' => 'Активирайте локалните настройки на системата по подразбиране.',
'LBL_MAILBOX_DESC' => 'Активирайте мониторинг на пощенсктие кутии за входящи писма.' ,
'LBL_MANAGE_CURRENCIES' => 'Валута' ,
'LBL_MANAGE_GROUPS_TITLE' => 'Управление на групи' ,
'LBL_MANAGE_GROUPS' => 'Управление на групи' ,
'LBL_MANAGE_LAYOUT' => 'Разположение на полетата' ,
'LBL_MANAGE_LOCALE'	=> 'Локални настройки',
'LBL_MANAGE_FORMATS' => 'Формати',
'LBL_FORMATS' => 'Управление на формати',
'LBL_MANAGE_MAILBOX' => 'Пощенски кутии' ,
'LBL_MANAGE_MAILBOX' => 'Входящи Email-и' ,
'LBL_MANAGE_OPPORTUNITIES' => 'Сделки' ,
'LBL_MANAGE_RELEASES' => 'Издания' ,
'LBL_MANAGE_ROLES_TITLE' => 'Управление на роли' ,
'LBL_MANAGE_ROLES' => 'Управление на роли и настройки' ,
'LBL_MANAGE_USERS_TITLE' => 'Управление на потребители' ,
'LBL_MANAGE_USERS' => 'Управление на потребителски акаунти и пароли' ,
'LBL_MANUAL_VALIDATION_TXT' => 'Ръчно потвърждаване' ,
'LBL_MANUAL_VALIDATION'=>'If you experience persistent problems with automatic validation, please check your Proxy configuration in the <a href="index.php?module=Configurator&action=EditView">System Settings</a> admin panel.  If your system environment prohibits your system from communicating to the license validation server through the internet, you should proceed with the <a href="#" onclick="toggleDisplay(\'mainbody\');toggleDisplay(\'manualbody\');">Manual Validation</a> steps. ',


	'LBL_MANUAL_VALIDATION1'=> 'Step 1: Generate a license key information file by clicking the following button. ',
	'LBL_MANUAL_VALIDATION2'=> 'Then save the file (sugarkey.lic) on your local file system.',
	'LBL_MANUAL_VALIDATION3'=> 'Step 2: Transfer the sugarkey.lic file to a system where you can access the internet with a web browser.   <br<br>Go to <a href="http://updates.sugarcrm.com/license">http://updates.sugarcrm.com/license</a>  and submit the sugarkey.lic file.  <br><br>The license validation web site will perform the validation immediately and return you the validation key file (sugarvalidationkey.lic) if the validation is successful.  You browser should prompt you to save the file.  ',
	'LBL_MANUAL_VALIDATION4'=>'Step 3:  Transfer the validation key file (sugarvalidationkey.lic) back to the SugarCRM system.  Import the validation key using this form below: ',


	'LBL_MANUAL_VALIDATION5'=> 'After you import the validation key, you have completed the manual validation process.  Your system will update the validation key expiration date, which is the next time you need re-validate.',



'LBL_MASS_EMAIL_CONFIG_DESC' => 'Конфигуриране на Mass Email' ,
'LBL_MASS_EMAIL_CONFIG_TITLE' => 'Email настройки' ,
'LBL_MASS_EMAIL_MANAGER_DESC' => 'Управление на външните email-и' ,
'LBL_MASS_EMAIL_MANAGER_HEADER' => 'Управление email кампаниите' ,
'LBL_MASS_EMAIL_MANAGER_TITLE' => 'Управление масови E-mail-и' ,
'LBL_MASSAGE_MASS_EMAIL_DESC' => 'SugarCRM 3.5.1+ предполага обновяване на данните за масови Email-и. Кликнете на "Започни обновяване", за да продължите.' ,
'LBL_MASSAGE_MASS_EMAIL' => 'GMT Date Time Fix за изпращане на масови E-mail-и' ,
'LBL_ML_ACTION' => 'Действие' ,
'LBL_ML_DESCRIPTION' => 'Описание' ,
'LBL_ML_INSTALLED' => 'Дата на инсталиране',
'LBL_ML_NAME' => 'Име' ,
'LBL_ML_PUBLISHED' => 'Дата на публикация' ,
'LBL_ML_TYPE' => 'Тип' ,
'LBL_ML_UNINSTALLABLE' => 'Възможна деинсталация' ,
'LBL_ML_VERSION' => 'Версия' ,
'LBL_MODULE_LOADER_TITLE' => 'Модул активатор' ,
'LBL_MODULE_LOADER' => 'Добавяне / изтриване на  модули, теми и езикови пакети' ,
'LBL_MODULE_NAME' => 'Администрация' ,
'LBL_MODULE_TITLE' => 'Администрация: Начало' ,
'LBL_NEVER' => 'Никога' ,
'LBL_NEW_FORM_TITLE' => 'Създай акаунт' ,
'LBL_NOTIFY_SUBJECT' => 'Тема на Email:' ,
'LBL_PERFORM_UPDATE' => 'Започни обновяване' ,
'LBL_PLUGINS_TITLE' => 'Sugar Forge' ,
'LBL_PLUGINS' => 'Получаване на плъгини и други разширения.' ,
'LBL_PROXY_AUTH' => 'Аутентификация?' ,
'LBL_PROXY_HOST' => 'Прокси-сървър' ,
'LBL_PROXY_ON_DESC' => 'Използвайте прокси-сервер, за да използвате външна информация като обновления.' ,


        'LBL_PROXY_ON' => 'Използвай прокси-сървър?' ,
'LBL_PROXY_PASSWORD' => 'Парола' ,
'LBL_PROXY_PORT' => 'Порт' ,
'LBL_PROXY_TITLE' => 'Настройки на прокси-сървъра' ,
'LBL_PROXY_USERNAME' => 'Потребителско име' ,
'LBL_REBUILD_AUDIT_DESC' => 'Възстановяване на проверовъчната таблица.',
'LBL_REBUILD_AUDIT_TITLE' => 'Възстановяване на проверката/одита',
'LBL_REBUILD_CONFIG_DESC' => 'Възстановяване на config.php чрез ъпдейт на версията и добавяне на defaults без да са категорично определени.',
'LBL_REBUILD_CONFIG' => 'Възстановяване на Config файл',
	'LBL_REBUILD_DASHLETS_DESC_SHORT' => 'Преправяне на кеш файла на дашлетите.',
	'LBL_REBUILD_DASHLETS_DESC_SUCCESS' => 'Кеш файлът на дашлетите е преправен.',
	'LBL_REBUILD_DASHLETS_DESC' => 'Премахване на кеш файла на дашлетите и сканиране на познатите директории за дашлет файлове.',
	'LBL_REBUILD_DASHLETS_TITLE' => 'Преправяне на дашлетите',
    'LBL_REBUILD_JAVASCRIPT_LANG_TITLE' => 'Преправяне на Javascript Languages',
    'LBL_REBUILD_JAVASCRIPT_LANG_DESC_SHORT' => ' Преправи javascript-версиите на езиковите файлове',
    'LBL_REBUILD_JAVASCRIPT_LANG_DESC' => 'Премахването на javascript-версиите на езиковите файлове (файловете ще бъдат възстановени при необходимост).',
'LBL_REBUILD_EXTENSIONS_DESC' => 'Възстановяване на разширения, включително разширени vardefs, езикови пакети, менюта и администрация',
'LBL_REBUILD_EXTENSIONS_DESC' => 'Восстановление расширений, включая определения переменных, языковые файлы, меню и панель администрирования' , 
'LBL_REBUILD_HTACCESS_DESC' => 'Преправяне на .htaccess, за да се ограничи директно достъпа до определени файлове.' ,
'LBL_REBUILD_HTACCESS' => 'Преправяне на .htaccess-файла' ,
'LBL_REBUILD_REL_DESC' => 'Преправяне на мета данните за връзки и изчистване на кеш файла.' ,
'LBL_REBUILD_REL_TITLE' => 'Преправяне на връзките' ,
'LBL_REBUILD_SCHEDULERS_DESC_SHORT' => 'Преправяне на вашите запланирани задължения.' ,
'LBL_REBUILD_SCHEDULERS_DESC_SUCCESS' => 'Преправянето на запланираните задължения завършено.' ,
'LBL_REBUILD_SCHEDULERS_DESC' => 'При преправянето на запланираните задължения ще бъдат изтрити всички въведени до сега задължения, както и техните логове. Всички останали задължения ще бъдат преправени с тяхните настройки по подразбиране, включително флага за активност.' ,
'LBL_REBUILD_SCHEDULERS_TITLE' => 'Преправи задължения' ,
'LBL_REBUILD' => 'Преправи' ,
'LBL_RELEASE' => 'Управление на издания и версии' ,
'LBL_RENAME_TABS' => 'Преименуване на табове',
'LBL_REPAIR_ACTION' => 'Какво действие бихте предприели?' ,
'LBL_REPAIR_DATABASE_DESC' => 'Поправяне на базата данни, базирана на стойности дефинирани във vardefs (САМО MYSQL)',
'LBL_REPAIR_DATABASE_TEXT' => 'Този инструмент ви позволява да ъпгрейднете базата данни, за да отговаря на промени направени в "bean vardefs" и "relationship metadata". <br>Можете да изберете измежду три възможности : <br>"Покажи SQL" ще изведе на екрана този sql, който ще бъде изпълнен<br> "Експортирай SQL" ще експортира този sql във файл<br> "Изпълни SQL" ще изпълни този SQL.',
'LBL_REPAIR_DATABASE' => 'Поправяне на база данни',
'LBL_REPAIR_DISPLAYSQL' => 'Покажи SQL',
	'LBL_REPAIR_ENTRY_POINTS_DESC' => 'Поправяне на Entry Points. Използвайте този скрипт, ако получите съобщението: \'Not A Valid Entry Point\' .',
	'LBL_REPAIR_ENTRY_POINTS' => 'Поправяне на Entry Points',
'LBL_REPAIR_EXECUTESQL' => 'Изпълни SQL',
'LBL_REPAIR_EXPORTSQL' => 'Експортирай SQL',
	'LBL_REPAIR_INDEX_DESC'=>'Проверка и по возможност възстановяване на индексите на базата данни.',



 'LBL_REPAIR_INDEX'=>'Поправяне на индекси',
	'LBL_REPAIR_ROLES'=>'Поправяне на роли',
	'LBL_REPAIR_ROLES_DESC'=>'Добавяне на всички нови модули, които поддържат контрол на достъпа, както и добавяне на нов контол на достъпа към съществуващи модули',
'LBL_RETURN' => 'Върни' ,
'LBL_REVALIDATE' => 'Повторна проверка' ,
'LBL_SEND_STAT'=>'<B>Отправка анонимной статистики использования программного продукта</B>',

'LBL_STATUS' => 'Статус ' ,
	'LBL_STUDIO_DESC' => 'Редактиране на падащи менюта, потребителски полета, излгеди и етикети',
'LBL_STUDIO_TITLE' => 'Студио' ,
	'LBL_STUDIO' => 'Студио',
'LBL_SUGAR_NETWORK_TITLE' => 'Поддръжка' ,
'LBL_SUGAR_SCHEDULER_TITLE' => 'Програма' ,
'LBL_SUGAR_SCHEDULER' => 'Настройка на събития' ,
'LBL_SUGAR_UPDATE_TITLE' => 'Обновяване на SugarCRM' ,
'LBL_SUGAR_UPDATE' => 'Проверете последните обновления.' ,
	'LBL_SUGARCRM_HELP' => 'Справка по SugarCRM ',
'LBL_SUPPORT_TITLE' => 'Sugar - Портал и техническа поддръжка' ,
'LBL_SUPPORT' => 'Достъп до портала, техническа поддръжка и други...',
'LBL_TIMEZONE' => 'Времева зона' ,
	'LBL_TO'	=> ' до ',
'LBL_UPDATE_CHECK_AUTO' => 'Автоматично' ,
'LBL_UPDATE_CHECK_MANUAL' => 'Ръчно' ,
'LBL_UPDATE_CHECK_TYPE' => 'Провери за обновления' ,
'LBL_UPDATE_DESCRIPTIONS' => 'Описание' ,
'LBL_UPDATE_TITLE' => 'Включи обновленията:' ,
	'LBL_UPGRADE_STUDIO_TITLE'=>'Обновяване',
	'LBL_UPGRADE_STUDIO_DESC'=>' Обновяване на файлове от предишни версии до версия 4.5',
'LBL_UPGRADE_CURRENCY' => 'Увеличаване на количествата валута в',
'LBL_UPGRADE_CUSTOM_LABELS_DESC' => 'Обновяване на формата на потребителските полета във всеки езиков файл.' ,
'LBL_UPGRADE_CUSTOM_LABELS_TITLE' => 'Обновяване на етикетите на потребителските полета' ,
'LBL_UPGRADE_DB_BEGIN' => 'Начало на обновяването' ,
'LBL_UPGRADE_DB_COMPLETE' => 'Обновяването завършено' ,
'LBL_UPGRADE_DB_FAIL' => 'Грешка при обновяването' ,
'LBL_UPGRADE_DB_TITLE' => 'Обновяване на бази данни' ,
'LBL_UPGRADE_DB' => 'Обновяване на БД с версии 2.0.x до 2.5 ' ,
'LBL_UPGRADE_TITLE' => 'Възстановяване' ,
'LBL_UPGRADE_VERSION' => 'Обновяване на информацията за версията',
'LBL_UPGRADE_WIZARD_TITLE' => 'Помощник за обновления' ,
'LBL_UPGRADE_WIZARD' => 'Управление на обновления' ,
'LBL_UPGRADE' => 'Проверка и възстановяване на Sugar Suite' ,
'LBL_UPLOAD_UPGRADE' => 'Ъплоудване на обновление: ',
'LBL_UPTODATE' => 'Разполагате с последните версии' ,
'LBL_USERS_TITLE' => 'Потребители' ,
'LBL_VALIDATION_FAIL_DATE' => 'Последна провалена проверка : ' ,
'LBL_VALIDATION_FILE' => 'Файл лицензионен ключ' ,
'LBL_VALIDATION_SUCCESS_DATE' => 'Последна успешна проверка : ' ,
'LNK_NEW_USER' => 'Създаване на потребители' ,
	'LNK_REPAIR_CUSTOM_FIELD' => 'Поправка на потребителски полета',
	'LNK_SELECT_CUSTOM_FIELD' => 'Избери потребителско поле',
'MSG_CONFIG_FILE_READY_FOR_REBUILD' => 'Файлът config.php е готов за поправяне.' ,
'MSG_CONFIG_FILE_REBUILD_FAILED' => 'Файлът config.php не е поправен.' ,
	'LBL_CONFIG_TABS'=>'Преместете (Drag and drop) табовете долу, за да ги направите видими или скрити. Ако искате да предотвратите не администратори да настройват табовете махнете отметката "Позволи на потребители да конфигурират табове"',
'MSG_CONFIG_FILE_REBUILD_SUCCESS' => 'Файлът config.php бе успешно възстановен.',
'MSG_INCREASE_UPLOAD_MAX_FILESIZE' => 'Предупреждение: Трябва да настроите вашата PHP-конфигурация, за да може да качвате файлове от поне 6 мб. Моля, промененте стойността на upload_max_filesize във php.ini файла:' ,
'MSG_MAKE_CONFIG_FILE_WRITABLE' => 'Моля направете config.php достъпен за записване и опитайте отново.',
'MSG_REBUILD_EXTENSIONS' => 'Моля посетете страницата <a href="index.php?module=Administration&action=Upgrade">Поправка</a> и изберете Преправи разширения.',
'MSG_REBUILD_RELATIONSHIPS' => 'Моля посетете страницата <a href="index.php?module=Administration&action=Upgrade">Поправка</a> и изберете Преправи връзки.',
'WARN_INSTALLER_LOCKED' => 'Предупреждение: За да предпазите вашите данни трябва да заключите инсталатора от config.php файла - параметъра "installer_locked" трябва да бъде "true".' ,
'WARN_LICENSE_EXPIRED' => 'Съобщение: Лицензът ви изтича след: ' ,
'WARN_LICENSE_EXPIRED2' =>"дни. Моля, посетете страницата <a href='index.php?action=LicenseSettings&module=Administration'>'\"Управление на лицензи\"</a> в Администраторския панел.",
	'WARN_LICENSE_SEATS'=>  "Предупреждение: Потребителският лиценз е надхвърлен с",
	'WARN_LICENSE_SEATS2' => ".  Моля, посетете страницата <a href='index.php?action=LicenseSettings&module=Administration'>'\"Управление на лицензи\"</a> в Администраторския панел.",
'WARN_REPAIR_CONFIG' => 'Предупреждение: Файлът config.php трябва да бъде поправен. Използвайте страницата "Поправяне" в администраторския панел.' ,
'WARN_UPGRADE_APP' => 'Достъпна е нова версия на приложението.' ,
'WARN_UPGRADE' => 'Предупреждение: моля, обновете версията ' ,
'WARN_UPGRADE2' => ', използвайте връзката "Обновяване" в администраторския панел' ,
'WARN_VALIDATION_EXPIRED' => 'Предупреждение: Лицензионният ви код изтича след ' ,
'WARN_VALIDATION_EXPIRED2' => " дни. Моля, посетете страницата <a href='index.php?action=LicenseSettings&module=Administration'>'\"Управление на лицензи\"</a> в Администраторския панел.",

'LBL_UW_SUCCESSFUL' => 'Успешно',

);


?>