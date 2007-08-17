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
  'LBL_MODULE_NAME' => 'Служители' ,
  'LBL_MODULE_TITLE' => 'Служители: Начало' ,
  'LBL_SEARCH_FORM_TITLE' => 'Търсене в служители',
  'LBL_LIST_FORM_TITLE' => 'Служители',
  'LBL_NEW_FORM_TITLE' => 'Нов служител',
  'LBL_EMPLOYEE' => 'Служител:',
  'LBL_LOGIN' => 'Логин',
  'LBL_RESET_PREFERENCES' => 'Върни на настройките по подразбиране',
  'LBL_TIME_FORMAT' => 'Времви формат:',
  'LBL_DATE_FORMAT' => 'Фромат на датата:',
  'LBL_TIMEZONE' => 'Текущо време:',
  'LBL_CURRENCY' => 'Валута:',
  'LBL_LIST_NAME' => 'Име',
  'LBL_LIST_LAST_NAME' => 'Фамилия',
  'LBL_LIST_EMPLOYEE_NAME' => 'Име на служител',
  'LBL_LIST_DEPARTMENT' => 'Отдел',
  'LBL_LIST_REPORTS_TO_NAME' => 'Докладва на',
  'LBL_LIST_EMAIL' => 'E-mail',
  'LBL_LIST_PRIMARY_PHONE' => 'Основен тел.',
  'LBL_LIST_USER_NAME' => 'Име на потребител',
  'LBL_LIST_EMPLOYEE_STATUS' => 'Статус на служител',
  'LBL_LIST_ADMIN' => 'Администрация',
  'LBL_NEW_EMPLOYEE_BUTTON_TITLE' => 'Нов служител [Alt+N]',
  'LBL_NEW_EMPLOYEE_BUTTON_LABEL' => 'Нов служител',
  'LBL_NEW_EMPLOYEE_BUTTON_KEY' => 'N',
  'LBL_ERROR' => 'Грешка:',
  'LBL_PASSWORD' => 'Парола:',
  'LBL_EMPLOYEE_NAME' => 'Име на служител:',
  'LBL_USER_NAME' => 'Име на потребител:',
  'LBL_FIRST_NAME' => 'Име:',
  'LBL_LAST_NAME' => 'Фамилия:',
  'LBL_EMPLOYEE_SETTINGS' => 'Служител - настройки',
  'LBL_THEME' => 'Тема:',
  'LBL_LANGUAGE' => 'Език:',
  'LBL_ADMIN' => 'Администратор:',
  'LBL_EMPLOYEE_INFORMATION' => 'Информация за служител',
  'LBL_OFFICE_PHONE' => 'Тел. (раб.):',
  'LBL_REPORTS_TO' => 'Докладва на:',
  'LBL_OTHER_PHONE' => 'Други:',
  'LBL_OTHER_EMAIL' => 'Друг E-mail:',
  'LBL_NOTES' => 'Бележка:',
  'LBL_DEPARTMENT' => 'Отдел:',
  'LBL_TITLE' => 'Длъжност:',
  'LBL_ANY_PHONE' => 'Тел.:',
  'LBL_ANY_EMAIL' => 'E-mail:',
  'LBL_ADDRESS' => 'Адрес:',
  'LBL_CITY' => 'Град:',
  'LBL_STATE' => 'Област:',
  'LBL_POSTAL_CODE' => 'Пощенски код:',
  'LBL_COUNTRY' => 'Страна:',
  'LBL_NAME' => 'Име:',
  'LBL_MOBILE_PHONE' => 'Тел. (моб.):',
  'LBL_OTHER' => 'Други:',
  'LBL_FAX' => 'Факс:',
  'LBL_EMAIL' => 'E-mail:',
  'LBL_HOME_PHONE' => 'Тел. (дом.):',
  'LBL_ADDRESS_INFORMATION' => 'Адресна информация',
  'LBL_EMPLOYEE_STATUS' => 'Статус на служител:',
  'LBL_PRIMARY_ADDRESS' => 'Основен адрес:',
  'LBL_CREATE_USER_BUTTON_TITLE' => 'Създай потребител [Alt+N]',
  'LBL_CREATE_USER_BUTTON_LABEL' => 'Създай потребител',
  'LBL_CREATE_USER_BUTTON_KEY' => 'N',
  'LBL_FAVORITE_COLOR' => 'Любим цвят:',
  'LBL_MESSENGER_ID' => 'Потребител ID:',
  'LBL_MESSENGER_TYPE' => 'Тип месенджър:',
  'ERR_EMPLOYEE_NAME_EXISTS_1' => 'Име на служителя',
  'ERR_EMPLOYEE_NAME_EXISTS_2' => ' Вече съществува. Не се допуска дублиране на имената на служителите. Изменете името на служителя, така че да няма дублиране.',
  'ERR_LAST_ADMIN_1' => 'Име на потребителя "',
  'ERR_LAST_ADMIN_2' => '" последен служител с администраторски права. Поне един служител трябва да има права на администратор.',
  'LNK_NEW_EMPLOYEE' => 'Създай служител',
  'LNK_EMPLOYEE_LIST' => 'Служители',
  'ERR_DELETE_RECORD' => 'Трябва да определите номер на записа, за да изтриете акаунт.',
  );
  

?>