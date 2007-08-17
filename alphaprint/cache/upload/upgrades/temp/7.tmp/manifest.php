<?PHP

// manifest file for information regarding application of new code
$manifest = array(
    // only install on the following regex sugar versions (if empty, no check)
    'acceptable_sugar_versions' => array('4.5.*'),

    // name of new code
    'name' => 'Paper Mdoule',

    // description of new code
    'description' => 'Paper Module',

    // author of new code
    'author' => 'Livesoft Ltd.',

    // date published
    'published_date' => '2006/12/01',

    // version of code
    'version' => '0.2b',

    // type of code (valid choices are: full, langpack, module, patch, theme )
    'type' => 'module',

    // icon for displaying in UI (path to graphic contained within zip package)
    'icon' => '',
	
	
	// is_uninstallable
	'is_uninstallable' => 'true',
);



$installdefs = array(

	'id'=> 'Paper',
	'copy' => array(
			
			array('from'=> '<basepath>/Paper',
		  	'to'=> 'modules/Paper',
			),
			array('from'=> '<basepath>/images/Paper.gif',
		  	'to'=> 'themes/Default/images/Paper.gif',
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
			
			array('module'=> 'Paper',
				  'class'=> 'Paper',
				  'path'=> 'modules/Paper/Paper.php',
				  'tab'=> false,
			),
			

	)	  
)
?>