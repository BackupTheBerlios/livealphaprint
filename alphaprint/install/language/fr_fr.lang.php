<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/*********************************************************************************
 * The contents of this file are subject to the SugarCRM Public License Version
 * 1.1.3 ("License"); You may not use this file except in compliance with the
 * License. You may obtain a copy of the License at http://www.sugarcrm.com/SPL
 * Software distributed under the License is distributed on an "AS IS" basis,
 * WITHOUT WARRANTY OF ANY KIND, either express or implied.  See the License
 * for the specific language governing rights and limitations under the
 * License.
 *
 * All copies of the Covered Code must include on each user interface screen:
 *    (i) the "Powered by SugarCRM" logo and
 *    (ii) the SugarCRM copyright notice
 * in the same form as they appear in the distribution.  See full license for
 * requirements.
 *
 * The Original Code is: SugarCRM Open Source
 * The Initial Developer of the Original Code is SugarCRM, Inc.
 * Portions created by SugarCRM are Copyright (C) 2004-2006 SugarCRM, Inc.;
 * All Rights Reserved.
 * Contributor(s): ______________________________________.
 ********************************************************************************/
/*********************************************************************************

 * Description:
 * Portions created by SugarCRM are Copyright (C) SugarCRM, Inc. All Rights
 * Reserved. Contributor(s): contact@synolia.com - www.synolia.com
 * *******************************************************************************/

