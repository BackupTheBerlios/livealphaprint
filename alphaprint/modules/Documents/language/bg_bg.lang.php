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
	//module
'LBL_MODULE_NAME' => 'Документи' ,
'LBL_MODULE_TITLE' => 'Документи: Начало' ,
'LNK_NEW_DOCUMENT' => 'Нов документ' ,
'LNK_DOCUMENT_LIST' => 'Списък с документи' ,
'LBL_DOC_REV_HEADER' => 'История' ,
'LBL_SEARCH_FORM_TITLE' => 'Търси документи' ,
	//vardef labels
'LBL_DOCUMENT_ID' => 'ID на документа' ,
'LBL_NAME' => 'Име на документа' ,
'LBL_DESCRIPTION' => 'Описание' ,
'LBL_CATEGORY' => 'Категория' ,
'LBL_SUBCATEGORY' => 'Подкатегория' ,
'LBL_STATUS' => 'Статус' ,
'LBL_CREATED_BY' => 'Създадено от' ,
'LBL_DATE_ENTERED' => 'Входна дата' ,
'LBL_DATE_MODIFIED' => 'Дата на промяна' ,
'LBL_DELETED' => 'Изтрито' ,
'LBL_MODIFIED' => 'Променено' ,
'LBL_CREATED' => 'Създадено' ,
'LBL_RELATED_DOCUMENT_ID' => 'ID на свързан документ' ,
'LBL_RELATED_DOCUMENT_REVISION_ID' => 'ID версии связанного документа' ,
'LBL_IS_TEMPLATE' => 'Шаблон' ,
'LBL_TEMPLATE_TYPE' => 'Тип на шаблона' ,
	
'LBL_REVISION_NAME' => 'Име на версия' ,
'LBL_FILENAME' => 'Име на файла:' ,
'LBL_MIME' => 'MIME' ,
'LBL_REVISION' => 'Версия' ,
'LBL_DOCUMENT' => 'Документ' ,
'LBL_LATEST_REVISION' => 'Последна версия' ,
'LBL_CHANGE_LOG' => 'Промени лога:' ,
'LBL_ACTIVE_DATE' => 'Дата на валидност' ,
'LBL_EXPIRATION_DATE' => 'Валидна до' ,
'LBL_FILE_EXTENSION' => 'Разширение на файла' ,
	
'LBL_CAT_OR_SUBCAT_UNSPEC' => 'Неопределени' ,
	//document edit and detail view
'LBL_DOC_NAME' => 'Име на документа:' ,
'LBL_FILENAME' => 'Име на файла:' ,
'LBL_DOC_VERSION' => 'Версия:' ,
'LBL_CATEGORY_VALUE' => 'Категория:' ,
'LBL_SUBCATEGORY_VALUE' => 'Подкатегория:' ,
'LBL_DOC_STATUS' => 'Статус:' ,
'LBL_LAST_REV_CREATOR' => 'Изменено:' ,
'LBL_LAST_REV_DATE' => 'Дата изменения:' ,
'LBL_DOWNNLOAD_FILE' => 'Свали файл:' ,
'LBL_DET_RELATED_DOCUMENT'=>'Свързан документ:',
'LBL_DET_RELATED_DOCUMENT_VERSION'=>"Версия связанного документа:",
'LBL_DET_IS_TEMPLATE' => 'Шаблон? :' ,
'LBL_DET_TEMPLATE_TYPE' => 'Тип на документа:' ,

'LBL_DOC_DESCRIPTION' => 'Описание:' ,
'LBL_DOC_ACTIVE_DATE' => 'Активна дата:' ,
'LBL_DOC_EXP_DATE' => 'Дата на валидност:' ,
	
	//document list view.	
'LBL_LIST_FORM_TITLE' => 'Списък с документи' ,
'LBL_LIST_DOCUMENT' => 'Документ' ,
'LBL_LIST_CATEGORY' => 'Категория' ,
'LBL_LIST_SUBCATEGORY' => 'Подкатегория' ,
'LBL_LIST_REVISION' => 'Версия' ,
'LBL_LIST_LAST_REV_CREATOR' => 'Последно променян от' ,
'LBL_LIST_LAST_REV_DATE' => 'Дата на преработка' ,
'LBL_LIST_VIEW_DOCUMENT' => 'Виж документ' ,
    'LBL_LIST_DOWNLOAD'=> 'Свали ',
'LBL_LIST_ACTIVE_DATE' => 'Дата публикации' ,
'LBL_LIST_EXP_DATE' => 'Дата окончания' ,
'LBL_LIST_STATUS' => 'Статус' ,
	
	//document search form.
'LBL_SF_DOCUMENT' => 'Име на документа:' ,
'LBL_SF_CATEGORY' => 'Категория:' ,
'LBL_SF_SUBCATEGORY' => 'Подкатегория:' ,
'LBL_SF_ACTIVE_DATE' => 'Дата на активност:' ,
'LBL_SF_EXP_DATE' => 'Валидно до:' ,
'DEF_CREATE_LOG' => 'Документ создан' ,
	
	//error messages
'ERR_DOC_NAME' => 'Име на документа' ,
'ERR_DOC_ACTIVE_DATE' => 'Дата на активност' ,
'ERR_DOC_EXP_DATE' => 'Валидно до' ,
'ERR_FILENAME' => 'Име на файла' ,
'ERR_DOC_VERSION' => 'Версия' ,
'ERR_DELETE_CONFIRM' => 'Вы хотите удалить эту версию документа?' ,
'ERR_DELETE_LATEST_VERSION' => 'Вы не имеете права удалять последнюю версию документа.' ,
'LNK_NEW_MAIL_MERGE' => 'Слей писма' ,
'LBL_MAIL_MERGE_DOCUMENT' => 'Шаблон слияния почты:' ,
'LBL_TREE_TITLE' => 'Документи' ,
	//sub-panel vardefs.
'LBL_LIST_DOCUMENT_NAME' => 'Име на документа' ,
'LBL_CONTRACT_NAME' => 'Име на договора:' ,
'LBL_LIST_IS_TEMPLATE' => 'Шаблон?' ,
'LBL_LIST_TEMPLATE_TYPE' => 'Тип на шаблона' ,
'LBL_LIST_SELECTED_REVISION' => 'Избрана версия' ,
'LBL_LIST_LATEST_REVISION' => 'Последна версия'  ,
'LBL_CONTRACTS_SUBPANEL_TITLE'=>'договори',
    //'LNK_DOCUMENT_CAT'=>'Document Categories',
);


?>