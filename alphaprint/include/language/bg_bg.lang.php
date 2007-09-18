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

//the left value is the key stored in the db and the right value is the display value
//to translate, only modify the right value in each key/value pair

$app_list_strings = array (

'language_pack_name' => 'Български' ,
'moduleList' =>   array (

'Home' => 'Начало' ,
'Dashboard' => 'Панел' ,
'Contacts' => 'Контакти' ,
'Accounts' => 'Клиенти' ,
'Opportunities' => 'Сделки' ,
'Cases' => 'Случаи' ,
'Notes' => 'Бележки' ,
'Calls' => 'Обаждания' ,
'Emails' => 'E-mail' ,
'Meetings' => 'Срещи' ,
'Tasks' => 'Задачи' ,
'Calendar' => 'Календар' ,

'Leads' => 'Предварителни контакти'    ,
'Suppliers' => 'Доставчици' ,
'Supplies' => 'Доставки' ,
'Prices' => 'Тарифи/Материали' ,
'Quotes' => 'Оферти' ,
'PurchaseOrders' => 'Клиентски поръчки' ,
'Materials' => 'Материали' ,
'Operations' => 'Операции' ,
'ProductOperations' => 'Продуктови операции' ,
'Products' => 'Издания' ,
'Machines' => 'Машини' ,
'Estimates' => 'Калкулации',
'ProductLogs' => 'Хронология на издание',
'Printing' => 'Печат',
'Ink' => 'Мастило',
'Pressmachine' => 'Печатни машини',
'Presspricelist' => 'Тарифи печат',
'Paperwaste' => 'Макулатури',
'Press' => 'Печат',
'Ratefilm' => 'Тарифи/Филми',
'Rateplate' => 'Тарифи/CTP',
'ComponentEstimate' => 'Калкулации: Компоненти',
'ProductEstimate' => 'Калкулации: Издания',	


'Paper' => 'Хартии' ,
'Activities' => 'Дейности' ,
'Bugs' => 'Проблеми' ,
'Feeds' => 'RSS' ,
'iFrames' => 'Моят портал' ,
'TimePeriods' => 'Времеви периоди' ,
'Project' => 'Проекти' ,
'ProjectTask' => 'Проектни задачи' ,
'Campaigns' => 'Кампании' ,
'Documents' => 'Документи' ,
'Sync' => 'Синхронизация' ,

'Users' => 'Потребители' ,
'Releases' => 'Издания' ,
'Prospects' => 'Перспективи' ,
'Queues' => 'Queues' ,
'EmailMarketing' => 'E-mail Маркетинг' ,
'EmailTemplates' => 'E-mail шаблони' ,
'ProspectLists' => 'Списък перспективи'    ,
    'SavedSearch' => 'Съхранено търсене',
        ),

'moduleListSingular' =>   array (
'Home' => 'Начало' ,
'Dashboard' => 'Панел' ,
'Contacts' => 'Контакт' ,
'Accounts' => 'Клиент' ,
'Opportunities' => 'Сделка' ,
'Cases' => 'Дело' ,
'Notes' => 'Бележка' ,
'Calls' => 'Обаждане' ,
'Emails' => 'E-mail' ,
'Meetings' => 'Среща' ,
'Tasks' => 'Задача' ,
'Calendar' => 'Календар' ,
'Leads' => 'Предварителен контакт'    ,

'Activities' => 'Дейност' ,
'Bugs' => 'Проблем' ,
'Feeds' => 'RSS' ,
'iFrames' => 'Моят портал' ,
'TimePeriods' => 'Времеви период',
'Project' => 'Проект' ,
'ProjectTask' => 'Проектна задача' ,
'Campaigns' => 'Кампания' ,
'Documents' => 'Документ' ,
'Sync' => 'Синхронизация' ,

'Users' => 'Потребител' ,
        ),

'checkbox_dom' => array (
'' => '' ,
'1' => 'Да' ,
'2' => 'Не'    ,
  ),

'Analyst' => 'Аналитик' ,
'account_type_dom' =>   array (
'' => '' ,
'Analyst' => 'Аналитик' ,
'Competitor' => 'Конкурент' ,
'Customer' => 'Клиент' ,
'Integrator' => 'Интегратор' ,
'Investor' => 'Инвеститор' ,
'Partner' => 'Партньор' ,
'Press' => 'Преса' ,
'Prospect' => 'Перспектива' ,
'Reseller' => 'Препродавач' ,
'Other' => 'Други'    ,
  ),
'Apparel' => 'Дреха' ,
'industry_dom' =>   array (
'' => '' ,
'Apparel' => 'Дреха' ,
'Banking' => 'Банкиране' ,
'Biotechnology' => 'Биотехнологии' ,
'Chemicals' => 'Химическа промишленост' ,
'Communications' => 'Комуникации' ,
'Construction' => 'Строителство' ,
'Consulting' => 'Консултиране' ,
'Education' => 'Образование' ,
'Electronics' => 'Електроника' ,
'Energy' => 'Енергетика' ,
'Engineering' => 'Инженерство' ,
'Entertainment' => 'Развлечения' ,
'Environmental' => 'Екология' ,
'Finance' => 'Финанси' ,
'Government' => 'Правителство' ,
'Healthcare' => 'Здравеопазване' ,
'Hospitality' => 'Гостоприемство' ,
'Insurance' => 'Застраховане' ,
'Machinery' => 'Машиностроене' ,
'Manufacturing' => 'Производство' ,
'Media' => 'Медия' ,
'Not For Profit' => 'Не за печалба' ,
'Recreation' => 'Отдих' ,
'Retail' => 'Търговия' ,
'Shipping' => 'Превоз' ,
'Technology' => 'Технологии' ,
'Telecommunications' => 'Телекоммуникации' ,
'Transportation' => 'Транспорт' ,
'Utilities' => 'Удобства' ,
'Other' => 'Други'    ,
  ),
'source_default_key' => '' ,
'lead_source_dom' =>   array (
'' => '' ,
'Cold Call' => 'Обикновено обаждане' ,
'Existing Customer' => 'Съществуващ клиент' ,
'Self Generated' => 'Самопроизведен' ,
'Employee' => 'Служител' ,
'Partner' => 'Партньор' ,
'Public Relations' => 'Връзки с общенствеността(PR)' ,
'Direct Mail' => 'Директна поща' ,
'Conference' => 'Конференция' ,
'Trade Show' => 'Търговска изложба' ,
'Web Site' => 'Уеб страница' ,
'Word of mouth' => 'Разговор' ,
'Email' => 'E-mail' ,
'Other' => 'Други'    ,
  ),
'opportunity_type_dom' =>   array (
'' => '' ,
'Existing Business' => 'Съществуващ бизнес' ,
'New Business' => 'Нов бизнес'    ,
  ),
  //Note:  do not translate opportunity_relationship_type_default_key
//       it is the key for the default opportunity_relationship_type_dom value
'opportunity_relationship_type_default_key' => 'Primary Decision Maker' ,
'opportunity_relationship_type_dom' =>   array (
'' => '' ,
'Primary Decision Maker' => 'Отговорник за първоначални решения' ,
'Business Decision Maker' => 'Отговорник за бизнес решения' ,
'Business Evaluator' => 'Бизнес оценител' ,
'Technical Decision Maker' => 'Отговорник за технически решения' ,
'Technical Evaluator' => 'Технически оценител' ,
'Executive Sponsor' => 'Генерален спонсор' ,
'Influencer' => 'Влияещ' ,
'Other' => 'Други'    ,
  ),
  //Note:  do not translate case_relationship_type_default_key
//       it is the key for the default case_relationship_type_dom value
'case_relationship_type_default_key' => 'Primary Contact' ,
'case_relationship_type_dom' =>   array (
'' => '' ,
'Primary Contact' => 'Основен контакт' ,
'Alternate Contact' => 'Алтернативен контакт'    ,
  ),
'payment_terms' =>   array (
'' => '' ,
'Net 15' => 'Net 15' ,
'Net 30' => 'Net 30'    ,
  ),
'sales_stage_default_key' => 'Перспектива' ,
'sales_stage_dom' =>   array (
 'Prospecting' => 'Перспектива' ,
 'Qualification' => 'Оценка' ,
 'Needs Analysis' => 'Анализ на нужди' ,
 'Value Proposition' => 'Оценъчно предложение' ,
 'Id. Decision Makers' => 'Вземане на решения' ,
 'Perception Analysis' => 'Анализ на реакциите' ,
 'Proposal/Price Quote' => 'Предложение / Цена' ,
 'Negotiation/Review' => 'Преговори / Преглед' ,
 'Closed Won' => 'Закрит с успех' ,
 'Closed Lost' => 'Закрит със загуби'
  ),
'sales_probability_dom' =>   array (
'Prospecting' => '10' ,
'Qualification' => '20' ,
'Needs Analysis' => '25' ,
'Value Proposition' => '30' ,
'Id. Decision Makers' => '40' ,
'Perception Analysis' => '50' ,
'Proposal/Price Quote' => '65' ,
'Negotiation/Review' => '80' ,
'Closed Won' => '100' ,
'Closed Lost' => '0' ,
  ),
'activity_dom' =>   array (
'Call' => 'Обаждане' ,
'Meeting' => 'Среща' ,
'Task' => 'Задача' ,
'Email' => 'E-mail' ,
'Note' => 'Бележка'    ,
  ),
'salutation_dom' => 	  array (
'' => '' ,
'Mr.' => 'Г-н.' ,
'Ms.' => 'Г-ца.' ,
'Mrs.' => 'Г-жа.' ,
'Dr.' => 'Док.' ,
'Prof.' => 'Проф.'    ,
	  ),
  //time is in seconds; the greater the time the longer it takes;
'reminder_max_time' => 3600,
'reminder_time_options' => array(
								  60=> 'за 1 мин',
  								  300=> 'за 5 мин',
  								  600=> 'за 10 мин',
  								  900=> 'за 15 мин',
  								  1800=> 'за 30 мин',
  								  3600=> 'за 1 час',
								 ),

'task_priority_default' => 'Среден' ,
'task_priority_dom' =>   array (
'High' => 'Висок' ,
'Medium' => 'Среден' ,
'Low' => 'Нисък'    ,
  ),
'task_status_default' => 'Не започната' ,
'task_status_dom' =>   array (
'Not Started' => 'Не започната' ,
'In Progress' => 'В процес на работа' ,
'Completed' => 'Завършена' ,
'Pending Input' => 'Висяща' ,
'Deferred' => 'Отложена'    ,
  ),
'meeting_status_default' => 'Планирана' ,
'meeting_status_dom' =>   array (
'Planned' => 'Планирана' ,
'Held' => 'Задържана' ,
'Not Held' => 'Не задържана'    ,
  ),
'call_status_default' => 'Планирана' ,
'call_status_dom' =>   array (
'Planned' => 'Планирана' ,
'Held' => 'Задържана' ,
'Not Held' => 'Не задържана'    ,
  ),
'call_direction_default' => 'Изходящ' ,
'call_direction_dom' =>   array (
'Inbound' => 'Входящ' ,
'Outbound' => 'Изходящ'    ,
  ),
'lead_status_dom' =>   array (
'' => '' ,
'New' => 'Нова' ,
'Assigned' => 'Назначена' ,
'In Process' => 'Задвижена' ,
'Converted' => 'Преобразувана' ,
'Recycled' => 'Преработена' ,
'Dead' => '"Мъртва"'    ,
  ),
'lead_status_noblank_dom' =>   array (
'New' => 'Нова' ,
'Assigned' => 'Назначена' ,
'In Process' => 'Задвижена' ,
'Converted' => 'Преобразувана' ,
'Recycled' => 'Преработена' ,
'Dead' => '"Мъртва"'    ,
  ),
  //Note:  do not translate case_status_default_key
//       it is the key for the default case_status_dom value
'case_status_default_key' => 'New' ,
'case_status_dom' =>   array (
'New' => 'Нов' ,
'Assigned' => 'Назначен' ,
'Closed' => 'Закрит' ,
'Pending Input' => 'Висящ' ,
'Rejected' => 'Отказан'    ,
'Duplicate' => 'Дублиран' ,
  ),
'case_priority_default_key' => 'P2' ,
'case_priority_dom' =>   array (
'P1' => 'Висок' ,
'P2' => 'Среден' ,
'P3' => 'Нисък'    ,
  ),
'user_status_dom' =>   array (
'Active' => 'Активен' ,
'Inactive' => 'Неактивен' ,
  ),
'employee_status_dom' =>   array (
'Active' => 'Активен' ,
'Terminated' => 'Прекратен' ,
'Leave of Absence' => 'Отсъстващ'    ,
  ),
'messenger_type_dom' =>   array (
'' => '' ,
'MSN' => 'MSN' ,
'Yahoo!' => 'Yahoo!' ,
'AOL' => 'AOL'    ,
  ),

'project_task_priority_options' => array (
'High' => 'Висок' ,
'Medium' => 'Среден' ,
'Low' => 'Нисък'    ,
	),
'project_task_status_options' => array (
'Not Started' => 'Не започната' ,
'In Progress' => 'Задвижена' ,
'Completed' => 'Завършена' ,
'Pending Input' => 'Висяща' ,
'Deferred' => 'Отложена'    ,
	),
'project_task_utilization_options' => array (
'0' => '' ,
'25' => '25' ,
'50' => '50' ,
'75' => '75' ,
'100' => '100'    ,
	),
  //Note:  do not translate record_type_default_key
//       it is the key for the default record_type_module value
'record_type_default_key' => 'Accounts' ,
'record_type_display' =>   array (
'Accounts' => 'Клиенти' ,
'Opportunities' => 'Сделки' ,
'Cases' => 'Дела' ,
'Leads' => 'Предварителни контакти'   ,
'Contacts' => 'Контакти' ,

'Bugs' => 'Проблеми' ,
'Project' => 'Проекти' ,
'ProjectTask' => 'Проектни задачи' ,
'Tasks' => 'Задачи' ,
  ),

'record_type_display_notes' =>   array (
'Accounts' => 'Клиенти' ,
'Contacts' => 'Контакти' ,
'Opportunities' => 'Сделки' ,
'Cases' => 'Дела' ,
'Leads' => 'Предварителни контакти'    ,
'Bugs' => 'Проблеми' ,
'Emails' => 'E-mail' ,
'Project' => 'Проекты' ,
'ProjectTask' => 'Проектни задачи' ,
'Meetings' => 'Срещи' ,
'Calls' => 'Обаждания' ,
  ),

'product_samples_dom' => array (
    'No' => 'Не',
      'Yes' => 'Да',          
),

'product_file_dom' => array (
    'email' => 'e-mail',
    'ftp' => 'ftp',
    'exponator' => 'Експонатор'
),  
'product_status_dom' => array (
		'Waiting for Estimate' => 'Чакащ за калкулация',
		'Estimated' => 'Калкулиран',
		'Waiting for Quote' => 'Чакащ за оферта',
		'Quoted' => 'Офериран',
	),  
  
//Ink Dropdowns
'ink_type_options' => array (
    '' => '',
  'CMYK' => 'CMYK',
  'Pantone' => 'Пантон',

),

'cmyk_ink_type_options' => array (
    '' => '',
  'Cyan' => 'Cyan',
  'Magenta' => 'Magenta',
  'Proc Yellow' => 'Proc Yellow',
  'Proc Black' => 'Proc Black',
),

'pantone_ink_type_options' => array (
    '' => '',
  'pantone1' => 'pantone1',
  'pantone2' => 'pantone2',

),

//end Ink Dropdowns


//PressPricelist Dropdowns
'pricelist_type_options' => array (
    '' => '',
  '1' => 'Книги',
  '2' => 'Периодика',
  '3' => 'Преференциална',

),
// end PressPricelist Dropdowns

//Paperwaste Dropdowns
'paperwaste_type_options' => array (

  'Postpress' => 'Книговезки',
  'Press' => 'Печат',
  'Others' => 'Други',

),
// end Paperwaste Dropdowns

// Layout Dropdowns
'layout_type_options' => array (

  '1' => 'цели коли',
  '2' => 'обръщане',
  '3' => 'тумбене',

),
// end Layout Dropdowns


'dom_prepress_options' => array (
  'ctp' => 'CTP/Плаки',
  'film' =>'Филми',
),

#paper spec dropdowns
'paper_status_dom' => array (
    '' => '',
  'status1' => 'Статус1',
  'status2' => 'Статус2',
  'status3' => 'Статус3',
  'status4' => 'Статус4',
),
 
'paper_size_unit_dom' => array (
    '' => '',
  'mm' => 'мм',
  'cm' => 'см',
  'dm' => 'дм',
  'meter' => 'м',
),

'paper_weight_unit_dom' => array (
    '' => '',
  'gram' => 'гр',
  'kilo' => 'кг',
  'ton' => 'т',
),

'paper_chrome_dom' => array (
    '' => '',

  'label' => 'Етикетна',
  'cardboard' => 'Картон',
  'offset' => 'Офсет',  
  'chromed' => 'Хромирана',
  

  

),
'paper_texture_dom' => array (
    '' => '',
  'мат' => 'мат',
  'гланц' => 'гланц',
 
),

'paper_absorption_dom' => array (
    '' => '',
  'absorption1' => 'абсорция1',
  'absorption2' => 'абсорция2',
),

'paper_color_dom' => array (
    '' => '',
  'color1' => 'Цвят1',
  'color2' => 'Цвят2',
),

'paper_manufacture_dom' => array (
    '' => '',    
  'manufacture1' => 'производител1',
  'manufacture2' => 'производител2',
),

'paper_quality_dom' => array (
    '' => '',
  'quality1' => 'качество1',
  'quality2' => 'качество2',
),

'paper_price_unit_dom' => array (
    '' => '',
  'Dollars' => 'Долара',
  'Euro' => 'Евро',
  'Leva' => 'Лева',
),

'paper_side_dom' => array (
    '' => '',
  'One-Sided' => 'Едностранно',
  'Two-Sided' => 'Двустранно',
),
#end of paper spec dropdowns  
 
 
'componentestimate_status_dom' => array (
  'uptodate' => 'Актуална',
  'outdated' => 'Неактуална',
  'closed' => 'Закрита',
),

  
'quote_type_dom' =>   array (
'Quotes' => 'Оферти' ,
'Orders' => 'Поръчки'    ,
  ),

'default_quote_stage_key' => 'Чернова' ,

'shipping_term_dom' => array (
	'' => '',
  'FOB' => 'FOB',
  'CIF' => 'CIF',
  'FCA' => 'FCA',
  'CFR' => 'CFR',
  'EXW' => 'EXW'
),

'payment_method_dom' => array (
	'' => '',
  'Cash' => 'Cash',
  'On Credit' => 'On Credit',
  'Credit Card' => 'Credit Card',
  'Bank Transfer' => 'Bank Transfer',
),

'city_dom' => array (
	'' => '',
  'София' => 'София',
  'Пловдив' => 'Пловдив',
  'Пазарджик' => 'Пазарджик',
  'Варна' => 'Варна'
),
'state_dom' => array (
	'' => '',
 'София' => 'София',
  'Пловдив' => 'Пловдив',
  'Пазарджик' => 'Пазарджик',
),
'country_dom' => array (
	'' => '',
  'България' => 'България',
  'Друга' => 'Друга'
),

'quote_stage_dom' =>   array (
'Draft' => 'Чернова' ,
'Negotiation' => 'В преговори' ,
'Delivered' => 'Доставена' ,
'On Hold' => 'Изчакваща' ,
'Confirmed' => 'Потвърдена' ,
'Closed Accepted' => 'Закрита приета' ,
'Closed Lost' => 'Закрита със загуби' ,
'Closed Dead' => 'Закрита окончателно'    ,
  ),
'default_order_stage_key' => 'Висяща' ,
'order_stage_dom' =>   array (
'Pending' => 'Висяща' ,
'Confirmed' => 'Потвърдена' ,
'On Hold' => 'Изчакваща' ,
'Shipped' => 'Изпратена' ,
'Cancelled' => 'Отказана'    ,
  ),

//Note:  do not translate quote_relationship_type_default_key
//       it is the key for the default quote_relationship_type_dom value
'quote_relationship_type_default_key' => 'Primary Decision Maker' ,
'quote_relationship_type_dom' =>   array (
'' => '' ,
'Primary Decision Maker' => 'Отговорник за първоначални решения' ,
'Business Decision Maker' => 'Отговорник за бизнес-решения' ,
'Business Evaluator' => 'Бизнес оценител' ,
'Technical Decision Maker' => 'Отговорник за тех. решения' ,
'Technical Evaluator' => 'Технически оценител' ,
'Executive Sponsor' => 'Генерален спонсор' ,
'Influencer' => 'Влияещ' ,
'Other' => 'Други'    ,
  ),
'layouts_dom' =>   array (
'Standard' => 'Стандартно' ,
'Invoice' => 'Фактура' ,
'Terms' => 'Условия'    ,
  ),

'bug_priority_default_key' => 'Среден' ,
'bug_priority_dom' =>   array (
'Urgent' => 'Спешно' ,
'High' => 'Висок' ,
'Medium' => 'Среден' ,
'Low' => 'Нисък'    ,
  ),
'bug_resolution_default_key' => '' ,
'bug_resolution_dom' =>   array (
'' => '' ,
'Accepted' => 'Приет' ,
'Duplicate' => 'Дубликат' ,
'Fixed' => 'Решен' ,
'Out of Date' => 'Изтекъл срок' ,
'Invalid' => 'Невалиден' ,
'Later' => 'Отложен'    ,
  ),
'bug_status_default_key' => 'Нов' ,
'bug_status_dom' =>   array (
'New' => 'Нов' ,
'Assigned' => 'Приет' ,
'Closed' => 'Закрит' ,
'Pending' => 'Висящ' ,
'Rejected' => 'Отказан'    ,
  ),
'bug_type_default_key' => 'Проблем' ,
'bug_type_dom' =>   array (
'Defect' => 'Дефект' ,
'Feature' => 'Особеност'    ,
  ),

'source_default_key' => '' ,
'source_dom' =>   array (
'' => '' ,
'Internal' => 'Вътрешен' ,
'Forum' => 'Форум' ,
'Web' => 'Уеб' ,
'InboundEmail' => 'E-mail'    ,
  ),

 'type_options' => array(
 
 'Form' => 'Бланка',
 'Booklet' => 'Брошура',
 'BusinessCard' => 'Визитка',
 'Insertion' => 'Вложка',
 'Label' => 'Етикет',
 'PostCard' => 'Картичка',
 'Cover' => 'Корица',
 'Flayer' => 'Листовка',
 'Folder' => 'Папка',
 'Envelope' => 'Плик',
 'Poster' => 'Плакат',
 'Wrapper' => 'Подложка',
 'Invitation' => 'Покана',
 'Body' => 'Тяло',


),
/////////// Product Components Status
'product_component_status' => array(
 
 'draft' => 'Чернова',
 'waiting_estimate' => 'Готово за калкулация',
 'estimated' => 'Калкулирано',
 'quoted' => 'Оферирано',
 'purchased' => 'Поръчано',
 'closed' => 'Закрито',
),

'product_component_status_draft' => array(
 
 'draft' => 'Чернова',
 'waiting_estimate' => 'Готово за калкулация',
 'closed' => 'Закрито',
),

'product_component_status_waiting_estimate' => array(
 
 'draft' => 'Чернова',
 'waiting_estimate' => 'Готово за калкулация',
 'closed' => 'Закрито',
),

'product_component_status_estimated' => array(
 
 'draft' => 'Чернова',
 'estimated' => 'Калкулирано',
 'closed' => 'Закрито',
),

'product_component_status_quoted' => array(
 
 'quoted' => 'Оферирано',
 'closed' => 'Закрито',
),

'product_component_status_purchased' => array(
 
 'purchased' => 'Поръчано',
 'closed' => 'Закрито',
),
////////////////////



'color_side_a' => array (
	  '0' => '0' ,
      '1' => '1' ,
      '2' => '2' ,
      '3' => '3' ,
      '4' => '4' ,
      '5' => '5' ,
      '6' => '6' ,
      '7' => '7' ,
      '8' => '8'   ),
   'color_side_b' => array (

	  '0' => '0' ,  
      '1' => '1' ,
      '2' => '2' ,
      '3' => '3' ,
      '4' => '4' ,
      '5' => '5' ,
      '6' => '6' ,
      '7' => '7' ,
      '8' => '8'   ),

'material_category_options' => array (
      'Category1' => 'Категория1' ,
      'Category2' => 'Категория2'   ),
   'material_type_options' => array (
      'Type1' => 'Тип1' ,
      'Type2' => 'Тип2'   ),

'products_category_options' => array (
      '' => '' ,
      'Book' => 'Книга' ,
      'Magazine' => 'Списание' ,
      'Business card' => 'Бизнес карта'   ),
   'products_components_priority_options' => array (
      'High' => 'Висок' ,
      'Medium' => 'Среден' ,
      'Low' => 'Нисък'   ),
   'products_components_status_options' => array (
      'Not Started' => 'Незапочнат' ,
      'In Progress' => 'В процес на работа' ,
      'Completed' => 'Завършен' ,
      'Pending Input' => 'Висящ' ,
      'Deferred' => 'Отложен'   ),
   'products_format_options' => array (
      '' => '' ,
      /*'A2' => 'A2' ,
      'A3' => 'A3' ,
      'A4' => 'A4' */  ),
   'client_paper_options' => array(
   	  
   	  'No' => 'Не' ,
      'Yes' => 'Да' ,),
      
   'products_period_options' => array (
      'No' => 'Не' ,
      'Yes' => 'Да'
      ),

   'product_components_utilization_options' => array (
      '0' => '0' ,
      '25' => '25' ,
      '50' => '50' ,
      '75' => '75' ,
      '100' => '100'   ),

'product_category_default_key' => '' ,
'product_category_dom' =>   array (
'' => '' ,
'Accounts' => 'Клиенти' ,
'Activities' => 'Дейности' ,
'Bug Tracker' => 'Проблеми' ,
'Calendar' => 'Календар' ,
'Calls' => 'Обаждания' ,
'Campaigns' => 'Кампании' ,
'Cases' => 'Дела' ,
'Contacts' => 'Контакти' ,
'Currencies' => 'Валута' ,
'Dashboard' => 'Панел' ,
'Documents' => 'Документи' ,
'Emails' => 'E-mail' ,
'Feeds' => 'RSS' ,
'Forecasts' => 'Прогнози' ,
'Help' => 'Помощ' ,
'Home' => 'Начало' ,
'Leads' => 'Предварителни контакти'    ,
'Meetings' => 'Срещи' ,
'Notes' => 'Бележки' ,
'Opportunities' => 'Сделки' ,
'Outlook Plugin' => 'Outlook плъгин' ,
'Product Catalog' => 'Каталог на издания' ,
'Products' => 'Издания' ,
'Projects' => 'Проекти' ,
'Quotes' => 'Оферти' ,
'Releases' => 'Издания' ,
'RSS' => 'RSS' ,
'Studio' => 'Студио' ,
'Upgrade' => 'Обнови' ,
'Users' => 'Потребители' ,
  ),

  /*Added entries 'Queued' and 'Sending' for 4.0 release..*/
'campaign_status_dom' =>   array (
'' => '' ,
'Planning' => 'Планирана' ,
'Active' => 'Активна' ,
'Inactive' => 'Неактивна' ,
'Complete' => 'Завършена' ,
'In Queue' => 'Чакаща' ,
'Sending' => 'Изпращане'    ,
  ),
'campaign_type_dom' =>   array (
'' => '' ,
'Telesales' => 'Телепродажби' ,
'Mail' => 'Поща' ,
'Email' => 'E-mail' ,
'Print' => 'Печат' ,
'Web' => 'Уеб' ,
'Radio' => 'Радио' ,
'Television' => 'Телевизия'    ,
  ),


'notifymail_sendtype' =>   array (
'sendmail' => 'sendmail' ,
'SMTP' => 'SMTP'    ,
  ),
'dom_timezones' => array (
      '-12' => '(GMT - 12) International Date Line West' ,
      '-11' => '(GMT - 11) Самоа' ,
      '-10' => '(GMT - 10) Хавай' ,
      '-9' => '(GMT - 9) Аляска' ,
      '-8' => '(GMT - 8) Сан Франциско' ,
      '-7' => '(GMT - 7) Феникс' ,
      '-6' => '(GMT - 6) Саскуачан' ,
      '-5' => '(GMT - 5) Ню Йорк' ,
      '-4' => '(GMT - 4) Сантияго' ,
      '-3' => '(GMT - 3) Буенос Айрес' ,
      '-2' => '(GMT - 2) Среден Атлантик' ,
      '-1' => '(GMT - 1) Азорски острови' ,
      '0' => '(GMT)' ,
      '1' => '(GMT + 1) Мадрид' ,
      '2' => '(GMT + 2) Атина' ,
      '3' => '(GMT + 3) Москва' ,
      '4' => '(GMT + 4) Кабул' ,
      '5' => '(GMT + 5) Екатеринбург' ,
      '6' => '(GMT + 6) Астана' ,
      '7' => '(GMT + 7) Банкок' ,
      '8' => '(GMT + 8) Перт' ,
      '9' => '(GMT + 9) Сеул' ,
      '10' => '(GMT + 10) Брисбан' ,
      '11' => '(GMT + 11) Соломон. ост.' ,
      '12' => '(GMT + 12) Оукленд'   ),

      'dom_cal_month_long' => array (
      '0' => '' ,
      '1' => 'Януари' ,
      '2' => 'Февруари' ,
      '3' => 'Март' ,
      '4' => 'Април' ,
      '5' => 'Май' ,
      '6' => '�?юнь' ,
      '7' => '�?юль' ,
      '8' => 'Август' ,
      '9' => 'Сентябрь' ,
      '10' => 'Октябрь' ,
      '11' => 'Ноябрь' ,
      '12' => 'Декабрь'   ),

    'dom_meridiem_lowercase'=>array(
                'am'=>"am",
                'pm'=>"pm"
        ),
    'dom_meridiem_uppercase'=>array(
                 'AM'=>'AM',
                 'PM'=>'PM'
        ),
'dom_report_types' => array (
'tabular' => 'Табличен' ,
'summary' => 'Резюме' ,
'detailed_summary' => 'Детайлно резюме'    ,
        ),
'dom_email_types' => array (
'out' => 'Изпратен' ,
'archived' => 'Архивиран' ,
'draft' => 'Чернова' ,
'inbound' => 'Входящи'    ,
	),
'dom_email_status' => array (
'archived' => 'Архивиран' ,
'closed' => 'Затворен' ,
'draft' => 'Чернова' ,
'read' => 'Прочетен' ,
'replied' => 'Отговорен' ,
'sent' => 'Изпратен' ,
'send_error' => 'Изпрати грешка' ,
'unread' => 'Непрочетен'    ,
	),

'dom_email_server_type' => array (
'' => '' ,
'imap' => 'IMAP' ,
'pop3' => 'POP3'    ,
	),
'dom_mailbox_type' => array (
'' => '' ,
'pick' => 'Избери' ,
'bug' => 'Проблем' ,
'support' => 'Поддръжка' ,
'contact' => 'Контакт'    ,
'sales' => 'Предварителен контакт' ,
'task' => 'Задача' ,
'bounce' => 'bounce'    ,
	),
'dom_email_distribution' => array (
'' => '' ,
'direct' => 'Пряко назначение' ,
'roundRobin' => 'По цикъл' ,
'leastBusy' => 'Най-малко зает'    ,
	),
'dom_email_errors' => array (
1 => 'Избирайте само един потребител при директо назначаване.',
 2 => 'Може да назначавате само избрани артикули при директно назначаване.',
	),
'dom_email_bool' => array (
'bool_true' => 'Да' ,
'bool_false' => 'Не'    ,
	),
'dom_int_bool' => array (
1 => 'Да',
 0 => 'Не',
	),
'dom_switch_bool' => array (
'on' => 'Да' ,
'off' => 'Не' ,
'' => 'Не' ,),
'dom_email_link_type'	=> array(
'' => 'Е-mail клиент по подразбиране' ,
'sugar' => 'SugarCRM е-mail клиент' ,
'mailto' => 'Външен е-mail клиент'   ),

'dom_email_editor_option' => array (
'' => '' ,
'html' => 'HTML-съобщение' ,
'plain' => 'Обикновен текст'   ),


'schedulers_times_dom' => array (
'not run' => 'Не е изпълнено.' ,
'ready' => 'Готов' ,
'in progress' => 'В процес' ,
'failed' => 'Неуспешен' ,
'completed' => 'Завершен' ,
'no curl' => 'Не е изпълнено: Недостъпен cURL '    ,
	),

'forecast_schedule_status_dom' =>   	array (
'Active' => 'Активен' ,
'Inactive' => 'Неактивен' ,
  ),
'forecast_type_dom' =>   	array (
'Direct' => 'Директно' ,
'Rollup' => 'Rollup'    ,
  ),

'document_category_dom' =>   	array (
'' => '' ,
'Marketing' => 'Маркетинг' ,
'Knowledege Base' => 'База на познание' ,
'Sales' => 'Продажби'    ,
  ),

'document_subcategory_dom' =>   	array (
'' => '' ,
'Marketing Collateral' => 'Маркетинг' ,
'Product Brochures' => 'Брошури' ,
'FAQ' => 'FAQ' ,
  ),

'document_status_dom' =>   	array (
'Active' => 'Активен' ,
'Draft' => 'Чернова' ,
'FAQ' => 'FAQ' ,
'Expired' => 'Просрочено' ,
'Under Review' => 'Преглежда се ' ,
'Pending' => 'Висящ' ,
  ),
'document_template_type_dom' =>   array(
'' => '' ,
'mailmerge' => 'mailmerge' ,
'eula' => 'EULA' ,
'nda' => 'NDA' ,
'license' => 'Лицензионно съгласие'    ,
  ),
'dom_meeting_accept_options' =>   	array (
'accept' => 'Приет' ,
'decline' => 'Отказан' ,
'tentative' => 'Условно'    ,
  ),
'dom_meeting_accept_status' =>   	array (
'accept' => 'Приет' ,
'decline' => 'Отказан' ,
'tentative' => 'Условно'    ,
'none' => 'Не'    ,
  ),



// deferred
/*// QUEUES MODULE DOMs
'queue_type_dom' => array(
'Users' => 'Пользователи' ,



	'Mailbox' => 'Mailbox',
),
*/

//prospect list type dom
'prospect_list_type_dom' =>   array (
'default' => 'По подразбиране' ,
'seed' => 'Начална' ,
'exempt_domain' => 'Потиснат - по домейн' ,
'exempt_address' => 'Потиснат - по email-адрес' ,
'exempt' => 'Потиснат - по ID' ,
'test' => 'Тест'    ,
  ),

'email_marketing_status_dom' =>   array (
'' => '' ,
'active' => 'Активен' ,
'inactive' => 'Неактивен'    ,
  ),

'campainglog_activity_type_dom' =>   array (
'' => '' ,
'targeted' => 'Съобщението е изпратено' ,
'send error' => 'Грешка при изпращане' ,
'invalid email' => 'Невалиден e-mail адрес' ,
'link' => 'Връзка' ,
'viewed' => 'Видяни съобщения' ,
'removed' => 'Премахнати' ,
'lead' => 'Създаден предварителен контакт' ,
'contact' => 'Създаден контакт'    ,
  ),

'campainglog_target_type_dom' =>   array (
'Contacts' => 'Контакти' ,
'Users' => 'Потребители' ,
'Prospects' => 'Потенциални клиенти' ,
'Leads' => 'Предварителни контакти'    ,
  ),

  'merge_operators_dom' => array (
    'like'=>'Съдържащ',
    'exact'=>'Точно',
    'start'=>'Започващ с',
  ),

  'custom_fields_merge_dup_dom'=> array (
        0=>'Изключен',
        1=>'Включен',


  ),

  'navigation_paradigms' => array(
        'm'=>'Модули',
        'gm'=>'Групирани модули',
  ),

);