$mod_strings = array (










































	
  'DEFAULT_CHARSET' => 'UTF-8',
  'ERR_ADMIN_PASS_BLANK' => 'Le mot de passe admin de SugarCRM ne peut pas être vide.',
  'ERR_CHECKSYS_CALL_TIME' => 'La fonction \'Allow Call Time Pass Reference\' est à Off (veuillez l\'activer dans le php.ini)',
  'ERR_CHECKSYS_CURL' => 'INTROUVABLE: Le planificateur Sugar fonctionnera avec des fonctionnalités limitées.',
  'ERR_CHECKSYS_IMAP' => 'INTROUVABLE: Les mails entrants et les campagnes (Email) nécessitent la librairie IMAP dans PHP. Aucun des 2 ne pourra fonctionner.',
  'ERR_CHECKSYS_MSSQL_MQGPC' => 'La fonction Magic Quotes GPC ne peut pas être mise à "On" lorsque vous utilisez MSSQL SERVER.',
  'ERR_CHECKSYS_MBSTRING' => "INTROUVABLE: SugarCRM ne pourra pas utiliser les jeux de caractères multibytes. Cela affectera la réception d'emails dans des jeux de caractères différents de UTF-8.",
  'ERR_CHECKSYS_MEM_LIMIT_1' => 'ATTENTION: $memory_limit (Mettre ',
  'ERR_CHECKSYS_MEM_LIMIT_2' => 'M ou plus dans votre fichier php.ini)',
  'ERR_CHECKSYS_MYSQL_VERSION' => 'Version Minimum 4.1.2 - Trouvée: ',
  'ERR_CHECKSYS_NO_SESSIONS' => 'Impossible d\'écrire ou lire les paramètres de session. Impossible de continuer l\'installation.',
  'ERR_CHECKSYS_NOT_VALID_DIR' => 'Répertoire Invalide',
  'ERR_CHECKSYS_NOT_WRITABLE' => 'ATTENTION: Impossible d\'écrire',
  'ERR_CHECKSYS_PHP_INVALID_VER' => 'Version de PHP installée Invalide: ( ver',
  'ERR_CHECKSYS_PHP_JSON' => 'INTROUVABLE: Le module PHP nommé PHP-JSON PHP permet de gagner beaucoup en performance.',
  'ERR_CHECKSYS_PHP_JSON_VERSION' => 'Seul PHP-JSON version 1.1.1 est supporté pour le moment.  Veuillez mettre à jour votre version. En attendant SugarCRM utilisera du code PHP non optimisé pour les interactions de type AJAX.',
  'ERR_CHECKSYS_PHP_UNSUPPORTED' => 'Version de PHP installée non supportée: ( ver',
  'ERR_CHECKSYS_SAFE_MODE' => 'Safe Mode est activé (veuillez le désactivé dans le fichier php.ini)',
  'ERR_CHECKSYS_ZLIB' => 'INTROUVABLE: SugarCRM peut gagner beaucoup en performance avec la compression zlib activée.',
  'ERR_DB_ADMIN' => 'Le login ou le mot de passe de l\'administrateur de la base de données est invalide (ERREUR ',
  'ERR_DB_EXISTS_NOT' => 'La base de données spécifiée n\'existe pas.',
  'ERR_DB_EXISTS_WITH_CONFIG' => 'La base de données contient déjà des données de configuration. Pour lancer une installation avec la base de données sélectionnées, veuillez relancer l\'installation et sélectionnez :"Effacer et recréer les tables existantes de SugarCRM ?" Pour mettre à jour, utilisez l\'assistant de mise à jour dans la console d\'administration.  Veullez lire la documentation de mise à jour située  <a href="http://www.sugarforge.org/content/downloads/" target="_new">ici</a>.',
  'ERR_DB_EXISTS' => 'Une base de données avec le même nom existe déjà--Impossible d\'en créer une autre avec le même nom.',
  'ERR_DB_HOSTNAME' => 'Le nom de l\'hote (Hostname) ne peut pas être vide.',
  'ERR_DB_INVALID' => 'Le type de base de données sélectionnée est invalide.',
  'ERR_DB_LOGIN_FAILURE_MYSQL' => 'Le login ou le mot de passe de l\'utilisateur de SugarCRM est invalide (ERREUR ',
  'ERR_DB_LOGIN_FAILURE_MSSQL' => 'Le login ou le mot de passe de la base de données SugarCRM est invalide.',
  'ERR_DB_MYSQL_VERSION1' => 'Version de MySQL ',
  'ERR_DB_MYSQL_VERSION2' => ' n\'est pas supporté. Seule la verion 4.1.x et plus de MySQL est supportée.',
  'ERR_DB_NAME' => 'Le nom de la base de données ne peut pas être vide.',
  'ERR_DB_NAME2' => 'Le nom de la base de données ne peut pas contenir les caractères \'\\\', \'/\', ou \'.\'',
  'ERR_DB_PASSWORD' => 'Les mots de passe pour SugarCRM ne correspondent pas.',
  'ERR_DB_PRIV_USER' => 'L\'identifiant Admin de la base de données est nécessaire.',
  'ERR_DB_USER_EXISTS' => 'L\'utilisateur pour SugarCRM existe déjà--Impossibe d\'en créer un second avec le même identifiant.',
  'ERR_DB_USER' => 'L\'identifiant pour SugarCRM ne peut pas être vide.',
  'ERR_DBCONF_VALIDATION' => 'Veuillez corriger les erreurs suivantes avant de continuer:',
  'ERR_ERROR_GENERAL' => 'Les erreurs suivantes ont été rencontrées:',
  'ERR_LANG_CANNOT_DELETE_FILE' => 'Impossible d\'effacer le fichier: ',
  'ERR_LANG_MISSING_FILE' => 'Impossible de trouver le fichier: ',
  'ERR_LANG_NO_LANG_FILE' => 'Pas de pack de langue trouvé dans include/language à l\'intérieur de : ',
  'ERR_LANG_UPLOAD_1' => 'Un problème a été rencontré avec votre upload. Veuillez réessayer.',
  'ERR_LANG_UPLOAD_2' => 'PHP n\'a pas pu déplacer le fichier temporaire vers le répertoire de mises à jour.',
  'ERR_LANG_UPLOAD_3' => 'PHP n\'a pas pu déplacer le fichier temporaire vers le répertoire d\'upgrade.',
  'ERR_LICENSE_MISSING' => 'Les champs requis ne sont pas tous renseignés',
  'ERR_LICENSE_NOT_FOUND' => 'Fichier de licence introuvable!',
  'ERR_LOG_DIRECTORY_NOT_EXISTS' => 'Le répertoire de Logs définis n\'est pas valide.',
  'ERR_LOG_DIRECTORY_NOT_WRITABLE' => 'Impossible d\'écrire dans le répertoire de Logs défini.',
  'ERR_LOG_DIRECTORY_REQUIRED' => 'Un répertoire de Logs est obligatoire si vous voulez spécifier votre propre répertoire.',
  'ERR_NO_DIRECT_SCRIPT' => 'Impossible d\'exécuter le script directement.',
  'ERR_PASSWORD_MISMATCH' => 'Les mots de passe pour SugarCRM Admin ne correspondent pas.',
  'ERR_PERFORM_CONFIG_PHP_1' => 'Impossible d\'écrire dans le fichier <span class=stop>config.php</span>.',
  'ERR_PERFORM_CONFIG_PHP_2' => 'Vous pouvez continuer cette installation en créant manuellement le fichier config.php et en collant les informations de configuration ci dessous dans le fichier. Cependant vous <strong>devez </strong> créer le fichier config.php avant de procéder à l\'étape suivante.',
  'ERR_PERFORM_CONFIG_PHP_3' => 'Avez vous créé le fichier config.php?',
  'ERR_PERFORM_CONFIG_PHP_4' => 'ATTENTION: Impossible d\'écrire dans le fichier config.php.  Veuillez vous assurer qu\'il existe.',
  'ERR_PERFORM_HTACCESS_1' => 'Impossible d\'écrire dans le fichier ',
  'ERR_PERFORM_HTACCESS_2' => ' .',
  'ERR_PERFORM_HTACCESS_3' => 'Si vous voulez sécuriser votre fichier de Logs d\'un accès par un navigateur, créez un fichier .htaccess dans le répertoire de Logs avec cette ligne:',
  'ERR_PERFORM_NO_TCPIP' => '<b>Nous n\'avons pas détecter de connexion internet.</b> Dès que vous en avez une, veuillez vous rendre sur  <a href=\\"http://www.sugarcrm.com/home/index.php?option=com_extended_registration&task=register\\">http://www.sugarcrm.com/home/index.php?option=com_extended_registration&task=register</a> pour vous enregistrer auprès de SugarCRM.En nous laissant savoir comment votre société compte utiliser SugarCRM, nous pouvons vous garantir de vous fournir toujours la bonne application pour vos besoins de business.',
  'ERR_SESSION_DIRECTORY_NOT_EXISTS' => '>Le répertoire de session défini n\'est pas un répertoire valide.',
  'ERR_SESSION_DIRECTORY' => 'Impossible d\'écrire dans le répertoire de session défini.',
  'ERR_SESSION_PATH' => 'Un répertoire de session est nécessaire si vous voulez définir votre propre répertoire.',
  'ERR_SI_NO_CONFIG' => 'Vous n\'avez pas inclus de fichier config_si.php dans la racine ou vou n\'avez pas spécifié de $sugar_config_si dans le fichier config.php',
  'ERR_SITE_GUID' => 'ID d\'Application nécessaire si vous voulez spécifier votre propre application.',
  'ERR_UPLOAD_MAX_FILESIZE' => "ATTENTION: Votre configuration de PHP doit être modifiée pour autoriser les fichiers d'au moins 6MB a être téléchargés.",
  'ERR_URL_BLANK' => 'URL ne peut pas être vide.',
  'ERROR_FLAVOR_INCOMPATIBLE' => 'Le fichier uploadé n\'est pas compatible avec cette note (Open Source, Professional, ou Enterprise) de Sugar Suite: ',
  'ERROR_LICENSE_EXPIRED' => 'ERREUR: Votre licence a expirée il y a ',
  'ERROR_LICENSE_EXPIRED2' => ' jour(s). Veuillez vous rendre dans <a href=\'index.php?action=LicenseSettings&module=Administration\'>\'"Gestion de licences "</a>  dans l\\\'écran d\\\'Admin pour renseigner votre nouvelle clé.  Si vous ne spécifier pas de nouvelle clé dans les 30 jours suivant l\\\'expiration de votre clé, vous ne pourrez plus vous connecter à l\\\'application .',
  'ERROR_MANIFEST_TYPE' => 'Le fichier Manifest doit spécifier un type de package.',
  'ERROR_PACKAGE_TYPE' => 'Le fichier Manifest spécifie un type de package non reconnu',
  'ERROR_VALIDATION_EXPIRED' => 'ERREUR: Votre licence a expirée il y a  ',
  'ERROR_VALIDATION_EXPIRED2' => ' jour(s.   Veuillez vous rendre dans <a href=\'index.php?action=LicenseSettings&module=Administration\'>\'"Gestion de licences"</a> dans l\\\'écran d\\\'Admin pour renseigner votre nouvelle clé.  Si vous ne spécifier pas de nouvelle clé dans les 30 jours suivant l\\\'expiration de votre clé, vous ne pourrez plus vous connecter à l\\\'application.',
  'ERROR_VERSION_INCOMPATIBLE' => 'Le fichier uploadé n\'est pas compatible avec la vesrion de Sugar Suite: ',
  'LBL_BACK' => 'Précédent',
  'LBL_CHECKSYS_1' => 'Afin que votre installation de SugarCRM fonctionne correctement, veuillez vous assurer que toutes les vérifications du système listées ci-dessous sont en vert. Si au moins une est en rouge veuillez corriger le problème avant de continuer.',
  'LBL_CHECKSYS_CACHE' => 'Ecriture possible dans les sous-répertoires de cache ',
  'LBL_CHECKSYS_CALL_TIME' => 'La fonction Allow Call Time Pass Reference est OK',
  'LBL_CHECKSYS_COMPONENT' => 'Composants',
  'LBL_CHECKSYS_COMPONENT_OPTIONAL' => 'Composants Optionels',
  'LBL_CHECKSYS_CONFIG' => 'Ecriture dans le fichier de config de SugarCRM (config.php)',
  'LBL_CHECKSYS_CURL' => 'Librairie cURL',
  'LBL_CHECKSYS_CUSTOM' => 'Ecriture possible dans le répertoire utilisateur',
  'LBL_CHECKSYS_DATA' => 'Ecriture possible dans les sous-répertoires de données',
  'LBL_CHECKSYS_IMAP' => 'IMAP Module',
  'LBL_CHECKSYS_MQGPC' => 'Magic Quotes GPC',
  'LBL_CHECKSYS_MBSTRING' => ' Module MB Strings',
  'LBL_CHECKSYS_MEM_OK' => 'OK (Pas de limite)',
  'LBL_CHECKSYS_MEM_UNLIMITED' => 'OK (Illimité)',
  'LBL_CHECKSYS_MEM' => 'Limite Mémoire PHP >= ',
  'LBL_CHECKSYS_MODULE' => 'Ecriture possible dans les sous-répertoires des modules et les fichiers',
  'LBL_CHECKSYS_MYSQL_VERSION' => 'Version de MySQL',
  'LBL_CHECKSYS_NOT_AVAILABLE' => 'Non disponible',
  'LBL_CHECKSYS_OK' => 'OK',
  'LBL_CHECKSYS_PHP_INI' => '<b>nOTE:</b> Votre fichier de configuration php (php.ini) est situé ici :',
  'LBL_CHECKSYS_PHP_JSON' => 'Module PHP-JSON',
  'LBL_CHECKSYS_PHP_OK' => 'OK (ver ',
  'LBL_CHECKSYS_PHPVER' => 'Version PHP ',
  'LBL_CHECKSYS_RECHECK' => 'Re-vérifier',
  'LBL_CHECKSYS_SAFE_MODE' => 'La fonction PHP Safe Mode est désactivée',
  'LBL_CHECKSYS_SESSION' => 'Ecriture possible dans chemin de sauvegarde des sessions (',
  'LBL_CHECKSYS_STATUS' => 'Statut',
  'LBL_CHECKSYS_TITLE' => 'Vérification du System Accepté',
  'LBL_CHECKSYS_VER' => 'Trouvé: ( ver ',
  'LBL_CHECKSYS_XML' => 'Parsage du XML',
  'LBL_CHECKSYS_ZLIB' => 'Module ZLIB Compression',
  'LBL_CLOSE' => 'Fermer',
  'LBL_CONFIRM_BE_CREATED' => 'à créer',
  'LBL_CONFIRM_DB_TYPE' => 'Type base de données',
  'LBL_CONFIRM_DIRECTIONS' => 'Veuillez confirmer les paramètres ci-dessous. Si vous voulez modifier une des valeur, cliquez sur "précédent". Sinon cliquez sur "suivant" pour commencer l\'installation.',
  'LBL_CONFIRM_LICENSE_TITLE' => 'Information concernant la License',
  'LBL_CONFIRM_NOT' => 'pas',
  'LBL_CONFIRM_TITLE' => 'Confirmer les paramètres',
  'LBL_CONFIRM_WILL' => 'va',
  'LBL_DBCONF_CREATE_DB' => 'Créer la base de données',
  'LBL_DBCONF_CREATE_USER' => 'Créer Utilisateur',
  'LBL_DBCONF_DB_DROP_CREATE_WARN' => 'AVERTISSEMENT: Toutes les données de Sugar seront effacées<br> si cette case est coché.',
  'LBL_DBCONF_DB_DROP_CREATE' => 'Effacer et recréer les tables Sugar existantes ?',
  'LBL_DBCONF_DB_NAME' => 'Nom de la base de données',
  'LBL_DBCONF_DB_PASSWORD' => 'Mot de passe de base de données',
  'LBL_DBCONF_DB_PASSWORD2' => 'Re-saisissez votre mot de passe pour la base de données',
  'LBL_DBCONF_DB_USER' => 'Utilisateur de la base de données',
  'LBL_DBCONF_DEMO_DATA' => 'Remplir la base de données avec des données de Démo?',
  'LBL_DBCONF_HOST_NAME' => 'Nom de l\'Hôte (HostName)',
  'LBL_DBCONF_INSTRUCTIONS' => 'Veuillez saisir les infos de configuration de la base de données. Si vous n\'êtes pas sûr des champs à renseigner, nous vous conseillons d\'utiliser les valeurs par défaut.',
  'LBL_DBCONF_MB_DEMO_DATA' => 'Utiliser du texte multi-octet dans les données de démo?',
  'LBL_DBCONF_PRIV_PASS' => 'Mot de passe de l\'utilisateur privilègié de la base de données',
  'LBL_DBCONF_PRIV_USER_2' => 'Le compte utilisateur de la base de données est celui d\'un utilisateur privilègié?',
  'LBL_DBCONF_PRIV_USER_DIRECTIONS' => 'Cet utilisateur privilègié doit avoir les bonnes autorisations pour créer une base de données, créer/supprimer tables, créer des utilisateurs. Cet utilsateur privilègié va être utilisé pour exécuter ces tâche pendant le processus d\'installation. Vous pouvez aussi utiliser le même utilisateur que ci-dessus si cet utilisateur a des privilèges suffisants.',
  'LBL_DBCONF_PRIV_USER' => 'Identifiant de l\'utilisateur pivilègié de la base de données',
  'LBL_DBCONF_TITLE' => 'Configuration de la base de données',
  'LBL_DISABLED_DESCRIPTION_2' => 'Après avoir fait cette modification, vous pouvez cliquer sur le bouton "Démarrer" ci-dessous pour lancer l\'installation.  <i>Une fois l\'installation terminée, vous pouvez modifier la valeur de  \'installer_locked\' à \'true\'.</i>',
  'LBL_DISABLED_DESCRIPTION' => 'Le processus d\'installation a été lancé déjà une fois. Pour des mesures de sécurité, lon lancement une seconde fois a été désactivé. Si vous êtes absolument certain que vous voulez le lancer encore une fois, veuillez trouver (ou ajouter) dans votre fichier config.php la variable suivante:  \'installer_locked\' et renseignez sa valeur à \'false\'.  La ligne doit être comme celle-ci:',
  'LBL_DISABLED_HELP_1' => 'Pour avoir de l\'aide sur installation, veuillez vous rendre sur SugarCRM',
  'LBL_DISABLED_HELP_2' => 'forums d\'aide',
  'LBL_DISABLED_TITLE_2' => 'L\'installation SugarCRM a été désactivée',
  'LBL_DISABLED_TITLE' => 'Installation SugarCRM désactivée',
  'LBL_HELP' => 'Aide',
  'LBL_LANG_1' => 'Si vous voulez installer un autre pack de langue autre que celui par défaut de US-English, vous pouvez le faire ci-dessous. Sinon cliquez sur "Suivant" pour paser à l\'étape suivante.',
  'LBL_LANG_BUTTON_COMMIT' => 'Installer',
  'LBL_LANG_BUTTON_REMOVE' => 'Supprimer',
  'LBL_LANG_BUTTON_UNINSTALL' => 'Désinstaller',
  'LBL_LANG_BUTTON_UPLOAD' => 'Upload',
  'LBL_LANG_NO_PACKS' => 'aucun',
  'LBL_LANG_PACK_INSTALLED' => 'Les packs de langue suivants ont été installé: ',
  'LBL_LANG_PACK_READY' => 'Les packs de langue suivants sont prêts à être installés: ',
  'LBL_LANG_SUCCESS' => 'Le pack de langue à été uploadé avec succès.',
  'LBL_LANG_TITLE' => 'Pack de Langue ',
  'LBL_LANG_UPLOAD' => 'Uploader un pack de langue',
  'LBL_LICENSE_ACCEPTANCE' => 'Acceptation de la licence',
  'LBL_LICENSE_DIRECTIONS' => 'Si vous avez votre information de licence, veuillez la renseigner dans les champs ci-dessous.',
  'LBL_LICENSE_DOWNLOAD_KEY' => 'Télecharger la clé',
  'LBL_LICENSE_EXPIRY' => 'Date d\'Expiration',
  'LBL_LICENSE_I_ACCEPT' => 'J\'Accepte',
  'LBL_LICENSE_NUM_USERS' => 'Nombre d\'utilisateurs',
  'LBL_LICENSE_OC_DIRECTIONS' => 'Veuillez sasir le nombre de clients déconnectés achetés.',
  'LBL_LICENSE_OC_NUM' => 'Nombre de licences de clients déconnectés',
  'LBL_LICENSE_OC' => 'Licences de clients déconnectés',
  'LBL_LICENSE_PRINTABLE' => ' Apperçu avant impression',
  'LBL_LICENSE_TITLE_2' => 'License SugarCRM ',
  'LBL_LICENSE_TITLE' => 'Information License ',
  'LBL_LICENSE_USERS' => 'Utilisateurs autorisés',
  'LBL_LOCALE_CURRENCY' => 'Paramètres de la devise',
  'LBL_LOCALE_CURR_DEFAULT' => 'Devise par défaut',
  'LBL_LOCALE_CURR_SYMBOL' => 'Symbole de la devise',
  'LBL_LOCALE_CURR_ISO' => 'Code de la devise (ISO 4217)',
  'LBL_LOCALE_CURR_1000S' => 'Séparateur des milliers',
  'LBL_LOCALE_CURR_DECIMAL' => 'Séparateur décimal',
  'LBL_LOCALE_CURR_EXAMPLE' => 'Exemple',
  'LBL_LOCALE_CURR_SIG_DIGITS' => 'Chiffres significatifs',
  'LBL_LOCALE_DATEF' => 'Format de date par défaut',
  'LBL_LOCALE_DESC' => 'Ajustez votre paramètrage des variables Locales ci-dessous.',
  'LBL_LOCALE_EXPORT' => 'Jeux de caractères pour les exports (pour les exports de vCard et CSV)',
  'LBL_LOCALE_EXPORT_DELIMITER' => 'Export avec délimiteur (.csv)',
  'LBL_LOCALE_EXPORT_TITLE' => "Paramètrage d'export",
  'LBL_LOCALE_LANG' => 'Langue par défaut',
  'LBL_LOCALE_NAMEF' => 'Format du nom par défaut',
  'LBL_LOCALE_NAMEF_DESC' => '"s" Civilité<br />"f" Prénom<br />"l" Nom',
  'LBL_LOCALE_NAME_FIRST' => 'David',
  'LBL_LOCALE_NAME_LAST' => 'Livingstone',
  'LBL_LOCALE_NAME_SALUTATION' => 'Dr.',
  'LBL_LOCALE_TIMEF' => "Format de l'heure par défaut",
  'LBL_LOCALE_TITLE' => 'Paramètrages des variables Locales',
  'LBL_LOCALE_UI' => 'Interface Utilisateur',
  'LBL_ML_ACTION' => 'Action',
  'LBL_ML_DESCRIPTION' => 'Description',
  'LBL_ML_INSTALLED' => 'Date d\'Installation',
  'LBL_ML_NAME' => 'Nom',
  'LBL_ML_PUBLISHED' => 'Date Publication',
  'LBL_ML_TYPE' => 'Type',
  'LBL_ML_UNINSTALLABLE' => 'Impossible de désinstaller',
  'LBL_ML_VERSION' => 'Version',
  'LBL_MSSQL' => 'MSSQL Server',
  'LBL_MYSQL' => 'MySQL',
  'LBL_NEXT' => 'Suivant',
  'LBL_NO' => 'Non',
  'LBL_ORACLE' => 'Oracle',
  'LBL_PERFORM_ADMIN_PASSWORD' => 'Définir le mot de passe pour l\'admin du site',
  'LBL_PERFORM_AUDIT_TABLE' => 'auditer la table ?',
  'LBL_PERFORM_CONFIG_PHP' => 'Création de fichier de configuration Sugar',
  'LBL_PERFORM_CREATE_DB_1' => 'Création de la base de données ',
  'LBL_PERFORM_CREATE_DB_2' => ' ok ',
  'LBL_PERFORM_CREATE_DB_USER' => 'Création de l\'utilisateur et mot de passe de la base de données...',
  'LBL_PERFORM_CREATE_DEFAULT' => 'Création de données Sugar par défaut',
  'LBL_PERFORM_CREATE_LOCALHOST' => 'Création de l\'utilisateur et mot de passe pour le localhost...',
  'LBL_PERFORM_CREATE_RELATIONSHIPS' => 'Création des tables relationnelles Sugar',
  'LBL_PERFORM_CREATING' => 'création / ',
  'LBL_PERFORM_DEFAULT_REPORTS' => 'Création des rapports par défaut',
  'LBL_PERFORM_DEFAULT_SCHEDULER' => 'Création de tâches du planificateur par défaut',
  'LBL_PERFORM_DEFAULT_SETTINGS' => 'Insertion des paramètres par défaut',
  'LBL_PERFORM_DEFAULT_USERS' => 'Création des utilisateur par défaut',
  'LBL_PERFORM_DEMO_DATA' => 'Remplir la base de données avec les données de démo  (ceci peut prendre un peu de temps)...',
  'LBL_PERFORM_DONE' => 'fait<br>',
  'LBL_PERFORM_DROPPING' => 'suppression / ',
  'LBL_PERFORM_FINISH' => 'Finir',
  'LBL_PERFORM_LICENSE_SETTINGS' => 'Mise à jour de l\'information de license',
  'LBL_PERFORM_OUTRO_1' => 'Le paramètrage de Sugar ',
  'LBL_PERFORM_OUTRO_2' => ' est maintenant términé.',
  'LBL_PERFORM_OUTRO_3' => 'Temps total: ',
  'LBL_PERFORM_OUTRO_4' => ' secondes.',
  'LBL_PERFORM_OUTRO_5' => 'Mémoire utilisée Approx.: ',
  'LBL_PERFORM_OUTRO_6' => ' octets.',
  'LBL_PERFORM_OUTRO_7' => 'Votre système est maintenant installé et configuré pour être utilisé.',
  'LBL_PERFORM_REL_META' => 'relation meta ... ',
  'LBL_PERFORM_SUCCESS' => 'Succès !',
  'LBL_PERFORM_TABLES' => 'Création de tables de l\'application Sugar, tables d\'audit, et relations des metadonnées...',
  'LBL_PERFORM_TITLE' => 'Paramètrer',
  'LBL_PRINT' => 'Imprimer',
  'LBL_REG_CONF_1' => 'SVP veuillez prendre un instant pour vous enregistrer avec sugarCRM. En nous laissant savoir comment votre société compte utilisr SugarCRM, nous pouvons vous garantir de vous fournir toujours la bonne application pour vos besoins de business.',
  'LBL_REG_CONF_2' => 'Votre nom et votre adresse email sont les seuls champs requis pour l\'enregistrement. Tous les autrs champs sont optionnels, mais nous aiderons beaucoup. Nous ne revendons pas, ni ne louons, ni ne partageons, ni ne redistribuons d\'une quelconque façon les informations transmises ici',
  'LBL_REG_CONF_3' => 'Merci de vous être enregistré. Cliquez sur le bouton Terminer pour vous logguer sur SugarCRM. Vous aurez besoin de vous logguer pour la première fois avec l\'utilisateur "admin" et le mot de passe renseigné lors de la 2ème étape.',
  'LBL_REG_TITLE' => 'Enregistrement',
  'LBL_REQUIRED' => '* Champs requis',
  'LBL_SITECFG_ADMIN_PASS_2' => 'Re-saisissez le mote de passe <em>Admin</em> de Sugar',
  'LBL_SITECFG_ADMIN_PASS_WARN' => 'ATTENTION: Vous allez remplacer le mot de passe admin de toute installation précédente.',
  'LBL_SITECFG_ADMIN_PASS' => 'Mot de passe <em>Admin</em> de Sugar',
  'LBL_SITECFG_APP_ID' => 'ID Application',
  'LBL_SITECFG_CUSTOM_ID_DIRECTIONS' => 'Ecraser l\'ID d\'Application autogénéré qui empêche les sessions d\'une instance de sugar d\'être utilisé sur une autre instance. Si vous avez un cluster d\'installation de Sugar, elles doivent toute partager le même ID d\'Application',
  'LBL_SITECFG_CUSTOM_ID' => 'Fournissez votre propre ID d\'Application',
  'LBL_SITECFG_CUSTOM_LOG_DIRECTIONS' => 'Ecraser le répertoire par défaut ou résident les Logs de Sugar. Aucun problème d\'où vous aller mettre le fichier de Logs, l\'accès à celui-ci par un navigateur sera limité par une redirection du .htaccess ',
  'LBL_SITECFG_CUSTOM_LOG' => 'Utilisez un répertoire personnalisé pour les Logs',
  'LBL_SITECFG_CUSTOM_SESSION_DIRECTIONS' => 'Fournissez un répertoire sécurisé pour enregistrer les informations de session et empêcher les données de sessions d\'être vulnérables sur les serveurs mutualisés.',
  'LBL_SITECFG_CUSTOM_SESSION' => 'Utiliser un répertoire de session personnalisé pour Sugar',
  'LBL_SITECFG_DIRECTIONS' => 'Veuillez saisir les informations de confiuration de votre site. Si vous n\'êtes pas sûr des champs, nous vous suggérons d\'utiliser les valeurs par défaut.',
  'LBL_SITECFG_FIX_ERRORS' => 'Veuillez corriger les erreurs suivant avant de continuer:',
  'LBL_SITECFG_LOG_DIR' => 'Répertoire de Logs',
  'LBL_SITECFG_SESSION_PATH' => 'Chemin vers le répertoire de Session<br>(il doit être possible d\'y écrire)',
  'LBL_SITECFG_SITE_SECURITY' => 'Sécurité Avancée du site',
  'LBL_SITECFG_SUGAR_UP_DIRECTIONS' => 'Quand vous activez cette option votre système va envoyer périodiquement des infomations statistiques anonymes sur votre installation qui vont nous aider à comprendre les modes d\'utilisation et améliorer le produit.  En retour de ces informations, les administrateurs vont recevoir les notifications de mise à jour quand de nouvelles versions sont disponibles.',
  'LBL_SITECFG_SUGAR_UP' => 'Activer les Mises à Jour Sugar?',
  'LBL_SITECFG_SUGAR_UPDATES' => 'Configuration des Mises à Jour',
  'LBL_SITECFG_TITLE' => 'Configuration du site',
  'LBL_SITECFG_URL' => 'URL de l\'instance Sugar',
  'LBL_SITECFG_USE_DEFAULTS' => 'Utilisation des param par défaut?',
  'LBL_SITECFG_ANONSTATS' => 'Envoyer des statistiques complètement anonymes ?',
  'LBL_SITECFG_ANONSTATS_DIRECTIONS' => "Si vous cochez cette otion Sugar enverra des statistiques d'utilisation anonymes à SugarCRM Inc. chaque fois que votre système vérifiera la présence de nouvelle version. Ces informations nous permettrons de mieux comprendre comment vous utilisez l'application et nous aiderons à orienter les améliorations du produit.",
  'LBL_START' => 'Démarrer',
  'LBL_STEP' => 'Etape',
  'LBL_TITLE_WELCOME' => 'Bienvenue sur SugarCRM ',
  'LBL_WELCOME_1' => 'Cet installeur crée les tables de la base de données SugarCRM et enregistre les paramètres de configuration nécessaire pour démarrer. Le processus d\'installation ne devrait pas dépasser une dizaine de minutes.',
  'LBL_WELCOME_2' => 'Pour obtenir de l\'aide sur l\'installation, veuillez vous rendre sur les forums <a href="http://www.sugarcrm.com/forums/" target="_blank">SugarCRM</a> ou .<a href="http://forums.crm-france.com/" target="_blank">CRM-France</a>',
  'LBL_WELCOME_CHOOSE_LANGUAGE' => 'Sélectionnez votre langue',
  'LBL_WELCOME_SETUP_WIZARD' => 'Assistant d\'installation',
  'LBL_WELCOME_TITLE_WELCOME' => 'Bienvenue sur SugarCRM ',
  'LBL_WELCOME_TITLE' => 'Assistant de configuration SugarCRM',
  'LBL_WIZARD_TITLE' => 'Assistant de configuration SugarCRM: Etape ',
  'LBL_YES' => 'Oui',
  'LBL_OOTB_WORKFLOW' => 'Réaliser les tâches de Workflow',
  'LBL_OOTB_REPORTS' => 'Lancer les tâches planifiées de génération de rapports',
  'LBL_OOTB_IE' => 'Vérifier les emails entrants',
  'LBL_OOTB_BOUNCE' => 'Lancer les processus nocturnes des campagnes emails bouncées',
  'LBL_OOTB_CAMPAIGN' => 'Lancer les processus nocturnes des campagnes emails en masse',
  'LBL_OOTB_PRUNE' => 'Nettoyage de la base le 1er du mois',
  'LBL_OC_INSTAL_ADMIN_NAME' => 'Identifiant Administrateur',
  'LBL_OC_INSTAL_SERVER_URL' => 'URL du Serveur Sugar ',
	// OOTB Scheduler Job Names:
);


?>
