<?PHP

// manifest file for information regarding application of new code
$manifest = array(
    // only install on the following regex sugar versions (if empty, no check)
    'acceptable_sugar_versions' => array('4.5.*'),

    // name of new code
    'name' => 'Quotes',

    // description of new code
    'description' => 'Quotes module',

    // author of new code
    'author' => 'livesoft',

    // date published
    'published_date' => '2007/11/08',

    // version of code
    'version' => '1.01',

    // type of code (valid choices are: full, langpack, module, patch, theme )
    'type' => 'module',

    // icon for displaying in UI (path to graphic contained within zip package)
    'icon' => '',
	
	
	// is_uninstallable
	'is_uninstallable' => 'true',
);



$installdefs = array(

	'id'=> 'Sugarindo',
	//'image_dir'=>'<basepath>/images',
	'copy' => array(
			array('from'=> '<basepath>/modules/Quotes',
              'to'=> 'modules/Quotes',
            ),
            array('from'=> '<basepath>/modules/QuoteLines',
              'to'=> 'modules/QuoteLines',
            ),
            array('from'=> '<basepath>/modules/Pricebooks',
              'to'=> 'modules/Pricebooks',
            ),
            array('from'=> '<basepath>/modules/Import/ImportProduct.php',
              'to'=> 'modules/Import/ImportProduct.php',
            ),
            array('from'=> '<basepath>/other/export_quote.php',
              'to'=> 'export_quote.php',
            ),
            array('from'=> '<basepath>/other/include/fpdf/',
              'to'=> 'include/fpdf/',
            ),
            array('from'=> '<basepath>/other/include/CRMPDF.php',
              'to'=> 'include/CRMPDF.php',
            ),
            array('from'=> '<basepath>/other/themes/Default/images/company_logo.jpg',
              'to'=> 'themes/Default/images/company_logo.jpg',
            ),
            array('from'=> '<basepath>/other/themes/Default/images/Pricebook.gif',
              'to'=> 'themes/Default/images/Pricebook.gif',
            ),
            array('from'=> '<basepath>/other/themes/Default/images/Products.gif',
              'to'=> 'themes/Default/images/Products.gif',
            ),
            array('from'=> '<basepath>/other/themes/Default/images/Quotes.gif',
              'to'=> 'themes/Default/images/Quotes.gif',
            ),
            array('from'=> '<basepath>/other/themes/Default/images/Search.gif',
              'to'=> 'themes/Default/images/Search.gif',
            ),
			
	),
	
	'language'=> array(
			array('from'=> '<basepath>/application/app_strings.en_us.lang.php', 
			'to_module'=> 'application',
			'language'=>'en_us'
			),
		),
	'beans'=> array(
			array('module'=> 'Quotes',
				  'class'=> 'Quote',
				  'path'=> 'modules/Quotes/Quote.php',
				  'tab'=> true,
			),
			array('module'=> 'QuoteLines',
				  'class'=> 'QuoteLine',
				  'path'=> 'modules/QuoteLines/QuoteLine.php',
				  'tab'=> false,
			),
            array('module'=> 'Pricebooks',
                  'class'=> 'Pricebook',
                  'path'=> 'modules/Pricebooks/Pricebook.php',
                  'tab'=> false,
            ),
			
			
	),
	'relationships'=>array(
					array(
						'module'=> 'Quotes',
						'meta_data'=>'<basepath>/sugarindo_MetaData.php',
						'module_vardefs'=>'<basepath>/modules/Quotes/vardefs.php',
					),
	)
					  
)
?>