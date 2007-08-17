<?php
// created: 2007-07-20 13:20:51
$unified_search_modules = array (
  'Accounts' => 
  array (
    'table' => 'accounts',
    'fields' => 
    array (
      'name' => 
      array (
        'vname' => 'LBL_NAME',
        'type' => 'name',
      ),
      'phone_fax' => 
      array (
        'vname' => 'LBL_PHONE_FAX',
        'type' => 'phone',
      ),
      'phone_office' => 
      array (
        'vname' => 'LBL_PHONE_OFFICE',
        'type' => 'phone',
      ),
      'phone_alternate' => 
      array (
        'vname' => 'LBL_PHONE_ALT',
        'type' => 'phone',
      ),
    ),
  ),
  'Bugs' => 
  array (
    'table' => 'bugs',
    'fields' => 
    array (
      'bug_number' => 
      array (
        'vname' => 'LBL_NUMBER',
        'type' => 'int',
      ),
      'name' => 
      array (
        'vname' => 'LBL_LIST_SUBJECT',
        'type' => 'name',
      ),
    ),
  ),
  'Calls' => 
  array (
    'table' => 'calls',
    'fields' => 
    array (
      'name' => 
      array (
        'vname' => 'LBL_SUBJECT',
        'type' => 'name',
      ),
    ),
  ),
  'Cases' => 
  array (
    'table' => 'cases',
    'fields' => 
    array (
      'case_number' => 
      array (
        'vname' => 'LBL_NUMBER',
        'type' => 'int',
      ),
      'name' => 
      array (
        'vname' => 'LBL_LIST_SUBJECT',
        'type' => 'name',
      ),
      'account_name' => 
      array (
        'vname' => 'LBL_ACCOUNT_NAME',
        'type' => 'relate',
        'table' => 'accounts',
        'rname' => 'name',
      ),
    ),
  ),
  'Contacts' => 
  array (
    'table' => 'contacts',
    'fields' => 
    array (
      'first_name' => 
      array (
        'vname' => 'LBL_FIRST_NAME',
        'type' => 'varchar',
      ),
      'last_name' => 
      array (
        'vname' => 'LBL_LAST_NAME',
        'type' => 'varchar',
      ),
      'account_name' => 
      array (
        'vname' => 'LBL_ACCOUNT_NAME',
        'type' => 'relate',
        'table' => 'accounts',
        'rname' => 'name',
      ),
      'supplier_name' => 
      array (
        'vname' => 'LBL_SUPPLIER_NAME',
        'type' => 'relate',
        'table' => 'suppliers',
        'rname' => 'name',
      ),
      'phone_home' => 
      array (
        'vname' => 'LBL_HOME_PHONE',
        'type' => 'phone',
      ),
      'phone_mobile' => 
      array (
        'vname' => 'LBL_MOBILE_PHONE',
        'type' => 'phone',
      ),
      'phone_work' => 
      array (
        'vname' => 'LBL_OFFICE_PHONE',
        'type' => 'phone',
      ),
      'phone_other' => 
      array (
        'vname' => 'LBL_OTHER_PHONE',
        'type' => 'phone',
      ),
      'phone_fax' => 
      array (
        'vname' => 'LBL_FAX_PHONE',
        'type' => 'phone',
      ),
      'email1' => 
      array (
        'vname' => 'LBL_EMAIL_ADDRESS',
        'type' => 'email',
      ),
      'email2' => 
      array (
        'vname' => 'LBL_OTHER_EMAIL_ADDRESS',
        'type' => 'email',
      ),
      'assistant' => 
      array (
        'vname' => 'LBL_ASSISTANT',
        'type' => 'varchar',
      ),
      'assistant_phone' => 
      array (
        'vname' => 'LBL_ASSISTANT_PHONE',
        'type' => 'phone',
      ),
    ),
  ),
  'Estimates' => 
  array (
    'table' => 'estimate',
    'fields' => 
    array (
      'product_name' => 
      array (
        'vname' => 'LBL_PRODUCT_NAME',
        'type' => 'varchar',
      ),
      'name' => 
      array (
        'vname' => 'LBL_NAME',
        'type' => 'name',
      ),
    ),
  ),
  'Ink' => 
  array (
    'table' => 'ink',
    'fields' => 
    array (
      'name' => 
      array (
        'vname' => 'LBL_NAME',
        'type' => 'name',
      ),
      'short_symbol' => 
      array (
        'vname' => 'LBL_SHORT_SYMBOL',
        'type' => 'varchar',
      ),
      'show_name' => 
      array (
        'vname' => 'LBL_SHOW_NAME',
        'type' => 'varchar',
      ),
      'type' => 
      array (
        'vname' => 'LBL_TYPE',
        'type' => 'varchar',
      ),
      'cmyk_type' => 
      array (
        'vname' => 'LBL_CMYK_TYPE',
        'type' => 'varchar',
      ),
      'pantone' => 
      array (
        'vname' => 'LBL_PANTONE',
        'type' => 'varchar',
      ),
    ),
  ),
  'Layout' => 
  array (
    'table' => 'layout',
    'fields' => 
    array (
      'name' => 
      array (
        'vname' => 'LBL_NAME',
        'type' => 'name',
      ),
    ),
  ),
  'Leads' => 
  array (
    'table' => 'leads',
    'fields' => 
    array (
      'first_name' => 
      array (
        'vname' => 'LBL_FIRST_NAME',
        'type' => 'name',
      ),
      'last_name' => 
      array (
        'vname' => 'LBL_LAST_NAME',
        'type' => 'name',
      ),
      'phone_home' => 
      array (
        'vname' => 'LBL_HOME_PHONE',
        'type' => 'phone',
      ),
      'phone_mobile' => 
      array (
        'vname' => 'LBL_MOBILE_PHONE',
        'type' => 'phone',
      ),
      'phone_work' => 
      array (
        'vname' => 'LBL_OFFICE_PHONE',
        'type' => 'phone',
      ),
      'phone_other' => 
      array (
        'vname' => 'LBL_OTHER_PHONE',
        'type' => 'phone',
      ),
      'phone_fax' => 
      array (
        'vname' => 'LBL_FAX_PHONE',
        'type' => 'phone',
      ),
      'email1' => 
      array (
        'vname' => 'LBL_EMAIL_ADDRESS',
        'type' => 'email',
      ),
      'email2' => 
      array (
        'vname' => 'LBL_OTHER_EMAIL_ADDRESS',
        'type' => 'email',
      ),
      'account_name' => 
      array (
        'vname' => 'LBL_ACCOUNT_NAME',
        'type' => 'varchar',
      ),
    ),
  ),
  'Machines' => 
  array (
    'table' => 'machines',
    'fields' => 
    array (
      'name' => 
      array (
        'vname' => 'LBL_LIST_SUBJECT',
        'type' => 'name',
      ),
    ),
  ),
  'Materials' => 
  array (
    'table' => 'materials',
    'fields' => 
    array (
      'name' => 
      array (
        'vname' => 'LBL_NAME',
        'type' => 'name',
      ),
    ),
  ),
  'Opportunities' => 
  array (
    'table' => 'opportunities',
    'fields' => 
    array (
      'name' => 
      array (
        'vname' => 'LBL_OPPORTUNITY_NAME',
        'type' => 'name',
      ),
      'account_name' => 
      array (
        'vname' => 'LBL_ACCOUNT_NAME',
        'type' => 'relate',
        'table' => 'accounts',
        'rname' => 'name',
      ),
    ),
  ),
  'Paper' => 
  array (
    'table' => 'paper',
    'fields' => 
    array (
      'man' => 
      array (
        'vname' => 'LBL_MANUFACTURER',
        'type' => 'varchar',
      ),
    ),
  ),
  'Paperwaste' => 
  array (
    'table' => 'paperwaste',
    'fields' => 
    array (
      'name' => 
      array (
        'vname' => 'LBL_NAME',
        'type' => 'name',
      ),
      'type' => 
      array (
        'vname' => 'LBL_TYPE',
        'type' => 'varchar',
      ),
      'setup_waste_per_plate' => 
      array (
        'vname' => 'LBL_SETUP_WASTE_PER_PLATE',
        'type' => 'int',
      ),
      'step_amount' => 
      array (
        'vname' => 'LBL_STEP_AMOUNT',
        'type' => 'int',
      ),
      'pressmachine_name' => 
      array (
        'vname' => 'LBL_PRESSMACHINE_NAME',
        'type' => 'varchar',
      ),
      'operation_name' => 
      array (
        'vname' => 'LBL_OPERATION_NAME',
        'type' => 'varchar',
      ),
    ),
  ),
  'Press' => 
  array (
    'table' => 'press',
    'fields' => 
    array (
      'name' => 
      array (
        'vname' => 'LBL_NAME',
        'type' => 'name',
      ),
      'pressmachine_name' => 
      array (
        'vname' => 'LBL_PRESSMACHINE_NAME',
        'type' => 'varchar',
      ),
    ),
  ),
  'Pressmachine' => 
  array (
    'table' => 'pressmachine',
    'fields' => 
    array (
      'name' => 
      array (
        'vname' => 'LBL_NAME',
        'type' => 'name',
      ),
      'model' => 
      array (
        'vname' => 'LBL_MODEL',
        'type' => 'varchar',
      ),
      'manufacturer' => 
      array (
        'vname' => 'LBL_MANUFACTURER',
        'type' => 'varchar',
      ),
      'gripper' => 
      array (
        'vname' => 'LBL_GRIPPER',
        'type' => 'varchar',
      ),
      'speed' => 
      array (
        'vname' => 'LBL_SPEED',
        'type' => 'varchar',
      ),
      'printing_units' => 
      array (
        'vname' => 'LBL_PRINTING_UNITS',
        'type' => 'int',
      ),
      'sortorder' => 
      array (
        'vname' => 'LBL_SORTORDER',
        'type' => 'int',
      ),
      's_f' => 
      array (
        'vname' => 'LBL_SF',
        'type' => 'varchar',
      ),
      'm_f' => 
      array (
        'vname' => 'LBL_MF',
        'type' => 'varchar',
      ),
      'mp_f' => 
      array (
        'vname' => 'LBL_MPF',
        'type' => 'varchar',
      ),
    ),
  ),
  'Presspricelist' => 
  array (
    'table' => 'presspricelist',
    'fields' => 
    array (
      'name' => 
      array (
        'vname' => 'LBL_NAME',
        'type' => 'name',
      ),
      'type' => 
      array (
        'vname' => 'LBL_TYPE',
        'type' => 'varchar',
      ),
      'inks_number' => 
      array (
        'vname' => 'LBL_INKS_NUMBER',
        'type' => 'int',
      ),
      'step_amount' => 
      array (
        'vname' => 'LBL_STEP_AMOUNT',
        'type' => 'int',
      ),
      'pressmachine_name' => 
      array (
        'vname' => 'LBL_PRESSMACHINE_NAME',
        'type' => 'varchar',
      ),
    ),
  ),
  'Prices' => 
  array (
    'table' => 'prices',
    'fields' => 
    array (
      'name' => 
      array (
        'vname' => 'LBL_NAME',
        'type' => 'name',
      ),
      'supplier_name' => 
      array (
        'vname' => 'LBL_SUPPLIER_NAME',
        'type' => 'varchar',
      ),
    ),
  ),
  'Printing' => 
  array (
    'table' => 'printing',
    'fields' => 
    array (
      'product_name' => 
      array (
        'vname' => 'LBL_PRODUCT_NAME',
        'type' => 'varchar',
      ),
      'name' => 
      array (
        'vname' => 'LBL_NAME',
        'type' => 'name',
      ),
      'whole_sheets' => 
      array (
        'vname' => NULL,
        'type' => 'int',
      ),
      'count_whole_sheets' => 
      array (
        'vname' => NULL,
        'type' => 'int',
      ),
      'count_reversal_whole_sheets' => 
      array (
        'vname' => NULL,
        'type' => 'int',
      ),
      'count_whole_sheets_multiplicity' => 
      array (
        'vname' => NULL,
        'type' => 'int',
      ),
      'whole_sheets_multiplicity' => 
      array (
        'vname' => NULL,
        'type' => 'int',
      ),
      'whole_sheets_quantity' => 
      array (
        'vname' => NULL,
        'type' => 'int',
      ),
      'reversal_whole_sheets' => 
      array (
        'vname' => NULL,
        'type' => 'int',
      ),
      'reversal_whole_sheets_multiplicity' => 
      array (
        'vname' => NULL,
        'type' => 'int',
      ),
      'reversal_whole_sheets_quantity' => 
      array (
        'vname' => NULL,
        'type' => 'int',
      ),
      'reversal_whole_sheets_preparations' => 
      array (
        'vname' => NULL,
        'type' => 'int',
      ),
      'multiplicity_whole_sheets' => 
      array (
        'vname' => NULL,
        'type' => 'int',
      ),
      'multiplicity_whole_sheets_multiplicity' => 
      array (
        'vname' => NULL,
        'type' => 'int',
      ),
      'multiplicity_whole_sheets_quantity' => 
      array (
        'vname' => NULL,
        'type' => 'int',
      ),
      'multiplicity_whole_sheets_preparations' => 
      array (
        'vname' => NULL,
        'type' => 'int',
      ),
    ),
  ),
  'ProductLogs' => 
  array (
    'table' => 'productlog',
    'fields' => 
    array (
      'product_name' => 
      array (
        'vname' => 'LBL_PRODUCT_NAME',
        'type' => 'varchar',
      ),
    ),
  ),
  'ProductOperations' => 
  array (
    'table' => 'productoperations',
    'fields' => 
    array (
      'name' => 
      array (
        'vname' => 'LBL_NAME',
        'type' => 'name',
      ),
      'product_name' => 
      array (
        'vname' => 'LBL_PRODUCT_NAME',
        'type' => 'varchar',
      ),
      'component_name' => 
      array (
        'vname' => 'LBL_COMPONENT_NAME',
        'type' => 'varchar',
      ),
      'machine_name' => 
      array (
        'vname' => 'LBL_MACHINE_NAME',
        'type' => 'varchar',
      ),
      'operation_name' => 
      array (
        'vname' => 'LBL_OPERATION_NAME',
        'type' => 'varchar',
      ),
      'operations_count' => 
      array (
        'vname' => 'LBL_OPERATIONS_COUNT',
        'type' => 'varchar',
      ),
      'est_price' => 
      array (
        'vname' => 'LBL_EST_PRICE',
        'type' => 'varchar',
      ),
      'executor' => 
      array (
        'vname' => 'LBL_EXECUTOR',
        'type' => 'varchar',
      ),
      'executored_from' => 
      array (
        'vname' => 'LBL_EXECUTED_FROM',
        'type' => 'varchar',
      ),
      'executed_qty' => 
      array (
        'vname' => 'LBL_EXECUTED_QTY',
        'type' => 'varchar',
      ),
    ),
  ),
  'Products' => 
  array (
    'table' => 'products',
    'fields' => 
    array (
      'name' => 
      array (
        'vname' => 'LBL_NAME',
        'type' => 'name',
      ),
    ),
  ),
  'ProductComponents' => 
  array (
    'table' => 'products_components',
    'fields' => 
    array (
      'name' => 
      array (
        'vname' => 'LBL_NAME',
        'type' => 'name',
      ),
    ),
  ),
  'Project' => 
  array (
    'table' => 'project',
    'fields' => 
    array (
      'name' => 
      array (
        'vname' => 'LBL_NAME',
        'type' => 'name',
      ),
    ),
  ),
  'Operations' => 
  array (
    'table' => 'project',
    'fields' => 
    array (
      'name' => 
      array (
        'vname' => 'LBL_NAME',
        'type' => 'name',
      ),
      'type' => 
      array (
        'vname' => 'LBL_TYPE',
        'type' => 'varchar',
      ),
      'sp' => 
      array (
        'vname' => 'LBL_SP',
        'type' => 'varchar',
      ),
      'count' => 
      array (
        'vname' => 'LBL_COUNT',
        'type' => 'varchar',
      ),
      'startprice' => 
      array (
        'vname' => 'LBL_START_PRICE',
        'type' => 'varchar',
      ),
      'coefficient' => 
      array (
        'vname' => 'LBL_COEF',
        'type' => 'varchar',
      ),
    ),
  ),
  'ProjectTask' => 
  array (
    'table' => 'project_task',
    'fields' => 
    array (
      'name' => 
      array (
        'vname' => 'LBL_NAME',
        'type' => 'name',
      ),
    ),
  ),
  'Ratefilm' => 
  array (
    'table' => 'ratefilm',
    'fields' => 
    array (
      'name' => 
      array (
        'vname' => 'LBL_NAME',
        'type' => 'name',
      ),
      'format' => 
      array (
        'vname' => 'LBL_FORMAT',
        'type' => 'name',
      ),
    ),
  ),
  'Rateplate' => 
  array (
    'table' => 'rateplate',
    'fields' => 
    array (
      'name' => 
      array (
        'vname' => 'LBL_NAME',
        'type' => 'name',
      ),
      'format' => 
      array (
        'vname' => 'LBL_FORMAT',
        'type' => 'name',
      ),
    ),
  ),
  'Suppliers' => 
  array (
    'table' => 'suppliers',
    'fields' => 
    array (
      'name' => 
      array (
        'vname' => 'LBL_NAME',
        'type' => 'name',
      ),
      'acc_name' => 
      array (
        'vname' => 'LBL_ACC_NAME',
        'type' => 'name',
      ),
      'phone_fax' => 
      array (
        'vname' => 'LBL_PHONE_FAX',
        'type' => 'phone',
      ),
      'phone_office' => 
      array (
        'vname' => 'LBL_PHONE_OFFICE',
        'type' => 'phone',
      ),
      'phone_alternate' => 
      array (
        'vname' => 'LBL_PHONE_ALT',
        'type' => 'phone',
      ),
    ),
  ),
);
?>
