<?PHP

// manifest file for information regarding application of new code
$manifest = array(
    // only install on the following regex sugar versions (if empty, no check)
    'acceptable_sugar_versions' => array('4.5.*'),

    // name of new code
    'name' => 'Products',

    // description of new code
    'description' => 'Products Module',

    // author of new code
    'author' => 'Livesoft',

    // date published
    'published_date' => '2006/12/12',

    // version of code
    'version' => '0.2.1b',

    // type of code (valid choices are: full, langpack, module, patch, theme )
    'type' => 'module',

    // icon for displaying in UI (path to graphic contained within zip package)
    'icon' => '',
	
	
	// is_uninstallable
	'is_uninstallable' => 'true',
);



$installdefs = array(

	'id'=> 'Products',
	//'image_dir'=>'<basepath>/images',
	'copy' => array(
			
			
			array('from'=> '<basepath>/Products',
		  	'to'=> 'modules/Products',
			),
			
			array('from'=> '<basepath>/images/Products.gif',
		  	'to'=> 'themes/Default/images/Products.gif',
			),
			array('from'=> '<basepath>/images/Search.gif',
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
			
		
			array('module'=> 'Products',
				  'class'=> 'Products',
				  'path'=> 'modules/Products/Products.php',
				  'tab'=> true,
			),
			

	),
					  
)
?>