$app_strings = array (



'ERR_CREATING_FIELDS' => 'Грешка при попълването на допълнителна иформация в полетата: ',
'ERR_CREATING_TABLE' => 'Грешка при създаването на таблица: ',
'ERR_DELETE_RECORD' => 'Трябва да определите номер на записа, за да изтриете този контакт.',
'ERR_EXPORT_DISABLED' => 'Експорта е изключен.',
'ERR_EXPORT_TYPE' => 'Грешка при експортиране. ',
'ERR_INVALID_AMOUNT' => 'Моля, въведете правилана сума.',
'ERR_INVALID_DATE_FORMAT' => 'Форматът на датата трябва да е: гггг-мм-дд',
'ERR_INVALID_DATE' => 'Моля, въведете правилна дата.',
'ERR_INVALID_DAY' => 'Моля, въведете правилен ден.',
'ERR_INVALID_EMAIL_ADDRESS' => 'Грешен e-mail адрес.',
//'ERR_INVALID_FILE_REFERENCE' => 'Неверная ссылка на файл.',
//'ERR_INVALID_FILE_REFERENCE' => 'отображается в ANSI-кодировке',
'ERR_INVALID_FILE_REFERENCE' => '�������� ������ �� ����.',
'ERR_INVALID_HOUR' => 'Моля, въведете правилен час.' ,
'ERR_INVALID_MONTH' => 'Моля, въведете правилен месец.' ,
'ERR_INVALID_TIME' => 'Моля, въведете правилено време.' ,
'ERR_INVALID_YEAR' => 'Моля, въведете правилена 4 цифрена година.' ,
	'ERR_NEED_ACTIVE_SESSION' => 'Необходима е активна сесия за да експортирате.',
	'ERR_NOT_ADMIN' => "Нямате достъп до тази секция.",
'ERR_MISSING_REQUIRED_FIELDS' => 'Пропуснато задължително поле:',
	'ERR_INVALID_VALUE' => 'Невалидна стойност:',
	'ERR_NO_SUCH_FILE' =>'Не съществува такъв файл.',
	'ERR_NO_SINGLE_QUOTE' => 'Не можете да използвате единична кавичка',
'ERR_NOTHING_SELECTED' => 'Моля, направете селекция преди да продължите.' ,
'ERR_OPPORTUNITY_NAME_DUPE' => 'Възможност с име %s вече существува.  Моля въведете друго име по-долу.',
'ERR_OPPORTUNITY_NAME_MISSING' => 'Не е въведено име на възможностите.  Въведете го долу.',
	'ERR_POTENTIAL_SEGFAULT' => 'A potential Apache segmentation fault was detected.  Please notify your system administrator to confirm this problem and have her/him report it to SugarCRM.',
'ERR_SELF_REPORTING' => 'Потребителят не може да се отчете на себе си.' ,
	'ERR_SINGLE_QUOTE'	=> 'Използването на единични кавички не се поддържа от това поле.  Моля, променете стойността му.',
'ERR_SQS_NO_MATCH_FIELD' => 'Няма съвпадение за поле: ' ,
'ERR_SQS_NO_MATCH' => 'Няма съвпадение' ,


'LBL_ACCOUNT' => 'Клиент' ,
'LBL_ACCOUNTS' => 'Клиенти' ,
'LBL_ACCUMULATED_HISTORY_BUTTON_KEY' => 'H' ,
'LBL_ACCUMULATED_HISTORY_BUTTON_LABEL' => 'Доклад' ,
'LBL_ACCUMULATED_HISTORY_BUTTON_TITLE' => 'Доклад [Alt+H]' ,
'LBL_ADD_BUTTON_KEY' => 'A' ,
'LBL_ADD_BUTTON_TITLE' => 'Добави [Alt+A]' ,
'LBL_ADD_BUTTON' => 'Добави' ,
'LBL_ADD_DOCUMENT' => 'Добави документ' ,
'LBL_ADD_TO_PROSPECT_LIST_BUTTON_KEY' => 'L' ,
'LBL_ADD_TO_PROSPECT_LIST_BUTTON_LABEL' => 'Добави във фокус-група' ,
'LBL_ADD_TO_PROSPECT_LIST_BUTTON_TITLE' => 'Добави във фокус-група' ,
'LBL_ADDITIONAL_DETAILS_CLOSE_TITLE' => 'Натиснете за затваряне' ,
'LBL_ADDITIONAL_DETAILS_CLOSE' => 'Затвори' ,
'LBL_ADDITIONAL_DETAILS' => 'Подробности' ,
'LBL_ADMIN' => 'Администрация' ,
'LBL_ALT_HOT_KEY' => 'Alt+' ,
'LBL_ARCHIVE' => 'Архивация' ,
'LBL_ASSIGNED_TO_USER' => 'Предназначен за потребителя',
'LBL_ASSIGNED_TO' => 'Предназначен за:' ,
'LBL_BACK' => 'Назад' ,
'LBL_BILL_TO_ACCOUNT' => 'Сметка на клиента' ,
'LBL_BILL_TO_CONTACT' => 'Сметка на лицето за контакти' ,
'LBL_BROWSER_TITLE' => 'Система "Алфа Принт"' ,
'LBL_BUGS' => 'Проблеми' ,
'LBL_BY' => 'за' ,
'LBL_CALLS' => 'Обаждания' ,
'LBL_CAMPAIGNS_SEND_QUEUED' => 'Изпрати писмо отнасящо се за кампании' ,
'LBL_CANCEL_BUTTON_KEY' => 'X' ,
'LBL_CANCEL_BUTTON_LABEL' => 'Отказ' ,
'LBL_CANCEL_BUTTON_TITLE' => 'Отказ [Alt+X]' ,
'LBL_CASE' => 'Дело' ,
'LBL_CASES' => 'Дела' ,
'LBL_CHANGE_BUTTON_KEY' => 'G' ,
'LBL_CHANGE_BUTTON_LABEL' => 'Избери' ,
'LBL_CHANGE_BUTTON_TITLE' => 'Избери [Alt+G]' ,
'LBL_CHARSET' => 'windows-1251' ,
'LBL_CHECKALL' => 'Избери всички' ,
'LBL_CLEAR_BUTTON_KEY' => 'C' ,
'LBL_CLEAR_BUTTON_LABEL' => 'Изчисти' ,
'LBL_CLEAR_BUTTON_TITLE' => 'Изчисти [Alt+C]' ,
'LBL_CLEARALL' => 'Изчисти всички' ,
'LBL_CLOSE_WINDOW' => 'Затвори прозореца' ,
'LBL_CLOSEALL_BUTTON_KEY' => 'Q' ,
'LBL_CLOSEALL_BUTTON_LABEL' => 'Затвори всички' ,
'LBL_CLOSEALL_BUTTON_TITLE' => 'Затвори всички [Alt+I]' ,
    'LBL_CLOSE_AND_CREATE_BUTTON_LABEL' => 'Затвори всички и създай нов',
    'LBL_CLOSE_AND_CREATE_BUTTON_TITLE' => 'Затвори всички и създай нов [Alt+C]',
    'LBL_CLOSE_AND_CREATE_BUTTON_KEY' => 'C',
'LBL_COMPOSE_EMAIL_BUTTON_KEY' => 'L' ,
'LBL_COMPOSE_EMAIL_BUTTON_LABEL' => 'Състави E-mail' ,
'LBL_COMPOSE_EMAIL_BUTTON_TITLE' => 'Състави E-mail [Alt+L]' ,
'LBL_CONTACT_LIST' => 'Списък на контактите' ,
'LBL_CONTACT' => 'Контакт' ,
'LBL_CONTACTS' => 'Контакти' ,
'LBL_CREATE_BUTTON_LABEL' => 'Създай' ,
'LBL_CREATED_BY_USER' => 'Създадено от потребител' ,
'LBL_CREATED' => 'Създадено' ,
'LBL_CURRENT_USER_FILTER' => 'Само моите записи:' ,
'LBL_DATE_ENTERED' => 'Дата на създаване:' ,
'LBL_DATE_MODIFIED' => 'Последно изменение:' ,
'LBL_DELETE_BUTTON_KEY' => 'D' ,
'LBL_DELETE_BUTTON_LABEL' => 'Изтрий' ,
'LBL_DELETE_BUTTON_TITLE' => 'Изтрий [Alt+D]' ,
'LBL_DELETE_BUTTON' => 'Изтрий' ,
'LBL_DELETE' => 'Изтрий' ,
'LBL_DELETED' => 'Изтрито' ,

'LBL_CALC_BUTTON_KEY' => 'C' ,
'LBL_CALC_BUTTON_LABEL' => 'Калкулирай' ,
//'LBL_CALC_BUTTON_TITLE' => 'Калкулирай [Alt+C]' ,
'LBL_CALC_BUTTON' => 'Калкулирай' ,


'LBL_QUOTE_BUTTON_KEY' => 'Q' ,
'LBL_QUOTE_BUTTON_LABEL' => 'Оферирай' ,
//'LBL_QUOTE_BUTTON_TITLE' => 'Оферирай [Alt+Q]' ,
'LBL_QUOTE_BUTTON' => 'Оферирай' ,


'LBL_PRECALC_BUTTON_KEY' => 'P' ,
'LBL_PRECALC_BUTTON_LABEL' => 'Прекалкулирай' ,
'LBL_PRECALC_BUTTON_TITLE' => 'Прекалкулирай [Alt+P]' ,
'LBL_PRECALC_BUTTON' => 'Прекалкулирай' ,
    
    
'LBL_CANEL_BUTTON_LABEL' => 'Отказ' ,
	
'LBL_DIRECT_REPORTS' => 'Директен доклад' ,
'LBL_DONE_BUTTON_KEY' => 'X' ,
'LBL_DONE_BUTTON_LABEL' => 'Готово' ,
'LBL_DONE_BUTTON_TITLE' => 'Готово [Alt+X]' ,
'LBL_DST_NEEDS_FIXIN' => 'Приложението изисква Daylight Saving Time fix. Моля, посетете <a href="index.php?module=Administration&action=DstFix">Поправка</a> в администраторския панел за да добавите Daylight Saving Time fix .' ,
'LBL_DUPLICATE_BUTTON_KEY' => 'U' ,
'LBL_DUPLICATE_BUTTON_LABEL' => 'Дублирай' ,
'LBL_DUPLICATE_BUTTON_TITLE' => 'Дублирай [Alt+U]' ,
'LBL_DUPLICATE_BUTTON' => 'Дублирай' ,
'LBL_EDIT_BUTTON_KEY' => 'E' ,
'LBL_EDIT_BUTTON_LABEL' => 'Промени' ,
'LBL_EDIT_BUTTON_TITLE' => 'Промени [Alt+E]' ,
'LBL_EDIT_BUTTON' => 'Промени' ,
'LBL_VIEW_BUTTON_KEY' => 'V' ,
'LBL_VIEW_BUTTON_LABEL' => 'Виж' ,
'LBL_VIEW_BUTTON_TITLE' => 'Виж [Alt+V]' ,
'LBL_VIEW_BUTTON' => 'Виж' ,
'LBL_EMAIL_PDF_BUTTON_KEY' => 'M' ,
'LBL_EMAIL_PDF_BUTTON_LABEL' => 'Изпрати като PDF' ,
'LBL_EMAIL_PDF_BUTTON_TITLE' => 'Изпрати като PDF [Alt+M]' ,
'LBL_EMAILS' => 'E-mail' ,
'LBL_EMPLOYEES' => 'Служители' ,
'LBL_ENTER_DATE' => 'Входна дата' ,
'LBL_EXPORT_ALL' => 'Експортиране на всичко' ,
'LBL_EXPORT' => 'Експорт' ,
    'LBL_GO_BUTTON_LABEL' => 'Напред',
'LBL_HIDE' => 'Скрий' ,
'LBL_ID' => 'ID' ,
'LBL_IMPORT_PROSPECTS' => 'Добави потенциални клиенти' ,
'LBL_IMPORT' => 'Импорт' ,
    'LBL_IMPORT_STARTED' => 'Импортирай начало: ',
    'LBL_MISSING_CUSTOM_DELIMITER' => 'Трябва да бъде указан разделител.',
'LBL_LAST_VIEWED' => 'Последно преглеждани' ,
'LBL_LEADS' => 'Предварителни контакти' ,

'LBL_LIST_ACCOUNT_NAME' => 'Име на клиент' ,
'LBL_LIST_ASSIGNED_USER' => 'Потребители' ,
'LBL_LIST_CONTACT_NAME' => 'Име на контакт' ,
'LBL_LIST_CONTACT_ROLE' => 'Роля на контакт' ,
'LBL_LIST_EMAIL' => 'E-mail' ,
'LBL_LIST_NAME' => 'Име' ,
'LBL_LIST_OF' => 'от' ,
'LBL_LIST_PHONE' => 'Тел.' ,
'LBL_LIST_USER_NAME' => 'Потребителско име' ,
'LBL_LISTVIEW_MASS_UPDATE_CONFIRM' => 'Сигурни ли сте че искате да обновите целия списък?' ,
'LBL_LISTVIEW_NO_SELECTED' => 'Моля, изберете поне 1 запис, за да продължите.' ,
    'LBL_LISTVIEW_TWO_REQUIRED' => 'Моля, изберете поне 2 записа, за да продължите.',
'LBL_LISTVIEW_OPTION_CURRENT' => 'Текуща страница' ,
'LBL_LISTVIEW_OPTION_ENTIRE' => 'Целия списък' ,
'LBL_LISTVIEW_OPTION_SELECTED' => 'Избрани записи' ,
'LBL_LISTVIEW_SELECTED_OBJECTS' => 'Избрани:' ,

'LBL_LOCALE_NAME_EXAMPLE_FIRST' => 'Драган',
'LBL_LOCALE_NAME_EXAMPLE_LAST' => 'Петканов',
'LBL_LOCALE_NAME_EXAMPLE_SALUTATION' => 'Гн.',


'LBL_LOGOUT' => 'Изход' ,
'LBL_MAILMERGE_KEY' => 'M' ,
'LBL_MAILMERGE' => 'Сливане на писма' ,
'LBL_MASS_UPDATE' => 'Масово обновяване' ,
'LBL_MEETINGS' => 'Срещи' ,
'LBL_MEMBERS' => 'Участници' ,
'LBL_MODIFIED_BY_USER' => 'Променено от потребител' ,
'LBL_MODIFIED' => 'Променено' ,
'LBL_MY_ACCOUNT' => 'Моят акаунт' ,
'LBL_NAME' => 'Име' ,
'LBL_NEW_BUTTON_KEY' => 'N' ,
'LBL_NEW_BUTTON_LABEL' => 'Създай' ,
'LBL_MODIFY_BUTTON_LABEL' => 'Редактирай' ,
'LBL_NEW_BUTTON_TITLE' => 'Създай [Alt+N]' ,
'LBL_NEXT_BUTTON_LABEL' => 'Следващ' ,
'LBL_NONE' => '--Няма--' ,
'LBL_NOTES' => 'Бележки' ,
'LBL_OPENALL_BUTTON_KEY' => 'O' ,
'LBL_OPENALL_BUTTON_LABEL' => 'Отвори всички' ,
'LBL_OPENALL_BUTTON_TITLE' => 'Отвори всички [Alt+O]' ,
'LBL_OPENTO_BUTTON_KEY' => 'T' ,
'LBL_OPENTO_BUTTON_LABEL' => 'Отвори в: ' ,
'LBL_OPENTO_BUTTON_TITLE' => 'Отвори в: [Alt+T]' ,
'LBL_OPPORTUNITIES' => 'Сделки' ,
'LBL_OPPORTUNITY_NAME' => 'Име на сделка' ,
'LBL_OPPORTUNITY' => 'Сделка' ,
'LBL_OR' => 'или' ,
'LBL_PERCENTAGE_SYMBOL' => '%' ,
'LBL_PRODUCT_BUNDLES' => 'Комплект издания' ,
'LBL_PRODUCT_BUNDLES' => 'Комплект издания' ,
'LBL_PRODUCTS' => 'Издания' ,
'LBL_PROJECT_TASKS' => 'Проектни задачи' ,
'LBL_PROJECTS' => 'Проекти' ,
'LBL_PROJECTS' => 'Проекти' ,
'LBL_QUOTE_TO_OPPORTUNITY_KEY' => 'O' ,
'LBL_QUOTE_TO_OPPORTUNITY_LABEL' => 'Създаване на Възможна сделка от квоти' ,
'LBL_QUOTE_TO_OPPORTUNITY_TITLE' => 'Създаване на Възможна сделка от квоти [Alt+O]' ,
'LBL_QUOTES_SHIP_TO' => 'Цена на доставката в',
'LBL_QUOTES' => 'Оферти' ,
'LBL_RELATED_RECORDS' => 'Свързани записи' ,
'LBL_REMOVE' => 'Премахни' ,
'LBL_REQUIRED_SYMBOL' => '*' ,
'LBL_SAVE_BUTTON_KEY' => 'S' ,
'LBL_SAVE_BUTTON_LABEL' => 'Запиши' ,
'LBL_SAVE_BUTTON_TITLE' => 'Запиши [Alt+S]' ,
    'LBL_SAVE_AS_BUTTON_KEY' => 'A',
    'LBL_SAVE_AS_BUTTON_LABEL' => 'Съхрани като',
    'LBL_SAVE_AS_BUTTON_TITLE' => 'Съхрани като [Alt+A]',
    'LBL_FULL_FORM_BUTTON_KEY' => 'F',
    'LBL_FULL_FORM_BUTTON_LABEL' => 'Премини към пълна форма',
    'LBL_FULL_FORM_BUTTON_TITLE' => 'Премини към пълна форма [Alt+F]',
'LBL_SAVE_NEW_BUTTON_KEY' => 'V' ,
'LBL_SAVE_NEW_BUTTON_LABEL' => 'Запази и създай нов' ,
'LBL_SAVE_NEW_BUTTON_TITLE' => 'Запази и създай нов [Alt+V]' ,
'LBL_SEARCH_BUTTON_KEY' => 'Q' ,
'LBL_SEARCH_BUTTON_LABEL' => 'Търси' ,
'LBL_SEARCH_BUTTON_TITLE' => '�Търси [Alt+Q]' ,
'LBL_SEARCH' => 'Търси' ,
'LBL_SELECT_BUTTON_KEY' => 'T' ,
'LBL_SELECT_BUTTON_LABEL' => 'Избери' ,
'LBL_SELECT_BUTTON_TITLE' => 'Избери [Alt+T]' ,
'LBL_SELECT_CONTACT_BUTTON_KEY' => 'T' ,
'LBL_SELECT_CONTACT_BUTTON_LABEL' => 'Избор на контакт' ,
'LBL_SELECT_CONTACT_BUTTON_TITLE' => 'Избор на контакт [Alt+T]' ,
'LBL_SELECT_REPORTS_BUTTON_LABEL' => 'Избор на доклад' ,
'LBL_SELECT_REPORTS_BUTTON_TITLE' => 'Избор на доклад' ,
'LBL_SELECT_USER_BUTTON_KEY' => 'U' ,
'LBL_SELECT_USER_BUTTON_LABEL' => 'Избор на потребител' ,
'LBL_SELECT_USER_BUTTON_TITLE' => 'Избор на потребител [Alt+U]' ,
'LBL_SERVER_RESPONSE_RESOURCES' => 'Ресурси, изпозвани за създаването на тази страница (заявки, файлове)' ,
'LBL_SERVER_RESPONSE_TIME_SECONDS' => 'сек.' ,
'LBL_SERVER_RESPONSE_TIME' => 'Време за отговор на сървъра:' ,
'LBL_SHIP_TO_ACCOUNT' => 'Доставяне на клиента' ,
'LBL_SHIP_TO_CONTACT' => 'Доставка на лицето за контакти',
'LBL_SHORTCUTS' => 'Меню' ,
'LBL_SHOW' => 'Покажи' ,
'LBL_SQS_INDICATOR' => '' ,
'LBL_STATUS_UPDATED' => 'Статусът ви за това събитие беше обновен!',
'LBL_STATUS' => 'Статус:' ,
'LBL_SUBJECT' => 'Тема' ,
'LBL_SYNC' => 'Синхронизация' ,
'LBL_SYNC' => 'Синхронизация' ,
    'LBL_TABGROUP_ALL' => 'Всички',
    'LBL_TABGROUP_ACTIVITIES' => 'Дейности',
    'LBL_TABGROUP_COLLABORATION' => 'Съвместна работа',
    'LBL_TABGROUP_HOME' => 'Начало',
    'LBL_TABGROUP_MARKETING' => 'Маркетинг',
    'LBL_TABGROUP_MY_PORTALS' => 'Моят портал',
    'LBL_TABGROUP_OTHER' => 'Други',
    'LBL_TABGROUP_REPORTS' => 'Отчети',
    'LBL_TABGROUP_SALES' => 'Продажби',
    'LBL_TABGROUP_SUPPORT' => 'Поддръжка',
    'LBL_TABGROUP_TOOLS' => 'Инструменти',
'LBL_TASKS' => 'Задачи' ,
'LBL_TEAMS_LINK' => 'Команда' ,
'LBL_THOUSANDS_SYMBOL' => 'K' ,
'LBL_TRACK_EMAIL_BUTTON_KEY' => 'K' ,
'LBL_TRACK_EMAIL_BUTTON_LABEL' => 'Архив E-mail' ,
'LBL_TRACK_EMAIL_BUTTON_TITLE' => 'Архив E-mail [Alt+K]' ,
'LBL_UNAUTH_ADMIN' => 'Нямате достъп до администрационния панел' ,
'LBL_UNDELETE_BUTTON_LABEL' => 'Възстанови' ,
'LBL_UNDELETE_BUTTON_TITLE' => 'Възстанови [Alt+D]' ,
'LBL_UNDELETE_BUTTON' => 'Възстанови' ,
'LBL_UNDELETE' => 'Възстанови' ,
'LBL_UNSYNC' => 'Разсинхронизация' ,
'LBL_UPDATE' => 'Обновяване' ,
'LBL_USER_LIST' => 'Списък на потребителите' ,
'LBL_USERS_SYNC' => 'Синхронизация на потребителите' ,
'LBL_USERS' => 'Потребители' ,
'LBL_VIEW_PDF_BUTTON_KEY' => 'P' ,
'LBL_VIEW_PDF_BUTTON_LABEL' => 'Принтирай PDF' ,
'LBL_VIEW_PDF_BUTTON_TITLE' => 'Принтирай PDF [Alt+P]' ,

'LNK_ABOUT' => 'За нас' ,
'LNK_ADVANCED_SEARCH' => 'Разширено търсене' ,
'LNK_BASIC_SEARCH' => 'Търсене' ,
    'LNK_SAVED_VIEWS' => 'Съхранено търсене',
'LNK_DELETE_ALL' => 'Изтрий всичко' ,
'LNK_DELETE' => 'Изтриване' ,
'LNK_EDIT' => 'Промени' ,
'LNK_GET_LATEST' => 'Вземи най-новите' ,
'LNK_GET_LATEST_TOOLTIP' => 'Замени с последната версия' ,
'LNK_HELP' => 'Помощ' ,
'LNK_LIST_END' => 'Последен' ,
'LNK_LIST_NEXT' => 'Следващ' ,
'LNK_LIST_PREVIOUS' => 'Предишен' ,
'LNK_LIST_RETURN' => 'Към списъка' ,
'LNK_LIST_START' => 'Начало' ,
'LNK_LOAD_SIGNED' => 'Подпис' ,
'LNK_LOAD_SIGNED_TOOLTIP' => 'Заменете с подписан документ' ,
'LNK_PRINT' => 'Принтирай' ,
'LNK_REMOVE' => 'Премахни' ,
'LNK_RESUME' => 'Продължи' ,
'LNK_VIEW_CHANGE_LOG' => 'Виж история на промените' ,

'NTC_CLICK_BACK' => 'Моля, натиснете бутонът за връщане назад на браузъра и поправете грешката.',
'NTC_DATE_FORMAT' => '(гггг-мм-дд)' ,
'NTC_DATE_TIME_FORMAT' => '(гггг-мм-дд 24:00)' ,
'NTC_DELETE_CONFIRMATION_MULTIPLE' => 'Убедени ли сте че искате да изтриете избраният(е) запис(и)?' ,
'NTC_DELETE_CONFIRMATION' => 'Сигурни ли сте че искате да изтриете записа?' ,
'NTC_LOGIN_MESSAGE' => 'Моля въведете вашите потребителско име и парола' ,
'NTC_NO_ITEMS_DISPLAY' => 'няма' ,
'NTC_REMOVE_CONFIRMATION' => 'Желаете ли да премахнете този запис?',
'NTC_REQUIRED' => '- задължителни полета' ,
'NTC_SUPPORT_SUGARCRM' => 'Помогнете за развитието на системата чрез PayPal дарения - бързо, свободно и безопасно!',
'NTC_TIME_FORMAT' => '(24:00)' ,
'NTC_WELCOME' => 'Добре дошъл,' ,
'NTC_YEAR_FORMAT' => '(гггг) ' ,
'LOGIN_LOGO_ERROR' => 'Моля, сменете логото на SugarCRM' ,
'ERROR_FULLY_EXPIRED' => 'Лицензът ви е изтекъл от повече от 30 дена. Само администратора може да влезе в системата.' ,
'ERROR_LICENSE_EXPIRED' => 'Лицензът ви трябва да се обнови. Само администратора може да влезе в системата.'  ,
	'ERROR_LICENSE_VALIDATION'=> "Лицензът ви трябва да се потвърди. Само администратора може да влезе в системата.",
	'ERROR_NO_RECORD' => 'Грешка при получаването на записа. Записът вероятно е изтрит или нямате нужните права за да го видите.',
	'LBL_DUP_MERGE'=>'Намери дубликати',
	// Ajax status strings
	'LBL_LOADING' => 'Зареждане ...',
	'LBL_SAVING_LAYOUT' => 'Запазване на изгледа ...',
    'LBL_SAVED_LAYOUT' => 'Изгледът е запазен',
    'LBL_SAVED' => 'Запазено',
    'LBL_SAVING' => 'Запазване...',
    'LBL_FAILED' => 'Грешка при запазването!',
    'LBL_DISPLAY_COLUMNS' => 'Покажи колонки',
    'LBL_HIDE_COLUMNS' => 'Скрий колонки',
    'LBL_SEARCH_CRITERIA' => 'Условие на търсенето',
    'LBL_SAVED_VIEWS' => 'Запазени изгледи',
    'LBL_PROCESSING_REQUEST'=>'Обработване ...',
    'LBL_REQUEST_PROCESSED'=>'Готово',

    'LBL_MERGE_DUPLICATES'  => 'Сливане',
    'LBL_SAVED_SEARCH_SHORTCUT' => 'Запазено търсене',
    'LBL_SEARCH_POPULATE_ONLY'=> 'Предприемете търсене, използвайки формата по-горе',
    'LBL_DETAILVIEW'=>'Подробно',
    'LBL_LISTVIEW'=>'Списък',
    'LBL_EDITVIEW'=>'Редактиране',
    'LBL_SEARCHFORM'=>'Търсене',
    'LBL_SAVED_SEARCH_ERROR' => 'Моля, предоставете име за запазено търсене.',

    'ERR_INVALIDNUMBER' => 'Невалиден номер',
    'ERR_DUPLICATED' => 'Дублиран запис',
    'ERR_ONE_PRODUCT_REQUIRED' => 'Нужен е поне един продукт',
    'ERR_ONE_MATERIAL_REQUIRED' => 'Нужен е поне един материал',
);
?>