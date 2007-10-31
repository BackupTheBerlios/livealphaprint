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
  'LBL_MODULE_NAME' => 'История',
  'LBL_MODULE_TITLE' => 'История: Начало',
  'LBL_SEARCH_FORM_TITLE' => 'Търсене в История',
  'LBL_LIST_FORM_TITLE' => 'История',
  'LBL_LIST_SUBJECT' => 'Тема',
  'LBL_LIST_CONTACT' => 'Контакт',
  'LBL_LIST_RELATED_TO' => 'Свързано с',
  'LBL_LIST_DATE' => 'Дата',
  'LBL_LIST_TIME' => 'Начало - време',
  'LBL_LIST_CLOSE' => 'Затвори',
  'LBL_SUBJECT' => 'Тема:',
  'LBL_STATUS' => 'Статус:',
  'LBL_LOCATION' => 'Разположение:',
  'LBL_DATE_TIME' => 'Начало - дата и време:',
  'LBL_DATE' => 'Начало - дата:',
  'LBL_TIME' => 'Начало - време:',
  'LBL_DURATION' => 'Продължителност:',
  'LBL_HOURS_MINS' => '(час/мин)',
  'LBL_CONTACT_NAME' => 'Име на контакта: ',
  'LBL_MEETING' => 'Среща:',
  'LBL_DESCRIPTION_INFORMATION' => 'Описание',
  'LBL_DESCRIPTION' => 'Описание:',
  'LBL_COLON' => ':',
  'LBL_DEFAULT_STATUS' => 'Планирана',
  'LNK_NEW_CALL' => 'Ново обаждане',
  'LNK_NEW_MEETING' => 'Нова среща',
  'LNK_NEW_TASK' => 'Нова задача',
  'LNK_NEW_NOTE' => 'Нова бележка',
  'LNK_NEW_EMAIL' => 'Архивация на E-mail',
  'LNK_CALL_LIST' => 'Обаждания',
  'LNK_MEETING_LIST' => 'Срещи',
  'LNK_TASK_LIST' => 'Задачи',
  'LNK_NOTE_LIST' => 'Бележки',
  'LNK_EMAIL_LIST' => 'E-mail',
  'ERR_DELETE_RECORD' => 'Трябва да определите номер на записа, за да изтриете този акаунт.',
  'NTC_REMOVE_INVITEE' => 'Желаете ли да го премахнете потребителя от срещата?',
  'LBL_INVITEE' => 'Поканени',
  'LBL_LIST_DIRECTION' => 'Посока',
  'LBL_DIRECTION' => 'Посока',
  'LNK_NEW_APPOINTMENT' => 'Нова уговорка',
  'LNK_VIEW_CALENDAR' => 'Днес',
  'LBL_OPEN_ACTIVITIES' => 'Отворени дейности',
  'LBL_HISTORY' => 'История',
  'LBL_UPCOMING' => 'Насрочена среща',
  'LBL_TODAY' => 'до',
  'LBL_NEW_TASK_BUTTON_TITLE' => 'Нова задача [Alt+N]',
  'LBL_NEW_TASK_BUTTON_KEY' => 'N',
  'LBL_NEW_TASK_BUTTON_LABEL' => 'Нова задача',
  'LBL_SCHEDULE_MEETING_BUTTON_TITLE' => 'Планирай среща [Alt+M]',
  'LBL_SCHEDULE_MEETING_BUTTON_KEY' => 'M',
  'LBL_SCHEDULE_MEETING_BUTTON_LABEL' => 'Планирай среща',
  'LBL_SCHEDULE_CALL_BUTTON_TITLE' => 'Планирай обаждане [Alt+C]',
  'LBL_SCHEDULE_CALL_BUTTON_KEY' => 'C',
  'LBL_SCHEDULE_CALL_BUTTON_LABEL' => 'Планирай обаждане',
  'LBL_NEW_NOTE_BUTTON_TITLE' => 'Нова бележка [Alt+T]',
  'LBL_NEW_NOTE_BUTTON_KEY' => 'T',
  'LBL_NEW_NOTE_BUTTON_LABEL' => 'Нова бележка',
  'LBL_TRACK_EMAIL_BUTTON_TITLE' => 'Архивация на E-mail [Alt+K]',
  'LBL_TRACK_EMAIL_BUTTON_KEY' => 'K',
  'LBL_TRACK_EMAIL_BUTTON_LABEL' => 'Архивация на E-mail',
  'LBL_LIST_STATUS' => 'Статус',
  'LBL_LIST_DUE_DATE' => 'Дата на завършване',
  'LBL_LIST_LAST_MODIFIED' => 'Последно изменен',
  'NTC_NONE_SCHEDULED' => 'Непланирано.',
  'appointment_filter_dom' => array(
  	 'today' => 'днес'
  	,'tomorrow' => 'утре'
  	,'this Saturday' => 'тази седмица'
    ,'next Saturday' => 'следващата седмица'
  	,'last this_month' => 'този месец'
  	,'last next_month' => 'следващия месец'
  ),

  'LNK_IMPORT_NOTES'=>'Импортиране на бележка',
  'NTC_NONE'=>'Нищо',
  'LBL_ACCEPT_THIS'=>'Приемане?',
  'LBL_DEFAULT_SUBPANEL_TITLE' => 'История',
);

?>