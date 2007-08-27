-- phpMyAdmin SQL Dump
-- version 2.6.1
-- http://www.phpmyadmin.net
-- 
-- Хост: localhost
-- Време на генериране:  август 2007 в 17:54
-- Версия на сървъра: 4.1.9
-- Версия на PHP: 5.0.2
-- 
-- БД: `alphaprint`
-- 

-- --------------------------------------------------------

-- 
-- Структура на таблица `accounts`
-- 

DROP TABLE IF EXISTS `accounts`;
CREATE TABLE `accounts` (
  `id` varchar(36) NOT NULL default '',
  `date_entered` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_user_id` varchar(36) NOT NULL default '',
  `assigned_user_id` varchar(36) default NULL,
  `created_by` varchar(36) default NULL,
  `name` varchar(150) default NULL,
  `parent_id` varchar(36) default NULL,
  `account_type` varchar(25) default NULL,
  `industry` varchar(25) default NULL,
  `annual_revenue` varchar(25) default NULL,
  `phone_fax` varchar(25) default NULL,
  `billing_address_street` varchar(150) default NULL,
  `billing_address_city` varchar(100) default NULL,
  `billing_address_state` varchar(100) default NULL,
  `billing_address_postalcode` varchar(20) default NULL,
  `billing_address_country` varchar(100) default NULL,
  `description` text,
  `rating` varchar(25) default NULL,
  `phone_office` varchar(25) default NULL,
  `phone_alternate` varchar(25) default NULL,
  `email1` varchar(100) default NULL,
  `email2` varchar(100) default NULL,
  `website` varchar(255) default NULL,
  `ownership` varchar(100) default NULL,
  `employees` varchar(10) default NULL,
  `sic_code` varchar(10) default NULL,
  `ticker_symbol` varchar(10) default NULL,
  `shipping_address_street` varchar(150) default NULL,
  `shipping_address_city` varchar(100) default NULL,
  `shipping_address_state` varchar(100) default NULL,
  `shipping_address_postalcode` varchar(20) default NULL,
  `shipping_address_country` varchar(100) default NULL,
  `deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_accnt_id_del` (`id`,`deleted`),
  KEY `idx_accnt_assigned_del` (`deleted`,`assigned_user_id`),
  KEY `idx_accnt_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `accounts`
-- 

INSERT INTO `accounts` VALUES ('745993fd-6032-8635-ce12-459e75c3c42e', '2007-01-05 15:58:45', '2007-02-05 13:17:40', '1', '177bd6bb-665d-cc61-4d82-45ab422290d3', '1', '', 'af1043aa-69c5-a0ed-61ff-45ab42c669a3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `accounts` VALUES ('87eb4439-e063-d42d-85d2-45ab3f54ee80', '2007-01-15 08:47:02', '2007-01-15 09:09:07', '177bd6bb-665d-cc61-4d82-45ab422290d3', '177bd6bb-665d-cc61-4d82-45ab422290d3', '1', 'Гурме ООД', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `accounts` VALUES ('41290ec9-0696-8e96-b333-45ab3fe75fc8', '2007-01-15 08:48:06', '2007-01-15 09:09:07', '177bd6bb-665d-cc61-4d82-45ab422290d3', '177bd6bb-665d-cc61-4d82-45ab422290d3', '1', 'РА C&M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `accounts` VALUES ('cc3d717f-3056-8e75-5d00-45ab3ffd89fa', '2007-01-15 08:48:46', '2007-02-05 13:17:40', '177bd6bb-665d-cc61-4d82-45ab422290d3', '177bd6bb-665d-cc61-4d82-45ab422290d3', '1', 'Р', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `accounts` VALUES ('68c2d0ec-5734-85e8-7f1b-45ab417af167', '2007-01-15 08:54:17', '2007-01-15 09:09:07', '177bd6bb-665d-cc61-4d82-45ab422290d3', '177bd6bb-665d-cc61-4d82-45ab422290d3', '1', 'КРеклама', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `accounts` VALUES ('79f80fa8-f78b-0383-1800-45ab4108272a', '2007-01-15 08:55:06', '2007-01-15 09:09:07', '177bd6bb-665d-cc61-4d82-45ab422290d3', '177bd6bb-665d-cc61-4d82-45ab422290d3', '1', 'Техноарт', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `accounts` VALUES ('b3702147-c886-ba77-abb3-45ab41ab1dc3', '2007-01-15 08:55:36', '2007-01-15 09:09:07', '177bd6bb-665d-cc61-4d82-45ab422290d3', '177bd6bb-665d-cc61-4d82-45ab422290d3', '1', 'Миранда', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `accounts` VALUES ('eda6787a-dc2f-d683-59a9-45ab41cdba8d', '2007-01-15 08:56:11', '2007-01-15 09:09:07', '177bd6bb-665d-cc61-4d82-45ab422290d3', '177bd6bb-665d-cc61-4d82-45ab422290d3', '1', 'Format Vision', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `accounts` VALUES ('43b62b7b-6778-3c49-fefd-45ab41ceed27', '2007-01-15 08:56:57', '2007-02-05 13:17:40', '177bd6bb-665d-cc61-4d82-45ab422290d3', '177bd6bb-665d-cc61-4d82-45ab422290d3', '1', 'Г', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `accounts` VALUES ('77060ccf-3bbb-3ef5-749d-45ab41a67f24', '2007-01-15 08:57:17', '2007-01-15 09:09:08', '177bd6bb-665d-cc61-4d82-45ab422290d3', '177bd6bb-665d-cc61-4d82-45ab422290d3', '1', 'Стефан Власев', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `accounts` VALUES ('af1043aa-69c5-a0ed-61ff-45ab42c669a3', '2007-01-15 08:57:43', '2007-01-15 09:09:08', '177bd6bb-665d-cc61-4d82-45ab422290d3', '177bd6bb-665d-cc61-4d82-45ab422290d3', '1', 'Артком', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `accounts` VALUES ('1270f950-cd7b-fbfc-d0ae-45cf3dad0b78', '2007-02-11 16:00:19', '2007-02-11 16:00:19', '177bd6bb-665d-cc61-4d82-45ab422290d3', '177bd6bb-665d-cc61-4d82-45ab422290d3', '177bd6bb-665d-cc61-4d82-45ab422290d3', 'Икономедиа', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `accounts` VALUES ('3469d46c-01d4-3d22-343e-46c940a85ca0', '2007-08-20 07:19:03', '2007-08-20 07:19:03', '1', '1', '1', 'Марио Николов', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

-- 
-- Структура на таблица `accounts_audit`
-- 

DROP TABLE IF EXISTS `accounts_audit`;
CREATE TABLE `accounts_audit` (
  `id` varchar(36) NOT NULL default '',
  `parent_id` varchar(36) NOT NULL default '',
  `date_created` datetime default NULL,
  `created_by` varchar(36) default NULL,
  `field_name` varchar(100) default NULL,
  `data_type` varchar(100) default NULL,
  `before_value_string` varchar(255) default NULL,
  `after_value_string` varchar(255) default NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `accounts_audit`
-- 

INSERT INTO `accounts_audit` VALUES ('6489953b-7f3f-52ce-ae46-45a7945c68d9', '745993fd-6032-8635-ce12-459e75c3c42e', '2007-01-12 14:00:19', '1', 'name', 'name', 'Account1', '', NULL, NULL);
INSERT INTO `accounts_audit` VALUES ('134ade74-ea26-3ad7-e2fc-45ab4323705d', '745993fd-6032-8635-ce12-459e75c3c42e', '2007-01-15 09:03:27', '177bd6bb-665d-cc61-4d82-45ab422290d3', 'assigned_user_id', 'assigned_user_name', '1', '177bd6bb-665d-cc61-4d82-45ab422290d3', NULL, NULL);
INSERT INTO `accounts_audit` VALUES ('cf09e380-658a-4aeb-aa10-45ab448c0fb2', '87eb4439-e063-d42d-85d2-45ab3f54ee80', '2007-01-15 09:09:07', '177bd6bb-665d-cc61-4d82-45ab422290d3', 'assigned_user_id', 'assigned_user_name', '1', '177bd6bb-665d-cc61-4d82-45ab422290d3', NULL, NULL);
INSERT INTO `accounts_audit` VALUES ('dcf9d8ed-6609-d019-75f0-45ab44286552', '41290ec9-0696-8e96-b333-45ab3fe75fc8', '2007-01-15 09:09:07', '177bd6bb-665d-cc61-4d82-45ab422290d3', 'assigned_user_id', 'assigned_user_name', '1', '177bd6bb-665d-cc61-4d82-45ab422290d3', NULL, NULL);
INSERT INTO `accounts_audit` VALUES ('e1e8ae4f-ec8c-7cf8-2f9f-45ab44fab64c', 'cc3d717f-3056-8e75-5d00-45ab3ffd89fa', '2007-01-15 09:09:07', '177bd6bb-665d-cc61-4d82-45ab422290d3', 'assigned_user_id', 'assigned_user_name', '1', '177bd6bb-665d-cc61-4d82-45ab422290d3', NULL, NULL);
INSERT INTO `accounts_audit` VALUES ('e6c1bfb0-58f0-9f5c-5b76-45ab443810c2', '68c2d0ec-5734-85e8-7f1b-45ab417af167', '2007-01-15 09:09:07', '177bd6bb-665d-cc61-4d82-45ab422290d3', 'assigned_user_id', 'assigned_user_name', '1', '177bd6bb-665d-cc61-4d82-45ab422290d3', NULL, NULL);
INSERT INTO `accounts_audit` VALUES ('eb8f34f7-6f20-a8b5-352e-45ab44550bda', '79f80fa8-f78b-0383-1800-45ab4108272a', '2007-01-15 09:09:07', '177bd6bb-665d-cc61-4d82-45ab422290d3', 'assigned_user_id', 'assigned_user_name', '1', '177bd6bb-665d-cc61-4d82-45ab422290d3', NULL, NULL);
INSERT INTO `accounts_audit` VALUES ('f05b4ea1-98fe-9b87-28be-45ab4423026d', 'b3702147-c886-ba77-abb3-45ab41ab1dc3', '2007-01-15 09:09:07', '177bd6bb-665d-cc61-4d82-45ab422290d3', 'assigned_user_id', 'assigned_user_name', '1', '177bd6bb-665d-cc61-4d82-45ab422290d3', NULL, NULL);
INSERT INTO `accounts_audit` VALUES ('11320593-bc48-0b55-fa29-45ab444b1705', 'eda6787a-dc2f-d683-59a9-45ab41cdba8d', '2007-01-15 09:09:08', '177bd6bb-665d-cc61-4d82-45ab422290d3', 'assigned_user_id', 'assigned_user_name', '1', '177bd6bb-665d-cc61-4d82-45ab422290d3', NULL, NULL);
INSERT INTO `accounts_audit` VALUES ('5ff2077f-1263-dadc-dcf6-45ab44005e99', '43b62b7b-6778-3c49-fefd-45ab41ceed27', '2007-01-15 09:09:08', '177bd6bb-665d-cc61-4d82-45ab422290d3', 'assigned_user_id', 'assigned_user_name', '1', '177bd6bb-665d-cc61-4d82-45ab422290d3', NULL, NULL);
INSERT INTO `accounts_audit` VALUES ('aefc0825-6259-414d-d298-45ab44b6eaca', '77060ccf-3bbb-3ef5-749d-45ab41a67f24', '2007-01-15 09:09:08', '177bd6bb-665d-cc61-4d82-45ab422290d3', 'assigned_user_id', 'assigned_user_name', '1', '177bd6bb-665d-cc61-4d82-45ab422290d3', NULL, NULL);
INSERT INTO `accounts_audit` VALUES ('fd48074a-0298-7736-8b67-45ab44e18e89', 'af1043aa-69c5-a0ed-61ff-45ab42c669a3', '2007-01-15 09:09:08', '177bd6bb-665d-cc61-4d82-45ab422290d3', 'assigned_user_id', 'assigned_user_name', '1', '177bd6bb-665d-cc61-4d82-45ab422290d3', NULL, NULL);
INSERT INTO `accounts_audit` VALUES ('5a0108c8-fcf5-7e2a-717a-45b8c9a1906b', '745993fd-6032-8635-ce12-459e75c3c42e', '2007-01-25 15:14:35', '1', 'parent_id', 'id', '', 'af1043aa-69c5-a0ed-61ff-45ab42c669a3', NULL, NULL);

-- --------------------------------------------------------

-- 
-- Структура на таблица `accounts_bugs`
-- 

DROP TABLE IF EXISTS `accounts_bugs`;
CREATE TABLE `accounts_bugs` (
  `id` varchar(36) NOT NULL default '',
  `account_id` varchar(36) default NULL,
  `bug_id` varchar(36) default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_acc_bug_acc` (`account_id`),
  KEY `idx_acc_bug_bug` (`bug_id`),
  KEY `idx_account_bug` (`account_id`,`bug_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `accounts_bugs`
-- 


-- --------------------------------------------------------

-- 
-- Структура на таблица `accounts_cases`
-- 

DROP TABLE IF EXISTS `accounts_cases`;
CREATE TABLE `accounts_cases` (
  `id` varchar(36) NOT NULL default '',
  `account_id` varchar(36) default NULL,
  `case_id` varchar(36) default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_acc_case_acc` (`account_id`),
  KEY `idx_acc_acc_case` (`case_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `accounts_cases`
-- 


-- --------------------------------------------------------

-- 
-- Структура на таблица `accounts_contacts`
-- 

DROP TABLE IF EXISTS `accounts_contacts`;
CREATE TABLE `accounts_contacts` (
  `id` varchar(36) NOT NULL default '',
  `contact_id` varchar(36) default NULL,
  `account_id` varchar(36) default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_acc_cont_acc` (`account_id`),
  KEY `idx_acc_cont_cont` (`contact_id`),
  KEY `idx_account_contact` (`account_id`,`contact_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `accounts_contacts`
-- 

INSERT INTO `accounts_contacts` VALUES ('381ec686-270a-dbcf-0287-45a795eeacad', '2e3db207-5bf8-ee55-38ef-45a7954f2bc8', '745993fd-6032-8635-ce12-459e75c3c42e', '2007-02-05 13:17:40', 1);
INSERT INTO `accounts_contacts` VALUES ('99834922-8b62-b2c4-81d9-45abe30b4cca', '91175165-83bb-7662-554d-45abe391403e', 'af1043aa-69c5-a0ed-61ff-45ab42c669a3', '2007-01-16 15:38:09', 1);
INSERT INTO `accounts_contacts` VALUES ('431a04fb-606c-320f-2f7b-45d194481875', '1ae804e8-06a5-ed75-94d3-45d194878ef8', 'af1043aa-69c5-a0ed-61ff-45ab42c669a3', '2007-07-18 13:00:16', 0);

-- --------------------------------------------------------

-- 
-- Структура на таблица `accounts_opportunities`
-- 

DROP TABLE IF EXISTS `accounts_opportunities`;
CREATE TABLE `accounts_opportunities` (
  `id` varchar(36) NOT NULL default '',
  `opportunity_id` varchar(36) default NULL,
  `account_id` varchar(36) default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_acc_opp_acc` (`account_id`),
  KEY `idx_acc_opp_opp` (`opportunity_id`),
  KEY `idx_a_o_opp_acc_del` (`opportunity_id`,`account_id`,`deleted`),
  KEY `idx_account_opportunity` (`account_id`,`opportunity_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `accounts_opportunities`
-- 

INSERT INTO `accounts_opportunities` VALUES ('26b98e67-4e51-d307-efcd-459e764f830f', '1ba41617-5d04-6bbb-c382-459e76c8fd2b', '745993fd-6032-8635-ce12-459e75c3c42e', '2007-02-05 13:17:40', 1);
INSERT INTO `accounts_opportunities` VALUES ('85a37160-15c1-8a4c-fe87-45cc662191e6', '77fdef30-9187-3883-5f56-45cc66e2f8c0', 'af1043aa-69c5-a0ed-61ff-45ab42c669a3', '2007-02-09 13:22:23', 0);
INSERT INTO `accounts_opportunities` VALUES ('7566e03f-557c-be13-c4e1-45cc6c7a4743', '6cc6e552-00f5-565b-ceb8-45cc6c4f57e8', 'af1043aa-69c5-a0ed-61ff-45ab42c669a3', '2007-02-09 12:42:35', 0);
INSERT INTO `accounts_opportunities` VALUES ('3ed5ba9e-6719-4182-1766-45cc6cd44c00', '367534ae-0dc7-f9c6-0232-45cc6cd82490', 'af1043aa-69c5-a0ed-61ff-45ab42c669a3', '2007-02-09 12:43:08', 0);
INSERT INTO `accounts_opportunities` VALUES ('18941867-9b2b-0cec-b1d5-45cf267a2fb9', 'af750029-95f9-b2bd-4051-45cf2670e4af', '87eb4439-e063-d42d-85d2-45ab3f54ee80', '2007-02-11 14:22:57', 0);
INSERT INTO `accounts_opportunities` VALUES ('dce79e03-cdca-4caa-6cf2-46cec6af2685', 'c4085e78-f9a8-91e9-8e5c-46cec6b8c370', 'af1043aa-69c5-a0ed-61ff-45ab42c669a3', '2007-08-24 11:53:45', 0);

-- --------------------------------------------------------

-- 
-- Структура на таблица `acl_actions`
-- 

DROP TABLE IF EXISTS `acl_actions`;
CREATE TABLE `acl_actions` (
  `id` varchar(36) NOT NULL default '',
  `date_entered` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_user_id` varchar(36) NOT NULL default '',
  `created_by` varchar(36) default NULL,
  `name` varchar(150) default NULL,
  `category` varchar(100) default NULL,
  `acltype` varchar(100) default NULL,
  `aclaccess` int(3) default NULL,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_aclaction_id_del` (`id`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `acl_actions`
-- 

INSERT INTO `acl_actions` VALUES ('172d9f2b-9456-85b8-9151-458d3eebea53', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'access', 'Leads', 'module', 89, 0);
INSERT INTO `acl_actions` VALUES ('17e40641-51d6-8117-ad98-458d3e6c5793', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'view', 'Leads', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('18b41bca-7701-0b5a-0e54-458d3ee9bae7', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'list', 'Leads', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('1968eedf-ca88-37e4-5895-458d3e46e1d6', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'edit', 'Leads', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('1a2f10b3-8f0f-0770-8537-458d3e97c617', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'delete', 'Leads', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('1ae25447-e891-e79a-c90d-458d3ed5fd74', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'import', 'Leads', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('1b960551-7ab1-8bd3-8141-458d3e780a72', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'export', 'Leads', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('3632f6dc-1bf9-9db0-2e60-458d3e0f8fe0', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'access', 'Contacts', 'module', 89, 0);
INSERT INTO `acl_actions` VALUES ('36dabba9-44af-f993-7d24-458d3ea43de1', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'view', 'Contacts', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('3801a6f7-5a23-8d3b-5d2d-458d3e367df5', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'list', 'Contacts', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('38b03879-7f88-6705-acfb-458d3e090895', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'edit', 'Contacts', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('3956c37c-c6d9-8eae-442d-458d3e342306', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'delete', 'Contacts', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('3a020d56-8817-e5dd-081c-458d3ed9cf73', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'import', 'Contacts', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('3b6c88bc-d553-72c1-44ab-458d3eeee72a', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'export', 'Contacts', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('5645804c-d438-b730-90ab-458d3e9f9bf5', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'access', 'Accounts', 'module', 89, 0);
INSERT INTO `acl_actions` VALUES ('56f57663-3b52-8a72-e6d0-458d3e1cabfb', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'view', 'Accounts', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('579fb85c-dd99-a16f-fdbd-458d3eca30a3', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'list', 'Accounts', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('584f4500-ae4f-6b8e-4a39-458d3e34a9d4', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'edit', 'Accounts', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('58f2f74e-a8a4-d414-0b22-458d3ef32b9a', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'delete', 'Accounts', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('59bff8b3-8fb3-16ea-cba2-458d3e111acc', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'import', 'Accounts', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('5a6ad064-d7ab-cd85-a402-458d3ed172b7', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'export', 'Accounts', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('72e8863e-98ea-3b7c-30f7-458d3e6eb084', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'access', 'Opportunities', 'module', 89, 0);
INSERT INTO `acl_actions` VALUES ('739a8ee2-ee47-8adc-ced4-458d3ec29092', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'view', 'Opportunities', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('745e332a-f736-1844-a985-458d3e708a1e', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'list', 'Opportunities', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('752805f2-1b0b-bee3-bc14-458d3eff0b02', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'edit', 'Opportunities', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('75d62e6f-217d-2c7b-d8c8-458d3ef3637b', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'delete', 'Opportunities', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('76890bc6-0214-6b10-fded-458d3eced0ba', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'import', 'Opportunities', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('77321b9c-ce5d-4e71-7570-458d3e13d606', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'export', 'Opportunities', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('8d723634-5ca1-f5e1-65b5-458d3e2285d4', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'access', 'Cases', 'module', 89, 0);
INSERT INTO `acl_actions` VALUES ('8e954f57-36b0-5124-2911-458d3ecb1d0e', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'view', 'Cases', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('8f6bae13-b8a8-235f-68d6-458d3e934e79', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'list', 'Cases', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('9018e02f-c318-90dd-3e1b-458d3e650223', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'edit', 'Cases', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('90c898de-dcad-01a9-b3f4-458d3ee6c6fb', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'delete', 'Cases', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('9172065e-56ba-9b1d-1709-458d3e22e3bf', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'import', 'Cases', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('922374e1-aaa6-32ad-d0f0-458d3e0e35ab', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'export', 'Cases', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('a6ca9907-e0d1-1390-7959-458d3ef3159e', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'access', 'Notes', 'module', 89, 0);
INSERT INTO `acl_actions` VALUES ('a77b31fb-3754-1dd9-a480-458d3e3f330b', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'view', 'Notes', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('a825b7bb-fe38-eb75-9c19-458d3ec8336f', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'list', 'Notes', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('a8cee239-a322-0483-2ecd-458d3e0d27d9', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'edit', 'Notes', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('a987812e-5705-5141-8299-458d3e26ad14', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'delete', 'Notes', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('aa7d0a20-cab4-1d3e-2583-458d3eeb6bbe', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'import', 'Notes', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('ab2c886d-9f6c-85c2-8dbc-458d3ea5804c', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'export', 'Notes', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('b69d1f1c-2509-8979-a988-458d3e91c558', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'access', 'EmailTemplates', 'module', 89, 0);
INSERT INTO `acl_actions` VALUES ('b847cfb9-2c5a-7aee-b1b4-458d3e139a17', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'view', 'EmailTemplates', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('b92fdad4-93f2-d3fb-32c2-458d3e638594', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'list', 'EmailTemplates', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('b9e34e8d-43b7-94b1-d3b1-458d3e59a80a', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'edit', 'EmailTemplates', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('ba9180e7-05cd-3778-cb7c-458d3ed6d02e', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'delete', 'EmailTemplates', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('bb42efee-1ed5-77d4-7b8e-458d3eb36c71', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'import', 'EmailTemplates', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('bc0d8f74-9081-8715-d39a-458d3e3a2aba', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'export', 'EmailTemplates', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('e0c638e9-28df-d981-949b-458d3e7596f0', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'access', 'Calls', 'module', 89, 0);
INSERT INTO `acl_actions` VALUES ('e17314f0-d487-6383-22f6-458d3e0b40c3', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'view', 'Calls', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('e229c83a-e81a-ce95-5ff6-458d3e8e1778', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'list', 'Calls', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('e386c850-7dc0-e8b9-b505-458d3e7431ff', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'edit', 'Calls', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('e435d7c0-26ff-e647-ca5c-458d3e9adc48', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'delete', 'Calls', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('e4e84780-544e-2bae-1a2f-458d3e14d4a4', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'import', 'Calls', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('e59c4104-c84f-5082-8641-458d3ed88b28', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'export', 'Calls', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('1e690522-43bd-97a9-e9ab-458d3e998980', '2006-12-23 14:35:28', '2006-12-23 14:35:28', '1', NULL, 'access', 'Emails', 'module', 89, 0);
INSERT INTO `acl_actions` VALUES ('2e370f87-7dd9-8d5f-d32d-458d3eededd0', '2006-12-23 14:35:28', '2006-12-23 14:35:28', '1', NULL, 'view', 'Emails', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('39a70865-8869-4caa-5c31-458d3ed3adc6', '2006-12-23 14:35:28', '2006-12-23 14:35:28', '1', NULL, 'list', 'Emails', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('45b40bd4-77ae-ffe5-654f-458d3ee3198f', '2006-12-23 14:35:28', '2006-12-23 14:35:28', '1', NULL, 'edit', 'Emails', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('52160401-5c4a-695b-02b4-458d3efa147f', '2006-12-23 14:35:28', '2006-12-23 14:35:28', '1', NULL, 'delete', 'Emails', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('5d2b0717-2646-78b4-bdc8-458d3e63e45e', '2006-12-23 14:35:28', '2006-12-23 14:35:28', '1', NULL, 'import', 'Emails', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('68e40f18-c684-f401-ff88-458d3ea18b0c', '2006-12-23 14:35:28', '2006-12-23 14:35:28', '1', NULL, 'export', 'Emails', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('15ff2d51-812e-bbbb-5bb0-458d3e208a07', '2006-12-23 14:35:28', '2006-12-23 14:35:28', '1', NULL, 'access', 'Meetings', 'module', 89, 0);
INSERT INTO `acl_actions` VALUES ('17513dfb-3172-0222-2f42-458d3e309abf', '2006-12-23 14:35:28', '2006-12-23 14:35:28', '1', NULL, 'view', 'Meetings', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('18548709-2da4-ff18-5dba-458d3eb6c91d', '2006-12-23 14:35:28', '2006-12-23 14:35:28', '1', NULL, 'list', 'Meetings', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('19349a3b-12c3-36ab-228f-458d3e68f17b', '2006-12-23 14:35:28', '2006-12-23 14:35:28', '1', NULL, 'edit', 'Meetings', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('1a065aaa-baa5-f0b1-27fa-458d3e0f65a9', '2006-12-23 14:35:28', '2006-12-23 14:35:28', '1', NULL, 'delete', 'Meetings', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('1abd5b09-273f-20c9-c420-458d3ee96b88', '2006-12-23 14:35:28', '2006-12-23 14:35:28', '1', NULL, 'import', 'Meetings', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('1b71d335-b74a-3d7a-7643-458d3ef8b28e', '2006-12-23 14:35:28', '2006-12-23 14:35:28', '1', NULL, 'export', 'Meetings', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('35fcf53d-552d-2e0e-8e37-458d3ed593fa', '2006-12-23 14:35:28', '2006-12-23 14:35:28', '1', NULL, 'access', 'Tasks', 'module', 89, 0);
INSERT INTO `acl_actions` VALUES ('36cb2c33-ff8c-88b8-d296-458d3e2b525c', '2006-12-23 14:35:28', '2006-12-23 14:35:28', '1', NULL, 'view', 'Tasks', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('3781c426-762a-3226-04ed-458d3e6a68e8', '2006-12-23 14:35:28', '2006-12-23 14:35:28', '1', NULL, 'list', 'Tasks', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('383604b0-1e6a-2830-70bd-458d3e5e2200', '2006-12-23 14:35:28', '2006-12-23 14:35:28', '1', NULL, 'edit', 'Tasks', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('38eb5dcc-ac3b-7b3d-08ae-458d3ebba7ae', '2006-12-23 14:35:28', '2006-12-23 14:35:28', '1', NULL, 'delete', 'Tasks', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('39999336-95e7-c42d-52b2-458d3ee802e5', '2006-12-23 14:35:28', '2006-12-23 14:35:28', '1', NULL, 'import', 'Tasks', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('3ab38bd7-851a-9364-ea81-458d3e59b38e', '2006-12-23 14:35:28', '2006-12-23 14:35:28', '1', NULL, 'export', 'Tasks', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('970032eb-adc2-b549-9947-458d3e967af5', '2006-12-23 14:35:28', '2006-12-23 14:35:28', '1', NULL, 'access', 'Bugs', 'module', 89, 0);
INSERT INTO `acl_actions` VALUES ('97b82043-f508-fe6b-c328-458d3ecb8090', '2006-12-23 14:35:28', '2006-12-23 14:35:28', '1', NULL, 'view', 'Bugs', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('986a87ab-e91b-295e-a55c-458d3e7cc32b', '2006-12-23 14:35:28', '2006-12-23 14:35:28', '1', NULL, 'list', 'Bugs', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('9920a67a-d18b-ae93-a595-458d3ee7c1da', '2006-12-23 14:35:28', '2006-12-23 14:35:28', '1', NULL, 'edit', 'Bugs', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('99d99a60-5067-19b7-d3df-458d3e0dc9b1', '2006-12-23 14:35:28', '2006-12-23 14:35:28', '1', NULL, 'delete', 'Bugs', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('9a8f35da-d496-0229-8be0-458d3e05a6a3', '2006-12-23 14:35:28', '2006-12-23 14:35:28', '1', NULL, 'import', 'Bugs', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('9b63f6b0-b570-90e8-d1df-458d3ecf0b23', '2006-12-23 14:35:28', '2006-12-23 14:35:28', '1', NULL, 'export', 'Bugs', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('a94d0834-f048-dc60-1247-458d3ed9c886', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'access', 'Project', 'module', 89, 0);
INSERT INTO `acl_actions` VALUES ('b4c1093b-7122-2047-131f-458d3edbf0c4', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'view', 'Project', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('c03a0e35-9460-c8d1-e078-458d3e351a66', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'list', 'Project', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('d9250172-8c48-a8bc-b9c9-458d3ecbb353', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'edit', 'Project', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('e51407c4-ef76-b4cc-7cf2-458d3e083c25', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'delete', 'Project', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('f02e0393-870c-e07f-743e-458d3e9ed2d3', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'import', 'Project', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('fb7e048c-4d98-8350-98b3-458d3e7e5abd', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'export', 'Project', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('2437395f-57a4-bde6-a884-458d3eae8ac3', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'access', 'ProjectTask', 'module', 89, 0);
INSERT INTO `acl_actions` VALUES ('25ba085f-b454-4425-c63e-458d3ecba794', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'view', 'ProjectTask', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('26c67478-973e-0841-4f78-458d3e8b62fc', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'list', 'ProjectTask', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('278017cd-5f72-cf8f-3216-458d3e6cf8b5', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'edit', 'ProjectTask', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('28596c4f-ab19-4ef9-f076-458d3e9ede0f', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'delete', 'ProjectTask', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('29213c7a-6894-1bf3-4f1c-458d3eb9d241', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'import', 'ProjectTask', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('29dad5b3-9751-a02e-834a-458d3e5e2373', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'export', 'ProjectTask', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('482853d7-f46b-c414-ca95-458d3eb7c3ba', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'access', 'EmailMarketing', 'module', 89, 0);
INSERT INTO `acl_actions` VALUES ('48dd020c-c320-7e43-c172-458d3ee6df7e', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'view', 'EmailMarketing', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('49a2182e-b8d2-3c02-216a-458d3e53f77c', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'list', 'EmailMarketing', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('4afd023c-aa91-35cc-7fcc-458d3e1dd56a', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'edit', 'EmailMarketing', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('4be58be6-f5f9-49b0-629f-458d3e94cd86', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'delete', 'EmailMarketing', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('4ca3e62c-8fae-fad2-ae27-458d3e0541b2', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'import', 'EmailMarketing', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('4d610b06-d463-2e82-2830-458d3e07f7fb', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'export', 'EmailMarketing', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('6495f431-f1c2-0ca7-e77e-458d3effdc95', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'access', 'Campaigns', 'module', 89, 0);
INSERT INTO `acl_actions` VALUES ('654f7d47-82d6-a37d-af08-458d3e309238', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'view', 'Campaigns', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('6606fdcd-9ba0-bedb-721f-458d3e287c90', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'list', 'Campaigns', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('66b98e2f-d843-eecc-5dd4-458d3eeaaea1', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'edit', 'Campaigns', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('6776e281-4111-3401-570d-458d3e79a774', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'delete', 'Campaigns', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('688b456c-a0bd-e618-4adf-458d3e3da636', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'import', 'Campaigns', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('695805bd-1e94-3298-12f9-458d3e27a15d', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'export', 'Campaigns', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('80ed5e42-d002-a87d-2d8c-458d3e100583', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'access', 'ProspectLists', 'module', 89, 0);
INSERT INTO `acl_actions` VALUES ('81b1b220-7eec-7f36-161a-458d3ed15638', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'view', 'ProspectLists', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('8266daf2-49a1-2d9d-c1e3-458d3ea6425c', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'list', 'ProspectLists', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('83686968-262f-5daa-5079-458d3e96844e', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'edit', 'ProspectLists', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('8463c977-464a-4ce4-bf6c-458d3ee4c232', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'delete', 'ProspectLists', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('851ab2ae-3157-eaa1-3722-458d3ea1effe', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'import', 'ProspectLists', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('85cf4259-f4f0-ef6b-e687-458d3e0e8e93', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'export', 'ProspectLists', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('911317a4-1592-10ba-eac5-458d3ebe2ce9', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'access', 'Prospects', 'module', 89, 0);
INSERT INTO `acl_actions` VALUES ('91d0c893-4e86-1634-c14f-458d3e6ec812', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'view', 'Prospects', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('929a61a3-32be-347b-1513-458d3ef87395', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'list', 'Prospects', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('9354e5e3-22cd-7f0e-360a-458d3eaab1de', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'edit', 'Prospects', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('941e99f4-9914-51e5-a295-458d3ebecccc', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'delete', 'Prospects', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('94d6ac96-5797-a327-2f62-458d3e2785c1', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'import', 'Prospects', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('9594b5cf-49b7-c60e-684e-458d3e9592f6', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'export', 'Prospects', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('a7cd31ba-9f5f-e19a-07f9-458d3e3b420e', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'access', 'Documents', 'module', 89, 0);
INSERT INTO `acl_actions` VALUES ('a8d068cd-c27c-0110-0838-458d3e1a6e98', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'view', 'Documents', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('a996aa69-f709-037a-eba3-458d3e5686f6', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'list', 'Documents', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('aa64de59-4288-b346-bb0f-458d3e06754f', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'edit', 'Documents', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('ab202bb0-8e1b-1efa-ed1f-458d3e6fcb13', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'delete', 'Documents', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('abdd825e-b1ea-f1f4-56cf-458d3e8dcdd9', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'import', 'Documents', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('ac963a87-f22e-1ddc-ddcc-458d3ef9c4e1', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'export', 'Documents', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('bbdc4230-52af-b80d-eb34-458d408caebd', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'access', 'Products', 'module', 89, 0);
INSERT INTO `acl_actions` VALUES ('bcc04137-0aab-09fa-065e-458d40032819', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'view', 'Products', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('bd80e49f-5e55-3ba3-5aaa-458d4025e3d8', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'list', 'Products', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('be583e25-56b8-ce9d-3f15-458d405f4f6c', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'edit', 'Products', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('bf5df4a3-e38a-55ca-1af5-458d40b0feb8', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'delete', 'Products', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('c066ceb2-7270-3e3f-5894-458d40c0edbd', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'import', 'Products', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('c13c3d7a-da83-7fa8-0bbe-458d40c538f7', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'export', 'Products', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('2e275407-f0e7-2cb5-b88d-459b83da5ec3', '2007-01-03 10:22:55', '2007-01-03 10:22:55', '1', '1', 'access', 'ProductComponents', 'module', 89, 0);
INSERT INTO `acl_actions` VALUES ('2efacb8d-c13f-24d8-08f5-459b837e90c7', '2007-01-03 10:22:55', '2007-01-03 10:22:55', '1', '1', 'view', 'ProductComponents', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('2fc5c5b6-558a-ddd9-40bb-459b83e23898', '2007-01-03 10:22:55', '2007-01-03 10:22:55', '1', '1', 'list', 'ProductComponents', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('308a2662-4b72-feb8-7296-459b838afeec', '2007-01-03 10:22:55', '2007-01-03 10:22:55', '1', '1', 'edit', 'ProductComponents', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('314ab469-a71a-8931-c1e2-459b83e3ebbf', '2007-01-03 10:22:55', '2007-01-03 10:22:55', '1', '1', 'delete', 'ProductComponents', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('320fe327-f8ce-2421-af9b-459b83f5a66e', '2007-01-03 10:22:55', '2007-01-03 10:22:55', '1', '1', 'import', 'ProductComponents', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('32d599ca-eb5b-e94b-6905-459b835865be', '2007-01-03 10:22:55', '2007-01-03 10:22:55', '1', '1', 'export', 'ProductComponents', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('79e54b21-fcb2-9326-dccf-45a251f60d96', '2007-01-08 14:12:05', '2007-01-08 14:12:05', '1', '1', 'access', 'Paper', 'module', 89, 0);
INSERT INTO `acl_actions` VALUES ('7a6978d1-f6ee-99bf-182d-45a2516f1237', '2007-01-08 14:12:05', '2007-01-08 14:12:05', '1', '1', 'view', 'Paper', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('7aeac260-51d5-c933-0fa2-45a251141961', '2007-01-08 14:12:05', '2007-01-08 14:12:05', '1', '1', 'list', 'Paper', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('7b669876-f521-bc9a-1b30-45a251e5ef71', '2007-01-08 14:12:05', '2007-01-08 14:12:05', '1', '1', 'edit', 'Paper', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('7beb8039-d0b6-1ba2-6aa6-45a2514359cc', '2007-01-08 14:12:05', '2007-01-08 14:12:05', '1', '1', 'delete', 'Paper', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('7c6d5ae8-3f2e-cfb7-83dd-45a251baa914', '2007-01-08 14:12:05', '2007-01-08 14:12:05', '1', '1', 'import', 'Paper', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('7d06b76d-97a4-ae5d-3e9e-45a2512e6d5c', '2007-01-08 14:12:05', '2007-01-08 14:12:05', '1', '1', 'export', 'Paper', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('e65b4a52-41f1-a65e-6b89-45e6e0329c62', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'access', 'ProductOperations', 'module', 89, 0);
INSERT INTO `acl_actions` VALUES ('a908d5de-4a6e-efb3-99b4-45e6e0deaa22', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'view', 'ProductOperations', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('229863dd-bafb-9072-d6cd-45e6e0c4c20a', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'list', 'ProductOperations', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('272e05bc-e5b3-10f5-f566-45e6e16746e8', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'edit', 'ProductOperations', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('6091a16d-d552-fda8-077d-45e6e13d7ac9', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'delete', 'ProductOperations', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('644af00c-ac8a-9997-5a90-45e6e10ab7c5', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'import', 'ProductOperations', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('71ec2002-f0b1-77b0-d1d8-45e6e1fcda4c', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'export', 'ProductOperations', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('a82c1018-465b-3f3e-841b-45e6e3c383e7', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'access', 'Operations', 'module', 89, 0);
INSERT INTO `acl_actions` VALUES ('a83b7a5a-3d07-1132-31f0-45e6e3cc9c32', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'view', 'Operations', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('a8450331-1f5e-4184-8457-45e6e3ea17a4', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'list', 'Operations', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('a84cadb4-ee93-6da6-fee3-45e6e3adb872', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'edit', 'Operations', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('a85422b1-f5ef-da72-a076-45e6e38a4401', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'delete', 'Operations', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('a863482f-5ece-0286-c5d3-45e6e3bd2f59', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'import', 'Operations', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('a86ad26e-5155-bb4e-47eb-45e6e32f2879', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'export', 'Operations', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('2f670768-0eaf-0ada-4cef-45e6e4e9efc4', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'access', 'Machines', 'module', 89, 0);
INSERT INTO `acl_actions` VALUES ('2f75a03e-044e-5ce8-ac7c-45e6e44d37ec', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'view', 'Machines', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('2f7d71cc-4f50-cd37-8bcd-45e6e4fea4d6', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'list', 'Machines', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('2f851360-f3d7-2326-09ed-45e6e4d041ae', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'edit', 'Machines', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('2f8cb26b-b5d5-be65-6375-45e6e47624f3', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'delete', 'Machines', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('2f9445d3-85a5-6308-0947-45e6e4b01de8', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'import', 'Machines', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('2f9bea12-19c1-df6c-72d2-45e6e4016d6c', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'export', 'Machines', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('b065ca9f-faa3-8786-82a8-45e6e4045f3b', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'access', 'Quotes', 'module', 89, 0);
INSERT INTO `acl_actions` VALUES ('b073ce50-ff7e-43e0-9041-45e6e4a86825', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'view', 'Quotes', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('b07b908e-4a70-f355-0969-45e6e45786d3', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'list', 'Quotes', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('b083f0be-508b-504d-4011-45e6e433107b', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'edit', 'Quotes', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('b08bb533-77d7-b011-a759-45e6e4ab64b3', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'delete', 'Quotes', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('b0936637-6624-f5c4-9134-45e6e47c4bbd', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'import', 'Quotes', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('b09b10c5-ab26-f920-9424-45e6e4975af3', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'export', 'Quotes', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('9f39dff4-a725-9552-c3a1-45e6e5086f39', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'access', 'Materials', 'module', 89, 0);
INSERT INTO `acl_actions` VALUES ('9f47dde6-5f8c-b478-84a5-45e6e5a44f99', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'view', 'Materials', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('9f4faf1a-5b36-7ca3-1b5a-45e6e5d4ec51', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'list', 'Materials', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('9f57aace-3d04-d66d-4a1e-45e6e5d1ec0d', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'edit', 'Materials', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('9f5f9f56-5bec-e983-b0c6-45e6e5434234', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'delete', 'Materials', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('9f672cb0-fea1-4dbb-afaf-45e6e5e581f3', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'import', 'Materials', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('9f6eb5f3-e0ac-69db-2649-45e6e5cafa96', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'export', 'Materials', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('ddacc5b5-fdd8-1e24-d22d-45e6e520d8bb', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'access', 'Suppliers', 'module', 89, 0);
INSERT INTO `acl_actions` VALUES ('ddbe7f58-dc19-e847-668c-45e6e55c6b3e', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'view', 'Suppliers', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('ddc626ed-9574-fb46-5105-45e6e54919fe', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'list', 'Suppliers', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('ddcde9dc-01f0-4918-f7d3-45e6e5cd1a85', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'edit', 'Suppliers', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('ddd568b5-c458-4b74-a94d-45e6e5fbb92d', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'delete', 'Suppliers', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('dddcd015-7720-913e-c526-45e6e5bf86a2', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'import', 'Suppliers', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('dde48780-5641-dbcb-0ba6-45e6e5037d07', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'export', 'Suppliers', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('61bb21a0-d3e6-541e-f289-45e6e66c36d2', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'access', 'Supplies', 'module', 89, 0);
INSERT INTO `acl_actions` VALUES ('61ccf829-833c-bdbd-9b3e-45e6e61583ab', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'view', 'Supplies', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('61d4d985-c27c-7089-925d-45e6e6e70475', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'list', 'Supplies', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('61dc9061-cd2a-c942-2951-45e6e6653940', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'edit', 'Supplies', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('61e4581b-e1d8-08e4-3bda-45e6e659a2ef', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'delete', 'Supplies', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('61ec1cde-a8bd-315c-93ed-45e6e6152810', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'import', 'Supplies', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('61f3fd58-3243-5330-9efd-45e6e6ab0ef3', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'export', 'Supplies', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('55480d71-b8c4-448b-f923-45e6eb96d3e5', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'access', 'PurchaseOrders', 'module', 89, 0);
INSERT INTO `acl_actions` VALUES ('5555d3ef-6e44-fe0d-d1c0-45e6eb1c7fb4', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'view', 'PurchaseOrders', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('555d9b57-8de9-da15-95be-45e6ebab13b1', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'list', 'PurchaseOrders', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('556b0512-797b-c4b3-0132-45e6ebd5ed58', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'edit', 'PurchaseOrders', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('5572c08c-3d3e-9f15-bce1-45e6eb1dffc4', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'delete', 'PurchaseOrders', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('557a7daf-e3b7-0583-4661-45e6eb89ae32', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'import', 'PurchaseOrders', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('55821e7b-a3f7-98db-9d84-45e6eb16accd', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'export', 'PurchaseOrders', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('488eded5-4728-36fc-dd31-45e6ec31b091', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'access', 'Prices', 'module', 89, 0);
INSERT INTO `acl_actions` VALUES ('48a0a06d-650e-58de-8e8e-45e6eca5cd5d', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'view', 'Prices', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('48a88bc6-da6c-6219-9bc0-45e6ece9008b', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'list', 'Prices', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('48b055cc-d1bc-47f8-832d-45e6eceb8f5b', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'edit', 'Prices', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('48b81dc9-6561-c35a-21d8-45e6ec1e2b32', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'delete', 'Prices', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('48bfc409-e5c5-2437-ad43-45e6ec6adca2', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'import', 'Prices', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('48c775b1-bea2-208f-2d49-45e6ec7d6888', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'export', 'Prices', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('80f38044-ae80-7fd4-a236-463edce828d2', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'access', 'Estimates', 'module', 89, 0);
INSERT INTO `acl_actions` VALUES ('81016b21-76c7-7213-da6f-463edc703476', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'view', 'Estimates', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('810916dd-57c4-8670-8787-463edcb01c0c', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'list', 'Estimates', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('81108223-aaa5-963e-f737-463edc2771c2', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'edit', 'Estimates', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('8117faae-e7ad-808d-ce28-463edc61be74', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'delete', 'Estimates', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('811f57e2-8c7b-57b7-9e5a-463edce98eeb', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'import', 'Estimates', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('8126c62f-9d86-0754-5150-463edcb356b2', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'export', 'Estimates', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('35c5b026-da42-51b1-03a8-463edc889f5c', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'access', 'Printing', 'module', 89, 0);
INSERT INTO `acl_actions` VALUES ('35d98208-0fbf-7dfd-e897-463edc540e17', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'view', 'Printing', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('35e16233-121d-e83c-6d02-463edc452b62', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'list', 'Printing', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('35e9044a-11cc-9193-e03c-463edc7cc0c9', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'edit', 'Printing', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('35f0988c-3751-371e-3068-463edc224172', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'delete', 'Printing', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('35f8330b-eb05-04ca-bdf3-463edcc73a15', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'import', 'Printing', 'module', 90, 0);
INSERT INTO `acl_actions` VALUES ('35ffe201-41a0-036c-3698-463edc0b61ba', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'export', 'Printing', 'module', 90, 0);

-- --------------------------------------------------------

-- 
-- Структура на таблица `acl_roles`
-- 

DROP TABLE IF EXISTS `acl_roles`;
CREATE TABLE `acl_roles` (
  `id` varchar(36) NOT NULL default '',
  `date_entered` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_user_id` varchar(36) NOT NULL default '',
  `created_by` varchar(36) default NULL,
  `name` varchar(150) default NULL,
  `description` text,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_aclrole_id_del` (`id`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `acl_roles`
-- 


-- --------------------------------------------------------

-- 
-- Структура на таблица `acl_roles_actions`
-- 

DROP TABLE IF EXISTS `acl_roles_actions`;
CREATE TABLE `acl_roles_actions` (
  `id` varchar(36) NOT NULL default '',
  `role_id` varchar(36) default NULL,
  `action_id` varchar(36) default NULL,
  `access_override` int(3) default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_acl_role_id` (`role_id`),
  KEY `idx_acl_action_id` (`action_id`),
  KEY `idx_aclrole_action` (`role_id`,`action_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `acl_roles_actions`
-- 


-- --------------------------------------------------------

-- 
-- Структура на таблица `acl_roles_users`
-- 

DROP TABLE IF EXISTS `acl_roles_users`;
CREATE TABLE `acl_roles_users` (
  `id` varchar(36) NOT NULL default '',
  `role_id` varchar(36) default NULL,
  `user_id` varchar(36) default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_aclrole_id` (`role_id`),
  KEY `idx_acluser_id` (`user_id`),
  KEY `idx_aclrole_user` (`role_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `acl_roles_users`
-- 


-- --------------------------------------------------------

-- 
-- Структура на таблица `bugs`
-- 

DROP TABLE IF EXISTS `bugs`;
CREATE TABLE `bugs` (
  `id` varchar(36) NOT NULL default '',
  `bug_number` int(11) NOT NULL auto_increment,
  `date_entered` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_user_id` varchar(36) NOT NULL default '',
  `assigned_user_id` varchar(36) default NULL,
  `deleted` tinyint(1) NOT NULL default '0',
  `name` varchar(255) default NULL,
  `status` varchar(25) default NULL,
  `priority` varchar(25) default NULL,
  `description` text,
  `created_by` varchar(36) default NULL,
  `resolution` varchar(255) default NULL,
  `found_in_release` varchar(255) default NULL,
  `type` varchar(255) default NULL,
  `fixed_in_release` varchar(255) default NULL,
  `work_log` text,
  `source` varchar(255) default NULL,
  `product_category` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `bug_number` (`bug_number`),
  KEY `idx_bug_name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Дъмп (схема) на данните в таблицата `bugs`
-- 


-- --------------------------------------------------------

-- 
-- Структура на таблица `bugs_audit`
-- 

DROP TABLE IF EXISTS `bugs_audit`;
CREATE TABLE `bugs_audit` (
  `id` varchar(36) NOT NULL default '',
  `parent_id` varchar(36) NOT NULL default '',
  `date_created` datetime default NULL,
  `created_by` varchar(36) default NULL,
  `field_name` varchar(100) default NULL,
  `data_type` varchar(100) default NULL,
  `before_value_string` varchar(255) default NULL,
  `after_value_string` varchar(255) default NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `bugs_audit`
-- 


-- --------------------------------------------------------

-- 
-- Структура на таблица `calls`
-- 

DROP TABLE IF EXISTS `calls`;
CREATE TABLE `calls` (
  `id` varchar(36) NOT NULL default '',
  `date_entered` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `assigned_user_id` varchar(36) default NULL,
  `modified_user_id` varchar(36) default NULL,
  `created_by` varchar(36) default NULL,
  `name` varchar(50) default NULL,
  `duration_hours` int(2) default NULL,
  `duration_minutes` int(2) default NULL,
  `date_start` date default NULL,
  `time_start` time default NULL,
  `date_end` date default NULL,
  `parent_type` varchar(25) default NULL,
  `status` varchar(25) default NULL,
  `direction` varchar(25) default NULL,
  `parent_id` varchar(36) default NULL,
  `description` text,
  `deleted` tinyint(1) NOT NULL default '0',
  `reminder_time` int(4) default '-1',
  `outlook_id` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_call_name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `calls`
-- 

INSERT INTO `calls` VALUES ('39700f01-7fba-0fe3-ec0a-45e82bf7bd3e', '2007-03-02 13:49:33', '2007-03-05 08:17:47', '1', '1', '1', 'Test Call', 0, 45, '2007-03-02', '14:00:00', '2007-03-02', 'Accounts', 'Planned', 'Inbound', NULL, NULL, 1, 3600, NULL);
INSERT INTO `calls` VALUES ('34c2c764-f9e8-d9c5-caf6-45e82e9d06c3', '2007-03-02 14:28:57', '2007-03-05 08:18:28', '177bd6bb-665d-cc61-4d82-45ab422290d3', '1', '1', 'Demo Call', 1, 15, '2007-03-02', '14:30:00', '2007-03-02', 'Accounts', 'Planned', 'Outbound', NULL, NULL, 1, 3600, NULL);

-- --------------------------------------------------------

-- 
-- Структура на таблица `calls_contacts`
-- 

DROP TABLE IF EXISTS `calls_contacts`;
CREATE TABLE `calls_contacts` (
  `id` varchar(36) NOT NULL default '',
  `call_id` varchar(36) default NULL,
  `contact_id` varchar(36) default NULL,
  `required` char(1) default '1',
  `accept_status` varchar(25) default 'none',
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_con_call_call` (`call_id`),
  KEY `idx_con_call_con` (`contact_id`),
  KEY `idx_call_contact` (`call_id`,`contact_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `calls_contacts`
-- 

INSERT INTO `calls_contacts` VALUES ('66521ec2-77ef-6f40-006e-45e83178f33d', '34c2c764-f9e8-d9c5-caf6-45e82e9d06c3', '1ae804e8-06a5-ed75-94d3-45d194878ef8', '1', 'none', '2007-03-05 08:18:28', 1);
INSERT INTO `calls_contacts` VALUES ('c61c4bcc-ba7b-0fec-1ae2-45e831202f68', '34c2c764-f9e8-d9c5-caf6-45e82e9d06c3', '1ae804e8-06a5-ed75-94d3-45d194878ef8', '1', 'none', '2007-03-05 08:18:28', 1);
INSERT INTO `calls_contacts` VALUES ('6fa9bd6b-c3c7-c1fc-2600-45e83120df59', '34c2c764-f9e8-d9c5-caf6-45e82e9d06c3', '1ae804e8-06a5-ed75-94d3-45d194878ef8', '1', 'none', '2007-03-05 08:18:28', 1);

-- --------------------------------------------------------

-- 
-- Структура на таблица `calls_users`
-- 

DROP TABLE IF EXISTS `calls_users`;
CREATE TABLE `calls_users` (
  `id` varchar(36) NOT NULL default '',
  `call_id` varchar(36) default NULL,
  `user_id` varchar(36) default NULL,
  `required` char(1) default '1',
  `accept_status` varchar(25) default 'none',
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_usr_call_call` (`call_id`),
  KEY `idx_usr_call_usr` (`user_id`),
  KEY `idx_call_users` (`call_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `calls_users`
-- 

INSERT INTO `calls_users` VALUES ('196f031c-3353-92fa-c00c-45e82b3f0d79', '39700f01-7fba-0fe3-ec0a-45e82bf7bd3e', '1', '1', 'accept', '2007-03-05 08:17:47', 1);
INSERT INTO `calls_users` VALUES ('17cb565e-ecaa-f7d1-4aa4-45e82bf2315c', '39700f01-7fba-0fe3-ec0a-45e82bf7bd3e', '1', '1', 'accept', '2007-03-05 08:17:47', 1);
INSERT INTO `calls_users` VALUES ('625e6bb8-da6b-f1ba-8859-45e82cc71fec', '39700f01-7fba-0fe3-ec0a-45e82bf7bd3e', '1', '1', 'accept', '2007-03-05 08:17:47', 1);
INSERT INTO `calls_users` VALUES ('8d281bab-6275-18ae-36a5-45e82c97bfd4', '39700f01-7fba-0fe3-ec0a-45e82bf7bd3e', '1', '1', 'accept', '2007-03-05 08:17:47', 1);
INSERT INTO `calls_users` VALUES ('ada32351-4067-4009-27cc-45e82df1e83a', '39700f01-7fba-0fe3-ec0a-45e82bf7bd3e', '1', '1', 'accept', '2007-03-05 08:17:47', 1);
INSERT INTO `calls_users` VALUES ('19bf4d25-41be-bb50-4077-45e82ece72d2', '39700f01-7fba-0fe3-ec0a-45e82bf7bd3e', '1', '1', 'accept', '2007-03-05 08:17:47', 1);
INSERT INTO `calls_users` VALUES ('5e210b79-6a07-ecee-b464-45e82e0f9a2e', '39700f01-7fba-0fe3-ec0a-45e82bf7bd3e', '1', '1', 'accept', '2007-03-05 08:17:47', 1);
INSERT INTO `calls_users` VALUES ('8588a69e-b157-a27c-8365-45e82e42ad9a', '39700f01-7fba-0fe3-ec0a-45e82bf7bd3e', '1', '1', 'accept', '2007-03-05 08:17:47', 1);
INSERT INTO `calls_users` VALUES ('374eab65-2c08-ef73-f3b0-45e82e803e0d', '34c2c764-f9e8-d9c5-caf6-45e82e9d06c3', '177bd6bb-665d-cc61-4d82-45ab422290d3', '1', 'none', '2007-03-05 08:18:28', 1);
INSERT INTO `calls_users` VALUES ('3e61877e-2e38-6789-304c-45e82e37f19e', '34c2c764-f9e8-d9c5-caf6-45e82e9d06c3', '1', '1', 'accept', '2007-03-05 08:18:28', 1);
INSERT INTO `calls_users` VALUES ('63b6cefc-82db-745e-1bec-45e82fc1877c', '34c2c764-f9e8-d9c5-caf6-45e82e9d06c3', '177bd6bb-665d-cc61-4d82-45ab422290d3', '1', 'none', '2007-03-05 08:18:28', 1);
INSERT INTO `calls_users` VALUES ('6b2d491f-ea6d-074d-af9b-45e82fa8b922', '34c2c764-f9e8-d9c5-caf6-45e82e9d06c3', '1', '1', 'accept', '2007-03-05 08:18:28', 1);
INSERT INTO `calls_users` VALUES ('99de4507-e1f0-0d9f-9ed7-45e82fe95585', '34c2c764-f9e8-d9c5-caf6-45e82e9d06c3', '177bd6bb-665d-cc61-4d82-45ab422290d3', '1', 'none', '2007-03-05 08:18:28', 1);
INSERT INTO `calls_users` VALUES ('a202b5c3-f778-8ae1-047f-45e82fbdcb39', '34c2c764-f9e8-d9c5-caf6-45e82e9d06c3', '1', '1', 'accept', '2007-03-05 08:18:28', 1);
INSERT INTO `calls_users` VALUES ('699ff523-d4de-0ed7-6723-45e82fa3e100', '34c2c764-f9e8-d9c5-caf6-45e82e9d06c3', '177bd6bb-665d-cc61-4d82-45ab422290d3', '1', 'none', '2007-03-05 08:18:28', 1);
INSERT INTO `calls_users` VALUES ('716f23ed-cb29-f546-4a1d-45e82f1681b8', '34c2c764-f9e8-d9c5-caf6-45e82e9d06c3', '1', '1', 'accept', '2007-03-05 08:18:28', 1);
INSERT INTO `calls_users` VALUES ('5dc6404f-a1bb-e80b-8de9-45e831abfb7e', '34c2c764-f9e8-d9c5-caf6-45e82e9d06c3', '177bd6bb-665d-cc61-4d82-45ab422290d3', '1', 'none', '2007-03-05 08:18:28', 1);
INSERT INTO `calls_users` VALUES ('65710c9e-60f6-98b0-5d85-45e831c1ccde', '34c2c764-f9e8-d9c5-caf6-45e82e9d06c3', '1', '1', 'accept', '2007-03-05 08:18:28', 1);
INSERT INTO `calls_users` VALUES ('bd22510a-a1c1-e21f-34df-45e831300abf', '34c2c764-f9e8-d9c5-caf6-45e82e9d06c3', '177bd6bb-665d-cc61-4d82-45ab422290d3', '1', 'none', '2007-03-05 08:18:28', 1);
INSERT INTO `calls_users` VALUES ('c576d960-debc-749e-9426-45e831341ef3', '34c2c764-f9e8-d9c5-caf6-45e82e9d06c3', '1', '1', 'accept', '2007-03-05 08:18:28', 1);
INSERT INTO `calls_users` VALUES ('66a3834d-9a6c-4ac8-375d-45e8317e7afe', '34c2c764-f9e8-d9c5-caf6-45e82e9d06c3', '177bd6bb-665d-cc61-4d82-45ab422290d3', '1', 'none', '2007-03-05 08:18:28', 1);
INSERT INTO `calls_users` VALUES ('6e2ed9fa-b1b9-3aba-ab06-45e8316f8d73', '34c2c764-f9e8-d9c5-caf6-45e82e9d06c3', '1', '1', 'accept', '2007-03-05 08:18:28', 1);

-- --------------------------------------------------------

-- 
-- Структура на таблица `campaign_log`
-- 

DROP TABLE IF EXISTS `campaign_log`;
CREATE TABLE `campaign_log` (
  `id` varchar(36) NOT NULL default '',
  `campaign_id` varchar(36) default NULL,
  `target_tracker_key` varchar(36) default NULL,
  `target_id` varchar(36) default NULL,
  `target_type` varchar(25) default NULL,
  `activity_type` varchar(25) default NULL,
  `activity_date` datetime default NULL,
  `related_id` varchar(36) default NULL,
  `related_type` varchar(25) default NULL,
  `archived` tinyint(1) default '0',
  `hits` int(11) default '0',
  `list_id` varchar(36) default NULL,
  `deleted` tinyint(1) default '0',
  `date_modified` datetime default NULL,
  `more_information` varchar(100) default NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_camp_tracker` (`target_tracker_key`),
  KEY `idx_camp_campaign_id` (`campaign_id`),
  KEY `idx_camp_more_info` (`more_information`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `campaign_log`
-- 


-- --------------------------------------------------------

-- 
-- Структура на таблица `campaign_trkrs`
-- 

DROP TABLE IF EXISTS `campaign_trkrs`;
CREATE TABLE `campaign_trkrs` (
  `id` varchar(36) NOT NULL default '',
  `tracker_name` varchar(30) default NULL,
  `tracker_url` varchar(255) default 'http://',
  `tracker_key` int(11) NOT NULL auto_increment,
  `campaign_id` varchar(36) default NULL,
  `date_entered` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_user_id` varchar(36) default NULL,
  `created_by` varchar(36) default NULL,
  `is_optout` tinyint(1) NOT NULL default '0',
  `deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `campaign_tracker_key_idx` (`tracker_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Дъмп (схема) на данните в таблицата `campaign_trkrs`
-- 


-- --------------------------------------------------------

-- 
-- Структура на таблица `campaigns`
-- 

DROP TABLE IF EXISTS `campaigns`;
CREATE TABLE `campaigns` (
  `id` varchar(36) NOT NULL default '',
  `tracker_key` int(11) NOT NULL auto_increment,
  `tracker_count` int(11) default '0',
  `name` varchar(50) default NULL,
  `refer_url` varchar(255) default 'http://',
  `tracker_text` varchar(255) default NULL,
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `modified_user_id` varchar(36) default NULL,
  `assigned_user_id` varchar(36) default NULL,
  `created_by` varchar(36) default NULL,
  `deleted` tinyint(1) NOT NULL default '0',
  `start_date` date default NULL,
  `end_date` date default NULL,
  `status` varchar(25) default NULL,
  `currency_id` varchar(36) default NULL,
  `budget` double default NULL,
  `expected_cost` double default NULL,
  `actual_cost` double default NULL,
  `expected_revenue` double default NULL,
  `campaign_type` varchar(25) default NULL,
  `objective` text,
  `content` text,
  PRIMARY KEY  (`id`),
  KEY `camp_auto_tracker_key` (`tracker_key`),
  KEY `idx_campaign_name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Дъмп (схема) на данните в таблицата `campaigns`
-- 


-- --------------------------------------------------------

-- 
-- Структура на таблица `campaigns_audit`
-- 

DROP TABLE IF EXISTS `campaigns_audit`;
CREATE TABLE `campaigns_audit` (
  `id` varchar(36) NOT NULL default '',
  `parent_id` varchar(36) NOT NULL default '',
  `date_created` datetime default NULL,
  `created_by` varchar(36) default NULL,
  `field_name` varchar(100) default NULL,
  `data_type` varchar(100) default NULL,
  `before_value_string` varchar(255) default NULL,
  `after_value_string` varchar(255) default NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `campaigns_audit`
-- 


-- --------------------------------------------------------

-- 
-- Структура на таблица `cases`
-- 

DROP TABLE IF EXISTS `cases`;
CREATE TABLE `cases` (
  `id` varchar(36) NOT NULL default '',
  `case_number` int(11) NOT NULL auto_increment,
  `date_entered` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_user_id` varchar(36) NOT NULL default '',
  `assigned_user_id` varchar(36) default NULL,
  `created_by` varchar(36) default NULL,
  `deleted` tinyint(1) NOT NULL default '0',
  `name` varchar(255) default NULL,
  `account_id` varchar(36) default NULL,
  `status` varchar(25) default NULL,
  `priority` varchar(25) default NULL,
  `description` text,
  `resolution` text,
  PRIMARY KEY  (`id`),
  KEY `case_number` (`case_number`),
  KEY `idx_case_name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- Дъмп (схема) на данните в таблицата `cases`
-- 

INSERT INTO `cases` VALUES ('622fc16e-3b95-969e-033c-45cc6710725d', 1, '2007-02-09 12:23:17', '2007-02-09 12:23:27', '1', '1', '1', 1, 'gff', 'eda6787a-dc2f-d683-59a9-45ab41cdba8d', 'New', 'P2', NULL, NULL);
INSERT INTO `cases` VALUES ('f0964e45-959b-f017-df08-45e7febc87f9', 2, '2007-03-02 10:39:14', '2007-03-05 08:17:58', '1', '1', '1', 1, 'Test Case', 'eda6787a-dc2f-d683-59a9-45ab41cdba8d', 'Closed', 'P2', NULL, NULL);

-- --------------------------------------------------------

-- 
-- Структура на таблица `cases_audit`
-- 

DROP TABLE IF EXISTS `cases_audit`;
CREATE TABLE `cases_audit` (
  `id` varchar(36) NOT NULL default '',
  `parent_id` varchar(36) NOT NULL default '',
  `date_created` datetime default NULL,
  `created_by` varchar(36) default NULL,
  `field_name` varchar(100) default NULL,
  `data_type` varchar(100) default NULL,
  `before_value_string` varchar(255) default NULL,
  `after_value_string` varchar(255) default NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `cases_audit`
-- 

INSERT INTO `cases_audit` VALUES ('b8995be2-07b4-4860-ac82-45e82435ace4', 'f0964e45-959b-f017-df08-45e7febc87f9', '2007-03-02 13:19:30', '1', 'status', 'enum', 'New', 'Closed', NULL, NULL);

-- --------------------------------------------------------

-- 
-- Структура на таблица `cases_bugs`
-- 

DROP TABLE IF EXISTS `cases_bugs`;
CREATE TABLE `cases_bugs` (
  `id` varchar(36) NOT NULL default '',
  `case_id` varchar(36) default NULL,
  `bug_id` varchar(36) default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_cas_bug_cas` (`case_id`),
  KEY `idx_cas_bug_bug` (`bug_id`),
  KEY `idx_case_bug` (`case_id`,`bug_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `cases_bugs`
-- 


-- --------------------------------------------------------

-- 
-- Структура на таблица `companyinfo`
-- 

DROP TABLE IF EXISTS `companyinfo`;
CREATE TABLE `companyinfo` (
  `logo` varchar(100) NOT NULL default '',
  `country` varchar(100) NOT NULL default '',
  `city` varchar(100) NOT NULL default '',
  `state` varchar(100) NOT NULL default '',
  `street` varchar(100) NOT NULL default '',
  `phone` varchar(100) NOT NULL default '',
  `fax` varchar(100) NOT NULL default '',
  `web` varchar(100) NOT NULL default '',
  `email` varchar(100) NOT NULL default ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `companyinfo`
-- 


-- --------------------------------------------------------

-- 
-- Структура на таблица `componentestimate`
-- 

DROP TABLE IF EXISTS `componentestimate`;
CREATE TABLE `componentestimate` (
  `id` varchar(36) NOT NULL default '',
  `product_id` varchar(36) NOT NULL default '',
  `product_name` varchar(50) NOT NULL default '',
  `component_id` varchar(36) NOT NULL default '',
  `component_name` varchar(50) NOT NULL default '',
  `total_paper` float default '0',
  `total_prepress` float default '0',
  `total_press` float default '0',
  `total_operations` float default '0',
  `paper_singleprice` float default NULL,
  `date_entered` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `assigned_user_id` varchar(36) default NULL,
  `modified_user_id` varchar(36) default NULL,
  `created_by` varchar(36) default NULL,
  `name` varchar(50) NOT NULL default '',
  `description` text,
  `deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 PACK_KEYS=0;

-- 
-- Дъмп (схема) на данните в таблицата `componentestimate`
-- 

INSERT INTO `componentestimate` VALUES ('c70004b8-1e38-8555-d08e-46c02a2f9a6e', 'a5a08eeb-0be7-f066-2677-464d699203bc', '', '598457bc-776a-9154-9b63-4652c9ce58cb', '', 3690, 0, 3060, 800, NULL, '2007-08-13 09:56:59', '2007-08-13 10:00:22', '1', '1', '1', 'Калкулация-Каталог "Пресфото"-2', NULL, 1);
INSERT INTO `componentestimate` VALUES ('e15afbe3-7acd-12e4-66d3-46c02b1d5f64', 'a5a08eeb-0be7-f066-2677-464d699203bc', 'Каталог Пресфото', '598457bc-776a-9154-9b63-4652c9ce58cb', 'Каталог "Пресфото"-2', 3690, 335, 3060, 800, NULL, '2007-08-13 10:00:40', '2007-08-13 10:00:40', '1', '1', '1', 'Калкулация-Каталог "Пресфото"-2', NULL, 0);
INSERT INTO `componentestimate` VALUES ('841acd91-c7cb-9d38-5411-46c57f253c26', 'a5a08eeb-0be7-f066-2677-464d699203bc', 'Каталог Пресфото', '598457bc-776a-9154-9b63-4652c9ce58cb', 'Каталог "Пресфото"-2', 3690, 335, 3060, 800, NULL, '2007-08-17 10:57:41', '2007-08-17 10:57:41', '1', '1', '1', 'Калкулация-Каталог "Пресфото"-2', NULL, 0);
INSERT INTO `componentestimate` VALUES ('34e8c0bc-479e-4471-7c41-46c5aa6e8386', 'a5a08eeb-0be7-f066-2677-464d699203bc', 'Каталог Пресфото', '598457bc-776a-9154-9b63-4652c9ce58cb', 'Каталог "Пресфото"-2', 3690, 335, 3060, 800, NULL, '2007-08-17 14:03:51', '2007-08-17 14:03:51', '1', '1', '1', '-Каталог "Пресфото"-2', NULL, 0);

-- --------------------------------------------------------

-- 
-- Структура на таблица `componentink`
-- 

DROP TABLE IF EXISTS `componentink`;
CREATE TABLE `componentink` (
  `id` varchar(36) NOT NULL default '',
  `component_id` varchar(36) NOT NULL default '',
  `color_id` varchar(36) NOT NULL default '',
  `side` varchar(50) NOT NULL default '',
  `date_entered` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_user_id` varchar(36) default NULL,
  `created_by` varchar(36) default NULL,
  `description` text,
  `deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 PACK_KEYS=0;

-- 
-- Дъмп (схема) на данните в таблицата `componentink`
-- 

INSERT INTO `componentink` VALUES ('ea0c3a0b-9bba-1532-158e-46a75b116c96', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-07-25 14:15:28', '2007-08-01 09:50:29', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('454e1d7e-4cce-46d8-175c-46a75a3aebe1', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-07-25 14:15:26', '2007-08-01 09:50:29', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('a4fcbecd-f2a5-8987-c2fd-46a75a3ffba3', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-07-25 14:15:23', '2007-08-01 09:50:29', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('1140ddff-717c-f096-ec80-46a75a249b20', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-07-25 14:15:21', '2007-08-01 09:50:29', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('124c4ac5-a310-7d00-8c3c-46b057b7d47a', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-01 09:50:29', '2007-08-01 13:49:10', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('1378ecdc-43a0-23a7-98e6-46b0576ed9f3', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-01 09:50:29', '2007-08-01 13:49:10', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('141c86aa-8087-fe49-b283-46b05720ade3', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-01 09:50:29', '2007-08-01 13:49:10', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('14cf9164-5d23-e73e-804a-46b057091446', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-01 09:50:29', '2007-08-01 13:49:10', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('6fa5ec0b-5d7a-3e4b-ee61-46b08f9aaed1', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-01 13:49:10', '2007-08-02 17:16:22', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('70a7a5ad-2b4c-9d1e-0712-46b08fe28cea', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-01 13:49:10', '2007-08-02 17:16:22', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('71a20eb2-9c98-e7d8-92dc-46b08faa79fa', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-01 13:49:10', '2007-08-02 17:16:22', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('721ead44-71a6-af9a-2d82-46b08f614aee', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-01 13:49:10', '2007-08-02 17:16:22', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('5d16fdfa-0ab5-2956-aac5-46b211433add', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-02 17:16:22', '2007-08-02 17:18:48', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('5dbf403b-bbac-0e37-872a-46b2119bed64', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-02 17:16:22', '2007-08-02 17:18:48', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('5e85ebcb-5bef-3f40-3cca-46b21104f91a', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-02 17:16:22', '2007-08-02 17:18:48', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('5f862682-790b-b011-8ff5-46b21146c513', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-02 17:16:22', '2007-08-02 17:18:48', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('7cde3a7e-ded3-654f-bcf9-46b2120cb195', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-02 17:18:48', '2007-08-02 17:19:34', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('7d7838d8-3df9-c9c8-83cb-46b212a3cbb1', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-02 17:18:48', '2007-08-02 17:19:34', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('80330ff1-1f25-6eb7-f540-46b212624a36', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-02 17:18:48', '2007-08-02 17:19:34', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('80d82a07-2b69-beb3-535f-46b212af67e1', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-02 17:18:48', '2007-08-02 17:19:34', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('45131ae6-15d7-87a6-74fd-46b212940ec7', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-02 17:19:34', '2007-08-02 17:29:15', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('45db1e2d-07ed-a8bf-2daa-46b2128ee321', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-02 17:19:34', '2007-08-02 17:29:15', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('46900501-de42-5de7-426c-46b21244ca61', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-02 17:19:34', '2007-08-02 17:29:15', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('473fd96e-1770-bff9-9e09-46b212d4055e', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-02 17:19:34', '2007-08-02 17:29:15', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('161bdb8e-1562-a300-c7bd-46b214c14900', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-02 17:29:15', '2007-08-02 17:29:27', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('16c692dd-a53b-4954-3f3c-46b2143930d3', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-02 17:29:15', '2007-08-02 17:29:27', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('17734299-8c21-6d4d-72c1-46b214f88f22', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-02 17:29:15', '2007-08-02 17:29:27', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('180df5de-484f-f118-5c8a-46b214821770', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-02 17:29:15', '2007-08-02 17:29:27', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('4d9f84bd-b7fd-e41d-49f5-46b21402cc1c', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-02 17:29:27', '2007-08-02 17:29:42', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('4e4f2ed2-7d63-8de8-7e73-46b214a7a718', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-02 17:29:27', '2007-08-02 17:29:42', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('4f025443-3f28-7ed3-8a22-46b214422107', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-02 17:29:27', '2007-08-02 17:29:42', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('4f9acef5-737a-3a26-0ea1-46b214fa41f7', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-02 17:29:27', '2007-08-02 17:29:42', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('e622dcc4-e0a9-5af7-f543-46b2144fa808', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-02 17:29:42', '2007-08-02 17:30:08', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('e6c0eec2-d37a-c1c1-0e2f-46b214116e5e', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-02 17:29:42', '2007-08-02 17:30:08', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('e816ed45-db1c-3832-0992-46b214e7cc47', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-02 17:29:42', '2007-08-02 17:30:08', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('e8ae9247-e723-de95-9d9b-46b214f5a851', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-02 17:29:42', '2007-08-02 17:30:08', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('b6edc338-c658-86a4-12bb-46b21493ab98', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-02 17:30:08', '2007-08-02 17:30:37', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('b785192e-a388-bb60-2573-46b2148ac2e7', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-02 17:30:08', '2007-08-02 17:30:37', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('b8a2a783-82a5-7967-834f-46b214fdfb87', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-02 17:30:08', '2007-08-02 17:30:37', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('b93cb7f3-0a4d-7ee2-4911-46b2145ae620', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-02 17:30:08', '2007-08-02 17:30:37', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('e4b8e727-2584-e96e-b8c2-46b21432a312', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-02 17:30:37', '2007-08-02 17:30:46', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('e557cee4-b75e-9068-3c8e-46b2148292c7', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-02 17:30:37', '2007-08-02 17:30:46', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('e64a1abd-6d2b-7db6-fce0-46b21453eb32', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-02 17:30:37', '2007-08-02 17:30:46', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('e6f76a57-f940-4fbe-4027-46b21402e2b5', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-02 17:30:37', '2007-08-02 17:30:46', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('27b5486f-240f-129c-4fcf-46b2145d0b2c', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-02 17:30:46', '2007-08-02 17:34:23', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('28cd563b-df2b-706a-bbe2-46b2149c5c7b', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-02 17:30:46', '2007-08-02 17:34:23', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('298cb9f4-113e-cdf2-7f48-46b214598210', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-02 17:30:46', '2007-08-02 17:34:23', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('2a337f0c-8190-0c95-2142-46b21484a0de', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-02 17:30:46', '2007-08-02 17:34:23', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('197caed5-37dd-d334-a6a1-46b215897d31', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-02 17:34:23', '2007-08-02 17:34:36', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('1b512029-222d-f0a9-78a4-46b21590179c', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-02 17:34:23', '2007-08-02 17:34:36', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('1c0818af-e7a0-9a32-ef5b-46b21573c47f', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-02 17:34:23', '2007-08-02 17:34:36', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('1ca2e4a3-bcc7-a911-0fd2-46b215434474', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-02 17:34:23', '2007-08-02 17:34:36', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('a7089a8d-5cce-2c73-dbd9-46b2158fe643', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-02 17:34:36', '2007-08-02 17:46:13', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('a7f1e473-f5c2-e20d-1edf-46b215c921b1', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-02 17:34:36', '2007-08-02 17:46:13', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('a91946fe-3457-9294-9210-46b215abd479', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-02 17:34:36', '2007-08-02 17:46:13', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('a9d38c1c-8d82-946e-a87a-46b21567c9b9', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-02 17:34:36', '2007-08-02 17:46:13', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('de4a8150-a027-35ea-5212-46b2185075ae', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-02 17:46:13', '2007-08-02 17:47:51', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('e36b7c9d-539c-e0c2-4b16-46b218f6fd9e', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-02 17:46:13', '2007-08-02 17:47:51', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('e435b6b3-355a-9053-5791-46b218043613', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-02 17:46:13', '2007-08-02 17:47:51', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('e7123cce-f143-a37e-8187-46b218d15118', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-02 17:46:13', '2007-08-02 17:47:51', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('93ff6247-6bd7-c701-73e5-46b2183e7142', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-02 17:47:51', '2007-08-02 17:49:50', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('94a90429-8935-7d23-a3eb-46b2188df436', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-02 17:47:51', '2007-08-02 17:49:50', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('95f5b4c9-de37-bcdf-fb20-46b2186f4d92', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-02 17:47:51', '2007-08-02 17:49:50', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('969c3728-97f7-9667-d39a-46b218a6c302', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-02 17:47:51', '2007-08-02 17:49:50', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('b3824b99-14dd-7acc-c68f-46b219e0dfad', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-02 17:49:50', '2007-08-02 18:09:55', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('b74ccffc-a729-39de-29c4-46b2199faade', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-02 17:49:50', '2007-08-02 18:09:55', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('b80d06b2-d270-cb25-d2bb-46b219082e71', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-02 17:49:50', '2007-08-02 18:09:55', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('b8b5d13f-76c0-25f9-3d3d-46b219e6d64f', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-02 17:49:50', '2007-08-02 18:09:55', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('e7b155dc-2332-ca01-98a7-46b21d3dd81a', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-02 18:09:55', '2007-08-02 18:11:33', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('ea854f02-6bcb-b74e-11fd-46b21d10e1ed', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-02 18:09:55', '2007-08-02 18:11:33', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('eb1e244a-8b47-79c1-e8f6-46b21d6132cb', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-02 18:09:55', '2007-08-02 18:11:33', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('ebc69f51-99ec-a087-3764-46b21d947dab', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-02 18:09:55', '2007-08-02 18:11:33', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('ec7d5ab6-4c03-5fb3-0f5c-46b21db9a75d', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-02 18:09:55', '2007-08-02 18:11:33', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('ef625146-18d5-618a-9e61-46b21db419f5', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-02 18:09:55', '2007-08-02 18:11:33', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('eff8634d-3d86-c10a-d309-46b21d8a6b96', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-02 18:09:55', '2007-08-02 18:11:33', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('f0a7247c-6a0f-40d3-3bfd-46b21df5d38c', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-02 18:09:55', '2007-08-02 18:11:33', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('42606be8-cb75-00b1-3ce0-46b21e4e1e2a', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-02 18:11:33', '2007-08-02 18:17:35', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('46044983-3046-98f8-e8c8-46b21e43d3cf', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-02 18:11:33', '2007-08-02 18:17:35', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('46a363ba-e126-e9b1-7f22-46b21ecd983f', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-02 18:11:33', '2007-08-02 18:17:35', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('4751887b-fbdd-051b-da90-46b21e403934', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-02 18:11:33', '2007-08-02 18:17:35', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('47f852d4-744a-254a-b021-46b21e7cd1a1', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-02 18:11:33', '2007-08-02 18:17:35', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('48959a10-8257-c2ae-759a-46b21e15ea72', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-02 18:11:33', '2007-08-02 18:17:35', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('493db870-9708-c696-c229-46b21ead1be8', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-02 18:11:33', '2007-08-02 18:17:35', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('49d14cf5-fbcd-e63f-de83-46b21e96b8d8', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-02 18:11:33', '2007-08-02 18:17:35', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('4a52e75a-b615-73af-67af-46b21fad4f18', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-02 18:17:35', '2007-08-02 18:19:34', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('4aedaf9c-a212-8b1e-1e3b-46b21f821c40', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-02 18:17:35', '2007-08-02 18:19:34', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('4bbdb7c5-ba76-63a6-0eec-46b21f7ccb46', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-02 18:17:35', '2007-08-02 18:19:34', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('4c730668-3283-23be-d797-46b21f9f9c30', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-02 18:17:35', '2007-08-02 18:19:34', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('4d40fd30-96ca-27ae-44be-46b21fdaf1fd', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-02 18:17:35', '2007-08-02 18:19:34', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('4e14c257-7f6c-699b-09fa-46b21fa87347', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-02 18:17:35', '2007-08-02 18:19:34', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('5051e8dc-534c-43ef-b475-46b21f2e5d28', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-02 18:17:35', '2007-08-02 18:19:34', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('50ebd50b-6214-9684-247c-46b21fd83397', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-02 18:17:35', '2007-08-02 18:19:34', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('f1ebb988-8131-24ac-6123-46b220080faa', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-02 18:19:34', '2007-08-02 18:19:59', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('50a40f3b-bfd2-ed97-9249-46b220a9cbd0', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-02 18:19:34', '2007-08-02 18:19:59', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('8d6a011f-72f1-b0e0-d803-46b22096228f', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-02 18:19:34', '2007-08-02 18:19:59', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('c88609b8-fd94-9846-8506-46b220392013', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-02 18:19:34', '2007-08-02 18:19:59', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('d4150f77-e28d-2201-db69-46b220775bbe', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-02 18:19:34', '2007-08-02 18:19:59', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('ddf9096d-8285-aa2c-b9b3-46b22024163e', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-02 18:19:34', '2007-08-02 18:19:59', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('e7800488-ef18-1971-2451-46b220b12b10', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-02 18:19:34', '2007-08-02 18:19:59', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('f30a0c91-e58f-454d-e5d4-46b22054c405', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-02 18:19:34', '2007-08-02 18:19:59', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('b85bb3fa-773d-7bff-f174-46b220042827', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-02 18:19:59', '2007-08-02 22:09:18', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('b90a31c0-38cf-fb6c-9c5e-46b220d2938a', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-02 18:19:59', '2007-08-02 22:09:18', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('b9af9269-0d39-902d-1d6d-46b220971a50', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-02 18:19:59', '2007-08-02 22:09:18', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('ba4b2850-cf89-6c65-79da-46b2200802e2', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-02 18:19:59', '2007-08-02 22:09:18', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('bb0d2a62-e90d-a133-5116-46b2201499da', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-02 18:19:59', '2007-08-02 22:09:18', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('bbaefd03-01fa-9c87-9564-46b220ae89b5', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-02 18:19:59', '2007-08-02 22:09:18', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('bf859923-d694-122d-81f8-46b220a7caff', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-02 18:19:59', '2007-08-02 22:09:18', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('c01cfa13-ae40-6e08-86a2-46b2204f52c1', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-02 18:19:59', '2007-08-02 22:09:18', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('ede050bc-bc7f-d927-01c4-46b256953c11', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-02 22:09:18', '2007-08-07 07:24:29', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('ee827ddb-dfda-70a2-ae34-46b256bda474', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-02 22:09:18', '2007-08-07 07:24:32', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('ef4aaf9c-f8f5-a794-d8ab-46b256b4c8c3', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-02 22:09:18', '2007-08-07 07:24:34', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('efe8c224-775c-db28-81d8-46b256a8a3d8', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-02 22:09:18', '2007-08-07 07:24:36', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('f0adb3aa-82e0-0c89-cf79-46b256889738', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-02 22:09:18', '2007-08-07 07:24:37', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('f15b4aec-b623-3bad-0c30-46b25621fd8f', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-02 22:09:18', '2007-08-07 07:24:39', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('f1f92650-6190-9dc1-b683-46b256ea5f17', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-02 22:09:18', '2007-08-07 07:24:41', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('f2b377aa-74c4-5cff-bcd4-46b256894b9c', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-02 22:09:18', '2007-08-07 07:24:43', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('c7f87fb7-7434-e046-8646-46b81eb9078b', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-07 07:24:48', '2007-08-07 07:32:38', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('78f70ec8-75f8-9938-3ccd-46b81e3de2ac', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-07 07:25:59', '2007-08-07 07:32:38', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('ce4006a4-b0a0-1d00-eafa-46b81e692f21', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-07 07:26:01', '2007-08-07 07:32:38', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('ed9962a7-f743-52c2-d322-46b81e786c83', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-07 07:26:04', '2007-08-07 07:32:38', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('e99d8d09-3841-6c67-b3ac-46b81e3353f9', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-07 07:26:07', '2007-08-07 07:32:38', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('1e68c28e-34d0-f71f-93f0-46b81e33085e', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-07 07:26:11', '2007-08-07 07:32:38', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('19a10ce3-792e-74b7-3df0-46b81e3caedc', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-07 07:26:14', '2007-08-07 07:32:38', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('14045f4b-182d-7634-154e-46b81e686687', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-07 07:26:17', '2007-08-07 07:32:38', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('59499f0d-acaf-b05d-4cfa-46b8201b48cc', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-07 07:32:38', '2007-08-07 07:32:49', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('599b16c2-83ca-9588-0586-46b820e56810', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-07 07:32:38', '2007-08-07 07:32:49', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('59e80fcd-a2fd-cc6a-9960-46b8208f35f9', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-07 07:32:38', '2007-08-07 07:32:49', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('5a3584c5-085d-99a7-36c2-46b8205d2b6d', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-07 07:32:38', '2007-08-07 07:32:49', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('5a8f3216-e347-ae80-0bed-46b8201c35c1', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-07 07:32:38', '2007-08-07 07:32:49', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('5adcb834-931c-3e49-1d75-46b820372503', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-07 07:32:38', '2007-08-07 07:32:49', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('5b28fdbf-2c54-a09d-cc55-46b82071d263', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-07 07:32:38', '2007-08-07 07:32:49', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('5b749dac-a3a6-63e1-fc26-46b820d5778a', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-07 07:32:38', '2007-08-07 07:32:49', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('7cad5580-d176-f640-667b-46b820e18230', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-07 07:32:49', '2007-08-07 07:33:44', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('7d0fa6cd-ed53-7116-c610-46b8208d017d', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-07 07:32:49', '2007-08-07 07:33:44', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('7d5e9f7a-8a3e-c77c-bdc1-46b820744daa', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-07 07:32:49', '2007-08-07 07:33:44', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('7daf435b-6cd9-07df-4e88-46b820f7004f', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-07 07:32:49', '2007-08-07 07:33:44', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('7e25a6b1-bda5-768a-5d70-46b820b4cbb1', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-07 07:32:49', '2007-08-07 07:33:44', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('7e9235ea-c35d-6b96-77df-46b8207019c6', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-07 07:32:49', '2007-08-07 07:33:44', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('7ee3e72a-ca49-65ac-cdbf-46b820988dda', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-07 07:32:49', '2007-08-07 07:33:44', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('7f325fb2-6700-87d7-74f7-46b820859cfc', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-07 07:32:49', '2007-08-07 07:33:44', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('e9526361-2664-23ea-5960-46b8205f9728', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-07 07:33:44', '2007-08-07 07:46:07', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('e9b25fbd-e566-d170-9556-46b82022ed6d', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-07 07:33:44', '2007-08-07 07:46:07', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('ea170ee2-0f21-053f-5b5d-46b820f0905d', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-07 07:33:44', '2007-08-07 07:46:07', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('ea691b07-07e6-722d-5b2c-46b8206accbd', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-07 07:33:44', '2007-08-07 07:46:07', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('eac83fdf-addb-cbcf-675a-46b8202f4cc5', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-07 07:33:44', '2007-08-07 07:46:07', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('eb321d8e-51f0-2c81-07ac-46b820798fa4', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-07 07:33:44', '2007-08-07 07:46:07', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('eb88bfb1-d9c6-7b63-b783-46b820a4be88', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-07 07:33:44', '2007-08-07 07:46:07', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('ebdfc260-fa30-b77a-8aa6-46b820cebc8e', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-07 07:33:44', '2007-08-07 07:46:07', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('af0c5f5c-2ad3-fd11-01f8-46b8236f19c5', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-07 07:46:07', '2007-08-07 07:47:38', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('af74573d-4ece-c1cc-8ab6-46b8232ed953', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-07 07:46:07', '2007-08-07 07:47:38', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('afcde8a2-1a00-82b2-3f54-46b8235a395f', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-07 07:46:07', '2007-08-07 07:47:38', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('b01eee13-f229-0c4a-6b17-46b8231a528b', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-07 07:46:07', '2007-08-07 07:47:38', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('b0801921-98d4-f46b-a592-46b823d45afd', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-07 07:46:07', '2007-08-07 07:47:38', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('b0cc85aa-7034-e275-f110-46b823d8fcf0', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-07 07:46:07', '2007-08-07 07:47:38', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('b119c24b-c64e-dc6d-ad15-46b823502e5a', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-07 07:46:07', '2007-08-07 07:47:38', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('b1651433-40b3-29ec-18f6-46b8233ba9b4', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-07 07:46:07', '2007-08-07 07:47:38', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('c70e6169-a898-7ff1-af00-46b82302e4f8', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-07 07:47:38', '2007-08-07 07:48:24', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('c75fdda3-9def-e3d1-cdee-46b823448e5e', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-07 07:47:38', '2007-08-07 07:48:24', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('c7ad0cc0-d396-7e89-987a-46b82395865b', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-07 07:47:38', '2007-08-07 07:48:24', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('c7f8216f-d155-1572-d312-46b823a6215c', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-07 07:47:38', '2007-08-07 07:48:24', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('c8551b14-4c60-2898-abbd-46b82367b03e', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-07 07:47:38', '2007-08-07 07:48:24', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('c8a373f3-a8d2-86ea-d324-46b8234bc83e', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-07 07:47:38', '2007-08-07 07:48:24', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('c8ee888b-1ce0-80bd-a611-46b823b76bc8', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-07 07:47:38', '2007-08-07 07:48:24', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('c939a2a7-0e66-c3ff-51a1-46b82332f724', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-07 07:47:38', '2007-08-07 07:48:24', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('3a895704-9f97-f897-c571-46b82396ae15', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-07 07:48:24', '2007-08-07 07:50:18', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('3aed1293-5980-0af1-bcc3-46b823798f53', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-07 07:48:24', '2007-08-07 07:50:18', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('3b40cd67-9943-2793-8cd8-46b823f109d0', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-07 07:48:24', '2007-08-07 07:50:18', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('3b9adb93-3bef-bd93-17fa-46b82320aaef', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-07 07:48:24', '2007-08-07 07:50:18', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('3c10d601-060a-20ba-98a2-46b8239544cf', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-07 07:48:24', '2007-08-07 07:50:18', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('3c69d85a-91e1-9d93-2647-46b823346596', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-07 07:48:24', '2007-08-07 07:50:18', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('3cbd1f70-2452-45e0-fb99-46b823aa0a97', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-07 07:48:24', '2007-08-07 07:50:18', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('3d187fde-baed-9ecc-80e9-46b823259a3c', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-07 07:48:24', '2007-08-07 07:50:18', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('ba336d22-ba68-67ce-6d19-46b8247d3208', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-07 07:50:18', '2007-08-07 07:52:17', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('ba943be7-009b-72ae-6259-46b824a4e255', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-07 07:50:18', '2007-08-07 07:52:17', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('baebd9d3-808c-a11b-18a6-46b8247407f0', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-07 07:50:18', '2007-08-07 07:52:17', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('bb3d796a-8481-ae16-5fc0-46b8247101c0', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-07 07:50:18', '2007-08-07 07:52:17', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('bb9b3d6c-6cd2-24c6-0135-46b82416b4a4', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-07 07:50:18', '2007-08-07 07:52:17', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('bbea7f5b-7115-d8ee-fe93-46b824808f1b', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-07 07:50:18', '2007-08-07 07:52:17', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('bc3731a4-226e-3939-3ed0-46b824af9ea3', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-07 07:50:18', '2007-08-07 07:52:17', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('bc836f70-9134-878b-b165-46b82455abd3', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-07 07:50:18', '2007-08-07 07:52:17', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('aed86009-08f5-80cc-9441-46b8245b7f2a', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-07 07:52:17', '2007-08-07 07:55:13', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('af31fe91-3265-2049-2541-46b824d31c0a', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-07 07:52:17', '2007-08-07 07:55:13', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('af82e413-4ade-5b43-126f-46b824c88fd7', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-07 07:52:17', '2007-08-07 07:55:13', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('afd02490-b99c-1b06-75c7-46b8244f78cd', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-07 07:52:17', '2007-08-07 07:55:13', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('b02868bd-b595-f47b-e6d0-46b824fc8525', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-07 07:52:17', '2007-08-07 07:55:13', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('b07c7327-5534-dcac-77fc-46b8243d6740', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-07 07:52:17', '2007-08-07 07:55:13', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('b0ca0e99-48f0-b41e-9a38-46b824133378', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-07 07:52:17', '2007-08-07 07:55:13', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('b116d7f8-1e30-7890-440a-46b8242208fd', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-07 07:52:17', '2007-08-07 07:55:13', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('9a3b4844-f818-1e60-7775-46b8257d2d67', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-07 07:55:13', '2007-08-07 07:55:53', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('9a9570df-0b11-605d-ab60-46b825009bfb', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-07 07:55:13', '2007-08-07 07:55:53', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('9aeb89f1-07a6-e95b-e5e9-46b825e09086', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-07 07:55:13', '2007-08-07 07:55:53', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('9b3b9493-8158-3b92-7ae3-46b8251cb6e9', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-07 07:55:13', '2007-08-07 07:55:53', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('9b96058c-1b4f-440c-39d4-46b825123d7d', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-07 07:55:13', '2007-08-07 07:55:53', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('9be37801-a0ca-8da2-ec3a-46b825a425f3', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-07 07:55:13', '2007-08-07 07:55:53', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('9c30e351-470c-6bb0-281e-46b825c46c1f', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-07 07:55:13', '2007-08-07 07:55:53', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('9c7f314b-4991-e2f7-544f-46b82594f87a', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-07 07:55:13', '2007-08-07 07:55:53', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('e14f032d-2e57-0185-1fe3-46b82586a976', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-07 07:55:53', '2007-08-07 07:57:04', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('e1a30c40-7e42-fea7-ae2e-46b825eb62d8', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-07 07:55:53', '2007-08-07 07:57:04', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('e1f028b4-e302-2451-3dce-46b8253ee8b3', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-07 07:55:53', '2007-08-07 07:57:04', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('e23ccad8-9bd3-8792-be86-46b825079363', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-07 07:55:53', '2007-08-07 07:57:04', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('e2996944-7f81-edbb-7272-46b8256e6443', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-07 07:55:53', '2007-08-07 07:57:04', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('e2ea16ae-6d4e-c19f-1304-46b825050556', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-07 07:55:53', '2007-08-07 07:57:04', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('e33759ad-0fc8-c10f-857e-46b825424824', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-07 07:55:53', '2007-08-07 07:57:04', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('e38480ab-f46e-0b02-eea0-46b825d02d96', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-07 07:55:53', '2007-08-07 07:57:04', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('b0250865-6ca0-1b4f-158a-46b825c1e245', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-07 07:57:04', '2007-08-07 07:58:26', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('b5890496-a10e-cc93-5882-46b825b5d999', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-07 07:57:04', '2007-08-07 07:58:26', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('bab809d1-773d-1893-df39-46b825c5ab05', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-07 07:57:04', '2007-08-07 07:58:26', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('bfc20f6a-a67f-bcc4-4ff9-46b825489736', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-07 07:57:04', '2007-08-07 07:58:26', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('c66f09d3-9301-6e86-1a1b-46b8250d9fae', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-07 07:57:04', '2007-08-07 07:58:26', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('cbec00f6-c776-95a0-e913-46b825bbedfa', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-07 07:57:04', '2007-08-07 07:58:26', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('d16d015e-1069-e64d-0347-46b825d4e5bc', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-07 07:57:04', '2007-08-07 07:58:26', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('d642058e-daaf-590b-d551-46b82561fc6a', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-07 07:57:04', '2007-08-07 07:58:26', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('e6b21abd-fe1e-d0d7-8073-46b8260316bb', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-07 07:58:26', '2007-08-07 08:00:48', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('e70b6598-3c0e-2d91-e3b8-46b8269b7735', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-07 07:58:26', '2007-08-07 08:00:48', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('e7615abb-9ac7-326a-6a57-46b826e51620', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-07 07:58:26', '2007-08-07 08:00:48', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('e8b7db09-5db7-f545-3d01-46b826950e7e', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-07 07:58:27', '2007-08-07 08:00:48', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('e9231490-08ea-baed-74bc-46b8264a48c9', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-07 07:58:27', '2007-08-07 08:00:48', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('e97710fa-6792-32f7-e6f2-46b826d4ebd3', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-07 07:58:27', '2007-08-07 08:00:48', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('e9d518fa-903b-6b71-5fb0-46b826af44fe', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-07 07:58:27', '2007-08-07 08:00:48', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('ea39612b-4f94-6ff1-4c7d-46b826d572d0', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-07 07:58:27', '2007-08-07 08:00:48', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('24dc9803-c733-6476-98f8-46b826ae7962', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-07 08:00:48', '2007-08-07 12:23:47', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('252fcd1d-8ca1-5135-4df2-46b82665bc4f', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-07 08:00:48', '2007-08-07 12:23:47', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('257ce0b3-848d-ef47-203d-46b826acc4b8', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-07 08:00:48', '2007-08-07 12:23:47', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('25c8787e-eca7-b606-4544-46b826fa5a82', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-07 08:00:48', '2007-08-07 12:23:47', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('262a558a-6fbd-f058-da32-46b826eafe41', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-07 08:00:48', '2007-08-07 12:23:47', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('2677f15e-fb38-f9bb-6d90-46b826481cd0', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-07 08:00:48', '2007-08-07 12:23:47', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('26c5bb3c-64b7-66bd-1a9a-46b8269af86c', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-07 08:00:48', '2007-08-07 12:23:47', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('27122671-55ab-d295-0722-46b826c51863', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-07 08:00:48', '2007-08-07 12:23:47', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('da7d0012-261c-75c4-4079-46b86432e2bb', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-07 12:23:47', '2007-08-07 12:24:45', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('daf8df3d-2f7b-fed5-d307-46b86483bab8', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-07 12:23:47', '2007-08-07 12:24:45', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('db6c2ee0-3e72-9f9e-c2b8-46b8646bb14e', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-07 12:23:47', '2007-08-07 12:24:45', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('dbc52ca8-3a86-c5cf-efd1-46b8644c0004', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-07 12:23:47', '2007-08-07 12:24:45', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('dc2b4c98-d42a-9ee4-073d-46b8646e0171', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-07 12:23:47', '2007-08-07 12:24:45', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('dc7d9ec7-8302-81ed-7ff9-46b864a6cbed', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-07 12:23:47', '2007-08-07 12:24:45', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('dcd7c17c-dddf-29a4-0693-46b86411c4d2', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-07 12:23:47', '2007-08-07 12:24:45', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('dd2f2aa7-ed24-cacb-6597-46b864506556', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-07 12:23:47', '2007-08-07 12:24:45', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('51bb1b12-fd67-cc90-e770-46b864fe7744', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-07 12:24:45', '2007-08-07 12:39:02', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('52128e6a-4697-3381-bad2-46b864333168', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-07 12:24:45', '2007-08-07 12:39:02', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('52611816-589d-7918-7a91-46b8642e1d81', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-07 12:24:45', '2007-08-07 12:39:02', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('531db882-f49c-8a56-371d-46b86481b5b1', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-07 12:24:45', '2007-08-07 12:39:02', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('538f4ce2-1083-9b4b-a878-46b8642d41c3', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-07 12:24:45', '2007-08-07 12:39:02', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('53e4eb44-4b50-3343-07ed-46b864b8d66c', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-07 12:24:45', '2007-08-07 12:39:02', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('54323fde-9f6b-7a73-4a7a-46b864943590', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-07 12:24:45', '2007-08-07 12:39:02', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('54806873-1ce4-ed8c-8192-46b8643af6d3', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-07 12:24:45', '2007-08-07 12:39:02', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('c91606a7-521d-7ef0-cab1-46b867e07b03', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-07 12:39:02', '2007-08-08 11:01:53', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('ea100245-78ce-cdcb-c6e9-46b867cfdff0', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-07 12:39:02', '2007-08-08 11:01:53', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('ef130d07-80f9-2ceb-c2ce-46b867854fe7', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-07 12:39:02', '2007-08-08 11:01:53', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('f415021c-943a-0419-7ee5-46b867b57b95', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-07 12:39:02', '2007-08-08 11:01:53', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('faab06e9-b662-e7cc-da12-46b86750f3c4', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-07 12:39:02', '2007-08-08 11:01:53', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('ff8c01c7-e904-373f-ed92-46b86724a02d', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-07 12:39:02', '2007-08-08 11:01:53', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('104fbbf4-594a-4416-4803-46b867754cb5', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-07 12:39:02', '2007-08-08 11:01:53', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('10a28d2c-3e05-0f5e-0fd9-46b867ada4d3', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-07 12:39:02', '2007-08-08 11:01:53', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('d992b04e-fe35-cbdb-c4d2-46b9a253a12b', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-08 11:01:53', '2007-08-08 11:20:05', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('da07f410-18b4-25f7-adb7-46b9a238ba41', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-08 11:01:53', '2007-08-08 11:20:05', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('da5cdb16-541f-bcd5-052e-46b9a2ca6f51', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-08 11:01:53', '2007-08-08 11:20:05', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('dab60d48-884e-d00d-3155-46b9a2763ab5', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-08 11:01:53', '2007-08-08 11:20:05', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('db38c95c-71cf-d678-6791-46b9a2fa45a8', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-08 11:01:53', '2007-08-08 11:20:05', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('dbb25edc-72f7-570b-c15d-46b9a2d75f6c', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-08 11:01:53', '2007-08-08 11:20:05', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('dc16f6f1-c7b8-55a4-9048-46b9a28d2515', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-08 11:01:53', '2007-08-08 11:20:05', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('dc73a321-3b3a-0948-e792-46b9a247a38f', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-08 11:01:53', '2007-08-08 11:20:05', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('7f8b0c6c-1276-cf70-e881-46b9a6eff8e4', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-08 11:20:05', '2007-08-08 11:21:01', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('84c10a73-f69c-ef2b-954b-46b9a675fa01', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-08 11:20:05', '2007-08-08 11:21:01', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('89c30332-147a-aaff-3a90-46b9a614152d', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-08 11:20:05', '2007-08-08 11:21:01', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('8f0e0dd8-57f0-78bd-b0dc-46b9a6d11562', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-08 11:20:05', '2007-08-08 11:21:01', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('95250f9e-6ada-d630-fd36-46b9a6170e73', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-08 11:20:05', '2007-08-08 11:21:01', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('9a15073c-02d7-4da7-bd08-46b9a6c95d6e', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-08 11:20:05', '2007-08-08 11:21:01', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('9eeb043a-d72c-0e8b-aa40-46b9a63edc0d', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-08 11:20:05', '2007-08-08 11:21:01', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('a4b9001e-c285-c9f1-f397-46b9a64bf17c', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-08 11:20:05', '2007-08-08 11:21:01', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('60cc32f7-3cac-478a-80c8-46b9a7081adb', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-08 11:21:01', '2007-08-08 11:22:04', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('611c2b3e-9a5a-1f7e-69d5-46b9a718e42a', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-08 11:21:01', '2007-08-08 11:22:04', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('616b88b9-700b-4b59-ae88-46b9a7432a7f', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-08 11:21:01', '2007-08-08 11:22:04', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('61b75cdd-c7ac-f3ca-cec2-46b9a72683a8', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-08 11:21:01', '2007-08-08 11:22:04', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('621960dc-027a-49c3-2238-46b9a74a0ba9', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-08 11:21:01', '2007-08-08 11:22:04', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('626cd53a-74c2-6251-c9dd-46b9a7f1ee63', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-08 11:21:01', '2007-08-08 11:22:04', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('62baa216-41c3-f31f-e21c-46b9a72de18b', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-08 11:21:01', '2007-08-08 11:22:04', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('63086736-466b-55be-96b8-46b9a7100ff6', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-08 11:21:01', '2007-08-08 11:22:04', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('64d588ed-fd95-c033-380e-46b9a7d07c66', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-08 11:22:04', '2007-08-08 11:33:30', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('652dcdd0-c658-ad37-1a40-46b9a7187c30', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-08 11:22:04', '2007-08-08 11:33:30', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('657eb7f8-5a5b-f0d6-02c9-46b9a7508da1', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-08 11:22:04', '2007-08-08 11:33:30', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('65cebe3a-fcad-3ebe-f0dd-46b9a7c0b71e', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-08 11:22:04', '2007-08-08 11:33:30', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('663116a9-a440-e66f-b312-46b9a73cef41', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-08 11:22:04', '2007-08-08 11:33:30', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('6684dedb-e14d-4e2b-fcc4-46b9a7482da8', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-08 11:22:04', '2007-08-08 11:33:30', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('66d4212f-be39-12fb-d10a-46b9a71221fa', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-08 11:22:04', '2007-08-08 11:33:30', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('6721b396-d22e-caa6-bf0f-46b9a72bf00e', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-08 11:22:04', '2007-08-08 11:33:30', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('7f4e0adf-4fa2-c550-3dfb-46b9aa8f7f28', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-08 11:33:30', '2007-08-09 07:48:15', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('84750924-00e4-c924-b5ae-46b9aa950143', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-08 11:33:30', '2007-08-09 07:48:15', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('894000ce-f66d-0d3f-a515-46b9aa344d11', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-08 11:33:30', '2007-08-09 07:48:15', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('8e800418-79d3-2629-fdd2-46b9aa1916fa', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-08 11:33:30', '2007-08-09 07:48:15', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('948d0d3a-a496-ac63-7c84-46b9aab1fe7a', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-08 11:33:30', '2007-08-09 07:48:15', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('99aa0d60-7a8e-81c8-925b-46b9aa5de386', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-08 11:33:30', '2007-08-09 07:48:15', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('9f3a0b74-c3db-e0fb-f051-46b9aa1f36b9', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-08 11:33:30', '2007-08-09 07:48:15', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('a49203fb-5d71-0814-b45d-46b9aa38c282', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-08 11:33:30', '2007-08-09 07:48:15', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('c03dfd70-bb8a-d60b-8a94-46bac6d9942f', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-09 07:48:15', '2007-08-09 08:12:00', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('c0954262-0430-c91b-945f-46bac6acfdc6', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-09 07:48:15', '2007-08-09 08:12:00', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('c0f210fc-a170-4d46-a15d-46bac634fedd', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-09 07:48:15', '2007-08-09 08:12:00', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('c14ae599-da3c-e8e2-b2d0-46bac6507987', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-09 07:48:15', '2007-08-09 08:12:00', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('c1ab65b5-55db-bdc8-1484-46bac60b7121', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-09 07:48:15', '2007-08-09 08:12:00', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('c1fc1aaf-1bfa-771e-135b-46bac6d3339a', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-09 07:48:15', '2007-08-09 08:12:00', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('c259e406-d3a2-8780-eb6b-46bac60e4cd4', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-09 07:48:15', '2007-08-09 08:12:00', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('c2b21936-d76e-ea2e-7b6c-46bac60334bb', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-09 07:48:15', '2007-08-09 08:12:00', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('a4e026b2-0689-3c91-7beb-46bacc308024', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-09 08:12:00', '2007-08-09 10:43:45', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('a542935b-54a3-1789-7ddf-46bacc8fa998', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-09 08:12:00', '2007-08-09 10:43:45', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('a594153e-9804-3edd-a393-46bacc6bff14', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-09 08:12:00', '2007-08-09 10:43:45', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('a5df9c7f-c0fe-3d12-faad-46bacc773552', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-09 08:12:00', '2007-08-09 10:43:45', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('a63add6a-5bd5-f024-a50d-46bacc4e23d2', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-09 08:12:00', '2007-08-09 10:43:45', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('a68a15bc-5b13-1275-1377-46bacc7e4a35', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-09 08:12:00', '2007-08-09 10:43:45', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('a6e5fc09-8af1-5139-fd04-46bacce1522a', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-09 08:12:00', '2007-08-09 10:43:45', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('a73389fc-c35b-88b8-f423-46bacc6605f6', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-09 08:12:00', '2007-08-09 10:43:45', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('672401ac-d357-5665-3319-46baefa0b1c8', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-09 10:43:45', '2007-08-10 09:18:47', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('67a9dc4e-f40c-8dfa-128d-46baef94eb32', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-09 10:43:45', '2007-08-10 09:18:47', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('681cd22b-a816-e8b7-2cf6-46baefdadc0b', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-09 10:43:45', '2007-08-10 09:18:47', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('689bb2b6-69ac-9b99-fcd8-46baef4045bd', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-09 10:43:45', '2007-08-10 09:18:47', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('693ef443-fb87-b47c-60ac-46baef595a8a', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-09 10:43:45', '2007-08-10 09:18:47', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('69c9d8ac-ce97-d6d0-b3aa-46baef7b495f', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-09 10:43:45', '2007-08-10 09:18:47', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('6a4b8ba5-5825-b23f-b650-46baef335d2b', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-09 10:43:45', '2007-08-10 09:18:47', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('6aa982ad-96c2-50be-7b2c-46baef713935', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-09 10:43:45', '2007-08-10 09:18:47', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('e124b906-e103-1986-9f15-46bc2dfc944f', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-10 09:18:47', '2007-08-10 09:19:08', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('e17b0950-f1b5-afcd-6a50-46bc2d7806ea', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-10 09:18:47', '2007-08-10 09:19:08', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('e1cb12ef-6fa1-4eae-03d9-46bc2dda7a1f', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-10 09:18:47', '2007-08-10 09:19:08', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('e217ab6b-d096-4195-5327-46bc2d248c0b', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-10 09:18:47', '2007-08-10 09:19:08', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('e2789634-1e85-50dc-95af-46bc2de0db50', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-10 09:18:47', '2007-08-10 09:19:08', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('e2cb2eb8-4311-5f5c-473e-46bc2d8c52c9', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-10 09:18:47', '2007-08-10 09:19:08', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('e31f2380-b6af-c6b1-5786-46bc2d500674', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-10 09:18:47', '2007-08-10 09:19:08', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('e36dc960-37c0-95a9-7c7d-46bc2d4b7814', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-10 09:18:47', '2007-08-10 09:19:08', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('1b2c8ad9-a364-d98f-962d-46bc2debefa0', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-10 09:19:08', '2007-08-10 13:54:34', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('1b847e27-aaed-3426-2f10-46bc2d1f0258', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-10 09:19:08', '2007-08-10 13:54:34', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('1bd02f81-d23e-ae1d-34fe-46bc2dbd7d2a', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-10 09:19:08', '2007-08-10 13:54:34', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('1c1e4fe8-8396-c881-2984-46bc2da41b82', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-10 09:19:08', '2007-08-10 13:54:34', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('1c844120-dc0f-360e-6fce-46bc2d4836dc', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-10 09:19:08', '2007-08-10 13:54:34', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('1cd3acc0-8fca-bc7c-d5b3-46bc2d07c9f6', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-10 09:19:08', '2007-08-10 13:54:34', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('1d204113-4c9e-e001-3317-46bc2d667d44', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-10 09:19:08', '2007-08-10 13:54:34', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('1d6f6147-0286-2e3e-5ca6-46bc2dec2c86', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-10 09:19:08', '2007-08-10 13:54:35', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('1449f2f2-16e0-e17f-54ea-46bc6eff38d7', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-10 13:54:35', '2007-08-10 14:10:43', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('14c33f69-e558-58db-510a-46bc6ec194cb', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-10 13:54:35', '2007-08-10 14:10:43', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('153586b8-afd7-4063-9fa7-46bc6e517d51', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-10 13:54:35', '2007-08-10 14:10:43', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('158d04e7-3b19-2159-41cb-46bc6e94dddc', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-10 13:54:35', '2007-08-10 14:10:43', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('15ed003c-898c-e99d-d083-46bc6e72a6c7', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-10 13:54:35', '2007-08-10 14:10:43', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('1645d4f9-32fe-3cf6-e378-46bc6e31b0a3', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-10 13:54:35', '2007-08-10 14:10:43', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('16ab86ed-7aaa-cd29-75df-46bc6ee4a0b7', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-10 13:54:35', '2007-08-10 14:10:43', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('1707cef2-7ed7-31b1-055c-46bc6eca78ae', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-10 13:54:35', '2007-08-10 14:10:43', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('1f717dc9-107a-aafd-8aaf-46bc715bedd0', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-10 14:10:43', '2007-08-10 14:11:21', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('22b859d5-401e-178b-0dca-46bc717b3636', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-10 14:10:43', '2007-08-10 14:11:21', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('2322dea6-fb08-8f35-1264-46bc714e8480', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-10 14:10:43', '2007-08-10 14:11:21', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('2370d20f-07ba-880d-caaf-46bc71894bdf', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-10 14:10:43', '2007-08-10 14:11:21', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('23c9a1c6-f248-d269-0df5-46bc71986b17', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-10 14:10:43', '2007-08-10 14:11:21', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('2415caf9-6ca4-82b0-bf27-46bc71ae3bfe', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-10 14:10:43', '2007-08-10 14:11:21', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('246278e7-1f7e-cb38-fded-46bc716a6f26', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-10 14:10:43', '2007-08-10 14:11:21', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('24b0a229-82c0-91c1-30b6-46bc711abe69', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-10 14:10:43', '2007-08-10 14:11:21', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('2875d91f-bff1-3ad7-8d4b-46bc726fd3f8', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-10 14:11:21', '2007-08-23 09:41:26', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('28ce2314-a592-d8c3-6295-46bc72d02940', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-10 14:11:21', '2007-08-23 09:41:26', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('291c24a3-c0f6-b6c9-5ec0-46bc721de6bb', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-10 14:11:21', '2007-08-23 09:41:26', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('296bf83a-463f-680a-a4ee-46bc7212b598', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-10 14:11:21', '2007-08-23 09:41:26', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('29d59128-a76a-6ec3-d69b-46bc72998df9', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-10 14:11:21', '2007-08-23 09:41:26', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('2a27eca7-0a03-0e0d-deb9-46bc72fac742', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-10 14:11:21', '2007-08-23 09:41:26', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('2a769171-8437-8f62-090d-46bc7203beb5', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-10 14:11:21', '2007-08-23 09:41:26', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('2b042180-e912-f36c-e582-46bc72630693', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-10 14:11:21', '2007-08-23 09:41:26', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('88d1d02b-ad0a-1971-9b20-46c945dc2209', '629da741-d120-307b-0f49-46c94438e8c8', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-20 07:41:24', '2007-08-20 07:51:58', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('8b13a964-110e-d1b5-999c-46c9456948fc', '629da741-d120-307b-0f49-46c94438e8c8', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-20 07:41:24', '2007-08-20 07:51:59', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('8d404f20-033f-0a82-065b-46c945698a9a', '629da741-d120-307b-0f49-46c94438e8c8', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-20 07:41:24', '2007-08-20 07:51:59', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('8fa8d066-f0fb-fdce-d09d-46c9459c5d2e', '629da741-d120-307b-0f49-46c94438e8c8', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-20 07:41:24', '2007-08-20 07:51:59', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('950596fe-5b17-9f97-d982-46c9457cd0a6', '629da741-d120-307b-0f49-46c94438e8c8', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-20 07:41:24', '2007-08-20 07:51:59', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('973635f2-5ee0-a11d-8ffa-46c94537ffc2', '629da741-d120-307b-0f49-46c94438e8c8', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-20 07:41:24', '2007-08-20 07:51:59', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('996ee650-b6be-0c42-666e-46c945ee93a5', '629da741-d120-307b-0f49-46c94438e8c8', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-20 07:41:24', '2007-08-20 07:51:59', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('9ba1e02a-5329-ee28-439a-46c945d9963f', '629da741-d120-307b-0f49-46c94438e8c8', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-20 07:41:24', '2007-08-20 07:51:59', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('120bd14e-7a59-f684-43cb-46c94840c7be', '629da741-d120-307b-0f49-46c94438e8c8', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-20 07:51:59', '2007-08-20 08:19:11', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('13f7b9e2-41da-7171-a426-46c94838bc84', '629da741-d120-307b-0f49-46c94438e8c8', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-20 07:51:59', '2007-08-20 08:19:11', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('15cf8e37-259c-3b63-c7e0-46c9480e57e4', '629da741-d120-307b-0f49-46c94438e8c8', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-20 07:51:59', '2007-08-20 08:19:11', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('17c94fc5-4259-5bbd-ff7c-46c9485e86c6', '629da741-d120-307b-0f49-46c94438e8c8', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-20 07:51:59', '2007-08-20 08:19:11', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('19c80b04-a110-4541-dd0b-46c948ec02d1', '629da741-d120-307b-0f49-46c94438e8c8', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-20 07:51:59', '2007-08-20 08:19:11', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('1c294c5e-b526-c2f4-707f-46c948419659', '629da741-d120-307b-0f49-46c94438e8c8', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-20 07:51:59', '2007-08-20 08:19:11', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('1e48c674-2c24-515d-3e79-46c948c0797d', '629da741-d120-307b-0f49-46c94438e8c8', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-20 07:51:59', '2007-08-20 08:19:11', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('2128e7a1-afb8-0a96-e8e2-46c9485b991d', '629da741-d120-307b-0f49-46c94438e8c8', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-20 07:51:59', '2007-08-20 08:19:11', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('c4de1f51-492f-2aff-43d8-46c94ed4a591', '629da741-d120-307b-0f49-46c94438e8c8', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-20 08:19:11', '2007-08-20 08:19:38', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('c7181374-328a-1bd8-3d40-46c94e76631c', '629da741-d120-307b-0f49-46c94438e8c8', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-20 08:19:11', '2007-08-20 08:19:38', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('c9472b2c-611b-1d27-0993-46c94e322c1f', '629da741-d120-307b-0f49-46c94438e8c8', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-20 08:19:11', '2007-08-20 08:19:38', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('cb7b0e31-4f36-4f97-69bb-46c94e99539c', '629da741-d120-307b-0f49-46c94438e8c8', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-20 08:19:11', '2007-08-20 08:19:38', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('d099dbb7-4c56-9c54-0f6a-46c94e713478', '629da741-d120-307b-0f49-46c94438e8c8', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-20 08:19:11', '2007-08-20 08:19:38', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('d2d00595-0730-af78-1b90-46c94e2508aa', '629da741-d120-307b-0f49-46c94438e8c8', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-20 08:19:11', '2007-08-20 08:19:38', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('d5123274-58d5-31c2-9ceb-46c94e6a2034', '629da741-d120-307b-0f49-46c94438e8c8', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-20 08:19:11', '2007-08-20 08:19:38', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('d746486f-355e-d562-7160-46c94e89e99d', '629da741-d120-307b-0f49-46c94438e8c8', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-20 08:19:11', '2007-08-20 08:19:38', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('cb26ce26-3133-0c0b-1892-46c94e77a29a', '629da741-d120-307b-0f49-46c94438e8c8', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-20 08:19:38', '2007-08-20 08:20:04', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('cd988d6a-a089-2a6b-7320-46c94e4d9b58', '629da741-d120-307b-0f49-46c94438e8c8', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-20 08:19:38', '2007-08-20 08:20:04', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('cfe31a83-43dc-17b8-6378-46c94e615c07', '629da741-d120-307b-0f49-46c94438e8c8', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-20 08:19:38', '2007-08-20 08:20:04', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('d252a30f-2a02-9559-f4b0-46c94e624210', '629da741-d120-307b-0f49-46c94438e8c8', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-20 08:19:38', '2007-08-20 08:20:04', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('d7a93a61-3c79-5f08-fc55-46c94e28d6b0', '629da741-d120-307b-0f49-46c94438e8c8', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-20 08:19:38', '2007-08-20 08:20:04', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('da04434d-8af4-d653-0298-46c94ecfe66a', '629da741-d120-307b-0f49-46c94438e8c8', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-20 08:19:38', '2007-08-20 08:20:04', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('dc87da21-c854-74ca-9940-46c94e52398e', '629da741-d120-307b-0f49-46c94438e8c8', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-20 08:19:38', '2007-08-20 08:20:04', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('dee86491-600d-db68-b2bd-46c94ec3a05b', '629da741-d120-307b-0f49-46c94438e8c8', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-20 08:19:38', '2007-08-20 08:20:04', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('17d3066d-8197-ff6c-bc01-46c94e982bb8', '629da741-d120-307b-0f49-46c94438e8c8', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-20 08:20:04', '2007-08-20 11:58:33', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('1a0301a3-9822-220a-0152-46c94e99c681', '629da741-d120-307b-0f49-46c94438e8c8', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-20 08:20:04', '2007-08-20 11:58:33', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('1c304941-7310-036a-8abb-46c94ee74931', '629da741-d120-307b-0f49-46c94438e8c8', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-20 08:20:04', '2007-08-20 11:58:33', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('1e791b24-314e-3cf4-e7a5-46c94e427b20', '629da741-d120-307b-0f49-46c94438e8c8', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-20 08:20:04', '2007-08-20 11:58:33', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('23a849aa-c1b6-acb7-ff65-46c94ebeb607', '629da741-d120-307b-0f49-46c94438e8c8', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-20 08:20:04', '2007-08-20 11:58:33', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('26193e6b-69d4-9921-29c4-46c94e850b29', '629da741-d120-307b-0f49-46c94438e8c8', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-20 08:20:04', '2007-08-20 11:58:33', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('284af7b0-149c-3322-c8fc-46c94e632644', '629da741-d120-307b-0f49-46c94438e8c8', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-20 08:20:04', '2007-08-20 11:58:33', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('2a86be10-c59c-ed94-752f-46c94e5e3bd1', '629da741-d120-307b-0f49-46c94438e8c8', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-20 08:20:04', '2007-08-20 11:58:33', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('bc6ce0ef-5ab0-3c83-0815-46c981cf2a8e', '629da741-d120-307b-0f49-46c94438e8c8', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-20 11:58:33', '2007-08-20 11:59:00', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('beafe216-dc59-b9e1-e632-46c9816bed96', '629da741-d120-307b-0f49-46c94438e8c8', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-20 11:58:33', '2007-08-20 11:59:00', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('c0de1d41-5351-7fd2-a124-46c9811d8dd6', '629da741-d120-307b-0f49-46c94438e8c8', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-20 11:58:33', '2007-08-20 11:59:00', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('c2f8223d-58f0-277d-fa99-46c981bf0b97', '629da741-d120-307b-0f49-46c94438e8c8', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-20 11:58:33', '2007-08-20 11:59:00', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('c77b60d0-40e4-e28e-8bf2-46c981bf6b8c', '629da741-d120-307b-0f49-46c94438e8c8', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-20 11:58:33', '2007-08-20 11:59:00', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('c9a4376b-b33a-7ac7-6cf8-46c98101ef22', '629da741-d120-307b-0f49-46c94438e8c8', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-20 11:58:33', '2007-08-20 11:59:00', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('cbbec9f9-2893-e5c9-b2fa-46c981fe73b7', '629da741-d120-307b-0f49-46c94438e8c8', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-20 11:58:33', '2007-08-20 11:59:00', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('cde6f5f2-9417-9ea2-71e0-46c9812e27fe', '629da741-d120-307b-0f49-46c94438e8c8', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-20 11:58:33', '2007-08-20 11:59:00', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('f0eb0737-2b48-c6e0-df5b-46c9828906fc', '629da741-d120-307b-0f49-46c94438e8c8', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-20 11:59:00', '2007-08-20 12:23:12', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('112d4e20-5a08-4617-0b80-46c982438721', '629da741-d120-307b-0f49-46c94438e8c8', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-20 11:59:00', '2007-08-20 12:23:11', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('1346f1df-0fad-5f0f-89e7-46c982a4c9f0', '629da741-d120-307b-0f49-46c94438e8c8', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-20 11:59:00', '2007-08-20 12:23:11', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('15686838-264c-9c1e-72a4-46c982bcc836', '629da741-d120-307b-0f49-46c94438e8c8', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-20 11:59:00', '2007-08-20 12:23:11', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('19cffc8b-b471-8756-7885-46c982cb1df8', '629da741-d120-307b-0f49-46c94438e8c8', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-20 11:59:00', '2007-08-20 12:23:11', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('1c056147-6f96-c26d-c80e-46c982b00c09', '629da741-d120-307b-0f49-46c94438e8c8', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-20 11:59:00', '2007-08-20 12:23:11', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('1e27706f-252c-9f43-ee84-46c982b04c53', '629da741-d120-307b-0f49-46c94438e8c8', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-20 11:59:00', '2007-08-20 12:23:11', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('207d5bc5-ddb9-9206-7072-46c982e8d116', '629da741-d120-307b-0f49-46c94438e8c8', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-20 11:59:00', '2007-08-20 12:23:12', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('5b880429-41bd-ee68-6c65-46c9871a8dc2', '629da741-d120-307b-0f49-46c94438e8c8', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-20 12:23:12', '2007-08-21 07:03:44', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('7d870ea8-fc8b-800f-9d3e-46c987d9c5f5', '629da741-d120-307b-0f49-46c94438e8c8', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-20 12:23:12', '2007-08-21 07:03:44', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('a04d0433-ccb6-6e2d-7b09-46c98715aaa2', '629da741-d120-307b-0f49-46c94438e8c8', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-20 12:23:12', '2007-08-21 07:03:44', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('c2a1091c-3e2d-9e09-c785-46c987eecb35', '629da741-d120-307b-0f49-46c94438e8c8', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-20 12:23:12', '2007-08-21 07:03:44', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('10a87978-f396-0df7-74bd-46c987f48322', '629da741-d120-307b-0f49-46c94438e8c8', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-20 12:23:12', '2007-08-21 07:03:44', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('12c392e4-3a63-edaa-2778-46c987e1d655', '629da741-d120-307b-0f49-46c94438e8c8', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-20 12:23:12', '2007-08-21 07:03:44', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('14df8dcc-0aa1-7fe9-d3cb-46c9871bb7b2', '629da741-d120-307b-0f49-46c94438e8c8', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-20 12:23:12', '2007-08-21 07:03:44', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('170ac350-ead1-a031-401c-46c987331ef0', '629da741-d120-307b-0f49-46c94438e8c8', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-20 12:23:12', '2007-08-21 07:03:44', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('cbb6ee6d-fb88-a827-cca0-46ca8e970852', '629da741-d120-307b-0f49-46c94438e8c8', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-21 07:03:44', '2007-08-21 07:04:19', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('ce01f766-e528-3f99-a67c-46ca8e8a5b9b', '629da741-d120-307b-0f49-46c94438e8c8', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-21 07:03:44', '2007-08-21 07:04:19', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('d052e00f-72ef-419f-0d6c-46ca8ee1df25', '629da741-d120-307b-0f49-46c94438e8c8', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-21 07:03:44', '2007-08-21 07:04:19', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('d2c084bf-e3d0-37be-ab2e-46ca8eed05b5', '629da741-d120-307b-0f49-46c94438e8c8', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-21 07:03:44', '2007-08-21 07:04:19', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('d798e7f3-7424-5c27-d8de-46ca8eb2a543', '629da741-d120-307b-0f49-46c94438e8c8', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-21 07:03:44', '2007-08-21 07:04:19', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('d9ee7a4e-2793-8274-4a2d-46ca8e25a048', '629da741-d120-307b-0f49-46c94438e8c8', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-21 07:03:44', '2007-08-21 07:04:19', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('dc4d8db1-5126-af21-4ae1-46ca8e166ae0', '629da741-d120-307b-0f49-46c94438e8c8', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-21 07:03:44', '2007-08-21 07:04:19', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('de9e96f8-03ae-10c8-f9be-46ca8e23fce0', '629da741-d120-307b-0f49-46c94438e8c8', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-21 07:03:44', '2007-08-21 07:04:19', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('d029fb48-6304-22b4-c29b-46ca8eb0b1d9', '629da741-d120-307b-0f49-46c94438e8c8', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-21 07:04:19', '2007-08-21 07:05:10', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('d24d5217-70c5-4f3b-8b27-46ca8eb4753e', '629da741-d120-307b-0f49-46c94438e8c8', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-21 07:04:19', '2007-08-21 07:05:10', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('d46d6570-8b6b-ac12-e4cd-46ca8e107be2', '629da741-d120-307b-0f49-46c94438e8c8', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-21 07:04:19', '2007-08-21 07:05:10', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('d68b59ae-3b6a-c697-192e-46ca8e40a234', '629da741-d120-307b-0f49-46c94438e8c8', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-21 07:04:19', '2007-08-21 07:05:10', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('db2d59f1-94e3-f140-9192-46ca8e655a5e', '629da741-d120-307b-0f49-46c94438e8c8', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-21 07:04:19', '2007-08-21 07:05:10', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('dd6e94c7-5849-911c-69b7-46ca8e5476e1', '629da741-d120-307b-0f49-46c94438e8c8', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-21 07:04:19', '2007-08-21 07:05:10', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('dfcae0e9-dc57-b071-fb79-46ca8ed9db04', '629da741-d120-307b-0f49-46c94438e8c8', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-21 07:04:19', '2007-08-21 07:05:10', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('e1e22cab-12a5-9c42-2556-46ca8e4a9b87', '629da741-d120-307b-0f49-46c94438e8c8', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-21 07:04:19', '2007-08-21 07:05:10', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('7b0e0a03-bee1-9ca3-b506-46ca8e5927cd', '629da741-d120-307b-0f49-46c94438e8c8', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-21 07:05:10', '2007-08-21 07:07:47', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('7d48b173-cbd5-3aee-e8d5-46ca8e979e6a', '629da741-d120-307b-0f49-46c94438e8c8', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-21 07:05:10', '2007-08-21 07:07:47', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('7f70b526-962c-0ae2-cf86-46ca8e384c1a', '629da741-d120-307b-0f49-46c94438e8c8', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-21 07:05:10', '2007-08-21 07:07:47', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('84ec5083-8f17-8ab1-c4e7-46ca8e895cc5', '629da741-d120-307b-0f49-46c94438e8c8', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-21 07:05:10', '2007-08-21 07:07:47', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('89b7f05b-e255-85be-638d-46ca8ef3b555', '629da741-d120-307b-0f49-46c94438e8c8', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-21 07:05:10', '2007-08-21 07:07:47', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('8c08eb8b-a445-7bce-6078-46ca8e9dc175', '629da741-d120-307b-0f49-46c94438e8c8', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-21 07:05:10', '2007-08-21 07:07:47', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('8e59efe8-f89b-3d5b-21de-46ca8ec49a77', '629da741-d120-307b-0f49-46c94438e8c8', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-21 07:05:10', '2007-08-21 07:07:47', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('90c8f208-2dbb-dda8-2a37-46ca8ee62041', '629da741-d120-307b-0f49-46c94438e8c8', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-21 07:05:10', '2007-08-21 07:07:47', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('9906b628-7d3e-b2df-1334-46ca8f193020', '629da741-d120-307b-0f49-46c94438e8c8', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-21 07:07:47', '2007-08-21 07:25:05', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('9b2167e7-357a-5190-7345-46ca8fa097a0', '629da741-d120-307b-0f49-46c94438e8c8', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-21 07:07:47', '2007-08-21 07:25:05', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('9d3d4a13-a034-d27e-405d-46ca8fffa817', '629da741-d120-307b-0f49-46c94438e8c8', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-21 07:07:47', '2007-08-21 07:25:05', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('9f4c0f87-4428-5e01-acb7-46ca8f971efd', '629da741-d120-307b-0f49-46c94438e8c8', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-21 07:07:47', '2007-08-21 07:25:05', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('a3e6428b-0a5f-d32d-797d-46ca8f305511', '629da741-d120-307b-0f49-46c94438e8c8', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-21 07:07:47', '2007-08-21 07:25:05', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('a64930c3-5f27-17ab-936a-46ca8f090925', '629da741-d120-307b-0f49-46c94438e8c8', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-21 07:07:47', '2007-08-21 07:25:05', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('a89d63b9-bd63-1ab5-d68a-46ca8ffdd7e2', '629da741-d120-307b-0f49-46c94438e8c8', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-21 07:07:47', '2007-08-21 07:25:05', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('aae539bf-031d-d94f-35b7-46ca8f1c550d', '629da741-d120-307b-0f49-46c94438e8c8', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-21 07:07:47', '2007-08-21 07:25:05', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('3f321722-e4cc-6993-2884-46ca93c1bc6d', '629da741-d120-307b-0f49-46c94438e8c8', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-21 07:25:05', '2007-08-21 07:25:08', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('4161d8b0-bfe0-ebd4-9bc3-46ca93a5049d', '629da741-d120-307b-0f49-46c94438e8c8', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-21 07:25:05', '2007-08-21 07:25:08', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('43952e5b-c94f-c93a-8b7c-46ca93dca424', '629da741-d120-307b-0f49-46c94438e8c8', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-21 07:25:05', '2007-08-21 07:25:08', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('45b82bf3-5037-c01c-003d-46ca93a0d4e5', '629da741-d120-307b-0f49-46c94438e8c8', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-21 07:25:05', '2007-08-21 07:25:08', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('4a590e06-6210-2a34-2bae-46ca93519c35', '629da741-d120-307b-0f49-46c94438e8c8', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-21 07:25:05', '2007-08-21 07:25:08', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('4c7da458-6901-e922-add6-46ca93e84c14', '629da741-d120-307b-0f49-46c94438e8c8', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-21 07:25:05', '2007-08-21 07:25:08', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('4eae4f77-0979-512f-c83b-46ca93873d56', '629da741-d120-307b-0f49-46c94438e8c8', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-21 07:25:05', '2007-08-21 07:25:08', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('50d38263-78b4-00bd-c5ac-46ca93352785', '629da741-d120-307b-0f49-46c94438e8c8', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-21 07:25:05', '2007-08-21 07:25:08', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('33bc86e3-12db-4f07-4f12-46ca9321be4e', '629da741-d120-307b-0f49-46c94438e8c8', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-21 07:25:08', '2007-08-21 08:05:28', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('35fba9c9-911f-3c3b-70ec-46ca93b6e40a', '629da741-d120-307b-0f49-46c94438e8c8', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-21 07:25:08', '2007-08-21 08:05:29', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('381fec32-2601-6041-7f44-46ca935bb107', '629da741-d120-307b-0f49-46c94438e8c8', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-21 07:25:08', '2007-08-21 08:05:29', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('3a3d82d6-1c0a-d3c7-0604-46ca933a78a4', '629da741-d120-307b-0f49-46c94438e8c8', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-21 07:25:08', '2007-08-21 08:05:29', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('3ebb0116-bf83-1d46-36eb-46ca93ad1e54', '629da741-d120-307b-0f49-46c94438e8c8', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-21 07:25:08', '2007-08-21 08:05:29', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('40d3534e-1437-f7a1-c70d-46ca939ad0fd', '629da741-d120-307b-0f49-46c94438e8c8', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-21 07:25:08', '2007-08-21 08:05:29', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('42edaee9-409e-f69e-8e40-46ca93873cb6', '629da741-d120-307b-0f49-46c94438e8c8', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-21 07:25:08', '2007-08-21 08:05:29', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('452f1a11-7300-dde8-3b5d-46ca93702a34', '629da741-d120-307b-0f49-46c94438e8c8', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-21 07:25:08', '2007-08-21 08:05:29', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('12b33b46-69bd-caee-74f1-46ca9cbd21a7', '629da741-d120-307b-0f49-46c94438e8c8', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-21 08:05:29', '2007-08-21 08:06:58', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('14d9d3c3-32ab-4fec-c3ef-46ca9c1e08f5', '629da741-d120-307b-0f49-46c94438e8c8', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-21 08:05:29', '2007-08-21 08:06:58', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('17379ff5-b57b-ff3e-1521-46ca9c20834c', '629da741-d120-307b-0f49-46c94438e8c8', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-21 08:05:29', '2007-08-21 08:06:58', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('196042b5-17ec-d1b6-64b8-46ca9c86d5a0', '629da741-d120-307b-0f49-46c94438e8c8', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-21 08:05:29', '2007-08-21 08:06:58', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('1e04d983-5286-6b11-a875-46ca9cc8839c', '629da741-d120-307b-0f49-46c94438e8c8', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-21 08:05:29', '2007-08-21 08:06:58', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('203b6c3a-5245-f540-73f6-46ca9c70fe3e', '629da741-d120-307b-0f49-46c94438e8c8', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-21 08:05:29', '2007-08-21 08:06:58', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('2297228a-9014-3b7b-16b5-46ca9cb46461', '629da741-d120-307b-0f49-46c94438e8c8', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-21 08:05:29', '2007-08-21 08:06:58', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('253b1527-e25d-f1ca-7884-46ca9c2504c6', '629da741-d120-307b-0f49-46c94438e8c8', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-21 08:05:29', '2007-08-21 08:06:58', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('efe75708-5b12-fdf9-8052-46ca9d55b0fa', '629da741-d120-307b-0f49-46c94438e8c8', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-21 08:06:58', '2007-08-21 08:33:18', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('f20baab5-e77d-cbda-400e-46ca9df93119', '629da741-d120-307b-0f49-46c94438e8c8', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-21 08:06:58', '2007-08-21 08:33:18', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('3c500162-d944-f4c5-cdbe-46ca9d0f53ca', '629da741-d120-307b-0f49-46c94438e8c8', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-21 08:06:59', '2007-08-21 08:33:18', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('253d02b0-1c16-27e2-ba2b-46ca9dc4a522', '629da741-d120-307b-0f49-46c94438e8c8', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-21 08:06:59', '2007-08-21 08:33:18', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('704004f7-2702-79df-d1b6-46ca9dc3b233', '629da741-d120-307b-0f49-46c94438e8c8', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-21 08:06:59', '2007-08-21 08:33:18', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('928c0330-aabd-6095-0dd7-46ca9db00db1', '629da741-d120-307b-0f49-46c94438e8c8', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-21 08:06:59', '2007-08-21 08:33:18', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('b46b0119-5df8-de9d-99ad-46ca9d6fd51e', '629da741-d120-307b-0f49-46c94438e8c8', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-21 08:06:59', '2007-08-21 08:33:18', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('d6740093-d8f3-dc15-758a-46ca9d8555af', '629da741-d120-307b-0f49-46c94438e8c8', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-21 08:06:59', '2007-08-21 08:33:18', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('46a719bd-0815-0e5c-5051-46caa34e5a17', '629da741-d120-307b-0f49-46c94438e8c8', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-21 08:33:18', '2007-08-21 08:41:38', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('48ecd27c-619c-51d7-5117-46caa3328f81', '629da741-d120-307b-0f49-46c94438e8c8', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-21 08:33:18', '2007-08-21 08:41:38', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('4b13db5a-da5d-4e09-3c46-46caa3193587', '629da741-d120-307b-0f49-46c94438e8c8', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-21 08:33:18', '2007-08-21 08:41:38', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('4d2a8a5f-dc92-cf59-c105-46caa392bc29', '629da741-d120-307b-0f49-46c94438e8c8', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-21 08:33:18', '2007-08-21 08:41:38', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('51cde98f-c4b8-1e47-9901-46caa3060f80', '629da741-d120-307b-0f49-46c94438e8c8', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-21 08:33:18', '2007-08-21 08:41:38', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('53f53e57-eea7-fd0c-1196-46caa3931230', '629da741-d120-307b-0f49-46c94438e8c8', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-21 08:33:18', '2007-08-21 08:41:38', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('5617ec10-6acc-5b97-05bf-46caa39dbc71', '629da741-d120-307b-0f49-46c94438e8c8', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-21 08:33:18', '2007-08-21 08:41:38', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('5857999c-bbaa-c6f3-295e-46caa38d0de9', '629da741-d120-307b-0f49-46c94438e8c8', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-21 08:33:18', '2007-08-21 08:41:38', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('63ccca80-2494-2fc6-67be-46caa53c8992', '629da741-d120-307b-0f49-46c94438e8c8', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-21 08:41:38', '2007-08-21 08:53:37', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('660ac821-69db-4bac-2751-46caa511c9c8', '629da741-d120-307b-0f49-46c94438e8c8', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-21 08:41:38', '2007-08-21 08:53:37', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('682cf51b-b63b-3c36-792d-46caa52bd7e2', '629da741-d120-307b-0f49-46c94438e8c8', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-21 08:41:38', '2007-08-21 08:53:37', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('6a781b4d-0897-5cce-82a0-46caa5ff1eba', '629da741-d120-307b-0f49-46c94438e8c8', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-21 08:41:38', '2007-08-21 08:53:37', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('6f53f95d-3b59-82b3-c8a8-46caa50d3193', '629da741-d120-307b-0f49-46c94438e8c8', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-21 08:41:38', '2007-08-21 08:53:37', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('71dbcf14-8c80-a6b3-7b69-46caa5efbd1c', '629da741-d120-307b-0f49-46c94438e8c8', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-21 08:41:38', '2007-08-21 08:53:37', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('7431493f-b147-e70a-bebf-46caa544fbf9', '629da741-d120-307b-0f49-46c94438e8c8', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-21 08:41:38', '2007-08-21 08:53:37', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('77053581-3c8e-de69-bd2e-46caa519cb95', '629da741-d120-307b-0f49-46c94438e8c8', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-21 08:41:38', '2007-08-21 08:53:37', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('17d08f27-d332-ce73-6a5a-46caa8a9087a', '629da741-d120-307b-0f49-46c94438e8c8', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-21 08:53:37', '2007-08-21 08:54:01', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('19feccca-7d88-7bba-6709-46caa8dec6e7', '629da741-d120-307b-0f49-46c94438e8c8', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-21 08:53:37', '2007-08-21 08:54:01', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('1c218a0a-5a35-cba6-9ff2-46caa8ffead7', '629da741-d120-307b-0f49-46c94438e8c8', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-21 08:53:37', '2007-08-21 08:54:01', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('1e3b9b16-1272-4efa-4384-46caa84bd63e', '629da741-d120-307b-0f49-46c94438e8c8', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-21 08:53:37', '2007-08-21 08:54:01', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('22e5988f-5633-5cf6-462c-46caa80c3185', '629da741-d120-307b-0f49-46c94438e8c8', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-21 08:53:37', '2007-08-21 08:54:01', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('250f632e-5284-cab7-87d8-46caa82118ef', '629da741-d120-307b-0f49-46c94438e8c8', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-21 08:53:37', '2007-08-21 08:54:01', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('272c28fb-62bf-09a2-3585-46caa8bc5625', '629da741-d120-307b-0f49-46c94438e8c8', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-21 08:53:37', '2007-08-21 08:54:01', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('2948abd3-3658-db39-d7f9-46caa89b7e28', '629da741-d120-307b-0f49-46c94438e8c8', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-21 08:53:37', '2007-08-21 08:54:01', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('8009629d-ea30-cdf9-41b6-46caa81dc06c', '629da741-d120-307b-0f49-46c94438e8c8', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-21 08:54:01', '2007-08-21 08:54:40', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('825b524d-f158-98c5-6d24-46caa86002c9', '629da741-d120-307b-0f49-46c94438e8c8', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-21 08:54:01', '2007-08-21 08:54:40', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('84783402-c534-b7f8-8790-46caa86b3579', '629da741-d120-307b-0f49-46c94438e8c8', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-21 08:54:01', '2007-08-21 08:54:40', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('869002d6-13ed-358c-f143-46caa8f398f5', '629da741-d120-307b-0f49-46c94438e8c8', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-21 08:54:01', '2007-08-21 08:54:40', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('8b143e4e-47e2-5583-9660-46caa8f20acc', '629da741-d120-307b-0f49-46c94438e8c8', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-21 08:54:01', '2007-08-21 08:54:40', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('8d3e0339-dbba-719d-a0c3-46caa803710d', '629da741-d120-307b-0f49-46c94438e8c8', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-21 08:54:01', '2007-08-21 08:54:40', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('8f6338dd-112c-b33a-9a40-46caa87bf48d', '629da741-d120-307b-0f49-46c94438e8c8', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-21 08:54:01', '2007-08-21 08:54:40', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('91927269-5fc5-74da-c187-46caa8c9b8d2', '629da741-d120-307b-0f49-46c94438e8c8', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-21 08:54:01', '2007-08-21 08:54:40', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('5144e44a-139e-f07c-c5e6-46caa8a7000f', '629da741-d120-307b-0f49-46c94438e8c8', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-21 08:54:40', '2007-08-21 08:55:25', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('53696dd3-a70c-a2a6-a6f5-46caa81104f7', '629da741-d120-307b-0f49-46c94438e8c8', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-21 08:54:40', '2007-08-21 08:55:25', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('558d5e91-cdb1-b79e-a2ae-46caa8b2f000', '629da741-d120-307b-0f49-46c94438e8c8', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-21 08:54:40', '2007-08-21 08:55:25', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('57a8c067-2be3-5db3-db36-46caa8e919ad', '629da741-d120-307b-0f49-46c94438e8c8', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-21 08:54:40', '2007-08-21 08:55:25', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('5c2e4f57-4860-97e0-4957-46caa8175a65', '629da741-d120-307b-0f49-46c94438e8c8', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-21 08:54:40', '2007-08-21 08:55:25', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('5e626838-f73a-ec43-7ac2-46caa8504e0a', '629da741-d120-307b-0f49-46c94438e8c8', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-21 08:54:40', '2007-08-21 08:55:25', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('60a5b2a6-4e47-bcc7-8924-46caa804b06c', '629da741-d120-307b-0f49-46c94438e8c8', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-21 08:54:40', '2007-08-21 08:55:25', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('62dceebd-da23-708a-e55a-46caa8013699', '629da741-d120-307b-0f49-46c94438e8c8', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-21 08:54:40', '2007-08-21 08:55:25', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('5857b002-fdcf-9be1-1b4c-46caa8e5260d', '629da741-d120-307b-0f49-46c94438e8c8', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-21 08:55:25', '2007-08-21 08:57:41', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('5a94bf1c-68fa-38f9-c4db-46caa80dd42b', '629da741-d120-307b-0f49-46c94438e8c8', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-21 08:55:25', '2007-08-21 08:57:41', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('5cbf6423-89f0-02b3-6173-46caa8887c57', '629da741-d120-307b-0f49-46c94438e8c8', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-21 08:55:25', '2007-08-21 08:57:41', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('5eec5e9f-a13e-8fe7-ba8b-46caa88bafdd', '629da741-d120-307b-0f49-46c94438e8c8', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-21 08:55:25', '2007-08-21 08:57:41', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('633d2d55-fb44-e0ae-f57f-46caa8845255', '629da741-d120-307b-0f49-46c94438e8c8', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-21 08:55:25', '2007-08-21 08:57:41', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('6573f613-6354-de8a-b6e2-46caa8861e6a', '629da741-d120-307b-0f49-46c94438e8c8', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-21 08:55:25', '2007-08-21 08:57:41', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('67bfb68c-4a4f-2d56-48cf-46caa8eea1a1', '629da741-d120-307b-0f49-46c94438e8c8', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-21 08:55:25', '2007-08-21 08:57:41', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('6a09fea1-ec3d-f361-4565-46caa81d8f28', '629da741-d120-307b-0f49-46c94438e8c8', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-21 08:55:25', '2007-08-21 08:57:41', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('5df71368-1944-0a6a-a50d-46caa95597d4', '629da741-d120-307b-0f49-46c94438e8c8', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-21 08:57:41', '2007-08-21 08:59:01', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('602a8f30-d290-a90a-12c5-46caa96a7081', '629da741-d120-307b-0f49-46c94438e8c8', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-21 08:57:41', '2007-08-21 08:59:01', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('625b0116-f73c-8873-df32-46caa9eb62d5', '629da741-d120-307b-0f49-46c94438e8c8', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-21 08:57:41', '2007-08-21 08:59:01', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('647e786d-7740-0b81-09cf-46caa9f95bd1', '629da741-d120-307b-0f49-46c94438e8c8', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-21 08:57:41', '2007-08-21 08:59:01', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('69214452-d5db-1f99-9b76-46caa908e256', '629da741-d120-307b-0f49-46c94438e8c8', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-21 08:57:41', '2007-08-21 08:59:01', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('6b4d22f0-0cac-7c72-7375-46caa922f74d', '629da741-d120-307b-0f49-46c94438e8c8', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-21 08:57:41', '2007-08-21 08:59:01', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('6d68395c-b779-6cf0-cad9-46caa938cbcf', '629da741-d120-307b-0f49-46c94438e8c8', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-21 08:57:41', '2007-08-21 08:59:01', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('6f8dd7f2-476e-32b7-9836-46caa9462848', '629da741-d120-307b-0f49-46c94438e8c8', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-21 08:57:41', '2007-08-21 08:59:01', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('d78ababb-61f9-d9f0-850a-46caa9ba46b0', '629da741-d120-307b-0f49-46c94438e8c8', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-21 08:59:01', '2007-08-21 09:00:48', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('d9ad6743-9e0f-15cb-bc68-46caa933e9dc', '629da741-d120-307b-0f49-46c94438e8c8', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-21 08:59:01', '2007-08-21 09:00:48', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('dbdee845-e31d-86f5-484f-46caa91c0dde', '629da741-d120-307b-0f49-46c94438e8c8', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-21 08:59:01', '2007-08-21 09:00:48', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('de0b7ca3-5a2c-39a7-a91d-46caa9279eb4', '629da741-d120-307b-0f49-46c94438e8c8', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-21 08:59:01', '2007-08-21 09:00:48', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('e2d5a9a9-714c-6e23-44cb-46caa961d061', '629da741-d120-307b-0f49-46c94438e8c8', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-21 08:59:01', '2007-08-21 09:00:48', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('e509c2e4-4d04-ca31-59ba-46caa9cf35ca', '629da741-d120-307b-0f49-46c94438e8c8', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-21 08:59:01', '2007-08-21 09:00:48', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('e724a740-ef50-764e-b18f-46caa973e2ba', '629da741-d120-307b-0f49-46c94438e8c8', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-21 08:59:01', '2007-08-21 09:00:48', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('e952de84-b711-186f-d70a-46caa957ec0b', '629da741-d120-307b-0f49-46c94438e8c8', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-21 08:59:01', '2007-08-21 09:00:48', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('a8f08089-3233-56b1-4523-46caa9584540', '629da741-d120-307b-0f49-46c94438e8c8', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-21 09:00:48', '2007-08-21 09:29:36', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('ab3da0ac-6b62-9bbc-2468-46caa9f797a5', '629da741-d120-307b-0f49-46c94438e8c8', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-21 09:00:48', '2007-08-21 09:29:36', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('ad60afc5-4fc9-407f-ad43-46caa9d14b82', '629da741-d120-307b-0f49-46c94438e8c8', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-21 09:00:48', '2007-08-21 09:29:36', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('af7c069e-d676-41e5-957c-46caa9906340', '629da741-d120-307b-0f49-46c94438e8c8', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-21 09:00:48', '2007-08-21 09:29:36', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('b403b2cd-e02c-3ca6-cd8d-46caa9c32bed', '629da741-d120-307b-0f49-46c94438e8c8', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-21 09:00:48', '2007-08-21 09:29:36', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('b62cad33-5b17-788d-10f2-46caa96b8ea6', '629da741-d120-307b-0f49-46c94438e8c8', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-21 09:00:48', '2007-08-21 09:29:37', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('b84870bf-3f30-1d45-007a-46caa9226d04', '629da741-d120-307b-0f49-46c94438e8c8', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-21 09:00:48', '2007-08-21 09:29:37', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('ba74145e-5f4d-fd51-2b7f-46caa9387f07', '629da741-d120-307b-0f49-46c94438e8c8', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-21 09:00:48', '2007-08-21 09:29:37', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('596d06d1-c6c8-37be-e360-46cab08f5b53', '629da741-d120-307b-0f49-46c94438e8c8', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-21 09:29:37', '2007-08-21 09:41:57', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('7ede0e92-69c2-e3a7-83cc-46cab09a2107', '629da741-d120-307b-0f49-46c94438e8c8', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-21 09:29:37', '2007-08-21 09:41:57', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('a1c70591-8e1c-99e1-72b8-46cab0f157c8', '629da741-d120-307b-0f49-46c94438e8c8', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-21 09:29:37', '2007-08-21 09:41:57', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('c367088c-d0fc-36be-f740-46cab07cba74', '629da741-d120-307b-0f49-46c94438e8c8', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-21 09:29:37', '2007-08-21 09:41:57', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('10ca58db-a513-027f-9226-46cab05f8bbd', '629da741-d120-307b-0f49-46c94438e8c8', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-21 09:29:37', '2007-08-21 09:41:57', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('1323c529-5238-f33d-6a8e-46cab04d15f7', '629da741-d120-307b-0f49-46c94438e8c8', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-21 09:29:37', '2007-08-21 09:41:57', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('155792e2-1507-1ecb-5e5f-46cab0615fdc', '629da741-d120-307b-0f49-46c94438e8c8', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-21 09:29:37', '2007-08-21 09:41:57', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('178aae79-cd9d-bbd1-07b2-46cab0dc10f7', '629da741-d120-307b-0f49-46c94438e8c8', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-21 09:29:37', '2007-08-21 09:41:57', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('58eca3c0-290b-faf5-6def-46cab3d8b8eb', '629da741-d120-307b-0f49-46c94438e8c8', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-21 09:41:57', '2007-08-21 09:59:52', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('5b13bd51-c8e2-67aa-6df2-46cab3d52316', '629da741-d120-307b-0f49-46c94438e8c8', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-21 09:41:57', '2007-08-21 09:59:52', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('5d420d01-ce45-93a0-9a8f-46cab3545e4d', '629da741-d120-307b-0f49-46c94438e8c8', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-21 09:41:57', '2007-08-21 09:59:52', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('5f691e6c-abfe-061a-f76e-46cab3841956', '629da741-d120-307b-0f49-46c94438e8c8', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-21 09:41:57', '2007-08-21 09:59:52', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('63f2d13e-3da7-5c1b-e823-46cab387f106', '629da741-d120-307b-0f49-46c94438e8c8', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-21 09:41:57', '2007-08-21 09:59:52', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('66345c3b-4be0-a8e1-7e47-46cab3a133d1', '629da741-d120-307b-0f49-46c94438e8c8', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-21 09:41:57', '2007-08-21 09:59:52', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('68547896-b94a-64dc-5d8b-46cab3a593be', '629da741-d120-307b-0f49-46c94438e8c8', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-21 09:41:57', '2007-08-21 09:59:52', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('6a786359-cc83-3303-52a7-46cab301cd8d', '629da741-d120-307b-0f49-46c94438e8c8', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-21 09:41:57', '2007-08-21 09:59:52', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('df1bee2c-26e8-5f2e-4f66-46cab74ee092', '629da741-d120-307b-0f49-46c94438e8c8', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-21 09:59:52', '2007-08-21 10:01:16', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('e149ed26-c15d-764d-1121-46cab780084c', '629da741-d120-307b-0f49-46c94438e8c8', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-21 09:59:52', '2007-08-21 10:01:16', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('e37ff05f-a382-c3bc-2273-46cab7cfd9ff', '629da741-d120-307b-0f49-46c94438e8c8', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-21 09:59:52', '2007-08-21 10:01:16', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('e5a579d6-a948-10ce-6f2b-46cab71062ad', '629da741-d120-307b-0f49-46c94438e8c8', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-21 09:59:52', '2007-08-21 10:01:16', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('ea173ee7-b31c-0a52-4b47-46cab7763e1e', '629da741-d120-307b-0f49-46c94438e8c8', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-21 09:59:52', '2007-08-21 10:01:16', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('ec3e55f1-18a7-628f-1b5e-46cab7d53b2d', '629da741-d120-307b-0f49-46c94438e8c8', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-21 09:59:52', '2007-08-21 10:01:16', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('ee54b4c6-6f88-4cde-6eeb-46cab7dcadb7', '629da741-d120-307b-0f49-46c94438e8c8', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-21 09:59:52', '2007-08-21 10:01:16', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('f07cfa98-8b32-fadc-0192-46cab7735824', '629da741-d120-307b-0f49-46c94438e8c8', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-21 09:59:52', '2007-08-21 10:01:16', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('48852921-8ef5-d3b6-b884-46cab7716344', '629da741-d120-307b-0f49-46c94438e8c8', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-21 10:01:16', '2007-08-21 10:34:28', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('4aae6b3b-aebf-260d-7971-46cab793af94', '629da741-d120-307b-0f49-46c94438e8c8', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-21 10:01:16', '2007-08-21 10:34:28', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('4cdb6dc3-15ee-c886-84be-46cab7791788', '629da741-d120-307b-0f49-46c94438e8c8', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-21 10:01:16', '2007-08-21 10:34:28', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('4f11e212-efb5-8def-2ac6-46cab7415745', '629da741-d120-307b-0f49-46c94438e8c8', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-21 10:01:16', '2007-08-21 10:34:28', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('53721e8e-0a2a-16df-0bea-46cab749326f', '629da741-d120-307b-0f49-46c94438e8c8', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-21 10:01:16', '2007-08-21 10:34:28', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('5594983e-31df-06dc-8341-46cab7545f57', '629da741-d120-307b-0f49-46c94438e8c8', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-21 10:01:16', '2007-08-21 10:34:28', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('57b55319-25b1-bd09-33fb-46cab7168405', '629da741-d120-307b-0f49-46c94438e8c8', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-21 10:01:16', '2007-08-21 10:34:28', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('59df1de4-3530-8998-d68f-46cab7c7ca4a', '629da741-d120-307b-0f49-46c94438e8c8', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-21 10:01:16', '2007-08-21 10:34:28', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('686d63e4-0144-bea0-ef41-46cabf1f5402', '629da741-d120-307b-0f49-46c94438e8c8', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-21 10:34:28', '2007-08-21 10:42:21', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('6a90b578-3ad5-e1eb-8638-46cabf2a193b', '629da741-d120-307b-0f49-46c94438e8c8', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-21 10:34:28', '2007-08-21 10:42:21', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('6ca02dc8-7bc7-2f8e-805b-46cabfa0525e', '629da741-d120-307b-0f49-46c94438e8c8', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-21 10:34:28', '2007-08-21 10:42:21', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('6eae4751-6847-71da-2859-46cabfc06402', '629da741-d120-307b-0f49-46c94438e8c8', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-21 10:34:28', '2007-08-21 10:42:21', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('72ea030c-cadb-6953-f344-46cabfc33d8c', '629da741-d120-307b-0f49-46c94438e8c8', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-21 10:34:28', '2007-08-21 10:42:21', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('7506839a-4de3-ba44-ba3f-46cabfb1bf20', '629da741-d120-307b-0f49-46c94438e8c8', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-21 10:34:28', '2007-08-21 10:42:21', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('771aa697-4642-8afc-7674-46cabf1f23a9', '629da741-d120-307b-0f49-46c94438e8c8', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-21 10:34:28', '2007-08-21 10:42:21', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('793c16a8-89b9-8544-dee9-46cabfc22186', '629da741-d120-307b-0f49-46c94438e8c8', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-21 10:34:28', '2007-08-21 10:42:21', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('7b604d7a-36c5-f7bd-b562-46cac12f2634', '629da741-d120-307b-0f49-46c94438e8c8', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-21 10:42:21', '2007-08-21 10:51:11', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('7d8c048c-5da9-bd28-b092-46cac10ff392', '629da741-d120-307b-0f49-46c94438e8c8', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-21 10:42:21', '2007-08-21 10:51:11', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('7fae9368-d8e2-9d8c-e7bb-46cac153f51f', '629da741-d120-307b-0f49-46c94438e8c8', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-21 10:42:21', '2007-08-21 10:51:11', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('8204993c-d3a2-977c-b5f1-46cac1adf72c', '629da741-d120-307b-0f49-46c94438e8c8', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-21 10:42:21', '2007-08-21 10:51:11', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('866be0dd-7877-408b-2e00-46cac17bc3da', '629da741-d120-307b-0f49-46c94438e8c8', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-21 10:42:21', '2007-08-21 10:51:11', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('88b042f4-429d-d5c5-705e-46cac112ed0d', '629da741-d120-307b-0f49-46c94438e8c8', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-21 10:42:21', '2007-08-21 10:51:11', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('8ad5feb5-5812-c83c-d7cb-46cac19c9dbf', '629da741-d120-307b-0f49-46c94438e8c8', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-21 10:42:21', '2007-08-21 10:51:11', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('8cfb8db4-1b55-73c2-f3a4-46cac1564617', '629da741-d120-307b-0f49-46c94438e8c8', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-21 10:42:21', '2007-08-21 10:51:11', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('4ff420eb-36b6-b923-0f8e-46cac3b04f17', '629da741-d120-307b-0f49-46c94438e8c8', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-21 10:51:11', '2007-08-21 10:51:37', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('520756db-acd0-09ac-880e-46cac30bcedd', '629da741-d120-307b-0f49-46c94438e8c8', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-21 10:51:11', '2007-08-21 10:51:37', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('5432c835-ece0-3f26-30dd-46cac3da2e85', '629da741-d120-307b-0f49-46c94438e8c8', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-21 10:51:11', '2007-08-21 10:51:37', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('565868f4-293f-cbe3-da23-46cac3f4b375', '629da741-d120-307b-0f49-46c94438e8c8', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-21 10:51:11', '2007-08-21 10:51:37', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('5a99a054-4db8-7b89-d1e9-46cac360f528', '629da741-d120-307b-0f49-46c94438e8c8', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-21 10:51:11', '2007-08-21 10:51:37', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('5cb15e7a-37b2-93cf-2edd-46cac3f71dd8', '629da741-d120-307b-0f49-46c94438e8c8', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-21 10:51:11', '2007-08-21 10:51:37', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('5ec8ff49-ac28-a3a0-060b-46cac3b3e337', '629da741-d120-307b-0f49-46c94438e8c8', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-21 10:51:11', '2007-08-21 10:51:37', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('60e78d86-f510-b8cc-8aaa-46cac3f24a89', '629da741-d120-307b-0f49-46c94438e8c8', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-21 10:51:11', '2007-08-21 10:51:37', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('3c7c2c63-41a1-034e-080e-46cac3a7b488', '629da741-d120-307b-0f49-46c94438e8c8', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-21 10:51:37', '2007-08-21 10:52:12', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('3e937a36-7020-daca-794e-46cac38a7853', '629da741-d120-307b-0f49-46c94438e8c8', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-21 10:51:37', '2007-08-21 10:52:12', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('40a15eee-4c8f-7f3e-0e80-46cac327e82a', '629da741-d120-307b-0f49-46c94438e8c8', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-21 10:51:37', '2007-08-21 10:52:12', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('42d95b6b-db3d-d477-53db-46cac3a2daea', '629da741-d120-307b-0f49-46c94438e8c8', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-21 10:51:37', '2007-08-21 10:52:12', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('4750cb0d-08aa-8dd6-635c-46cac3431ed4', '629da741-d120-307b-0f49-46c94438e8c8', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-21 10:51:37', '2007-08-21 10:52:12', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('496f7114-264e-1d82-bf64-46cac3b833f4', '629da741-d120-307b-0f49-46c94438e8c8', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-21 10:51:37', '2007-08-21 10:52:12', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('4b8034ff-8dc0-db66-cd81-46cac368dc15', '629da741-d120-307b-0f49-46c94438e8c8', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-21 10:51:37', '2007-08-21 10:52:12', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('4d94ed82-82d1-3156-24b3-46cac3082fd8', '629da741-d120-307b-0f49-46c94438e8c8', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-21 10:51:37', '2007-08-21 10:52:12', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('2b1750e4-94f5-9e64-d699-46cac30df96f', '629da741-d120-307b-0f49-46c94438e8c8', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-21 10:52:12', '2007-08-21 11:38:46', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('2d33ada2-8252-7110-ccb8-46cac38bbb39', '629da741-d120-307b-0f49-46c94438e8c8', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-21 10:52:12', '2007-08-21 11:38:46', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('2f4cfa82-a18f-cafe-4891-46cac3186140', '629da741-d120-307b-0f49-46c94438e8c8', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-21 10:52:12', '2007-08-21 11:38:46', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('31639698-8898-e479-16b7-46cac3f5143d', '629da741-d120-307b-0f49-46c94438e8c8', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-21 10:52:12', '2007-08-21 11:38:46', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('35cccd36-0f7e-cc3f-43cf-46cac33b09a3', '629da741-d120-307b-0f49-46c94438e8c8', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-21 10:52:12', '2007-08-21 11:38:46', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('37f003b2-7176-e873-9070-46cac32f8a0f', '629da741-d120-307b-0f49-46c94438e8c8', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-21 10:52:12', '2007-08-21 11:38:46', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('3a0ac6cc-f08a-f275-a212-46cac3ecc95f', '629da741-d120-307b-0f49-46c94438e8c8', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-21 10:52:12', '2007-08-21 11:38:46', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('3c2518c3-d191-cd54-b0d5-46cac37e2dc2', '629da741-d120-307b-0f49-46c94438e8c8', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-21 10:52:12', '2007-08-21 11:38:46', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('4b9280a7-ce13-e583-984a-46cacef1c4da', '629da741-d120-307b-0f49-46c94438e8c8', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-21 11:38:46', '2007-08-21 11:38:46', NULL, '1', NULL, 0);
INSERT INTO `componentink` VALUES ('4da8081a-d9e4-94b0-ba86-46cacecd6957', '629da741-d120-307b-0f49-46c94438e8c8', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-21 11:38:46', '2007-08-21 11:38:46', NULL, '1', NULL, 0);
INSERT INTO `componentink` VALUES ('4fbf246b-dad3-f303-fcc2-46cacee6ecea', '629da741-d120-307b-0f49-46c94438e8c8', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-21 11:38:46', '2007-08-21 11:38:46', NULL, '1', NULL, 0);
INSERT INTO `componentink` VALUES ('51d8ee2a-cbfe-4883-7d49-46cace490ebe', '629da741-d120-307b-0f49-46c94438e8c8', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-21 11:38:46', '2007-08-21 11:38:46', NULL, '1', NULL, 0);
INSERT INTO `componentink` VALUES ('566167a3-312d-7d26-12ec-46cace3ad474', '629da741-d120-307b-0f49-46c94438e8c8', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-21 11:38:46', '2007-08-21 11:38:46', NULL, '1', NULL, 0);
INSERT INTO `componentink` VALUES ('587c20bc-fd40-ec28-b8d7-46cace5a564a', '629da741-d120-307b-0f49-46c94438e8c8', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-21 11:38:46', '2007-08-21 11:38:46', NULL, '1', NULL, 0);
INSERT INTO `componentink` VALUES ('5aaa15c7-6cd1-9d2a-99a4-46cace68020b', '629da741-d120-307b-0f49-46c94438e8c8', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-21 11:38:46', '2007-08-21 11:38:46', NULL, '1', NULL, 0);
INSERT INTO `componentink` VALUES ('5d24b12b-cb47-c3e0-5a46-46cacee5ebf1', '629da741-d120-307b-0f49-46c94438e8c8', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-21 11:38:46', '2007-08-21 11:38:46', NULL, '1', NULL, 0);
INSERT INTO `componentink` VALUES ('b5805b2d-3982-b7c2-24e6-46cd56808fe4', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-23 09:41:26', '2007-08-24 07:40:58', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('b7bae703-035a-8836-b619-46cd56130289', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-23 09:41:26', '2007-08-24 07:40:58', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('b9ede542-ef1a-ddd7-e2ac-46cd56c11e91', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-23 09:41:26', '2007-08-24 07:40:58', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('bc084e3e-bed8-13f6-e9af-46cd562bdcfd', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-23 09:41:26', '2007-08-24 07:40:58', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('c0d15680-10c6-8057-aee4-46cd56836d51', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-23 09:41:26', '2007-08-24 07:40:58', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('c2fe9b17-4b4b-aebe-a0ed-46cd56702d33', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-23 09:41:26', '2007-08-24 07:40:58', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('c75d0a24-f1d5-253c-6ef3-46cd56b2137f', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-23 09:41:26', '2007-08-24 07:40:58', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('c977ebde-b20b-7329-d4a5-46cd568b6ca0', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-23 09:41:26', '2007-08-24 07:40:58', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('6a04deb4-b6c3-670e-942d-46ce8bac80e4', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-24 07:40:58', '2007-08-24 07:40:58', NULL, '1', NULL, 0);
INSERT INTO `componentink` VALUES ('6c2d7979-fff2-7ac8-983c-46ce8bc10cbf', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-24 07:40:58', '2007-08-24 07:40:58', NULL, '1', NULL, 0);
INSERT INTO `componentink` VALUES ('6e4cfb61-0a25-5d60-b3f6-46ce8bd2cfbb', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-24 07:40:58', '2007-08-24 07:40:58', NULL, '1', NULL, 0);
INSERT INTO `componentink` VALUES ('708cc83a-90d1-220a-9449-46ce8b8b9e2a', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-24 07:40:58', '2007-08-24 07:40:58', NULL, '1', NULL, 0);
INSERT INTO `componentink` VALUES ('75591f0b-049c-145c-80f0-46ce8b6b09cf', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-24 07:40:58', '2007-08-24 07:40:58', NULL, '1', NULL, 0);
INSERT INTO `componentink` VALUES ('77874128-1442-9171-3a06-46ce8bda0353', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-24 07:40:58', '2007-08-24 07:40:58', NULL, '1', NULL, 0);
INSERT INTO `componentink` VALUES ('79b8305e-db08-0524-9f3c-46ce8b37b6ef', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-24 07:40:58', '2007-08-24 07:40:58', NULL, '1', NULL, 0);
INSERT INTO `componentink` VALUES ('7be43d1d-ac50-120a-0af0-46ce8b5b02c6', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-24 07:40:58', '2007-08-24 07:40:58', NULL, '1', NULL, 0);

-- --------------------------------------------------------

-- 
-- Структура на таблица `componentprepress`
-- 

DROP TABLE IF EXISTS `componentprepress`;
CREATE TABLE `componentprepress` (
  `id` varchar(36) NOT NULL default '',
  `rate_id` varchar(36) NOT NULL default '',
  `component_id` varchar(36) NOT NULL default '',
  `side` char(1) NOT NULL default '',
  `type` varchar(3) NOT NULL default '',
  `count` int(11) NOT NULL default '0',
  `date_entered` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_user_id` varchar(36) default NULL,
  `created_by` varchar(36) default NULL,
  `description` text,
  `deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 PACK_KEYS=0;

-- 
-- Дъмп (схема) на данните в таблицата `componentprepress`
-- 

INSERT INTO `componentprepress` VALUES ('895bbcdd-975a-a54d-4acf-46cacef035e3', '319a1633-aa9f-6b4e-df98-469628a1c043', '629da741-d120-307b-0f49-46c94438e8c8', 'a', 'flm', 4, '2007-08-21 11:38:46', '2007-08-21 11:38:46', NULL, '1', NULL, 0);
INSERT INTO `componentprepress` VALUES ('8e667abf-8a95-49b5-eab7-46cace1e11c8', '319a1633-aa9f-6b4e-df98-469628a1c043', '629da741-d120-307b-0f49-46c94438e8c8', 'b', 'flm', 4, '2007-08-21 11:38:46', '2007-08-21 11:38:46', NULL, '1', NULL, 0);
INSERT INTO `componentprepress` VALUES ('ac463400-6a9f-9a7c-342f-46ce8be1da1b', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', '598457bc-776a-9154-9b63-4652c9ce58cb', 'a', 'ctp', 10, '2007-08-24 07:40:58', '2007-08-24 07:40:58', NULL, '1', NULL, 0);
INSERT INTO `componentprepress` VALUES ('b1715208-21c0-9e4d-d156-46ce8b1844bb', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', '598457bc-776a-9154-9b63-4652c9ce58cb', 'b', 'ctp', 10, '2007-08-24 07:40:58', '2007-08-24 07:40:58', NULL, '1', NULL, 0);
INSERT INTO `componentprepress` VALUES ('b67df0ab-9087-7d34-64c5-46ce8bc8e2b1', '319a1633-aa9f-6b4e-df98-469628a1c043', '598457bc-776a-9154-9b63-4652c9ce58cb', 'a', 'flm', 5, '2007-08-24 07:40:58', '2007-08-24 07:40:58', NULL, '1', NULL, 0);
INSERT INTO `componentprepress` VALUES ('bb912226-ebe7-38f9-604e-46ce8beebec5', '319a1633-aa9f-6b4e-df98-469628a1c043', '598457bc-776a-9154-9b63-4652c9ce58cb', 'b', 'flm', 5, '2007-08-24 07:40:58', '2007-08-24 07:40:58', NULL, '1', NULL, 0);

-- --------------------------------------------------------

-- 
-- Структура на таблица `config`
-- 

DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `category` varchar(32) default NULL,
  `name` varchar(32) default NULL,
  `value` text,
  KEY `idx_config_cat` (`category`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `config`
-- 

INSERT INTO `config` VALUES ('notify', 'fromaddress', 'do_not_reply@example.com');
INSERT INTO `config` VALUES ('notify', 'fromname', 'SugarCRM');
INSERT INTO `config` VALUES ('notify', 'send_by_default', '2');
INSERT INTO `config` VALUES ('notify', 'on', '1');
INSERT INTO `config` VALUES ('notify', 'send_from_assigning_user', '2');
INSERT INTO `config` VALUES ('mail', 'smtpserver', 'mail.karting-zone.net');
INSERT INTO `config` VALUES ('mail', 'smtpport', '25');
INSERT INTO `config` VALUES ('mail', 'sendtype', 'SMTP');
INSERT INTO `config` VALUES ('mail', 'smtpuser', 'petar.peshev@karting-zone.net');
INSERT INTO `config` VALUES ('mail', 'smtppass', 'alfabeta');
INSERT INTO `config` VALUES ('mail', 'smtpauth_req', '1');
INSERT INTO `config` VALUES ('info', 'sugar_version', '4.5.0');
INSERT INTO `config` VALUES ('MySettings', 'tab', '');
INSERT INTO `config` VALUES ('portal', 'on', '0');
INSERT INTO `config` VALUES ('Update', 'CheckUpdates', 'manual');
INSERT INTO `config` VALUES ('license', 'msg_admin', '');
INSERT INTO `config` VALUES ('license', 'msg_all', '');
INSERT INTO `config` VALUES ('license', 'last_validation', 'success');
INSERT INTO `config` VALUES ('license', 'latest_versions', 'YToxOntpOjA7YToyOntzOjc6InZlcnNpb24iO3M6NjoiNC41LjFlIjtzOjExOiJkZXNjcmlwdGlvbiI7czoxNjM6IlRoZSBsYXRlc3QgdmVyc2lvbiBvZiBTdWdhckNSTSBpcyA0LjUuMWUuICBQbGVhc2UgdmlzaXQgPGEgaHJlZj0iaHR0cDovL3N1cHBvcnQuc3VnYXJjcm0uY29tIiB0YXJnZXQ9Il9uZXciPnN1cHBvcnQuc3VnYXJjcm0uY29tPC9hPiB0byBhY3F1aXJlIHRoZSBsYXRlc3QgdmVyc2lvbi4iO319');
INSERT INTO `config` VALUES ('license', 'last_validation_fail', '2007-07-24 14:02:07');
INSERT INTO `config` VALUES ('license', 'vk_end_date', '2007-01-05 13:31:55');
INSERT INTO `config` VALUES ('license', 'validation_key', 'YToxOntzOjg6InZlcmlmaWVkIjtiOjA7fQ==');
INSERT INTO `config` VALUES ('massemailer', 'campaign_emails_per_run', '500');
INSERT INTO `config` VALUES ('massemailer', 'tracking_entities_location_type', '1');

-- --------------------------------------------------------

-- 
-- Структура на таблица `contacts`
-- 

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE `contacts` (
  `id` varchar(36) NOT NULL default '',
  `deleted` tinyint(1) NOT NULL default '0',
  `date_entered` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_user_id` varchar(36) default NULL,
  `assigned_user_id` varchar(36) default NULL,
  `created_by` varchar(36) default NULL,
  `salutation` varchar(5) default NULL,
  `first_name` varchar(100) default NULL,
  `last_name` varchar(100) default NULL,
  `lead_source` varchar(100) default NULL,
  `title` varchar(50) default NULL,
  `department` varchar(100) default NULL,
  `reports_to_id` varchar(36) default NULL,
  `birthdate` date default NULL,
  `do_not_call` varchar(3) default '0',
  `phone_home` varchar(25) default NULL,
  `phone_mobile` varchar(25) default NULL,
  `phone_work` varchar(25) default NULL,
  `phone_other` varchar(25) default NULL,
  `phone_fax` varchar(25) default NULL,
  `email1` varchar(100) default NULL,
  `email2` varchar(100) default NULL,
  `assistant` varchar(75) default NULL,
  `assistant_phone` varchar(25) default NULL,
  `email_opt_out` varchar(3) default '0',
  `primary_address_street` varchar(150) default NULL,
  `primary_address_city` varchar(100) default NULL,
  `primary_address_state` varchar(100) default NULL,
  `primary_address_postalcode` varchar(20) default NULL,
  `primary_address_country` varchar(100) default NULL,
  `alt_address_street` varchar(150) default NULL,
  `alt_address_city` varchar(100) default NULL,
  `alt_address_state` varchar(100) default NULL,
  `alt_address_postalcode` varchar(20) default NULL,
  `alt_address_country` varchar(100) default NULL,
  `description` text,
  `portal_name` varchar(255) default NULL,
  `portal_active` tinyint(1) NOT NULL default '0',
  `portal_app` varchar(255) default NULL,
  `invalid_email` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_cont_last_first` (`last_name`,`first_name`,`deleted`),
  KEY `idx_contacts_del_last` (`deleted`,`last_name`),
  KEY `idx_cont_del_reports` (`deleted`,`reports_to_id`,`last_name`),
  KEY `idx_cont_assigned` (`assigned_user_id`),
  KEY `idx_cont_email1` (`email1`),
  KEY `idx_cont_email2` (`email2`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `contacts`
-- 

INSERT INTO `contacts` VALUES ('a364525c-0479-cffd-f08d-459e7636a544', 1, '2007-01-05 16:01:12', '2007-01-12 13:58:43', '1', '1', '1', NULL, NULL, 'contact1', NULL, NULL, NULL, NULL, NULL, 'off', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'off', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0);
INSERT INTO `contacts` VALUES ('2e3db207-5bf8-ee55-38ef-45a7954f2bc8', 1, '2007-01-12 14:03:42', '2007-01-30 12:25:42', '1', '1', '1', NULL, '', '', NULL, NULL, NULL, NULL, NULL, 'off', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'off', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0);
INSERT INTO `contacts` VALUES ('91175165-83bb-7662-554d-45abe391403e', 1, '2007-01-15 20:26:31', '2007-01-16 15:38:09', '1', '1', '1', NULL, NULL, 'Peshev', NULL, NULL, NULL, NULL, NULL, 'off', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'off', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0);
INSERT INTO `contacts` VALUES ('628899c5-2700-f085-bc82-45bf38e6cc7d', 1, '2007-01-30 12:24:03', '2007-01-30 12:25:42', '1', '1', '1', NULL, NULL, 'Peshev', NULL, NULL, NULL, NULL, NULL, 'off', NULL, NULL, '423432', NULL, NULL, NULL, NULL, NULL, NULL, 'off', 'fsafasf', 'dfgfdg', 'ggg', '33542', 'gsdgds', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0);
INSERT INTO `contacts` VALUES ('2feefa33-1787-3a50-9ec3-45c0b24805cd', 1, '2007-01-31 15:15:19', '2007-02-05 12:22:47', '1', '1', '1', NULL, 'fn', 'cvb', NULL, NULL, NULL, NULL, NULL, 'off', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'off', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0);
INSERT INTO `contacts` VALUES ('2c967b03-792f-e511-4636-45c8884415d6', 1, '2007-02-06 13:52:35', '2007-02-11 16:01:49', '1', '1', '1', NULL, NULL, 'contact', NULL, NULL, NULL, NULL, NULL, 'off', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'off', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0);
INSERT INTO `contacts` VALUES ('1ae804e8-06a5-ed75-94d3-45d194878ef8', 0, '2007-02-13 10:36:05', '2007-07-18 13:00:16', '1', '1', '1', NULL, 'Петър', 'Петров', NULL, NULL, NULL, NULL, NULL, 'off', NULL, NULL, NULL, NULL, NULL, 'lordpgp@gmail.com', NULL, NULL, NULL, 'off', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0);
INSERT INTO `contacts` VALUES ('67ef6d1c-cd37-03b8-0d82-4678e72f46e8', 0, '2007-06-20 08:36:16', '2007-07-18 13:00:16', '1', '1', '1', NULL, 'Иван', 'Иванов', NULL, NULL, NULL, NULL, NULL, 'off', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'off', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0);

-- --------------------------------------------------------

-- 
-- Структура на таблица `contacts_audit`
-- 

DROP TABLE IF EXISTS `contacts_audit`;
CREATE TABLE `contacts_audit` (
  `id` varchar(36) NOT NULL default '',
  `parent_id` varchar(36) NOT NULL default '',
  `date_created` datetime default NULL,
  `created_by` varchar(36) default NULL,
  `field_name` varchar(100) default NULL,
  `data_type` varchar(100) default NULL,
  `before_value_string` varchar(255) default NULL,
  `after_value_string` varchar(255) default NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `contacts_audit`
-- 

INSERT INTO `contacts_audit` VALUES ('716ff2f2-176e-769f-5e0f-45ee86f2f965', '1ae804e8-06a5-ed75-94d3-45d194878ef8', '2007-03-07 09:31:08', '1', 'email1', 'email', '', 'lord_pgp@abv.bg', NULL, NULL);
INSERT INTO `contacts_audit` VALUES ('a250980d-bfea-c42e-1717-45ee8873194a', '1ae804e8-06a5-ed75-94d3-45d194878ef8', '2007-03-07 09:40:14', '1', 'email1', 'email', 'lord_pgp@abv.bg', 'lordpgp@gmail.com', NULL, NULL);

-- --------------------------------------------------------

-- 
-- Структура на таблица `contacts_bugs`
-- 

DROP TABLE IF EXISTS `contacts_bugs`;
CREATE TABLE `contacts_bugs` (
  `id` varchar(36) NOT NULL default '',
  `contact_id` varchar(36) default NULL,
  `bug_id` varchar(36) default NULL,
  `contact_role` varchar(50) default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_con_bug_con` (`contact_id`),
  KEY `idx_con_bug_bug` (`bug_id`),
  KEY `idx_contact_bug` (`contact_id`,`bug_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `contacts_bugs`
-- 


-- --------------------------------------------------------

-- 
-- Структура на таблица `contacts_cases`
-- 

DROP TABLE IF EXISTS `contacts_cases`;
CREATE TABLE `contacts_cases` (
  `id` varchar(36) NOT NULL default '',
  `contact_id` varchar(36) default NULL,
  `case_id` varchar(36) default NULL,
  `contact_role` varchar(50) default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_con_case_con` (`contact_id`),
  KEY `idx_con_case_case` (`case_id`),
  KEY `idx_contacts_cases` (`contact_id`,`case_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `contacts_cases`
-- 


-- --------------------------------------------------------

-- 
-- Структура на таблица `contacts_users`
-- 

DROP TABLE IF EXISTS `contacts_users`;
CREATE TABLE `contacts_users` (
  `id` varchar(36) NOT NULL default '',
  `contact_id` varchar(36) default NULL,
  `user_id` varchar(36) default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_con_users_con` (`contact_id`),
  KEY `idx_con_users_user` (`user_id`),
  KEY `idx_contacts_users` (`contact_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `contacts_users`
-- 


-- --------------------------------------------------------

-- 
-- Структура на таблица `currencies`
-- 

DROP TABLE IF EXISTS `currencies`;
CREATE TABLE `currencies` (
  `id` varchar(36) NOT NULL default '',
  `name` varchar(36) NOT NULL default '',
  `symbol` varchar(36) NOT NULL default '',
  `iso4217` varchar(3) NOT NULL default '',
  `conversion_rate` double NOT NULL default '0',
  `status` varchar(25) default NULL,
  `deleted` tinyint(1) NOT NULL default '0',
  `date_entered` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_by` varchar(36) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `idx_currency_name` (`name`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `currencies`
-- 

INSERT INTO `currencies` VALUES ('b6230800-7a1d-db1e-804b-45c1eeec3d8a', 'Leva', 'Lv', 'BG', 1.6, 'Active', 1, '2007-02-01 13:44:57', '2007-02-01 14:05:06', '1');
INSERT INTO `currencies` VALUES ('63f9b91d-90ce-2480-4428-45cc6b3549ab', 'Leva', 'Lv', 'Lv', 1.61, 'Active', 1, '2007-02-09 12:40:23', '2007-02-13 09:42:41', '1');

-- --------------------------------------------------------

-- 
-- Структура на таблица `custom_fields`
-- 

DROP TABLE IF EXISTS `custom_fields`;
CREATE TABLE `custom_fields` (
  `bean_id` varchar(36) default NULL,
  `set_num` int(11) default '0',
  `field0` varchar(255) default NULL,
  `field1` varchar(255) default NULL,
  `field2` varchar(255) default NULL,
  `field3` varchar(255) default NULL,
  `field4` varchar(255) default NULL,
  `field5` varchar(255) default NULL,
  `field6` varchar(255) default NULL,
  `field7` varchar(255) default NULL,
  `field8` varchar(255) default NULL,
  `field9` varchar(255) default NULL,
  `deleted` tinyint(1) default '0',
  KEY `idx_beanid_set_num` (`bean_id`,`set_num`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `custom_fields`
-- 


-- --------------------------------------------------------

-- 
-- Структура на таблица `dashboards`
-- 

DROP TABLE IF EXISTS `dashboards`;
CREATE TABLE `dashboards` (
  `id` varchar(36) NOT NULL default '',
  `deleted` tinyint(1) NOT NULL default '0',
  `date_entered` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_user_id` varchar(36) NOT NULL default '',
  `assigned_user_id` varchar(36) default NULL,
  `created_by` varchar(36) default NULL,
  `name` varchar(100) default NULL,
  `description` text,
  `content` text,
  PRIMARY KEY  (`id`),
  KEY `idx_dashboard_name` (`name`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `dashboards`
-- 

INSERT INTO `dashboards` VALUES ('44ce0df9-739e-4c1b-da09-459b841ab64b', 0, '2007-01-03 10:23:00', '2007-01-03 10:23:00', '1', '1', '1', 'Home', NULL, 'a:4:{i:0;a:2:{s:4:"type";s:4:"code";s:2:"id";s:29:"Chart_pipeline_by_sales_stage";}i:1;a:2:{s:4:"type";s:4:"code";s:2:"id";s:28:"Chart_lead_source_by_outcome";}i:2;a:2:{s:4:"type";s:4:"code";s:2:"id";s:22:"Chart_outcome_by_month";}i:3;a:2:{s:4:"type";s:4:"code";s:2:"id";s:29:"Chart_pipeline_by_lead_source";}}');

-- --------------------------------------------------------

-- 
-- Структура на таблица `document_revisions`
-- 

DROP TABLE IF EXISTS `document_revisions`;
CREATE TABLE `document_revisions` (
  `id` varchar(36) NOT NULL default '',
  `change_log` varchar(255) default NULL,
  `document_id` varchar(36) default NULL,
  `date_entered` datetime default NULL,
  `created_by` varchar(36) default NULL,
  `filename` varchar(255) NOT NULL default '',
  `file_ext` varchar(25) default NULL,
  `file_mime_type` varchar(100) default NULL,
  `revision` varchar(25) default NULL,
  `deleted` tinyint(1) default '0',
  `date_modified` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `document_revisions`
-- 


-- --------------------------------------------------------

-- 
-- Структура на таблица `documents`
-- 

DROP TABLE IF EXISTS `documents`;
CREATE TABLE `documents` (
  `id` varchar(36) NOT NULL default '',
  `document_name` varchar(255) NOT NULL default '',
  `active_date` date default NULL,
  `exp_date` date default NULL,
  `description` text,
  `category_id` varchar(25) default NULL,
  `subcategory_id` varchar(25) default NULL,
  `status_id` varchar(25) default NULL,
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  `modified_user_id` varchar(36) default NULL,
  `created_by` varchar(36) default NULL,
  `document_revision_id` varchar(36) default NULL,
  `mail_merge_document` varchar(3) default 'off',
  `related_doc_id` varchar(36) default NULL,
  `related_doc_rev_id` varchar(36) default NULL,
  `is_template` tinyint(1) default '0',
  `template_type` varchar(25) default NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_doc_cat` (`category_id`,`subcategory_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `documents`
-- 


-- --------------------------------------------------------

-- 
-- Структура на таблица `email_marketing`
-- 

DROP TABLE IF EXISTS `email_marketing`;
CREATE TABLE `email_marketing` (
  `id` varchar(36) NOT NULL default '',
  `deleted` tinyint(1) NOT NULL default '0',
  `date_entered` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_user_id` varchar(36) default NULL,
  `created_by` varchar(36) default NULL,
  `name` varchar(255) default NULL,
  `from_addr` varchar(100) default NULL,
  `from_name` varchar(100) default NULL,
  `inbound_email_id` varchar(36) default NULL,
  `date_start` date default NULL,
  `time_start` time default NULL,
  `template_id` varchar(36) NOT NULL default '',
  `status` varchar(25) NOT NULL default '',
  `campaign_id` varchar(36) default NULL,
  `all_prospect_lists` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_emmkt_name` (`name`),
  KEY `idx_emmkit_del` (`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `email_marketing`
-- 


-- --------------------------------------------------------

-- 
-- Структура на таблица `email_marketing_prospect_lists`
-- 

DROP TABLE IF EXISTS `email_marketing_prospect_lists`;
CREATE TABLE `email_marketing_prospect_lists` (
  `id` varchar(36) NOT NULL default '',
  `prospect_list_id` varchar(36) default NULL,
  `email_marketing_id` varchar(36) default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `email_mp_prospects` (`email_marketing_id`,`prospect_list_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `email_marketing_prospect_lists`
-- 


-- --------------------------------------------------------

-- 
-- Структура на таблица `email_templates`
-- 

DROP TABLE IF EXISTS `email_templates`;
CREATE TABLE `email_templates` (
  `id` varchar(36) NOT NULL default '',
  `date_entered` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_user_id` varchar(36) default NULL,
  `created_by` varchar(36) default NULL,
  `published` varchar(3) default NULL,
  `name` varchar(255) default NULL,
  `description` text,
  `subject` varchar(255) default NULL,
  `body` text,
  `body_html` text,
  `deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_email_template_name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `email_templates`
-- 


-- --------------------------------------------------------

-- 
-- Структура на таблица `emailman`
-- 

DROP TABLE IF EXISTS `emailman`;
CREATE TABLE `emailman` (
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `user_id` varchar(36) default NULL,
  `id` int(11) NOT NULL auto_increment,
  `campaign_id` varchar(36) default NULL,
  `marketing_id` varchar(36) default NULL,
  `list_id` varchar(36) default NULL,
  `send_date_time` datetime default NULL,
  `modified_user_id` varchar(36) default NULL,
  `in_queue` tinyint(1) default '0',
  `in_queue_date` datetime default NULL,
  `send_attempts` int(11) default '0',
  `deleted` tinyint(1) default '0',
  `related_id` varchar(36) default NULL,
  `related_type` varchar(100) default NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_eman_list` (`list_id`,`user_id`,`deleted`),
  KEY `idx_eman_campaign_id` (`campaign_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Дъмп (схема) на данните в таблицата `emailman`
-- 


-- --------------------------------------------------------

-- 
-- Структура на таблица `emails`
-- 

DROP TABLE IF EXISTS `emails`;
CREATE TABLE `emails` (
  `id` varchar(36) NOT NULL default '',
  `date_entered` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `assigned_user_id` varchar(36) default NULL,
  `modified_user_id` varchar(36) default NULL,
  `created_by` varchar(36) default NULL,
  `name` varchar(255) default NULL,
  `date_start` date default NULL,
  `time_start` time default NULL,
  `parent_type` varchar(25) default NULL,
  `parent_id` varchar(36) default NULL,
  `description` text,
  `description_html` text,
  `from_addr` varchar(100) default NULL,
  `from_name` varchar(100) default NULL,
  `to_addrs` text,
  `cc_addrs` text,
  `bcc_addrs` text,
  `to_addrs_ids` text,
  `to_addrs_names` text,
  `to_addrs_emails` text,
  `cc_addrs_ids` text,
  `cc_addrs_names` text,
  `cc_addrs_emails` text,
  `bcc_addrs_ids` text,
  `bcc_addrs_names` text,
  `bcc_addrs_emails` text,
  `type` varchar(25) default NULL,
  `status` varchar(25) default NULL,
  `message_id` varchar(100) default NULL,
  `reply_to_name` varchar(100) default NULL,
  `reply_to_addr` varchar(100) default NULL,
  `intent` varchar(25) default 'pick',
  `mailbox_id` varchar(36) default NULL,
  `raw_source` text,
  `deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_email_name` (`name`),
  KEY `idx_message_id` (`message_id`),
  KEY `idx_email_parent_id` (`parent_id`),
  KEY `idx_email_assigned` (`assigned_user_id`,`type`,`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `emails`
-- 

INSERT INTO `emails` VALUES ('dc5d6d1a-8400-d7dd-59b5-45ee850fb46a', '2007-03-07 09:28:21', '2007-03-07 09:41:29', '1', '1', '1', '(no subject)', '2007-03-07', '09:28:00', 'Accounts', NULL, NULL, NULL, 'lord_pgp@abv.bg', 'Administrator', 'Петър Петров <lord_pgp@abv.bg>; ', NULL, NULL, '1ae804e8-06a5-ed75-94d3-45d194878ef8; ', 'Петър Петров; ', '; ', NULL, NULL, NULL, NULL, NULL, NULL, 'out', 'replied', NULL, NULL, NULL, 'pick', NULL, 'Date%3A+Wed%2C+7+Mar+2007+11%3A28%3A21+%2B0200%0AReturn-Path%3A+lord_pgp%40abv.bg%0ATo%3A+%3D%3FISO-8859-1%3FB%3F0J%2FQtdGC0YrRgCDQn9C10YLRgNC%2B0LI%3D%3F%3D+%3Clord_pgp%40abv.bg%3E%0AFrom%3A+Administrator+%3Clord_pgp%40abv.bg%3E%0AReply-to%3A+Administrator+%3Clord_pgp%40abv.bg%3E%0ASubject%3A+%0AMessage-ID%3A+%3Cea66f32ffd5e4d4e00556b3909b55d64%40localhost%3E%0AX-Priority%3A+3%0AX-Mailer%3A+PHPMailer+%5Bversion+1.73%5D%0AMIME-Version%3A+1.0%0AContent-Transfer-Encoding%3A+quoted-printable%0AContent-Type%3A+text%2Fplain%3B+charset%3D%22ISO-8859-1%22%0A%0A%0A', 1);
INSERT INTO `emails` VALUES ('71be2bba-805a-7cec-2581-45ee869f65aa', '2007-03-07 09:31:54', '2007-03-07 09:41:29', '1', '1', '1', 'FW: TEST EMAIL', '2007-03-07', '09:31:00', 'Accounts', NULL, '> \r\n', '<html><body>Begin forwarded message:<br /><br />> From: Administrator<br />> Date Sent: <br />> To:  Петър Петров</body></html>', 'lord_pgp@abv.bg', 'Administrator', 'Петър Петров <lord_pgp@abv.bg>; ', 'Петър Петров <lord_pgp@abv.bg>; ', 'Петър Петров <lord_pgp@abv.bg>; ', '1ae804e8-06a5-ed75-94d3-45d194878ef8; ', 'Петър Петров; ', 'lord_pgp@abv.bg; ', '1ae804e8-06a5-ed75-94d3-45d194878ef8; ', 'Петър Петров; ', 'lord_pgp@abv.bg; ', '1ae804e8-06a5-ed75-94d3-45d194878ef8; ', 'Петър Петров; ', 'lord_pgp@abv.bg; ', 'out', 'sent', NULL, NULL, NULL, 'pick', NULL, 'Date%3A+Wed%2C+7+Mar+2007+11%3A31%3A54+%2B0200%0AReturn-Path%3A+lord_pgp%40abv.bg%0ATo%3A+%3D%3FISO-8859-1%3FB%3F0J%2FQtdGC0YrRgCDQn9C10YLRgNC%2B0LI%3D%3F%3D+%3Clord_pgp%40abv.bg%3E%0ACc%3A+%3D%3FISO-8859-1%3FB%3F0J%2FQtdGC0YrRgCDQn9C10YLRgNC%2B0LI%3D%3F%3D+%3Clord_pgp%40abv.bg%3E%0AFrom%3A+Administrator+%3Clord_pgp%40abv.bg%3E%0ABcc%3A+%3D%3FISO-8859-1%3FB%3F0J%2FQtdGC0YrRgCDQn9C10YLRgNC%2B0LI%3D%3F%3D+%3Clord_pgp%40abv.bg%3E%0AReply-to%3A+Administrator+%3Clord_pgp%40abv.bg%3E%0ASubject%3A+FW%3A+TEST+EMAIL%0AMessage-ID%3A+%3C82da8327b960fc0c8c67ca29589f3cc8%40localhost%3E%0AX-Priority%3A+3%0AX-Mailer%3A+PHPMailer+%5Bversion+1.73%5D%0AMIME-Version%3A+1.0%0AContent-Type%3A+multipart%2Falternative%3B%0A%09boundary%3D%22b1_82da8327b960fc0c8c67ca29589f3cc8%22%0A%0A%0A--b1_82da8327b960fc0c8c67ca29589f3cc8%0AContent-Type%3A+text%2Fplain%3B+charset+%3D+%22ISO-8859-1%22%0AContent-Transfer-Encoding%3A+quoted-printable%0A%0A%3E%3D20%0A%0A%0A--b1_82da8327b960fc0c8c67ca29589f3cc8%0AContent-Type%3A+text%2Fhtml%3B+charset+%3D+%22ISO-8859-1%22%0AContent-Transfer-Encoding%3A+quoted-printable%0A%0A%3Chtml%3E%3Cbody%3EBegin+forwarded+message%3A%3Cbr+%2F%3E%3Cbr+%2F%3E%3E+From%3A+Administrator%3Cbr+%3D%0A%2F%3E%3E+Date+Sent%3A+%3Cbr+%2F%3E%3E+To%3A++%3DD0%3D9F%3DD0%3DB5%3DD1%3D82%3DD1%3D8A%3DD1%3D80+%3D%0A%3DD0%3D9F%3DD0%3DB5%3DD1%3D82%3DD1%3D80%3DD0%3DBE%3DD0%3DB2%3C%2Fbody%3E%3C%2Fhtml%3E%0A%0A%0A%0A--b1_82da8327b960fc0c8c67ca29589f3cc8--%0A', 1);
INSERT INTO `emails` VALUES ('8d27a309-ddd5-e0d3-39e7-45ee87b59555', '2007-03-07 09:34:26', '2007-03-07 09:41:29', '1', '1', '1', 'MSG', '2007-03-07', '09:34:00', 'Accounts', NULL, 'MSG', '<html><body>MSG</body></html>', 'lord_pgp@abv.bg', 'Administrator', 'Петър Петров <lord_pgp@abv.bg>; ', 'Петър Петров <lord_pgp@abv.bg>; ', NULL, '1ae804e8-06a5-ed75-94d3-45d194878ef8; ', 'Петър Петров; ', 'lord_pgp@abv.bg; ', '1ae804e8-06a5-ed75-94d3-45d194878ef8; ', 'Петър Петров; ', 'lord_pgp@abv.bg; ', NULL, NULL, NULL, 'out', 'replied', NULL, NULL, NULL, 'pick', NULL, 'Date%3A+Wed%2C+7+Mar+2007+11%3A34%3A26+%2B0200%0AReturn-Path%3A+lord_pgp%40abv.bg%0ATo%3A+%3D%3FISO-8859-1%3FB%3F0J%2FQtdGC0YrRgCDQn9C10YLRgNC%2B0LI%3D%3F%3D+%3Clord_pgp%40abv.bg%3E%0ACc%3A+%3D%3FISO-8859-1%3FB%3F0J%2FQtdGC0YrRgCDQn9C10YLRgNC%2B0LI%3D%3F%3D+%3Clord_pgp%40abv.bg%3E%0AFrom%3A+Administrator+%3Clord_pgp%40abv.bg%3E%0AReply-to%3A+Administrator+%3Clord_pgp%40abv.bg%3E%0ASubject%3A+MSG%0AMessage-ID%3A+%3C43f508be233566e4a6dd1bc8741048b4%40localhost%3E%0AX-Priority%3A+3%0AX-Mailer%3A+PHPMailer+%5Bversion+1.73%5D%0AMIME-Version%3A+1.0%0AContent-Type%3A+multipart%2Falternative%3B%0A%09boundary%3D%22b1_43f508be233566e4a6dd1bc8741048b4%22%0A%0A%0A--b1_43f508be233566e4a6dd1bc8741048b4%0AContent-Type%3A+text%2Fplain%3B+charset+%3D+%22ISO-8859-1%22%0AContent-Transfer-Encoding%3A+quoted-printable%0A%0AMSG%0A%0A%0A--b1_43f508be233566e4a6dd1bc8741048b4%0AContent-Type%3A+text%2Fhtml%3B+charset+%3D+%22ISO-8859-1%22%0AContent-Transfer-Encoding%3A+quoted-printable%0A%0A%3Chtml%3E%3Cbody%3EMSG%3C%2Fbody%3E%3C%2Fhtml%3E%0A%0A%0A%0A--b1_43f508be233566e4a6dd1bc8741048b4--%0A', 1);
INSERT INTO `emails` VALUES ('bc7c1f76-2c54-ca9b-d667-45ee870b534f', '2007-03-07 09:37:11', '2007-03-07 09:41:29', '1', '1', '1', 'FW: MSG', '2007-03-07', '09:37:00', 'Accounts', NULL, '> MSG\r\n', '<html><body>Begin forwarded message:<br /><br />> From: Administrator<br />> Date Sent: <br />> To:  Петър Петров</body></html>', 'lord_pgp@abv.bg', 'Administrator', 'Петър Петров <lord_pgp@abv.bg>; ', NULL, NULL, '1ae804e8-06a5-ed75-94d3-45d194878ef8; ', 'Петър Петров; ', 'lord_pgp@abv.bg; ', NULL, NULL, NULL, NULL, NULL, NULL, 'out', 'sent', NULL, NULL, NULL, 'pick', NULL, 'Date%3A+Wed%2C+7+Mar+2007+11%3A37%3A11+%2B0200%0AReturn-Path%3A+lord_pgp%40abv.bg%0ATo%3A+%3D%3FUTF-8%3FB%3F0J%2FQtdGC0YrRgCDQn9C10YLRgNC%2B0LI%3D%3F%3D+%3Clord_pgp%40abv.bg%3E%0AFrom%3A+Administrator+%3Clord_pgp%40abv.bg%3E%0AReply-to%3A+Administrator+%3Clord_pgp%40abv.bg%3E%0ASubject%3A+FW%3A+MSG%0AMessage-ID%3A+%3Cf49934f3b0d252be37325c1add924bf2%40localhost%3E%0AX-Priority%3A+3%0AX-Mailer%3A+PHPMailer+%5Bversion+1.73%5D%0AMIME-Version%3A+1.0%0AContent-Type%3A+multipart%2Falternative%3B%0A%09boundary%3D%22b1_f49934f3b0d252be37325c1add924bf2%22%0A%0A%0A--b1_f49934f3b0d252be37325c1add924bf2%0AContent-Type%3A+text%2Fplain%3B+charset+%3D+%22UTF-8%22%0AContent-Transfer-Encoding%3A+quoted-printable%0A%0A%3E+MSG%0A%0A%0A--b1_f49934f3b0d252be37325c1add924bf2%0AContent-Type%3A+text%2Fhtml%3B+charset+%3D+%22UTF-8%22%0AContent-Transfer-Encoding%3A+quoted-printable%0A%0A%3Chtml%3E%3Cbody%3EBegin+forwarded+message%3A%3Cbr+%2F%3E%3Cbr+%2F%3E%3E+From%3A+Administrator%3Cbr+%3D%0A%2F%3E%3E+Date+Sent%3A+%3Cbr+%2F%3E%3E+To%3A++%3DD0%3D9F%3DD0%3DB5%3DD1%3D82%3DD1%3D8A%3DD1%3D80+%3D%0A%3DD0%3D9F%3DD0%3DB5%3DD1%3D82%3DD1%3D80%3DD0%3DBE%3DD0%3DB2%3C%2Fbody%3E%3C%2Fhtml%3E%0A%0A%0A%0A--b1_f49934f3b0d252be37325c1add924bf2--%0A', 1);
INSERT INTO `emails` VALUES ('f102eac4-d6fb-5cca-c7cd-45ee8854d274', '2007-03-07 09:40:32', '2007-03-07 09:42:11', '1', '1', '1', 'Gmail', '2007-03-07', '09:40:00', 'Accounts', NULL, NULL, NULL, 'lord_pgp@abv.bg', 'Administrator', 'Петър Петров <lordpgp@gmail.com>; ', NULL, NULL, '1ae804e8-06a5-ed75-94d3-45d194878ef8; ', 'Петър Петров; ', 'lordpgp@gmail.com; ', NULL, NULL, NULL, NULL, NULL, NULL, 'out', 'sent', NULL, NULL, NULL, 'pick', NULL, 'Date%3A+Wed%2C+7+Mar+2007+11%3A40%3A32+%2B0200%0AReturn-Path%3A+lord_pgp%40abv.bg%0ATo%3A+%3D%3FUTF-8%3FB%3F0J%2FQtdGC0YrRgCDQn9C10YLRgNC%2B0LI%3D%3F%3D+%3Clordpgp%40gmail.com%3E%0AFrom%3A+Administrator+%3Clord_pgp%40abv.bg%3E%0AReply-to%3A+Administrator+%3Clord_pgp%40abv.bg%3E%0ASubject%3A+Gmail%0AMessage-ID%3A+%3C69f3e1b6fdc46d639d497d977e40be06%40localhost%3E%0AX-Priority%3A+3%0AX-Mailer%3A+PHPMailer+%5Bversion+1.73%5D%0AMIME-Version%3A+1.0%0AContent-Transfer-Encoding%3A+quoted-printable%0AContent-Type%3A+text%2Fplain%3B+charset%3D%22UTF-8%22%0A%0A%0A', 1);
INSERT INTO `emails` VALUES ('b1021a22-f9a0-6ff8-c9e0-45efd29f7061', '2007-03-08 09:13:28', '2007-05-18 08:53:11', '1', '1', '1', 'Subject1', '2007-03-08', '09:13:00', 'Accounts', NULL, 'body1', '<html><body>body1</body></html>', 'lord_pgp@abv.bg', 'Administrator', 'Петър Петров <lordpgp@gmail.com>; ', NULL, NULL, '1ae804e8-06a5-ed75-94d3-45d194878ef8; ', 'Петър Петров; ', 'lordpgp@gmail.com; ', NULL, NULL, NULL, NULL, NULL, NULL, 'out', 'sent', NULL, NULL, NULL, 'pick', NULL, 'Date%3A+Thu%2C+8+Mar+2007+11%3A12%3A36+%2B0200%0AReturn-Path%3A+lord_pgp%40abv.bg%0ATo%3A+%3D%3FUTF-8%3FB%3F0J%2FQtdGC0YrRgCDQn9C10YLRgNC%2B0LI%3D%3F%3D+%3Clordpgp%40gmail.com%3E%0AFrom%3A+Administrator+%3Clord_pgp%40abv.bg%3E%0AReply-to%3A+Administrator+%3Clord_pgp%40abv.bg%3E%0ASubject%3A+Subject1%0AMessage-ID%3A+%3Cdc4fd4f24f0b4fe4289727770bd77a3f%40localhost%3E%0AX-Priority%3A+3%0AX-Mailer%3A+PHPMailer+%5Bversion+1.73%5D%0AMIME-Version%3A+1.0%0AContent-Type%3A+multipart%2Falternative%3B%0A%09boundary%3D%22b1_dc4fd4f24f0b4fe4289727770bd77a3f%22%0A%0A%0A--b1_dc4fd4f24f0b4fe4289727770bd77a3f%0AContent-Type%3A+text%2Fplain%3B+charset+%3D+%22UTF-8%22%0AContent-Transfer-Encoding%3A+quoted-printable%0A%0Abody1%0A%0A%0A--b1_dc4fd4f24f0b4fe4289727770bd77a3f%0AContent-Type%3A+text%2Fhtml%3B+charset+%3D+%22UTF-8%22%0AContent-Transfer-Encoding%3A+quoted-printable%0A%0A%3Chtml%3E%3Cbody%3Ebody1%3C%2Fbody%3E%3C%2Fhtml%3E%0A%0A%0A%0A--b1_dc4fd4f24f0b4fe4289727770bd77a3f--%0A', 1);
INSERT INTO `emails` VALUES ('6d1c76d8-e984-00ae-80ed-45f12b660bc0', '0000-00-00 00:00:00', '2007-05-18 08:53:11', '177bd6bb-665d-cc61-4d82-45ab422290d3', NULL, '1', 'PRD10000-Estimate', NULL, NULL, NULL, NULL, 'PRD10000 is waiting for estimate', NULL, 'Administrator', 'lord_pgp@abv.bg', NULL, NULL, NULL, NULL, 'Demo', '', NULL, NULL, NULL, NULL, NULL, NULL, 'out', 'sent', NULL, NULL, NULL, 'pick', NULL, NULL, 1);
INSERT INTO `emails` VALUES ('595a81e4-cd03-3a09-cfa8-45f1704eccf1', '0000-00-00 00:00:00', '2007-05-18 08:53:11', '1', NULL, '1', 'PRD10005-Estimate', NULL, NULL, NULL, NULL, 'PRD10005 is waiting for estimate', NULL, 'Administrator', 'lord_pgp@abv.bg', NULL, NULL, NULL, NULL, 'admin', 'lord_pgp@abv.bg', NULL, NULL, NULL, NULL, NULL, NULL, 'out', 'sent', NULL, NULL, NULL, 'pick', NULL, NULL, 1);
INSERT INTO `emails` VALUES ('84efcc1f-a9d4-122d-cae3-46287c0547bb', '0000-00-00 00:00:00', '2007-05-18 08:53:11', '1', NULL, '1', 'PRD10007-Estimate', NULL, NULL, NULL, NULL, 'PRD10007 is waiting for estimate', NULL, 'Administrator', 'lord_pgp@abv.bg', NULL, NULL, NULL, NULL, 'admin', 'lord_pgp@abv.bg', NULL, NULL, NULL, NULL, NULL, NULL, 'out', 'sent', NULL, NULL, NULL, 'pick', NULL, NULL, 1);
INSERT INTO `emails` VALUES ('557d80a3-b41f-aef9-9234-463051a4f239', '0000-00-00 00:00:00', '2007-05-18 08:53:11', '177bd6bb-665d-cc61-4d82-45ab422290d3', NULL, '1', 'PRD10001-Estimate', NULL, NULL, NULL, NULL, 'PRD10001 is waiting for estimate', NULL, 'Administrator', 'lord_pgp@abv.bg', NULL, NULL, NULL, NULL, 'Demo', '', NULL, NULL, NULL, NULL, NULL, NULL, 'out', 'sent', NULL, NULL, NULL, 'pick', NULL, NULL, 1);
INSERT INTO `emails` VALUES ('e6c030b3-db54-1478-e84c-464d69dd7657', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', NULL, '1', 'PRD10000-Estimate', NULL, NULL, NULL, NULL, 'PRD10000 is waiting for estimate', NULL, 'Administrator', 'lord_pgp@abv.bg', NULL, NULL, NULL, NULL, 'admin', 'lord_pgp@abv.bg', NULL, NULL, NULL, NULL, NULL, NULL, 'out', 'sent', NULL, NULL, NULL, 'pick', NULL, NULL, 0);
INSERT INTO `emails` VALUES ('8f7736bc-77ae-90b2-f7d1-4678f38321c5', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', NULL, '1', 'PRD10001-Estimate', NULL, NULL, NULL, NULL, 'PRD10001 is waiting for estimate', NULL, 'Administrator', 'lord_pgp@abv.bg', NULL, NULL, NULL, NULL, 'admin', 'lord_pgp@abv.bg', NULL, NULL, NULL, NULL, NULL, NULL, 'out', 'sent', NULL, NULL, NULL, 'pick', NULL, NULL, 0);
INSERT INTO `emails` VALUES ('5405e254-5e65-d1ae-ef6f-4688e2924624', '2007-07-02 11:34:48', '2007-07-02 11:34:48', '1', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'archived', NULL, NULL, NULL, NULL, 'pick', NULL, NULL, 0);
INSERT INTO `emails` VALUES ('46861bf3-c4b7-8bb0-fbe6-46c9403ba75c', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', NULL, '1', 'PRD10002-Estimate', NULL, NULL, NULL, NULL, 'PRD10002 is waiting for estimate', NULL, 'Administrator', 'lord_pgp@abv.bg', NULL, NULL, NULL, NULL, 'admin', 'lord_pgp@abv.bg', NULL, NULL, NULL, NULL, NULL, NULL, 'out', 'sent', NULL, NULL, NULL, 'pick', NULL, NULL, 0);
INSERT INTO `emails` VALUES ('4d4c91a5-52ad-27dc-6a97-46c9436a94d7', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', NULL, '1', 'PRD10003-Estimate', NULL, NULL, NULL, NULL, 'PRD10003 is waiting for estimate', NULL, 'Administrator', 'lord_pgp@abv.bg', NULL, NULL, NULL, NULL, 'admin', 'lord_pgp@abv.bg', NULL, NULL, NULL, NULL, NULL, NULL, 'out', 'sent', NULL, NULL, NULL, 'pick', NULL, NULL, 0);
INSERT INTO `emails` VALUES ('96eaf9f7-97e7-f3b4-cc98-46c94346fa23', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', NULL, '1', 'PRD10004-Estimate', NULL, NULL, NULL, NULL, 'PRD10004 is waiting for estimate', NULL, 'Administrator', 'lord_pgp@abv.bg', NULL, NULL, NULL, NULL, 'admin', 'lord_pgp@abv.bg', NULL, NULL, NULL, NULL, NULL, NULL, 'out', 'sent', NULL, NULL, NULL, 'pick', NULL, NULL, 0);

-- --------------------------------------------------------

-- 
-- Структура на таблица `emails_accounts`
-- 

DROP TABLE IF EXISTS `emails_accounts`;
CREATE TABLE `emails_accounts` (
  `id` varchar(36) NOT NULL default '',
  `email_id` varchar(36) default NULL,
  `account_id` varchar(36) default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_acc_email_email` (`email_id`),
  KEY `idx_acc_email_acc` (`account_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `emails_accounts`
-- 


-- --------------------------------------------------------

-- 
-- Структура на таблица `emails_bugs`
-- 

DROP TABLE IF EXISTS `emails_bugs`;
CREATE TABLE `emails_bugs` (
  `id` varchar(36) NOT NULL default '',
  `email_id` varchar(36) default NULL,
  `bug_id` varchar(36) default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_bug_email_email` (`email_id`),
  KEY `idx_bug_email_bug` (`bug_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `emails_bugs`
-- 


-- --------------------------------------------------------

-- 
-- Структура на таблица `emails_cases`
-- 

DROP TABLE IF EXISTS `emails_cases`;
CREATE TABLE `emails_cases` (
  `id` varchar(36) NOT NULL default '',
  `email_id` varchar(36) default NULL,
  `case_id` varchar(36) default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_case_email_email` (`email_id`),
  KEY `idx_case_email_case` (`case_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `emails_cases`
-- 


-- --------------------------------------------------------

-- 
-- Структура на таблица `emails_contacts`
-- 

DROP TABLE IF EXISTS `emails_contacts`;
CREATE TABLE `emails_contacts` (
  `id` varchar(36) NOT NULL default '',
  `email_id` varchar(36) default NULL,
  `contact_id` varchar(36) default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_con_email_email` (`email_id`),
  KEY `idx_con_email_con` (`contact_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `emails_contacts`
-- 

INSERT INTO `emails_contacts` VALUES ('324b9f73-d7d9-a918-c450-45ee850bbfbd', 'dc5d6d1a-8400-d7dd-59b5-45ee850fb46a', '1ae804e8-06a5-ed75-94d3-45d194878ef8', '2007-03-07 09:41:29', 1);
INSERT INTO `emails_contacts` VALUES ('84e7b4a2-c850-1c6e-3758-45ee86a1cc6c', '71be2bba-805a-7cec-2581-45ee869f65aa', '1ae804e8-06a5-ed75-94d3-45d194878ef8', '2007-03-07 09:41:29', 1);
INSERT INTO `emails_contacts` VALUES ('9a9880a1-2427-cdfa-4556-45ee87cf07f2', '8d27a309-ddd5-e0d3-39e7-45ee87b59555', '1ae804e8-06a5-ed75-94d3-45d194878ef8', '2007-03-07 09:41:29', 1);
INSERT INTO `emails_contacts` VALUES ('cee44e58-964f-7754-99d9-45ee87c36006', 'bc7c1f76-2c54-ca9b-d667-45ee870b534f', '1ae804e8-06a5-ed75-94d3-45d194878ef8', '2007-03-07 09:41:29', 1);
INSERT INTO `emails_contacts` VALUES ('a0130d85-a51b-baa9-7136-45ee882805c6', 'f102eac4-d6fb-5cca-c7cd-45ee8854d274', '1ae804e8-06a5-ed75-94d3-45d194878ef8', '2007-03-07 09:42:11', 1);
INSERT INTO `emails_contacts` VALUES ('65880921-c880-3e59-5c49-45efd699fe52', 'b1021a22-f9a0-6ff8-c9e0-45efd29f7061', '1ae804e8-06a5-ed75-94d3-45d194878ef8', '2007-05-18 08:53:11', 1);

-- --------------------------------------------------------

-- 
-- Структура на таблица `emails_leads`
-- 

DROP TABLE IF EXISTS `emails_leads`;
CREATE TABLE `emails_leads` (
  `id` varchar(36) NOT NULL default '',
  `email_id` varchar(36) default NULL,
  `lead_id` varchar(36) default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_lead_email_email` (`email_id`),
  KEY `idx_lead_email_lead` (`lead_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `emails_leads`
-- 


-- --------------------------------------------------------

-- 
-- Структура на таблица `emails_opportunities`
-- 

DROP TABLE IF EXISTS `emails_opportunities`;
CREATE TABLE `emails_opportunities` (
  `id` varchar(36) NOT NULL default '',
  `email_id` varchar(36) default NULL,
  `opportunity_id` varchar(36) default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_opp_email_email` (`email_id`),
  KEY `idx_opp_email_opp` (`opportunity_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `emails_opportunities`
-- 


-- --------------------------------------------------------

-- 
-- Структура на таблица `emails_project_tasks`
-- 

DROP TABLE IF EXISTS `emails_project_tasks`;
CREATE TABLE `emails_project_tasks` (
  `id` varchar(36) NOT NULL default '',
  `email_id` varchar(36) default NULL,
  `project_task_id` varchar(36) default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_ept_email` (`email_id`),
  KEY `idx_ept_project_task` (`project_task_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `emails_project_tasks`
-- 


-- --------------------------------------------------------

-- 
-- Структура на таблица `emails_projects`
-- 

DROP TABLE IF EXISTS `emails_projects`;
CREATE TABLE `emails_projects` (
  `id` varchar(36) NOT NULL default '',
  `email_id` varchar(36) default NULL,
  `project_id` varchar(36) default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_project_email_email` (`email_id`),
  KEY `idx_project_email_project` (`project_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `emails_projects`
-- 


-- --------------------------------------------------------

-- 
-- Структура на таблица `emails_prospects`
-- 

DROP TABLE IF EXISTS `emails_prospects`;
CREATE TABLE `emails_prospects` (
  `id` varchar(36) NOT NULL default '',
  `email_id` varchar(36) default NULL,
  `prospect_id` varchar(36) default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_prospect_email_email` (`email_id`),
  KEY `idx_prospect_email_prospect` (`prospect_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `emails_prospects`
-- 


-- --------------------------------------------------------

-- 
-- Структура на таблица `emails_tasks`
-- 

DROP TABLE IF EXISTS `emails_tasks`;
CREATE TABLE `emails_tasks` (
  `id` varchar(36) NOT NULL default '',
  `email_id` varchar(36) default NULL,
  `task_id` varchar(36) default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_task_email_email` (`email_id`),
  KEY `idx_task_email_task` (`task_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `emails_tasks`
-- 


-- --------------------------------------------------------

-- 
-- Структура на таблица `emails_users`
-- 

DROP TABLE IF EXISTS `emails_users`;
CREATE TABLE `emails_users` (
  `id` varchar(36) NOT NULL default '',
  `email_id` varchar(36) default NULL,
  `user_id` varchar(36) default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_usr_email_email` (`email_id`),
  KEY `idx_usr_email_usr` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `emails_users`
-- 

INSERT INTO `emails_users` VALUES ('24bb4ad3-714e-fe32-de4c-45ee8566acd3', 'dc5d6d1a-8400-d7dd-59b5-45ee850fb46a', '1', '2007-03-07 09:41:29', 1);
INSERT INTO `emails_users` VALUES ('84496b7b-4609-4394-4fc0-45ee86c415bc', '71be2bba-805a-7cec-2581-45ee869f65aa', '1', '2007-03-07 09:41:29', 1);
INSERT INTO `emails_users` VALUES ('99f18510-f112-60fe-edca-45ee87ba2e3b', '8d27a309-ddd5-e0d3-39e7-45ee87b59555', '1', '2007-03-07 09:41:29', 1);
INSERT INTO `emails_users` VALUES ('ce3dd38e-d72d-5b3b-7980-45ee8725e144', 'bc7c1f76-2c54-ca9b-d667-45ee870b534f', '1', '2007-03-07 09:41:29', 1);
INSERT INTO `emails_users` VALUES ('95100e06-4542-e9bb-fdf8-45ee8844a949', 'f102eac4-d6fb-5cca-c7cd-45ee8854d274', '1', '2007-03-07 09:42:11', 1);
INSERT INTO `emails_users` VALUES ('319f4321-cb27-36e6-8844-45efd6ced71c', 'b1021a22-f9a0-6ff8-c9e0-45efd29f7061', '1', '2007-05-18 08:53:11', 1);

-- --------------------------------------------------------

-- 
-- Структура на таблица `estimate`
-- 

DROP TABLE IF EXISTS `estimate`;
CREATE TABLE `estimate` (
  `id` varchar(36) NOT NULL default '',
  `date_entered` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `assigned_user_id` varchar(36) default NULL,
  `modified_user_id` varchar(36) default NULL,
  `created_by` varchar(36) default NULL,
  `name` varchar(50) NOT NULL default '',
  `product_id` varchar(36) NOT NULL default '',
  `product_name` varchar(50) NOT NULL default '',
  `print_price` double NOT NULL default '0',
  `paper_price` double NOT NULL default '0',
  `material_price` double NOT NULL default '0',
  `other_price` double NOT NULL default '0',
  `total_price` double NOT NULL default '0',
  `description` text,
  `deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `estimate`
-- 

INSERT INTO `estimate` VALUES ('9910cac9-e1a9-dd46-eacc-4654416f3c08', '2007-05-23 13:27:13', '2007-05-23 13:27:13', '1', '1', '1', 'Калкулация - Каталог "Пресфото"', 'a5a08eeb-0be7-f066-2677-464d699203bc', 'Каталог "Пресфото"', 4140, 1322, 123123, 1231, 1231231, NULL, 0);

-- --------------------------------------------------------

-- 
-- Структура на таблица `feeds`
-- 

DROP TABLE IF EXISTS `feeds`;
CREATE TABLE `feeds` (
  `id` varchar(36) NOT NULL default '',
  `deleted` tinyint(1) NOT NULL default '0',
  `date_entered` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_user_id` varchar(36) NOT NULL default '',
  `assigned_user_id` varchar(36) default NULL,
  `created_by` varchar(36) default NULL,
  `title` varchar(100) default NULL,
  `description` text,
  `url` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_feed_name` (`title`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `feeds`
-- 

INSERT INTO `feeds` VALUES ('e8bc00cd-cbb7-280c-0aa5-41e2df9c988d', 0, '2005-01-10 12:01:58', '2005-01-10 12:01:58', '1', '1', NULL, 'Linux Today', NULL, 'http://linuxtoday.com/backend/biglt.rss');
INSERT INTO `feeds` VALUES ('a93b3610-0f3c-a4cb-6985-41e2df65b1c8', 0, '2005-01-10 12:02:07', '2005-01-10 12:02:07', '1', '1', NULL, 'MacCentral News', NULL, 'http://maccentral.macworld.com/mnn.cgi');
INSERT INTO `feeds` VALUES ('dde361bb-7d4a-cc59-8cce-41e2dfcf3c1b', 0, '2005-01-10 12:02:21', '2005-01-10 12:02:21', '1', '1', NULL, 'MacMerc.com', NULL, 'http://macmerc.com/backend.php');
INSERT INTO `feeds` VALUES ('925ef6eb-7bbf-2766-cc7a-41e2df228578', 0, '2005-01-10 12:02:30', '2005-01-10 12:02:30', '1', '1', NULL, 'ABC News: Business', NULL, 'http://my.abcnews.go.com/rsspublic/business_rss20.xml');
INSERT INTO `feeds` VALUES ('dbab5f6c-d0da-4e67-478c-41e2df8b122c', 0, '2005-01-10 12:02:34', '2005-01-10 12:02:34', '1', '1', NULL, 'ABC News: Entertainment', NULL, 'http://my.abcnews.go.com/rsspublic/entertainment_rss20.xml');
INSERT INTO `feeds` VALUES ('7eb0e2e7-28c5-21cc-31f9-41e2dfbf3713', 0, '2005-01-10 12:02:39', '2005-01-10 12:02:39', '1', '1', NULL, 'ABC News: GMA', NULL, 'http://my.abcnews.go.com/rsspublic/gma_rss20.xml');
INSERT INTO `feeds` VALUES ('e8066ab5-3b23-fe0d-614e-41e2df558ec8', 0, '2005-01-10 12:02:43', '2005-01-10 12:02:43', '1', '1', NULL, 'ABC News: Health', NULL, 'http://my.abcnews.go.com/rsspublic/health_rss20.xml');
INSERT INTO `feeds` VALUES ('36b67446-880f-d6a5-e16e-41e2df3bd857', 0, '2005-01-10 12:02:48', '2005-01-10 12:02:48', '1', '1', NULL, 'ABC News: Nightline', NULL, 'http://my.abcnews.go.com/rsspublic/nightline_rss20.xml');
INSERT INTO `feeds` VALUES ('83235e59-0a98-1777-2a9c-41e2df9a09ce', 0, '2005-01-10 12:02:52', '2005-01-10 12:02:52', '1', '1', NULL, 'ABC News: Politics', NULL, 'http://my.abcnews.go.com/rsspublic/politics_rss20.xml');
INSERT INTO `feeds` VALUES ('c2e3db4d-c176-53bf-1aac-41e2df1a1450', 0, '2005-01-10 12:02:56', '2005-01-10 12:02:56', '1', '1', NULL, 'ABC News: Primetime', NULL, 'http://my.abcnews.go.com/rsspublic/primetime_rss20.xml');
INSERT INTO `feeds` VALUES ('4550e09a-b93e-092f-80ec-41e2dfc550f7', 0, '2005-01-10 12:03:01', '2005-01-10 12:03:01', '1', '1', NULL, 'ABC News: Technology', NULL, 'http://my.abcnews.go.com/rsspublic/scitech_rss20.xml');
INSERT INTO `feeds` VALUES ('a164cc3f-435e-0a59-3e8c-41e2dfebd62f', 0, '2005-01-10 12:03:05', '2005-01-10 12:03:05', '1', '1', NULL, 'ABC News: Travel', NULL, 'http://my.abcnews.go.com/rsspublic/travel_rss20.xml');
INSERT INTO `feeds` VALUES ('28572e36-b2fa-cd0e-fbec-41e2df1b84c0', 0, '2005-01-10 12:03:15', '2005-01-10 12:03:15', '1', '1', NULL, 'ABC News: ThisWeek', NULL, 'http://my.abcnews.go.com/rsspublic/tw_rss20.xml');
INSERT INTO `feeds` VALUES ('a50a67a3-73fd-c3b7-5ee6-41e2dffe5ec5', 0, '2005-01-10 12:03:19', '2005-01-10 12:03:19', '1', '1', NULL, 'ABC News: US', NULL, 'http://my.abcnews.go.com/rsspublic/us_rss20.xml');
INSERT INTO `feeds` VALUES ('ef110198-40fe-1799-363a-41e2df5c1007', 0, '2005-01-10 12:03:24', '2005-01-10 12:03:24', '1', '1', NULL, 'ABC News: WNT', NULL, 'http://my.abcnews.go.com/rsspublic/wnt_rss20.xml');
INSERT INTO `feeds` VALUES ('5b71af07-470d-95c3-8afd-41e2df76f015', 0, '2005-01-10 12:03:28', '2005-01-10 12:03:28', '1', '1', NULL, 'ABC News: International', NULL, 'http://my.abcnews.go.com/rsspublic/world_rss20.xml');
INSERT INTO `feeds` VALUES ('16c540cc-c02a-4311-d64c-41e2dfdbd596', 0, '2005-01-10 12:03:29', '2005-01-10 12:03:29', '1', '1', NULL, 'BBC News | Africa | World Edition', NULL, 'http://news.bbc.co.uk/rss/newsonline_world_edition/africa/rss091.xml');
INSERT INTO `feeds` VALUES ('bc2c7c1f-220d-400a-c383-41e2dfc79697', 0, '2005-01-10 12:03:29', '2005-01-10 12:03:29', '1', '1', NULL, 'BBC News | Americas | World Edition', NULL, 'http://news.bbc.co.uk/rss/newsonline_world_edition/americas/rss091.xml');
INSERT INTO `feeds` VALUES ('81bb8625-d0c5-07f1-04da-41e2df5fc5e2', 0, '2005-01-10 12:03:30', '2005-01-10 12:03:30', '1', '1', NULL, 'BBC News | Asia-Pacific | World Edition', NULL, 'http://news.bbc.co.uk/rss/newsonline_world_edition/asia-pacific/rss091.xml');
INSERT INTO `feeds` VALUES ('3a68ade5-eba9-dcf7-b8bc-41e2df75bea6', 0, '2005-01-10 12:03:31', '2005-01-10 12:03:31', '1', '1', NULL, 'BBC News | Business | World Edition', NULL, 'http://news.bbc.co.uk/rss/newsonline_world_edition/business/rss091.xml');
INSERT INTO `feeds` VALUES ('c5ae7e2a-c2c8-a261-8f4f-41e2dfad01f6', 0, '2005-01-10 12:03:31', '2005-01-10 12:03:31', '1', '1', NULL, 'BBC News | Entertainment | World Edition', NULL, 'http://news.bbc.co.uk/rss/newsonline_world_edition/entertainment/rss091.xml');
INSERT INTO `feeds` VALUES ('7da60a3e-c6b3-4d4a-0338-41e2df90838a', 0, '2005-01-10 12:03:32', '2005-01-10 12:03:32', '1', '1', NULL, 'BBC News | Europe | World Edition', NULL, 'http://news.bbc.co.uk/rss/newsonline_world_edition/europe/rss091.xml');
INSERT INTO `feeds` VALUES ('3191a790-8894-ea0a-fad6-41e2df8b7d62', 0, '2005-01-10 12:03:33', '2005-01-10 12:03:33', '1', '1', NULL, 'BBC News | News Front Page | World Edition', NULL, 'http://news.bbc.co.uk/rss/newsonline_world_edition/front_page/rss091.xml');
INSERT INTO `feeds` VALUES ('d0089e80-9da9-93d5-6999-41e2df85a074', 0, '2005-01-10 12:03:33', '2005-01-10 12:03:33', '1', '1', NULL, 'BBC News | Health | World Edition', NULL, 'http://news.bbc.co.uk/rss/newsonline_world_edition/health/rss091.xml');
INSERT INTO `feeds` VALUES ('9582dea7-c0dd-c5cb-07eb-41e2df38591c', 0, '2005-01-10 12:03:34', '2005-01-10 12:03:34', '1', '1', NULL, 'BBC News | Middle East | World Edition', NULL, 'http://news.bbc.co.uk/rss/newsonline_world_edition/middle_east/rss091.xml');
INSERT INTO `feeds` VALUES ('1c853682-6da0-1ebf-5a4b-41e2df0c6ae0', 0, '2005-01-10 12:03:35', '2005-01-10 12:03:35', '1', '1', NULL, 'BBC News | Programmes | World Edition', NULL, 'http://news.bbc.co.uk/rss/newsonline_world_edition/programmes/rss091.xml');
INSERT INTO `feeds` VALUES ('bd3d3b2a-3b2b-1b1c-b833-41e2dfed10b2', 0, '2005-01-10 12:03:35', '2005-01-10 12:03:35', '1', '1', NULL, 'BBC News | Science/Nature | World Edition', NULL, 'http://news.bbc.co.uk/rss/newsonline_world_edition/science/nature/rss091.xml');
INSERT INTO `feeds` VALUES ('77ea97e9-f224-ae60-e2f3-41e2dfa83f37', 0, '2005-01-10 12:03:36', '2005-01-10 12:03:36', '1', '1', NULL, 'BBC News | South Asia | World Edition', NULL, 'http://news.bbc.co.uk/rss/newsonline_world_edition/south_asia/rss091.xml');
INSERT INTO `feeds` VALUES ('15d960df-ef6b-bb2a-6bc7-41e2df301151', 0, '2005-01-10 12:03:37', '2005-01-10 12:03:37', '1', '1', NULL, 'BBC News | Have Your Say | World Edition', NULL, 'http://news.bbc.co.uk/rss/newsonline_world_edition/talking_point/rss091.xml');
INSERT INTO `feeds` VALUES ('a441427a-dded-20ec-14c0-41e2df00b0ca', 0, '2005-01-10 12:03:37', '2005-01-10 12:03:37', '1', '1', NULL, 'BBC News | Technology | World Edition', NULL, 'http://news.bbc.co.uk/rss/newsonline_world_edition/technology/rss091.xml');
INSERT INTO `feeds` VALUES ('4c8f056f-3eeb-7c81-89df-41e2dfdc1c14', 0, '2005-01-10 12:03:38', '2005-01-10 12:03:38', '1', '1', NULL, 'BBC News | UK News | Magazine | World Edition', NULL, 'http://news.bbc.co.uk/rss/newsonline_world_edition/uk_news/magazine/rss091.xml');
INSERT INTO `feeds` VALUES ('3a000f75-1443-8f26-018e-41e2df41bb7e', 0, '2005-01-10 12:03:39', '2005-01-10 12:03:39', '1', '1', NULL, 'BBC News | UK | World Edition', NULL, 'http://news.bbc.co.uk/rss/newsonline_world_edition/uk_news/rss091.xml');
INSERT INTO `feeds` VALUES ('b18a157a-9129-126a-3ae6-41e2df5bf062', 0, '2005-01-10 12:03:39', '2005-01-10 12:03:39', '1', '1', NULL, 'BBC News | Week at a Glance | World Edition', NULL, 'http://news.bbc.co.uk/rss/newsonline_world_edition/week_at-a-glance/rss091.xml');
INSERT INTO `feeds` VALUES ('5a354efc-6fd6-e3a9-a39d-41e2dfed604c', 0, '2005-01-10 12:03:45', '2005-01-10 12:03:45', '1', '1', NULL, 'Scotsman.com News - Alcohol & binge drinking', NULL, 'http://news.scotsman.com/topics.cfm?tid=585&format=rss');
INSERT INTO `feeds` VALUES ('52a9de11-f2fe-5a6d-539c-41e2dff841e5', 0, '2005-01-10 12:03:46', '2005-01-10 12:03:46', '1', '1', NULL, 'CNET News.com - Personal Technology', NULL, 'http://rss.com.com/2547-1040-0-5.xml');
INSERT INTO `feeds` VALUES ('e4a450fe-6602-2a1e-3ef2-41e2df356543', 0, '2005-01-10 12:03:46', '2005-01-10 12:03:46', '1', '1', NULL, 'Yahoo! News: Technology - Apple/Macintosh', NULL, 'http://rss.news.yahoo.com/rss/applecomputer');
INSERT INTO `feeds` VALUES ('573d09a7-7e57-b158-56bf-41e2df105ef4', 0, '2005-01-10 12:03:47', '2005-01-10 12:03:47', '1', '1', NULL, 'Yahoo! News: Entertainment - Arts and Stage', NULL, 'http://rss.news.yahoo.com/rss/arts');
INSERT INTO `feeds` VALUES ('a52e6677-1fa7-85fa-e4c6-41e2df9fbcca', 0, '2005-01-10 12:03:47', '2005-01-10 12:03:47', '1', '1', NULL, 'Yahoo! News: Business', NULL, 'http://rss.news.yahoo.com/rss/business');
INSERT INTO `feeds` VALUES ('a66852ab-d691-b6be-a3e0-41e2dfdb2fd7', 0, '2005-01-10 12:03:48', '2005-01-10 12:03:48', '1', '1', NULL, 'Yahoo! News: Cellular Phones', NULL, 'http://rss.news.yahoo.com/rss/cellphones');
INSERT INTO `feeds` VALUES ('211ea34b-c571-6bbc-22b0-41e2df130f37', 0, '2005-01-10 12:03:49', '2005-01-10 12:03:49', '1', '1', NULL, 'Yahoo! News: Entertainment - Dear Abby', NULL, 'http://rss.news.yahoo.com/rss/dearabby');
INSERT INTO `feeds` VALUES ('8d740c93-ee6b-36d6-a86d-41e2df99cf90', 0, '2005-01-10 12:03:49', '2005-01-10 12:03:49', '1', '1', NULL, 'Yahoo! News: Digital Photography', NULL, 'http://rss.news.yahoo.com/rss/digitalimaging');
INSERT INTO `feeds` VALUES ('7bc75358-93c7-5aeb-88f6-41e2df228bca', 0, '2005-01-10 12:03:50', '2005-01-10 12:03:50', '1', '1', NULL, 'Yahoo! News: Digital Music', NULL, 'http://rss.news.yahoo.com/rss/digitalmusic');
INSERT INTO `feeds` VALUES ('4537c91f-a52d-a98d-448a-41e2df099679', 0, '2005-01-10 12:03:51', '2005-01-10 12:03:51', '1', '1', NULL, 'Yahoo! News: Digital Video/TV Technology', NULL, 'http://rss.news.yahoo.com/rss/digitalvideo');
INSERT INTO `feeds` VALUES ('152a8211-c6a2-13b7-e8b6-41e2dfbb8c86', 0, '2005-01-10 12:03:52', '2005-01-10 12:03:52', '1', '1', NULL, 'Yahoo! News: Business - Earnings', NULL, 'http://rss.news.yahoo.com/rss/earnings');
INSERT INTO `feeds` VALUES ('a6050911-0292-5625-9ce2-41e2dfebccef', 0, '2005-01-10 12:03:53', '2005-01-10 12:03:53', '1', '1', NULL, 'Yahoo! News: Business - Economy', NULL, 'http://rss.news.yahoo.com/rss/economy');
INSERT INTO `feeds` VALUES ('a8ad7517-8eaa-08ea-f162-41e2dfd39386', 0, '2005-01-10 12:03:53', '2005-01-10 12:03:53', '1', '1', NULL, 'Yahoo! News: Presidential Election', NULL, 'http://rss.news.yahoo.com/rss/elections');
INSERT INTO `feeds` VALUES ('a3240865-6431-2f39-2057-41e2dfa726a0', 0, '2005-01-10 12:03:54', '2005-01-10 12:03:54', '1', '1', NULL, 'Yahoo! News: Entertainment - Industry', NULL, 'http://rss.news.yahoo.com/rss/enindustry');
INSERT INTO `feeds` VALUES ('4b590300-8679-61c0-cc2f-41e2dfddd876', 0, '2005-01-10 12:03:55', '2005-01-10 12:03:55', '1', '1', NULL, 'Yahoo! News: Technology - Enterprise', NULL, 'http://rss.news.yahoo.com/rss/enterprise');
INSERT INTO `feeds` VALUES ('a9cf9f87-69b2-717a-a8d2-41e2dffffa44', 0, '2005-01-10 12:03:55', '2005-01-10 12:03:55', '1', '1', NULL, 'Yahoo! News: Entertainment', NULL, 'http://rss.news.yahoo.com/rss/entertainment');
INSERT INTO `feeds` VALUES ('c48dea5a-b340-21da-b590-41e2dfadee26', 0, '2005-01-10 12:03:56', '2005-01-10 12:03:56', '1', '1', NULL, 'Yahoo! News: Business - European Economy', NULL, 'http://rss.news.yahoo.com/rss/eurobiz');
INSERT INTO `feeds` VALUES ('4d575816-f907-80dd-5fe5-41e2dff30297', 0, '2005-01-10 12:03:57', '2005-01-10 12:03:57', '1', '1', NULL, 'Yahoo! News: Fashion', NULL, 'http://rss.news.yahoo.com/rss/fashion');
INSERT INTO `feeds` VALUES ('9d01947b-4fa4-530b-ae22-41e2df953c95', 0, '2005-01-10 12:03:57', '2005-01-10 12:03:57', '1', '1', NULL, 'Yahoo! News: Health', NULL, 'http://rss.news.yahoo.com/rss/health');
INSERT INTO `feeds` VALUES ('186244ef-6a28-e5d3-f85f-41e2df10fc8e', 0, '2005-01-10 12:03:58', '2005-01-10 12:03:58', '1', '1', NULL, 'Yahoo! News: Reader Ratings', NULL, 'http://rss.news.yahoo.com/rss/highestrated');
INSERT INTO `feeds` VALUES ('d0c4a1f1-4235-1e44-137b-41e2dfd0f653', 0, '2005-01-10 12:03:58', '2005-01-10 12:03:58', '1', '1', NULL, 'Yahoo! News: Technology - Internet', NULL, 'http://rss.news.yahoo.com/rss/internet');
INSERT INTO `feeds` VALUES ('4ae094bf-947f-304a-4659-41e2dfa5d909', 0, '2005-01-10 12:04:00', '2005-01-10 12:04:00', '1', '1', NULL, 'Yahoo! News: Iraq', NULL, 'http://rss.news.yahoo.com/rss/iraq');
INSERT INTO `feeds` VALUES ('e7f2de1f-52ee-a6d6-4df2-41e2df2a1d06', 0, '2005-01-10 12:04:00', '2005-01-10 12:04:00', '1', '1', NULL, 'Yahoo! News: Linux/Open Source', NULL, 'http://rss.news.yahoo.com/rss/linux');
INSERT INTO `feeds` VALUES ('942cac2d-f97a-91b9-4073-41e2df6c80d5', 0, '2005-01-10 12:04:02', '2005-01-10 12:04:02', '1', '1', NULL, 'Yahoo! News: Microsoft', NULL, 'http://rss.news.yahoo.com/rss/microsoft');
INSERT INTO `feeds` VALUES ('bf300aab-0041-415e-788e-41e2df06cba4', 0, '2005-01-10 12:04:03', '2005-01-10 12:04:03', '1', '1', NULL, 'Yahoo! News: Most Emailed', NULL, 'http://rss.news.yahoo.com/rss/mostemailed');
INSERT INTO `feeds` VALUES ('8368b72f-f4e5-c4c5-f288-41e2df962d3a', 0, '2005-01-10 12:04:03', '2005-01-10 12:04:03', '1', '1', NULL, 'Yahoo! News: Most Viewed', NULL, 'http://rss.news.yahoo.com/rss/mostviewed');
INSERT INTO `feeds` VALUES ('1c3c47e4-4be0-7987-4ea9-41e2df97209b', 0, '2005-01-10 12:04:05', '2005-01-10 12:04:05', '1', '1', NULL, 'Yahoo! News: Entertainment - Movies', NULL, 'http://rss.news.yahoo.com/rss/movies');
INSERT INTO `feeds` VALUES ('6f988256-8ca1-1933-3049-41e2df3e60cc', 0, '2005-01-10 12:04:06', '2005-01-10 12:04:06', '1', '1', NULL, 'Yahoo! News: Entertainment - Music', NULL, 'http://rss.news.yahoo.com/rss/music');
INSERT INTO `feeds` VALUES ('ccd00fec-47d3-7624-d16e-41e2df044894', 0, '2005-01-10 12:04:07', '2005-01-10 12:04:07', '1', '1', NULL, 'Yahoo! News: Oddly Enough', NULL, 'http://rss.news.yahoo.com/rss/oddlyenough');
INSERT INTO `feeds` VALUES ('a4f2137a-b861-6975-c126-41e2dfb115db', 0, '2005-01-10 12:04:07', '2005-01-10 12:04:07', '1', '1', NULL, 'Yahoo! News: Op/Ed', NULL, 'http://rss.news.yahoo.com/rss/oped');
INSERT INTO `feeds` VALUES ('94f3d97c-9124-f5ca-4863-41e2dff1e0f1', 0, '2005-01-10 12:04:08', '2005-01-10 12:04:08', '1', '1', NULL, 'Yahoo! News: Business - Personal Finance', NULL, 'http://rss.news.yahoo.com/rss/personalfinance');
INSERT INTO `feeds` VALUES ('e67a951a-e02a-5e57-cbfe-41e2df1cb9eb', 0, '2005-01-10 12:04:10', '2005-01-10 12:04:10', '1', '1', NULL, 'Yahoo! News: Technology - Personal Technology', NULL, 'http://rss.news.yahoo.com/rss/personaltech');
INSERT INTO `feeds` VALUES ('53e42a4a-aad1-d0cc-00bc-41e2df76fe22', 0, '2005-01-10 12:04:11', '2005-01-10 12:04:11', '1', '1', NULL, 'Yahoo! News: Politics', NULL, 'http://rss.news.yahoo.com/rss/politics');
INSERT INTO `feeds` VALUES ('1c5392ff-668f-7a40-70b7-41e2dfca5009', 0, '2005-01-10 12:04:12', '2005-01-10 12:04:12', '1', '1', NULL, 'Yahoo! News: Entertainment - Reviews', NULL, 'http://rss.news.yahoo.com/rss/reviews');
INSERT INTO `feeds` VALUES ('a048463f-b2d8-a68b-e532-41e2df0a664a', 0, '2005-01-10 12:04:12', '2005-01-10 12:04:12', '1', '1', NULL, 'Yahoo! News: RSS & Blogging', NULL, 'http://rss.news.yahoo.com/rss/rssblog');
INSERT INTO `feeds` VALUES ('9aa02754-2c0e-e86b-9710-41e2df2e00b9', 0, '2005-01-10 12:04:13', '2005-01-10 12:04:13', '1', '1', NULL, 'Yahoo! News: Science', NULL, 'http://rss.news.yahoo.com/rss/science');
INSERT INTO `feeds` VALUES ('bf91dda9-fe5c-b0f9-dcdd-41e2dfa2fcc8', 0, '2005-01-10 12:04:14', '2005-01-10 12:04:14', '1', '1', NULL, 'Yahoo! News: Portals and Search Engines', NULL, 'http://rss.news.yahoo.com/rss/search');
INSERT INTO `feeds` VALUES ('a789b41c-d7d5-211c-5d76-41e2df3eb898', 0, '2005-01-10 12:04:15', '2005-01-10 12:04:15', '1', '1', NULL, 'Yahoo! News: Computer Security & Viruses', NULL, 'http://rss.news.yahoo.com/rss/security');
INSERT INTO `feeds` VALUES ('70f3c59d-f85f-66aa-a42f-41e2df696f49', 0, '2005-01-10 12:04:16', '2005-01-10 12:04:16', '1', '1', NULL, 'Yahoo! News: Semiconductor Industry & Servers', NULL, 'http://rss.news.yahoo.com/rss/semiconductor');
INSERT INTO `feeds` VALUES ('8b800cfb-41f6-5740-02bd-41e2df801fd9', 0, '2005-01-10 12:04:17', '2005-01-10 12:04:17', '1', '1', NULL, 'Yahoo! News: Technology - Software', NULL, 'http://rss.news.yahoo.com/rss/software');
INSERT INTO `feeds` VALUES ('b82277c3-a5bd-e2a2-313a-41e2dff0822e', 0, '2005-01-10 12:04:17', '2005-01-10 12:04:17', '1', '1', NULL, 'Yahoo! News: Technology - Spam', NULL, 'http://rss.news.yahoo.com/rss/spam');
INSERT INTO `feeds` VALUES ('26498c47-05ac-260e-414b-41e2df9ed30a', 0, '2005-01-10 12:04:18', '2005-01-10 12:04:18', '1', '1', NULL, 'Yahoo! News: Sports', NULL, 'http://rss.news.yahoo.com/rss/sports');
INSERT INTO `feeds` VALUES ('8d9cbe09-2776-3142-3c67-41e2dfc11a61', 0, '2005-01-10 12:04:18', '2005-01-10 12:04:18', '1', '1', NULL, 'Yahoo! News: Business - Stock Markets', NULL, 'http://rss.news.yahoo.com/rss/stocks');
INSERT INTO `feeds` VALUES ('df2f6c82-2eb8-80a4-6827-41e2df880575', 0, '2005-01-10 12:04:18', '2005-01-10 12:04:18', '1', '1', NULL, 'Yahoo! News: Technology', NULL, 'http://rss.news.yahoo.com/rss/tech');
INSERT INTO `feeds` VALUES ('5cf1cf76-42d6-61ba-3889-41e2df406926', 0, '2005-01-10 12:04:19', '2005-01-10 12:04:19', '1', '1', NULL, 'Yahoo! News: Top Stories', NULL, 'http://rss.news.yahoo.com/rss/topstories');
INSERT INTO `feeds` VALUES ('d9dcddc7-2d6b-df2f-7577-41e2df55a413', 0, '2005-01-10 12:04:20', '2005-01-10 12:04:20', '1', '1', NULL, 'Yahoo! News: Entertainment - Television', NULL, 'http://rss.news.yahoo.com/rss/tv');
INSERT INTO `feeds` VALUES ('561f4dd0-2359-391b-d126-41e2df4e5438', 0, '2005-01-10 12:04:21', '2005-01-10 12:04:21', '1', '1', NULL, 'Yahoo! News: U.S. National', NULL, 'http://rss.news.yahoo.com/rss/us');
INSERT INTO `feeds` VALUES ('18874c7d-9299-93cb-2ba2-41e2df1995a8', 0, '2005-01-10 12:04:22', '2005-01-10 12:04:22', '1', '1', NULL, 'Yahoo! News: Technology - Video Games', NULL, 'http://rss.news.yahoo.com/rss/videogames');
INSERT INTO `feeds` VALUES ('324f0fd4-0eb6-12e2-ecaf-41e2df28bcb9', 0, '2005-01-10 12:04:24', '2005-01-10 12:04:24', '1', '1', NULL, 'Yahoo! News: Wireless and Mobile Technology', NULL, 'http://rss.news.yahoo.com/rss/wireless');
INSERT INTO `feeds` VALUES ('6493d8af-027e-3cca-c2d6-41e2dfb9aa84', 0, '2005-01-10 12:04:24', '2005-01-10 12:04:24', '1', '1', NULL, 'Yahoo! News: World', NULL, 'http://rss.news.yahoo.com/rss/world');
INSERT INTO `feeds` VALUES ('eb881ccf-3494-a043-381a-41e2df52c73f', 0, '2005-01-10 12:04:29', '2005-01-10 12:04:29', '1', '1', NULL, 'PCWorld.com - Most Popular Downloads of the Week', NULL, 'http://rss.pcworld.com/rss/downloads.rss?period=week');
INSERT INTO `feeds` VALUES ('6bf251a7-1139-4c31-3d90-41e2df7ee6d3', 0, '2005-01-10 12:04:34', '2005-01-10 12:04:34', '1', '1', NULL, 'PCWorld.com - Latest News Stories', NULL, 'http://rss.pcworld.com/rss/latestnews.rss');
INSERT INTO `feeds` VALUES ('391c061c-5472-f753-ba89-41e2df7adaef', 0, '2005-01-10 12:04:39', '2005-01-10 12:04:39', '1', '1', NULL, 'eWEEK Database', NULL, 'http://rssnewsapps.ziffdavis.com/eweekdatabase.xml');
INSERT INTO `feeds` VALUES ('687e89bc-e055-7cc8-fee6-41e2df89541f', 0, '2005-01-10 12:04:44', '2005-01-10 12:04:44', '1', '1', NULL, 'eWEEK Developer', NULL, 'http://rssnewsapps.ziffdavis.com/eweekdeveloper.xml');
INSERT INTO `feeds` VALUES ('61ddc6c4-15c2-1e2e-b559-41e2df9ccbd9', 0, '2005-01-10 12:04:49', '2005-01-10 12:04:49', '1', '1', NULL, 'eWEEK Linux', NULL, 'http://rssnewsapps.ziffdavis.com/eweeklinux.xml');
INSERT INTO `feeds` VALUES ('388d5242-789e-015b-389e-41e2dfa00dc7', 0, '2005-01-10 12:04:54', '2005-01-10 12:04:54', '1', '1', NULL, 'eWEEK Web Services', NULL, 'http://rssnewsapps.ziffdavis.com/eweekwebservices.xml');
INSERT INTO `feeds` VALUES ('f01c7eac-7b4e-4742-2287-41e2df47daaf', 0, '2005-01-10 12:04:58', '2005-01-10 12:04:58', '1', '1', NULL, 'eWEEK Windows', NULL, 'http://rssnewsapps.ziffdavis.com/eweekwindows.xml');
INSERT INTO `feeds` VALUES ('cf40c1b2-e2fb-8641-2bb7-41e2dff46a8f', 0, '2005-01-10 12:05:03', '2005-01-10 12:05:03', '1', '1', NULL, 'eWEEK Technology News', NULL, 'http://rssnewsapps.ziffdavis.com/tech.xml');
INSERT INTO `feeds` VALUES ('65a0f073-85fe-9426-4a06-41e2dfe5a004', 0, '2005-01-10 12:05:04', '2005-01-10 12:05:04', '1', '1', NULL, 'Seattle Post-Intelligencer: Arts & Entertainment', NULL, 'http://seattlepi.nwsource.com/rss/ae.rss');
INSERT INTO `feeds` VALUES ('f00846ce-dd14-7fb7-9226-41e2df5041f0', 0, '2005-01-10 12:05:04', '2005-01-10 12:05:04', '1', '1', NULL, 'Seattle Post-Intelligencer: Books', NULL, 'http://seattlepi.nwsource.com/rss/books.rss');
INSERT INTO `feeds` VALUES ('64f66a69-0df0-3188-49bf-41e2dfa7fcf9', 0, '2005-01-10 12:05:05', '2005-01-10 12:05:05', '1', '1', NULL, 'Seattle Post-Intelligencer: Business News', NULL, 'http://seattlepi.nwsource.com/rss/business.rss');
INSERT INTO `feeds` VALUES ('bbd43fee-d439-694d-44e9-41e2df39ca30', 0, '2005-01-10 12:05:05', '2005-01-10 12:05:05', '1', '1', NULL, 'Seattle Post-Intelligencer: Classical Music', NULL, 'http://seattlepi.nwsource.com/rss/classical.rss');
INSERT INTO `feeds` VALUES ('2bf6471a-aca7-ad06-07a2-41e2df156469', 0, '2005-01-10 12:05:06', '2005-01-10 12:05:06', '1', '1', NULL, 'Seattle Post-Intelligencer: Cougar Football', NULL, 'http://seattlepi.nwsource.com/rss/cougars.rss');
INSERT INTO `feeds` VALUES ('813bddc2-bf31-dad5-1b09-41e2dff8520f', 0, '2005-01-10 12:05:06', '2005-01-10 12:05:06', '1', '1', NULL, 'Seattle Post-Intelligencer: Dining', NULL, 'http://seattlepi.nwsource.com/rss/dining.rss');
INSERT INTO `feeds` VALUES ('d15c347f-dcce-83f5-3dba-41e2df339a4f', 0, '2005-01-10 12:05:06', '2005-01-10 12:05:06', '1', '1', NULL, 'Seattle Post-Intelligencer: Food', NULL, 'http://seattlepi.nwsource.com/rss/food.rss');
INSERT INTO `feeds` VALUES ('439337e2-9bc7-465b-4f0e-41e2dfda55c8', 0, '2005-01-10 12:05:07', '2005-01-10 12:05:07', '1', '1', NULL, 'Seattle Post-Intelligencer: Gardening', NULL, 'http://seattlepi.nwsource.com/rss/gardening.rss');
INSERT INTO `feeds` VALUES ('8858e7a9-9e84-ee76-1486-41e2df13c205', 0, '2005-01-10 12:05:07', '2005-01-10 12:05:07', '1', '1', NULL, 'Seattle Post-Intelligencer: Health and Fitness', NULL, 'http://seattlepi.nwsource.com/rss/health.rss');
INSERT INTO `feeds` VALUES ('ca29844f-e128-1e28-a2fd-41e2dfeba1b6', 0, '2005-01-10 12:05:07', '2005-01-10 12:05:07', '1', '1', NULL, 'Seattle Post-Intelligencer: Husky Football', NULL, 'http://seattlepi.nwsource.com/rss/huskies.rss');
INSERT INTO `feeds` VALUES ('32892ebf-9522-7358-8e3b-41e2dff2b85c', 0, '2005-01-10 12:05:08', '2005-01-10 12:05:08', '1', '1', NULL, 'Seattle Post-Intelligencer: John Levesque', NULL, 'http://seattlepi.nwsource.com/rss/levesque.rss');
INSERT INTO `feeds` VALUES ('887bcac4-2f06-7430-894f-41e2df3ae78f', 0, '2005-01-10 12:05:08', '2005-01-10 12:05:08', '1', '1', NULL, 'Seattle Post-Intelligencer: Lifestyle', NULL, 'http://seattlepi.nwsource.com/rss/lifestyle.rss');
INSERT INTO `feeds` VALUES ('ead74e28-ee83-4f0d-c681-41e2df62d666', 0, '2005-01-10 12:05:08', '2005-01-10 12:05:08', '1', '1', NULL, 'Seattle Post-Intelligencer: Local News', NULL, 'http://seattlepi.nwsource.com/rss/local.rss');
INSERT INTO `feeds` VALUES ('5308fdd0-fe86-a7d4-6b56-41e2df0aee0f', 0, '2005-01-10 12:05:09', '2005-01-10 12:05:09', '1', '1', NULL, 'Seattle Post-Intelligencer: Mariners', NULL, 'http://seattlepi.nwsource.com/rss/mariners.rss');
INSERT INTO `feeds` VALUES ('e6ca8ca3-5734-d264-de97-41e2df6ae7da', 0, '2005-01-10 12:05:09', '2005-01-10 12:05:09', '1', '1', NULL, 'Seattle Post-Intelligencer: Jim Moore', NULL, 'http://seattlepi.nwsource.com/rss/moore.rss');
INSERT INTO `feeds` VALUES ('78a04e91-dd06-a9d5-33d8-41e2df6aa326', 0, '2005-01-10 12:05:10', '2005-01-10 12:05:10', '1', '1', NULL, 'Seattle Post-Intelligencer: Movies', NULL, 'http://seattlepi.nwsource.com/rss/movies.rss');
INSERT INTO `feeds` VALUES ('d6e1961e-025e-03bc-c2eb-41e2df215811', 0, '2005-01-10 12:05:10', '2005-01-10 12:05:10', '1', '1', NULL, 'Seattle Post-Intelligencer: Music', NULL, 'http://seattlepi.nwsource.com/rss/music.rss');
INSERT INTO `feeds` VALUES ('44ac9e37-caa2-74f1-f2b2-41e2df8451fd', 0, '2005-01-10 12:05:11', '2005-01-10 12:05:11', '1', '1', NULL, 'Seattle Post-Intelligencer: Opinion', NULL, 'http://seattlepi.nwsource.com/rss/opinion.rss');
INSERT INTO `feeds` VALUES ('b59a1298-cecc-56fd-78af-41e2dfbd7ac3', 0, '2005-01-10 12:05:11', '2005-01-10 12:05:11', '1', '1', NULL, 'Seattle Post-Intelligencer: High School Sports', NULL, 'http://seattlepi.nwsource.com/rss/preps.rss');
INSERT INTO `feeds` VALUES ('daa10bd9-2c50-667b-ad93-41e2df16b642', 0, '2005-01-10 12:05:12', '2005-01-10 12:05:12', '1', '1', NULL, 'Seattle Post-Intelligencer: Seahawks', NULL, 'http://seattlepi.nwsource.com/rss/seahawks.rss');
INSERT INTO `feeds` VALUES ('896a8ce4-0a22-f2e4-cb46-41e2df90b5d5', 0, '2005-01-10 12:05:12', '2005-01-10 12:05:12', '1', '1', NULL, 'Seattle Post-Intelligencer: Sonics', NULL, 'http://seattlepi.nwsource.com/rss/sonics.rss');
INSERT INTO `feeds` VALUES ('456ffec6-3c8a-c963-4a45-41e2df7c5b60', 0, '2005-01-10 12:05:13', '2005-01-10 12:05:13', '1', '1', NULL, 'Seattle Post-Intelligencer: Theater', NULL, 'http://seattlepi.nwsource.com/rss/theater.rss');
INSERT INTO `feeds` VALUES ('92184695-82da-6b2e-0c48-41e2dfbbecac', 0, '2005-01-10 12:05:13', '2005-01-10 12:05:13', '1', '1', NULL, 'Seattle Post-Intelligencer: Art Thiel', NULL, 'http://seattlepi.nwsource.com/rss/thiel.rss');
INSERT INTO `feeds` VALUES ('e10d1442-e58c-4a7a-cc76-41e2df151d40', 0, '2005-01-10 12:05:13', '2005-01-10 12:05:13', '1', '1', NULL, 'Seattle Post-Intelligencer: TV & Radio', NULL, 'http://seattlepi.nwsource.com/rss/tv.rss');
INSERT INTO `feeds` VALUES ('52c2c540-9646-b6b4-0690-41e2dfd3c33c', 0, '2005-01-10 12:05:14', '2005-01-10 12:05:14', '1', '1', NULL, 'Seattle Post-Intelligencer: Video Games', NULL, 'http://seattlepi.nwsource.com/rss/videogames.rss');
INSERT INTO `feeds` VALUES ('1e3e0549-9ae4-d6e4-c152-41e2df2c0b60', 0, '2005-01-10 12:05:15', '2005-01-10 12:05:15', '1', '1', NULL, 'Seattle Post-Intelligencer: Wheels', NULL, 'http://seattlepi.nwsource.com/rss/wheels.rss');
INSERT INTO `feeds` VALUES ('83921b19-86dd-0a41-74b3-41e2df9dc09c', 0, '2005-01-10 12:05:19', '2005-01-10 12:05:19', '1', '1', NULL, 'Slashdot: Developers', NULL, 'http://slashdot.org/developers.rdf');
INSERT INTO `feeds` VALUES ('e10afa8d-ec55-fb12-7db5-41e2e01be5c7', 0, '2005-01-10 12:05:23', '2005-01-10 12:05:23', '1', '1', NULL, 'Slashdot:', NULL, 'http://slashdot.org/slashdot.rss');
INSERT INTO `feeds` VALUES ('b7809dbf-4e01-b6e2-fa54-41e2e0b93efd', 0, '2005-01-10 12:05:28', '2005-01-10 12:05:28', '1', '1', NULL, 'Slate Magazine', NULL, 'http://slate.msn.com/rss/');
INSERT INTO `feeds` VALUES ('25016a8b-3c84-d029-d4f0-41e2e0c4a154', 0, '2005-01-10 12:05:34', '2005-01-10 12:05:34', '1', '1', NULL, 'SourceForge.net Project News', NULL, 'http://sourceforge.net/export/rss_sfnews.php');
INSERT INTO `feeds` VALUES ('f40305df-0c9b-bd01-a424-41e2e06687ee', 0, '2005-01-10 12:05:34', '2005-01-10 12:05:34', '1', '1', NULL, 'Boston Globe -- Business News', NULL, 'http://syndication.boston.com/news/globe/business?mode=rss_10');
INSERT INTO `feeds` VALUES ('4c7e5a97-0790-4a84-1c34-41e2e0395694', 0, '2005-01-10 12:05:36', '2005-01-10 12:05:36', '1', '1', NULL, 'Boston Globe -- City/Region News', NULL, 'http://syndication.boston.com/news/globe/city_region?mode=rss_10');
INSERT INTO `feeds` VALUES ('54949bd8-5a1d-9a47-7249-41e2e055c4db', 0, '2005-01-10 12:05:37', '2005-01-10 12:05:37', '1', '1', NULL, 'Boston Globe -- Ideas Section', NULL, 'http://syndication.boston.com/news/globe/ideas?mode=rss_10');
INSERT INTO `feeds` VALUES ('4f7b5f7c-0e5c-6f17-3a7b-41e2e0ddfc44', 0, '2005-01-10 12:05:38', '2005-01-10 12:05:38', '1', '1', NULL, 'Boston Globe -- Living / Arts News', NULL, 'http://syndication.boston.com/news/globe/living?mode=rss_10');
INSERT INTO `feeds` VALUES ('228dcfab-6c30-2cf6-f7e3-41e2e0488a17', 0, '2005-01-10 12:05:39', '2005-01-10 12:05:39', '1', '1', NULL, 'Boston Globe -- National News', NULL, 'http://syndication.boston.com/news/globe/nation?mode=rss_10');
INSERT INTO `feeds` VALUES ('ea614325-af09-f851-f120-41e2e0490fa2', 0, '2005-01-10 12:05:39', '2005-01-10 12:05:39', '1', '1', NULL, 'Boston Globe -- Front Page', NULL, 'http://syndication.boston.com/news/globe/pageone?mode=rss_10');
INSERT INTO `feeds` VALUES ('4b850ec7-8c12-16fa-e99f-41e2e01c0942', 0, '2005-01-10 12:05:41', '2005-01-10 12:05:41', '1', '1', NULL, 'Boston Globe -- Sports News', NULL, 'http://syndication.boston.com/news/globe/sports?mode=rss_10');
INSERT INTO `feeds` VALUES ('158909fe-4028-662e-c57d-41e2e0cb2054', 0, '2005-01-10 12:05:42', '2005-01-10 12:05:42', '1', '1', NULL, 'Boston Globe -- World News', NULL, 'http://syndication.boston.com/news/globe/world?mode=rss_10');
INSERT INTO `feeds` VALUES ('ec7000ad-6b84-81b2-c632-41e2e0e9f21c', 0, '2005-01-10 12:05:42', '2005-01-10 12:05:42', '1', '1', NULL, 'Odds and Ends', NULL, 'http://syndication.boston.com/news/odd?mode=rss_10');
INSERT INTO `feeds` VALUES ('44f8d79e-0fae-a328-d8f8-41e2e0abc373', 0, '2005-01-10 12:05:44', '2005-01-10 12:05:44', '1', '1', NULL, 'Boston.com / News', NULL, 'http://syndication.boston.com/news?mode=rss_10');
INSERT INTO `feeds` VALUES ('d208a0cd-fb70-a0f2-fa96-41e2e01c4cf5', 0, '2005-01-10 12:05:48', '2005-01-10 12:05:48', '1', '1', NULL, 'Techdirt', NULL, 'http://techdirt.com/techdirt_rss.xml');
INSERT INTO `feeds` VALUES ('8d018850-7e9b-e970-cbd1-41e2e0c1a765', 0, '2005-01-10 12:05:53', '2005-01-10 12:05:53', '1', '1', NULL, 'Techno File', NULL, 'http://time.blogs.com/technofile/index.rdf');
INSERT INTO `feeds` VALUES ('eaf51d0c-834a-5593-ee8c-41e2e05e449f', 0, '2005-01-10 12:05:54', '2005-01-10 12:05:54', '1', '1', NULL, 'BBC News | News Front Page | UK Edition', NULL, 'http://www.bbc.co.uk/syndication/feeds/news/ukfs_news/front_page/rss091.xml');
INSERT INTO `feeds` VALUES ('28193b0e-fb4e-3197-70fb-41e2e0da0a44', 0, '2005-01-10 12:05:56', '2005-01-10 12:05:56', '1', '1', NULL, 'BBC News | Technology | UK Edition', NULL, 'http://www.bbc.co.uk/syndication/feeds/news/ukfs_news/technology/rss091.xml');
INSERT INTO `feeds` VALUES ('8610b5a9-75cc-c84c-fadc-41e2e088b0df', 0, '2005-01-10 12:05:57', '2005-01-10 12:05:57', '1', '1', NULL, 'BBC News | UK | UK Edition', NULL, 'http://www.bbc.co.uk/syndication/feeds/news/ukfs_news/uk/rss091.xml');
INSERT INTO `feeds` VALUES ('c313e1b3-db1d-26ec-84af-41e2e00160d9', 0, '2005-01-10 12:06:01', '2005-01-10 12:06:01', '1', '1', NULL, 'InfoWorld: Application development', NULL, 'http://www.infoworld.com/rss/appdev.xml');
INSERT INTO `feeds` VALUES ('2ff65a56-6bd5-c60c-9f76-41e2e0df96b8', 0, '2005-01-10 12:06:06', '2005-01-10 12:06:06', '1', '1', NULL, 'InfoWorld: Java', NULL, 'http://www.infoworld.com/rss/appdev_java.xml');
INSERT INTO `feeds` VALUES ('df955186-98c3-2983-2135-41e2e01ab985', 0, '2005-01-10 12:06:10', '2005-01-10 12:06:10', '1', '1', NULL, 'InfoWorld: Web Applications', NULL, 'http://www.infoworld.com/rss/appdev_webapp.xml');
INSERT INTO `feeds` VALUES ('3c0798b8-fb41-2fb1-3d23-41e2e01b8d2e', 0, '2005-01-10 12:06:15', '2005-01-10 12:06:15', '1', '1', NULL, 'InfoWorld: Wireless Applications', NULL, 'http://www.infoworld.com/rss/appdev_wireapps.xml');
INSERT INTO `feeds` VALUES ('7e235e26-b2f2-e691-b6be-41e2e07e66b9', 0, '2005-01-10 12:06:19', '2005-01-10 12:06:19', '1', '1', NULL, 'InfoWorld: XML', NULL, 'http://www.infoworld.com/rss/appdev_xml.xml');
INSERT INTO `feeds` VALUES ('ba005fe6-b497-6dd0-2ead-41e2e047f344', 0, '2005-01-10 12:06:23', '2005-01-10 12:06:23', '1', '1', NULL, 'InfoWorld: Applications', NULL, 'http://www.infoworld.com/rss/applications.xml');
INSERT INTO `feeds` VALUES ('2d0effdd-a0df-b611-fe99-41e2e01d157f', 0, '2005-01-10 12:06:28', '2005-01-10 12:06:28', '1', '1', NULL, 'InfoWorld: Application Management', NULL, 'http://www.infoworld.com/rss/apps_appmgmt.xml');
INSERT INTO `feeds` VALUES ('8848e6de-196b-a37f-acc1-41e2e0bded0b', 0, '2005-01-10 12:06:32', '2005-01-10 12:06:32', '1', '1', NULL, 'InfoWorld: Collaboration', NULL, 'http://www.infoworld.com/rss/apps_collab.xml');
INSERT INTO `feeds` VALUES ('d78da415-8df2-c73f-3706-41e2e03e5563', 0, '2005-01-10 12:06:36', '2005-01-10 12:06:36', '1', '1', NULL, 'InfoWorld: CRM', NULL, 'http://www.infoworld.com/rss/apps_crm.xml');
INSERT INTO `feeds` VALUES ('31114cb7-c113-29bf-9f20-41e2e0a5687a', 0, '2005-01-10 12:06:41', '2005-01-10 12:06:41', '1', '1', NULL, 'InfoWorld: Enterprise Integration', NULL, 'http://www.infoworld.com/rss/apps_einteg.xml');
INSERT INTO `feeds` VALUES ('7ea784e8-46ad-8979-dd73-41e2e0241926', 0, '2005-01-10 12:06:45', '2005-01-10 12:06:45', '1', '1', NULL, 'InfoWorld: ERP', NULL, 'http://www.infoworld.com/rss/apps_erp.xml');
INSERT INTO `feeds` VALUES ('d75c137d-0aae-3fbd-2906-41e2e0de0fe0', 0, '2005-01-10 12:06:49', '2005-01-10 12:06:49', '1', '1', NULL, 'InfoWorld: Columnists', NULL, 'http://www.infoworld.com/rss/columnists.xml');
INSERT INTO `feeds` VALUES ('288dd54e-4460-658f-f7c3-41e2e031d2f8', 0, '2005-01-10 12:06:54', '2005-01-10 12:06:54', '1', '1', NULL, 'InfoWorld: Business', NULL, 'http://www.infoworld.com/rss/ebizstra.xml');
INSERT INTO `feeds` VALUES ('5fb588ad-8d0a-c82e-920d-41e2e02745bf', 0, '2005-01-10 12:06:58', '2005-01-10 12:06:58', '1', '1', NULL, 'InfoWorld: Business to Business', NULL, 'http://www.infoworld.com/rss/ebustrat_btob.xml');
INSERT INTO `feeds` VALUES ('9794dfd2-c784-d326-2ad7-41e2e00e2a81', 0, '2005-01-10 12:07:02', '2005-01-10 12:07:02', '1', '1', NULL, 'InfoWorld: Business to Consumer', NULL, 'http://www.infoworld.com/rss/ebustrat_btoc.xml');
INSERT INTO `feeds` VALUES ('f162f572-b6da-7189-90be-41e2e02042de', 0, '2005-01-10 12:07:06', '2005-01-10 12:07:06', '1', '1', NULL, 'InfoWorld: Portals', NULL, 'http://www.infoworld.com/rss/ebustrat_portal.xml');
INSERT INTO `feeds` VALUES ('3817838b-4dbf-84b6-1549-41e2e0b0995a', 0, '2005-01-10 12:07:11', '2005-01-10 12:07:11', '1', '1', NULL, 'InfoWorld: Handheld Devices', NULL, 'http://www.infoworld.com/rss/eusrhw_handdevc.xml');
INSERT INTO `feeds` VALUES ('66f7b3eb-104a-dba5-7a66-41e2e065f261', 0, '2005-01-10 12:07:15', '2005-01-10 12:07:15', '1', '1', NULL, 'InfoWorld: Mobile PC', NULL, 'http://www.infoworld.com/rss/eusrhw_mobilepc.xml');
INSERT INTO `feeds` VALUES ('9e00fb2a-6efe-1d1f-ad34-41e2e03a4ca6', 0, '2005-01-10 12:07:19', '2005-01-10 12:07:19', '1', '1', NULL, 'InfoWorld: PCs', NULL, 'http://www.infoworld.com/rss/eusrhw_pc.xml');
INSERT INTO `feeds` VALUES ('d4c6cbba-d698-5f1f-d06a-41e2e05ba76d', 0, '2005-01-10 12:07:23', '2005-01-10 12:07:23', '1', '1', NULL, 'InfoWorld: Processors & Components', NULL, 'http://www.infoworld.com/rss/eusrhw_proccomp.xml');
INSERT INTO `feeds` VALUES ('1c467be4-a384-2226-b896-41e2e07a8bf5', 0, '2005-01-10 12:07:28', '2005-01-10 12:07:28', '1', '1', NULL, 'InfoWorld: Hardware', NULL, 'http://www.infoworld.com/rss/hardware.xml');
INSERT INTO `feeds` VALUES ('5915c10c-ea6e-ed29-b748-41e2e0feb9f0', 0, '2005-01-10 12:07:32', '2005-01-10 12:07:32', '1', '1', NULL, 'InfoWorld: Grid Computing', NULL, 'http://www.infoworld.com/rss/netwking_gridcmp.xml');
INSERT INTO `feeds` VALUES ('916d98b1-a0df-59e6-d252-41e2e0a0fce5', 0, '2005-01-10 12:07:36', '2005-01-10 12:07:36', '1', '1', NULL, 'InfoWorld: Network Infrastructure', NULL, 'http://www.infoworld.com/rss/netwking_netinfra.xml');
INSERT INTO `feeds` VALUES ('dfc0f4c7-69e2-3310-0a2a-41e2e0195d74', 0, '2005-01-10 12:07:40', '2005-01-10 12:07:40', '1', '1', NULL, 'InfoWorld: Network Management', NULL, 'http://www.infoworld.com/rss/netwking_netmgmt.xml');
INSERT INTO `feeds` VALUES ('29007367-92cc-7976-501d-41e2e037017b', 0, '2005-01-10 12:07:45', '2005-01-10 12:07:45', '1', '1', NULL, 'InfoWorld: Utilities Component', NULL, 'http://www.infoworld.com/rss/netwking_utilcomp.xml');
INSERT INTO `feeds` VALUES ('6abf823f-4b0d-e9a8-635c-41e2e039d4bf', 0, '2005-01-10 12:07:49', '2005-01-10 12:07:49', '1', '1', NULL, 'InfoWorld: Networking', NULL, 'http://www.infoworld.com/rss/networking.xml');
INSERT INTO `feeds` VALUES ('e8f2ad3b-48dd-d577-2362-41e2e0e96eec', 0, '2005-01-10 12:07:57', '2005-01-10 12:07:57', '1', '1', NULL, 'InfoWorld: Top News', NULL, 'http://www.infoworld.com/rss/news.rdf');
INSERT INTO `feeds` VALUES ('36a48d6e-be52-025b-aff8-41e2e0a360c5', 0, '2005-01-10 12:08:02', '2005-01-10 12:08:02', '1', '1', NULL, 'InfoWorld: Top News', NULL, 'http://www.infoworld.com/rss/news.xml');
INSERT INTO `feeds` VALUES ('74662412-16b7-140f-bf08-41e2e088ee14', 0, '2005-01-10 12:08:06', '2005-01-10 12:08:06', '1', '1', NULL, 'InfoWorld: Platforms', NULL, 'http://www.infoworld.com/rss/platforms.xml');
INSERT INTO `feeds` VALUES ('adf6ac68-003f-395e-c410-41e2e0e5463f', 0, '2005-01-10 12:08:10', '2005-01-10 12:08:10', '1', '1', NULL, 'InfoWorld: Application Servers', NULL, 'http://www.infoworld.com/rss/platform_appserv.xml');
INSERT INTO `feeds` VALUES ('ebb409b9-3336-e5da-16d1-41e2e0a346ab', 0, '2005-01-10 12:08:14', '2005-01-10 12:08:14', '1', '1', NULL, 'InfoWorld: Databases', NULL, 'http://www.infoworld.com/rss/platform_database.xml');
INSERT INTO `feeds` VALUES ('2c602f5d-5c2e-2b0a-558d-41e2e016671c', 0, '2005-01-10 12:08:19', '2005-01-10 12:08:19', '1', '1', NULL, 'InfoWorld: Open Source', NULL, 'http://www.infoworld.com/rss/platform_opensrc.xml');
INSERT INTO `feeds` VALUES ('64050dae-dd95-8a54-a7f4-41e2e027805a', 0, '2005-01-10 12:08:23', '2005-01-10 12:08:23', '1', '1', NULL, 'InfoWorld: Platforms', NULL, 'http://www.infoworld.com/rss/platform_os.xml');
INSERT INTO `feeds` VALUES ('9866d35a-406f-e916-f8c9-41e2e0214c5d', 0, '2005-01-10 12:08:27', '2005-01-10 12:08:27', '1', '1', NULL, 'InfoWorld: Server Hardware', NULL, 'http://www.infoworld.com/rss/platform_servhw.xml');
INSERT INTO `feeds` VALUES ('d244ac22-d651-84d4-9726-41e2e029cbde', 0, '2005-01-10 12:08:31', '2005-01-10 12:08:31', '1', '1', NULL, 'InfoWorld: Test Center Reviews', NULL, 'http://www.infoworld.com/rss/reviews.xml');
INSERT INTO `feeds` VALUES ('173d9c3d-a132-efbc-3653-41e2e07f665f', 0, '2005-01-10 12:08:36', '2005-01-10 12:08:36', '1', '1', NULL, 'InfoWorld: Security', NULL, 'http://www.infoworld.com/rss/security.xml');
INSERT INTO `feeds` VALUES ('6362dd39-39e6-dd5e-96a5-41e2e07c3534', 0, '2005-01-10 12:08:40', '2005-01-10 12:08:40', '1', '1', NULL, 'InfoWorld: Firewall', NULL, 'http://www.infoworld.com/rss/security_firewall.xml');
INSERT INTO `feeds` VALUES ('a8f67506-9b3c-92bc-046d-41e2e06b7fbc', 0, '2005-01-10 12:08:44', '2005-01-10 12:08:44', '1', '1', NULL, 'InfoWorld: Security Appliances', NULL, 'http://www.infoworld.com/rss/security_secapp.xml');
INSERT INTO `feeds` VALUES ('dc99ca3c-a068-afcc-41f0-41e2e06d71e5', 0, '2005-01-10 12:08:48', '2005-01-10 12:08:48', '1', '1', NULL, 'InfoWorld: VPN', NULL, 'http://www.infoworld.com/rss/security_vpn.xml');
INSERT INTO `feeds` VALUES ('29ac7be2-6a12-5710-435f-41e2e03416e1', 0, '2005-01-10 12:08:53', '2005-01-10 12:08:53', '1', '1', NULL, 'InfoWorld: Vulnerability Management', NULL, 'http://www.infoworld.com/rss/security_vulmgmt.xml');
INSERT INTO `feeds` VALUES ('6776e391-4544-b6e6-caf4-41e2e07f46b9', 0, '2005-01-10 12:08:57', '2005-01-10 12:08:57', '1', '1', NULL, 'InfoWorld: Wireless Security', NULL, 'http://www.infoworld.com/rss/security_wiresec.xml');
INSERT INTO `feeds` VALUES ('a24dcc9a-3fda-e158-9bcc-41e2e049a496', 0, '2005-01-10 12:09:01', '2005-01-10 12:09:01', '1', '1', NULL, 'InfoWorld: Standards', NULL, 'http://www.infoworld.com/rss/standards.xml');
INSERT INTO `feeds` VALUES ('f336c24c-3349-c630-9cbd-41e2e08442a9', 0, '2005-01-10 12:09:05', '2005-01-10 12:09:05', '1', '1', NULL, 'InfoWorld: Application Development', NULL, 'http://www.infoworld.com/rss/stanprot_appdev.xml');
INSERT INTO `feeds` VALUES ('300c6790-d2a3-75f0-8fa0-41e2e08b960b', 0, '2005-01-10 12:09:10', '2005-01-10 12:09:10', '1', '1', NULL, 'InfoWorld: Internet', NULL, 'http://www.infoworld.com/rss/stanprot_inet.xml');
INSERT INTO `feeds` VALUES ('69babb1f-fe7c-c364-83ab-41e2e0e2b049', 0, '2005-01-10 12:09:14', '2005-01-10 12:09:14', '1', '1', NULL, 'InfoWorld: Networking', NULL, 'http://www.infoworld.com/rss/stanprot_netwking.xml');
INSERT INTO `feeds` VALUES ('b97c4759-c783-6990-f94a-41e2e00fca1d', 0, '2005-01-10 12:09:18', '2005-01-10 12:09:18', '1', '1', NULL, 'InfoWorld: Security', NULL, 'http://www.infoworld.com/rss/stanprot_security.xml');
INSERT INTO `feeds` VALUES ('27b8f326-6eba-c459-8a66-41e2e0c88453', 0, '2005-01-10 12:09:23', '2005-01-10 12:09:23', '1', '1', NULL, 'InfoWorld: Storage', NULL, 'http://www.infoworld.com/rss/stanprot_storage.xml');
INSERT INTO `feeds` VALUES ('5ede0b55-899c-ccf0-a22b-41e2e0473f50', 0, '2005-01-10 12:09:27', '2005-01-10 12:09:27', '1', '1', NULL, 'InfoWorld: Wireless', NULL, 'http://www.infoworld.com/rss/stanprot_wireless.xml');
INSERT INTO `feeds` VALUES ('9ba85759-7a84-79d2-5d5b-41e2e0215d1e', 0, '2005-01-10 12:09:31', '2005-01-10 12:09:31', '1', '1', NULL, 'InfoWorld: Storage', NULL, 'http://www.infoworld.com/rss/storage.xml');
INSERT INTO `feeds` VALUES ('d9cde4fd-28f6-faed-2555-41e2e04de5cb', 0, '2005-01-10 12:09:35', '2005-01-10 12:09:35', '1', '1', NULL, 'InfoWorld: Business Continuity', NULL, 'http://www.infoworld.com/rss/storage_buscont.xml');
INSERT INTO `feeds` VALUES ('2bdd0ae4-0ddc-8c7c-6bbe-41e2e1f0faeb', 0, '2005-01-10 12:09:40', '2005-01-10 12:09:40', '1', '1', NULL, 'InfoWorld: Networked Storage', NULL, 'http://www.infoworld.com/rss/storage_netstor.xml');
INSERT INTO `feeds` VALUES ('68d12716-8c75-08d5-0785-41e2e1f8d408', 0, '2005-01-10 12:09:44', '2005-01-10 12:09:44', '1', '1', NULL, 'InfoWorld: Storage Hardware', NULL, 'http://www.infoworld.com/rss/storage_storhw.xml');
INSERT INTO `feeds` VALUES ('a6502372-e900-cd75-587f-41e2e1a348db', 0, '2005-01-10 12:09:48', '2005-01-10 12:09:48', '1', '1', NULL, 'InfoWorld: Storage Management', NULL, 'http://www.infoworld.com/rss/storage_stormgmt.xml');
INSERT INTO `feeds` VALUES ('e494037a-c6c4-8793-108b-41e2e15f0f95', 0, '2005-01-10 12:09:52', '2005-01-10 12:09:52', '1', '1', NULL, 'InfoWorld: Telecom', NULL, 'http://www.infoworld.com/rss/telecomm.xml');
INSERT INTO `feeds` VALUES ('42778fab-3037-1280-059b-41e2e149966a', 0, '2005-01-10 12:09:57', '2005-01-10 12:09:57', '1', '1', NULL, 'InfoWorld: Broadband', NULL, 'http://www.infoworld.com/rss/telecom_broadband.xml');
INSERT INTO `feeds` VALUES ('82a29d82-9ad5-65ca-b74d-41e2e1b9cc06', 0, '2005-01-10 12:10:01', '2005-01-10 12:10:01', '1', '1', NULL, 'InfoWorld: Telephony', NULL, 'http://www.infoworld.com/rss/telecom_telephony.xml');
INSERT INTO `feeds` VALUES ('d05fc611-e074-96ea-4186-41e2e1577cea', 0, '2005-01-10 12:10:05', '2005-01-10 12:10:05', '1', '1', NULL, 'InfoWorld: xSPs', NULL, 'http://www.infoworld.com/rss/telecom_xsp.xml');
INSERT INTO `feeds` VALUES ('21f3db54-63ce-67b8-999d-41e2e11b3dfb', 0, '2005-01-10 12:10:10', '2005-01-10 12:10:10', '1', '1', NULL, 'InfoWorld: Web services', NULL, 'http://www.infoworld.com/rss/webservices.xml');
INSERT INTO `feeds` VALUES ('586629ae-ecab-f5d5-41f9-41e2e1eb8af6', 0, '2005-01-10 12:10:14', '2005-01-10 12:10:14', '1', '1', NULL, 'InfoWorld: Web Services Applications', NULL, 'http://www.infoworld.com/rss/websvcs_websvcap.xml');
INSERT INTO `feeds` VALUES ('8a5a7213-cc37-924c-1fef-41e2e1607a6a', 0, '2005-01-10 12:10:18', '2005-01-10 12:10:18', '1', '1', NULL, 'InfoWorld: Web Services Development', NULL, 'http://www.infoworld.com/rss/websvcs_websvcdv.xml');
INSERT INTO `feeds` VALUES ('d30ec90d-86e4-6b11-05dd-41e2e155d05a', 0, '2005-01-10 12:10:22', '2005-01-10 12:10:22', '1', '1', NULL, 'InfoWorld: Web Services Integration', NULL, 'http://www.infoworld.com/rss/websvcs_websvcin.xml');
INSERT INTO `feeds` VALUES ('22f69fbf-65ef-2790-262f-41e2e17a93e2', 0, '2005-01-10 12:10:27', '2005-01-10 12:10:27', '1', '1', NULL, 'InfoWorld: Web Management', NULL, 'http://www.infoworld.com/rss/websvcs_websvcmg.xml');
INSERT INTO `feeds` VALUES ('7ce83cab-8e9d-f80f-0013-41e2e17e3a32', 0, '2005-01-10 12:10:31', '2005-01-10 12:10:31', '1', '1', NULL, 'InfoWorld: Wireless', NULL, 'http://www.infoworld.com/rss/wireless.xml');
INSERT INTO `feeds` VALUES ('bcaa2681-9bf1-9ef1-6be9-41e2e1c982e2', 0, '2005-01-10 12:10:35', '2005-01-10 12:10:35', '1', '1', NULL, 'InfoWorld: Wireless Applications', NULL, 'http://www.infoworld.com/rss/wireless_wireapps.xml');
INSERT INTO `feeds` VALUES ('53e80be9-2d4c-d3d4-9e83-41e2e1a6d6be', 0, '2005-01-10 12:10:40', '2005-01-10 12:10:40', '1', '1', NULL, 'InfoWorld: Wireless Network Infrastructure', NULL, 'http://www.infoworld.com/rss/wireless_wirenetinfra.xml');
INSERT INTO `feeds` VALUES ('53714c90-4807-b021-8e0a-41e2e16e168f', 0, '2005-01-10 12:10:44', '2005-01-10 12:10:44', '1', '1', NULL, 'InfoWorld: Wireless Network Management', NULL, 'http://www.infoworld.com/rss/wireless_wirenetmgmt.xml');
INSERT INTO `feeds` VALUES ('a63fa605-f6f5-fdb5-9b4b-41e2e1f0b3dd', 0, '2005-01-10 12:10:48', '2005-01-10 12:10:48', '1', '1', NULL, 'Linux Magazine', NULL, 'http://www.linux-mag.com/lm.rss');
INSERT INTO `feeds` VALUES ('5bd9c58c-b0a7-bdef-ebca-41e2e150faf6', 0, '2005-01-10 12:10:57', '2005-01-10 12:10:57', '1', '1', NULL, 'Linux Journal - The Original Magazine of the Linux Community', NULL, 'http://www.linuxjournal.com/news.rss');
INSERT INTO `feeds` VALUES ('49e7d772-950e-9f18-b39e-41e2e1344dd3', 0, '2005-01-10 12:11:06', '2005-01-10 12:11:06', '1', '1', NULL, 'macdailynews.com', NULL, 'http://www.macdailynews.com/rss/rss.xml');
INSERT INTO `feeds` VALUES ('b15d917f-6220-4792-f3cf-41e2e1295e2d', 0, '2005-01-10 12:11:06', '2005-01-10 12:11:06', '1', '1', NULL, 'MacRumors', NULL, 'http://www.macrumors.com/macrumors.xml');
INSERT INTO `feeds` VALUES ('90634cab-75d2-4b3f-4424-41e2e18d34f1', 0, '2005-01-10 12:11:11', '2005-01-10 12:11:11', '1', '1', NULL, 'GoogleGuy Says - Google Ranking Info', NULL, 'http://www.markcarey.com/googleguy-says/index.rdf');
INSERT INTO `feeds` VALUES ('3b548447-e8e8-b3d1-c4c7-41e2e1c46b85', 0, '2005-01-10 12:11:12', '2005-01-10 12:11:12', '1', '1', NULL, 'CBS MarketWatch.com - Financial Services Industry News', NULL, 'http://www.marketwatch.com/rss/financial/');
INSERT INTO `feeds` VALUES ('dff224ac-4ccf-aed7-43b9-41e2e194fb1e', 0, '2005-01-10 12:11:12', '2005-01-10 12:11:12', '1', '1', NULL, 'CBS MarketWatch.com - Internet Industry News', NULL, 'http://www.marketwatch.com/rss/internet/');
INSERT INTO `feeds` VALUES ('9abe4795-81da-da4b-c27d-41e2e1f12209', 0, '2005-01-10 12:11:13', '2005-01-10 12:11:13', '1', '1', NULL, 'CBS MarketWatch.com - Personal Finance News', NULL, 'http://www.marketwatch.com/rss/pf/');
INSERT INTO `feeds` VALUES ('4dfb388a-1305-c6a6-bb1b-41e2e1ec0ea0', 0, '2005-01-10 12:11:14', '2005-01-10 12:11:14', '1', '1', NULL, 'CBS MarketWatch.com - Software Industry News', NULL, 'http://www.marketwatch.com/rss/software/');
INSERT INTO `feeds` VALUES ('5a554d53-5f02-0030-fa51-41e2e1c4ec0b', 0, '2005-01-10 12:11:15', '2005-01-10 12:11:15', '1', '1', NULL, 'CBS MarketWatch.com - Top Stories', NULL, 'http://www.marketwatch.com/rss/topstories/');
INSERT INTO `feeds` VALUES ('70a60db8-b993-ffdc-c7a2-41e2e1f9f2cc', 0, '2005-01-10 12:11:16', '2005-01-10 12:11:16', '1', '1', NULL, 'Reuters: Business', NULL, 'http://www.microsite.reuters.com/rss/businessNews');
INSERT INTO `feeds` VALUES ('8bd7e961-fade-e048-969b-41e2e15a0523', 0, '2005-01-10 12:11:16', '2005-01-10 12:11:16', '1', '1', NULL, 'Reuters: US Domestic News', NULL, 'http://www.microsite.reuters.com/rss/domesticNews');
INSERT INTO `feeds` VALUES ('157fe8ea-d139-355e-b64d-41e2e1d60dd1', 0, '2005-01-10 12:11:17', '2005-01-10 12:11:17', '1', '1', NULL, 'Reuters: Politics', NULL, 'http://www.microsite.reuters.com/rss/ElectionCoverage');
INSERT INTO `feeds` VALUES ('92d037ee-06a3-418f-74c4-41e2e19c22f5', 0, '2005-01-10 12:11:17', '2005-01-10 12:11:17', '1', '1', NULL, 'Reuters: Entertainment', NULL, 'http://www.microsite.reuters.com/rss/Entertainment');
INSERT INTO `feeds` VALUES ('1e69fa33-09c2-f086-1f49-41e2e130cd40', 0, '2005-01-10 12:11:18', '2005-01-10 12:11:18', '1', '1', NULL, 'Reuters: Health', NULL, 'http://www.microsite.reuters.com/rss/healthNews');
INSERT INTO `feeds` VALUES ('9f9d5276-26a0-aadc-1e03-41e2e13d5fc3', 0, '2005-01-10 12:11:18', '2005-01-10 12:11:18', '1', '1', NULL, 'Reuters: Life & Leisure', NULL, 'http://www.microsite.reuters.com/rss/lifeAndLeisureNews');
INSERT INTO `feeds` VALUES ('22ae3feb-5b25-0c61-7d1c-41e2e134a898', 0, '2005-01-10 12:11:19', '2005-01-10 12:11:19', '1', '1', NULL, 'Reuters: Oddly Enough', NULL, 'http://www.microsite.reuters.com/rss/oddlyEnoughNews');
INSERT INTO `feeds` VALUES ('a446695a-c6d2-e970-0d13-41e2e10b4f0a', 0, '2005-01-10 12:11:19', '2005-01-10 12:11:19', '1', '1', NULL, 'Reuters: Politics', NULL, 'http://www.microsite.reuters.com/rss/politicsNews');
INSERT INTO `feeds` VALUES ('4360b39e-9f38-94ab-68f5-41e2e1f8ebfc', 0, '2005-01-10 12:11:20', '2005-01-10 12:11:20', '1', '1', NULL, 'Reuters: Science', NULL, 'http://www.microsite.reuters.com/rss/scienceNews');
INSERT INTO `feeds` VALUES ('bdbfe8e9-980b-c873-e3b0-41e2e1426554', 0, '2005-01-10 12:11:20', '2005-01-10 12:11:20', '1', '1', NULL, 'Reuters: Sports', NULL, 'http://www.microsite.reuters.com/rss/sportsNews');
INSERT INTO `feeds` VALUES ('56773914-9860-cc40-5763-41e2e126f83f', 0, '2005-01-10 12:11:21', '2005-01-10 12:11:21', '1', '1', NULL, 'Reuters: Technology', NULL, 'http://www.microsite.reuters.com/rss/technologyNews');
INSERT INTO `feeds` VALUES ('d098cf04-c313-867c-11d9-41e2e1fd4fe3', 0, '2005-01-10 12:11:21', '2005-01-10 12:11:21', '1', '1', NULL, 'Reuters: Top News', NULL, 'http://www.microsite.reuters.com/rss/topNews');
INSERT INTO `feeds` VALUES ('563ae3f7-df64-9e60-d02a-41e2e182eacb', 0, '2005-01-10 12:11:22', '2005-01-10 12:11:22', '1', '1', NULL, 'Reuters: World', NULL, 'http://www.microsite.reuters.com/rss/worldNews');
INSERT INTO `feeds` VALUES ('e52e8793-7b64-d778-4382-41e2e11bda85', 0, '2005-01-10 12:11:26', '2005-01-10 12:11:26', '1', '1', NULL, 'NYT > Arts', NULL, 'http://www.nytimes.com/services/xml/rss/nyt/Arts.xml');
INSERT INTO `feeds` VALUES ('76395a02-40cb-98c1-7e38-41e2e1cfef20', 0, '2005-01-10 12:11:31', '2005-01-10 12:11:31', '1', '1', NULL, 'NYT > Automobiles', NULL, 'http://www.nytimes.com/services/xml/rss/nyt/Automobiles.xml');
INSERT INTO `feeds` VALUES ('f329defa-0a0b-72bd-874b-41e2e1d870e6', 0, '2005-01-10 12:11:35', '2005-01-10 12:11:35', '1', '1', NULL, 'NYT > Books', NULL, 'http://www.nytimes.com/services/xml/rss/nyt/Books.xml');
INSERT INTO `feeds` VALUES ('7bd169d6-5a81-5486-a70b-41e2e1bdb372', 0, '2005-01-10 12:11:40', '2005-01-10 12:11:40', '1', '1', NULL, 'NYT > Business', NULL, 'http://www.nytimes.com/services/xml/rss/nyt/Business.xml');
INSERT INTO `feeds` VALUES ('32da2be6-a2be-a445-baeb-41e2e10be2b4', 0, '2005-01-10 12:11:59', '2005-01-10 12:11:59', '1', '1', NULL, 'NYT > Circuits', NULL, 'http://www.nytimes.com/services/xml/rss/nyt/Circuits.xml');
INSERT INTO `feeds` VALUES ('abc4b934-4df7-b840-2c71-41e2e1b5c624', 0, '2005-01-10 12:12:03', '2005-01-10 12:12:03', '1', '1', NULL, 'NYT > Fashion and Style', NULL, 'http://www.nytimes.com/services/xml/rss/nyt/FashionandStyle.xml');
INSERT INTO `feeds` VALUES ('3e368e6c-a9c8-9db5-8c58-41e2e13063cc', 0, '2005-01-10 12:12:08', '2005-01-10 12:12:08', '1', '1', NULL, 'NYT > Health', NULL, 'http://www.nytimes.com/services/xml/rss/nyt/Health.xml');
INSERT INTO `feeds` VALUES ('ad6f00c5-4d44-a7f3-3956-41e2e13cb440', 0, '2005-01-10 12:12:12', '2005-01-10 12:12:12', '1', '1', NULL, 'NYT > Home Page', NULL, 'http://www.nytimes.com/services/xml/rss/nyt/HomePage.xml');
INSERT INTO `feeds` VALUES ('3243b29a-5bf0-73e7-ff62-41e2e10d3f1e', 0, '2005-01-10 12:12:17', '2005-01-10 12:12:17', '1', '1', NULL, 'NYT > International', NULL, 'http://www.nytimes.com/services/xml/rss/nyt/International.xml');
INSERT INTO `feeds` VALUES ('c0a95969-5b4c-0813-5070-41e2e1dc098d', 0, '2005-01-10 12:12:21', '2005-01-10 12:12:21', '1', '1', NULL, 'NYT > Magazine', NULL, 'http://www.nytimes.com/services/xml/rss/nyt/Magazine.xml');
INSERT INTO `feeds` VALUES ('b26227be-c4ac-d0db-3534-41e2e1e3c2bd', 0, '2005-01-10 12:12:31', '2005-01-10 12:12:31', '1', '1', NULL, 'NYT > Media and Advertising', NULL, 'http://www.nytimes.com/services/xml/rss/nyt/MediaandAdvertising.xml');
INSERT INTO `feeds` VALUES ('949123f7-e6b3-9c9b-6d3f-41e2e1ac24ca', 0, '2005-01-10 12:12:41', '2005-01-10 12:12:41', '1', '1', NULL, 'NYT > Movie Reviews', NULL, 'http://www.nytimes.com/services/xml/rss/nyt/Movies.xml');
INSERT INTO `feeds` VALUES ('1daf4a0b-1a1a-3f5b-9114-41e2e1ac5bd2', 0, '2005-01-10 12:12:46', '2005-01-10 12:12:46', '1', '1', NULL, 'NYT > Multimedia', NULL, 'http://www.nytimes.com/services/xml/rss/nyt/Multimedia.xml');
INSERT INTO `feeds` VALUES ('93f6049a-0b8c-368f-84db-41e2e10cf8dc', 0, '2005-01-10 12:12:50', '2005-01-10 12:12:50', '1', '1', NULL, 'NYT > National', NULL, 'http://www.nytimes.com/services/xml/rss/nyt/National.xml');
INSERT INTO `feeds` VALUES ('162fe62d-82ad-3acb-e40b-41e2e1ca3a42', 0, '2005-01-10 12:12:55', '2005-01-10 12:12:55', '1', '1', NULL, 'NYT > New York Region', NULL, 'http://www.nytimes.com/services/xml/rss/nyt/NYRegion.xml');
INSERT INTO `feeds` VALUES ('8b3b6aa8-afe3-f354-6934-41e2e1289783', 0, '2005-01-10 12:12:59', '2005-01-10 12:12:59', '1', '1', NULL, 'NYT > Opinion', NULL, 'http://www.nytimes.com/services/xml/rss/nyt/Opinion.xml');
INSERT INTO `feeds` VALUES ('16f15af7-8097-d8ff-e71b-41e2e1e3e56d', 0, '2005-01-10 12:13:04', '2005-01-10 12:13:04', '1', '1', NULL, 'NYT > Most E-mailed Articles', NULL, 'http://www.nytimes.com/services/xml/rss/nyt/pop_top.xml');
INSERT INTO `feeds` VALUES ('8c824e5a-a19e-3d18-f0b3-41e2e1347681', 0, '2005-01-10 12:13:08', '2005-01-10 12:13:08', '1', '1', NULL, 'NYT > Real Estate', NULL, 'http://www.nytimes.com/services/xml/rss/nyt/RealEstate.xml');
INSERT INTO `feeds` VALUES ('18a8f2f9-a4bb-40a0-c2fa-41e2e1a22c5b', 0, '2005-01-10 12:13:13', '2005-01-10 12:13:13', '1', '1', NULL, 'NYT > Science', NULL, 'http://www.nytimes.com/services/xml/rss/nyt/Science.xml');
INSERT INTO `feeds` VALUES ('8b5a69c3-7872-7621-978d-41e2e16ed94a', 0, '2005-01-10 12:13:17', '2005-01-10 12:13:17', '1', '1', NULL, 'NYT > Sports', NULL, 'http://www.nytimes.com/services/xml/rss/nyt/Sports.xml');
INSERT INTO `feeds` VALUES ('2c248cf4-cbb0-1ae3-98dc-41e2e1f4b908', 0, '2005-01-10 12:13:22', '2005-01-10 12:13:22', '1', '1', NULL, 'NYT > Technology', NULL, 'http://www.nytimes.com/services/xml/rss/nyt/Technology.xml');
INSERT INTO `feeds` VALUES ('b87e7042-bb54-8c71-eb00-41e2e1fe56f3', 0, '2005-01-10 12:13:26', '2005-01-10 12:13:26', '1', '1', NULL, 'NYT > Theater', NULL, 'http://www.nytimes.com/services/xml/rss/nyt/Theater.xml');
INSERT INTO `feeds` VALUES ('56a41258-299c-b87a-f11f-41e2e1dea02e', 0, '2005-01-10 12:13:40', '2005-01-10 12:13:40', '1', '1', NULL, 'NYT > Travel', NULL, 'http://www.nytimes.com/services/xml/rss/nyt/Travel.xml');
INSERT INTO `feeds` VALUES ('cad9e735-4edb-cf76-fa57-41e2e1bd9573', 0, '2005-01-10 12:13:44', '2005-01-10 12:13:44', '1', '1', NULL, 'NYT > Washington', NULL, 'http://www.nytimes.com/services/xml/rss/nyt/Washington.xml');
INSERT INTO `feeds` VALUES ('6c4ffca7-d6e0-762b-7319-41e2e1942650', 0, '2005-01-10 12:13:49', '2005-01-10 12:13:49', '1', '1', NULL, 'NYT > Week in Review', NULL, 'http://www.nytimes.com/services/xml/rss/nyt/WeekinReview.xml');
INSERT INTO `feeds` VALUES ('8fc8560f-f3b2-2f3f-7a8e-41e2e2b89d5a', 0, '2005-01-10 12:13:54', '2005-01-10 12:13:54', '1', '1', NULL, 'Telegraph Arts | Books', NULL, 'http://www.telegraph.co.uk/newsfeed/rss/arts_books.xml');
INSERT INTO `feeds` VALUES ('5ed58c84-963b-dc9e-9192-41e2e286de6b', 0, '2005-01-10 12:13:59', '2005-01-10 12:13:59', '1', '1', NULL, 'Telegraph Arts', NULL, 'http://www.telegraph.co.uk/newsfeed/rss/arts_main.xml');
INSERT INTO `feeds` VALUES ('3f8d6369-2cb1-34ff-2a84-41e2e2ad2838', 0, '2005-01-10 12:14:04', '2005-01-10 12:14:04', '1', '1', NULL, 'Telegraph Connected', NULL, 'http://www.telegraph.co.uk/newsfeed/rss/connected.xml');
INSERT INTO `feeds` VALUES ('26c18e81-99a1-dd1d-2971-41e2e2b1f154', 0, '2005-01-10 12:14:09', '2005-01-10 12:14:09', '1', '1', NULL, 'Telegraph Education', NULL, 'http://www.telegraph.co.uk/newsfeed/rss/education.xml');
INSERT INTO `feeds` VALUES ('f09bdcc6-8e18-f9b6-a868-41e2e26e388c', 0, '2005-01-10 12:14:13', '2005-01-10 12:14:13', '1', '1', NULL, 'Telegraph Expat', NULL, 'http://www.telegraph.co.uk/newsfeed/rss/expat.xml');
INSERT INTO `feeds` VALUES ('caa98477-7101-c99e-018d-41e2e2c7c022', 0, '2005-01-10 12:14:18', '2005-01-10 12:14:18', '1', '1', NULL, 'Telegraph Fashion', NULL, 'http://www.telegraph.co.uk/newsfeed/rss/fashion.xml');
INSERT INTO `feeds` VALUES ('abf7648d-d5c0-31cd-b450-41e2e294e388', 0, '2005-01-10 12:14:23', '2005-01-10 12:14:23', '1', '1', NULL, 'Telegraph Gardening', NULL, 'http://www.telegraph.co.uk/newsfeed/rss/gardening.xml');
INSERT INTO `feeds` VALUES ('a1762049-8d34-762a-49ff-41e2e23d820e', 0, '2005-01-10 12:14:28', '2005-01-10 12:14:28', '1', '1', NULL, 'Telegraph Health', NULL, 'http://www.telegraph.co.uk/newsfeed/rss/health.xml');
INSERT INTO `feeds` VALUES ('3f266fb5-3e33-91e2-73be-41e2e2dd9764', 0, '2005-01-10 12:14:33', '2005-01-10 12:14:33', '1', '1', NULL, 'Telegraph Opinion | Leaders', NULL, 'http://www.telegraph.co.uk/newsfeed/rss/leaders.xml');
INSERT INTO `feeds` VALUES ('108906cd-58af-9a2e-a04e-41e2e23db4a1', 0, '2005-01-10 12:14:38', '2005-01-10 12:14:38', '1', '1', NULL, 'Telegraph Opinion | Letters', NULL, 'http://www.telegraph.co.uk/newsfeed/rss/letters.xml');
INSERT INTO `feeds` VALUES ('b4eff965-86bf-e571-fef0-41e2e234081f', 0, '2005-01-10 12:14:42', '2005-01-10 12:14:42', '1', '1', NULL, 'Telegraph Money | Markets', NULL, 'http://www.telegraph.co.uk/newsfeed/rss/money_markets.xml');
INSERT INTO `feeds` VALUES ('9bebccf6-65fe-7240-9802-41e2e2a5d2b6', 0, '2005-01-10 12:14:47', '2005-01-10 12:14:47', '1', '1', NULL, 'Telegraph Money | Personal Finance', NULL, 'http://www.telegraph.co.uk/newsfeed/rss/money_pf.xml');
INSERT INTO `feeds` VALUES ('6268c9b4-82b3-74b5-be2d-41e2e280945c', 0, '2005-01-10 12:14:52', '2005-01-10 12:14:52', '1', '1', NULL, 'Telegraph Business | Small Business', NULL, 'http://www.telegraph.co.uk/newsfeed/rss/money_smallbus.xml');
INSERT INTO `feeds` VALUES ('6313eb76-e22b-cb06-b80b-41e2e25b1270', 0, '2005-01-10 12:14:57', '2005-01-10 12:14:57', '1', '1', NULL, 'Telegraph Motoring', NULL, 'http://www.telegraph.co.uk/newsfeed/rss/motoring.xml');
INSERT INTO `feeds` VALUES ('42131d7e-df56-90a2-6ff1-41e2e21b63d4', 0, '2005-01-10 12:15:02', '2005-01-10 12:15:02', '1', '1', NULL, 'Telegraph News | Breaking News', NULL, 'http://www.telegraph.co.uk/newsfeed/rss/news_breaking.xml');
INSERT INTO `feeds` VALUES ('13dd2763-7cff-361b-6864-41e2e2f367cb', 0, '2005-01-10 12:15:07', '2005-01-10 12:15:07', '1', '1', NULL, 'Telegraph News | International News', NULL, 'http://www.telegraph.co.uk/newsfeed/rss/news_international.xml');
INSERT INTO `feeds` VALUES ('e00bd292-8c0c-4f96-49b0-41e2e2ff2f9a', 0, '2005-01-10 12:15:11', '2005-01-10 12:15:11', '1', '1', NULL, 'Telegraph News | Front Page News', NULL, 'http://www.telegraph.co.uk/newsfeed/rss/news_main.xml');
INSERT INTO `feeds` VALUES ('b2da8888-120f-bfb7-67d6-41e2e28c5532', 0, '2005-01-10 12:15:16', '2005-01-10 12:15:16', '1', '1', NULL, 'Telegraph News | UK News', NULL, 'http://www.telegraph.co.uk/newsfeed/rss/news_uk.xml');
INSERT INTO `feeds` VALUES ('885e54fd-09ba-9cdc-a9e3-41e2e2ebb292', 0, '2005-01-10 12:15:21', '2005-01-10 12:15:21', '1', '1', NULL, 'Telegraph Opinion', NULL, 'http://www.telegraph.co.uk/newsfeed/rss/opinion.xml');
INSERT INTO `feeds` VALUES ('689b064d-8821-4b66-9788-41e2e2e48838', 0, '2005-01-10 12:15:26', '2005-01-10 12:15:26', '1', '1', NULL, 'Telegraph Property', NULL, 'http://www.telegraph.co.uk/newsfeed/rss/property.xml');
INSERT INTO `feeds` VALUES ('c36c0a13-8f54-a6c5-6b0b-41e2e27050c6', 0, '2005-01-10 12:15:31', '2005-01-10 12:15:31', '1', '1', NULL, 'Telegraph Sport | Cricket', NULL, 'http://www.telegraph.co.uk/newsfeed/rss/sport_cricket.xml');
INSERT INTO `feeds` VALUES ('4ecabb98-a3cd-4b96-d288-41e2e2943a21', 0, '2005-01-10 12:15:36', '2005-01-10 12:15:36', '1', '1', NULL, 'Telegraph Sport | Football', NULL, 'http://www.telegraph.co.uk/newsfeed/rss/sport_football.xml');
INSERT INTO `feeds` VALUES ('e911ad05-13d6-869d-6e85-41e2e24224d4', 0, '2005-01-10 12:15:40', '2005-01-10 12:15:40', '1', '1', NULL, 'Telegraph Sport | Golf', NULL, 'http://www.telegraph.co.uk/newsfeed/rss/sport_golf.xml');
INSERT INTO `feeds` VALUES ('ba80d353-4126-d39e-363e-41e2e29b93b6', 0, '2005-01-10 12:15:45', '2005-01-10 12:15:45', '1', '1', NULL, 'Telegraph Sport', NULL, 'http://www.telegraph.co.uk/newsfeed/rss/sport_main.xml');
INSERT INTO `feeds` VALUES ('bd5e4012-976e-3cdb-bacb-41e2e2409362', 0, '2005-01-10 12:15:50', '2005-01-10 12:15:50', '1', '1', NULL, 'Telegraph Sport | Rugby Union', NULL, 'http://www.telegraph.co.uk/newsfeed/rss/sport_rugu.xml');
INSERT INTO `feeds` VALUES ('c7d5ddd0-3e83-5b31-5158-41e2e2c8eeaf', 0, '2005-01-10 12:15:55', '2005-01-10 12:15:55', '1', '1', NULL, 'Telegraph Travel', NULL, 'http://www.telegraph.co.uk/newsfeed/rss/travel_main.xml');
INSERT INTO `feeds` VALUES ('933a0c4c-b2b9-cef9-a3a1-41e2e2afe273', 0, '2005-01-10 12:16:00', '2005-01-10 12:16:00', '1', '1', NULL, 'Telegraph Wine', NULL, 'http://www.telegraph.co.uk/newsfeed/rss/wine.xml');
INSERT INTO `feeds` VALUES ('3ac7981d-0c22-8f87-72c3-41e2e2965536', 0, '2005-01-10 12:16:05', '2005-01-10 12:16:05', '1', '1', NULL, 'washingtonpost.com - Business', NULL, 'http://www.washingtonpost.com/wp-srv/business/rssheadlines.xml');
INSERT INTO `feeds` VALUES ('c09c8abc-7992-2dc4-face-41e2e268cfb9', 0, '2005-01-10 12:16:09', '2005-01-10 12:16:09', '1', '1', NULL, 'washingtonpost.com - Education', NULL, 'http://www.washingtonpost.com/wp-srv/education/rssheadlines.xml');
INSERT INTO `feeds` VALUES ('6de7e3cf-20a5-8ae9-9b91-41e2e2531c32', 0, '2005-01-10 12:16:14', '2005-01-10 12:16:14', '1', '1', NULL, 'washingtonpost.com - Health', NULL, 'http://www.washingtonpost.com/wp-srv/health/rssheadlines.xml');
INSERT INTO `feeds` VALUES ('e6962597-5923-ce09-9db4-41e2e2864635', 0, '2005-01-10 12:16:18', '2005-01-10 12:16:18', '1', '1', NULL, 'washingtonpost.com - Metro', NULL, 'http://www.washingtonpost.com/wp-srv/metro/rssheadlines.xml');
INSERT INTO `feeds` VALUES ('644ba5b6-6a86-c78c-9fc7-41e2e213bcc8', 0, '2005-01-10 12:16:23', '2005-01-10 12:16:23', '1', '1', NULL, 'washingtonpost.com - Nation', NULL, 'http://www.washingtonpost.com/wp-srv/nation/rssheadlines.xml');
INSERT INTO `feeds` VALUES ('e06ad79d-0a57-7366-1e30-41e2e2e06c22', 0, '2005-01-10 12:16:27', '2005-01-10 12:16:27', '1', '1', NULL, 'washingtonpost.com - Opinion', NULL, 'http://www.washingtonpost.com/wp-srv/opinion/rssheadlines.xml');
INSERT INTO `feeds` VALUES ('b04689c2-b068-7223-d8af-41e2e2687b82', 0, '2005-01-10 12:16:32', '2005-01-10 12:16:32', '1', '1', NULL, 'washingtonpost.com - 2004 Election', NULL, 'http://www.washingtonpost.com/wp-srv/politics/elections/2004/rssheadlines.xml');
INSERT INTO `feeds` VALUES ('4660f0e9-37bf-af65-dbb3-41e2e2e3aef3', 0, '2005-01-10 12:16:37', '2005-01-10 12:16:37', '1', '1', NULL, 'washingtonpost.com - Politics', NULL, 'http://www.washingtonpost.com/wp-srv/politics/rssheadlines.xml');
INSERT INTO `feeds` VALUES ('d549ff0c-6666-a153-9804-41e2e2dea5de', 0, '2005-01-10 12:16:41', '2005-01-10 12:16:41', '1', '1', NULL, 'washingtonpost.com - Real Estate', NULL, 'http://www.washingtonpost.com/wp-srv/realestate/rssheadlines.xml');
INSERT INTO `feeds` VALUES ('6204cd5b-0bf2-eda1-1c1b-41e2e2475997', 0, '2005-01-10 12:16:46', '2005-01-10 12:16:46', '1', '1', NULL, 'washingtonpost.com - Sports', NULL, 'http://www.washingtonpost.com/wp-srv/sports/rssheadlines.xml');
INSERT INTO `feeds` VALUES ('227a0fa6-21fb-a275-66f8-41e2e2b91da7', 0, '2005-01-10 12:16:51', '2005-01-10 12:16:51', '1', '1', NULL, 'washingtonpost.com - Technology', NULL, 'http://www.washingtonpost.com/wp-srv/technology/rssheadlines.xml');
INSERT INTO `feeds` VALUES ('b8ef9e66-846e-8c8a-5e37-41e2e2139fb6', 0, '2005-01-10 12:16:55', '2005-01-10 12:16:55', '1', '1', NULL, 'washingtonpost.com - World', NULL, 'http://www.washingtonpost.com/wp-srv/world/rssheadlines.xml');
INSERT INTO `feeds` VALUES ('1426c66e-f338-2f01-6c37-41e2e250f9c6', 0, '2005-01-10 12:17:09', '2005-01-10 12:17:09', '1', '1', NULL, 'Wired News', NULL, 'http://www.wired.com/news_drop/netcenter/netcenter.rdf');
INSERT INTO `feeds` VALUES ('dad0faed-5e63-a3d3-2600-41e2e25b3432', 0, '2005-01-10 12:17:13', '2005-01-10 12:17:13', '1', '1', NULL, 'African News from World Press Review', NULL, 'http://www.worldpress.org/feeds/Africa.xml');
INSERT INTO `feeds` VALUES ('975ea85d-b5e3-147d-9a4e-41e2e2bd803c', 0, '2005-01-10 12:17:18', '2005-01-10 12:17:18', '1', '1', NULL, 'Latin American and Canadian News from World Press Review', NULL, 'http://www.worldpress.org/feeds/Americas.xml');
INSERT INTO `feeds` VALUES ('5c4cc320-8083-64c3-3e26-41e2e2f6b657', 0, '2005-01-10 12:17:23', '2005-01-10 12:17:23', '1', '1', NULL, 'Asian News from World Press Review', NULL, 'http://www.worldpress.org/feeds/Asia.xml');
INSERT INTO `feeds` VALUES ('2b354b70-9a4f-f7ce-a98e-41e2e21f0c8f', 0, '2005-01-10 12:17:28', '2005-01-10 12:17:28', '1', '1', NULL, 'European News from World Press Review', NULL, 'http://www.worldpress.org/feeds/Europe.xml');
INSERT INTO `feeds` VALUES ('dc142b87-1213-1748-38c8-41e2e23eb448', 0, '2005-01-10 12:17:32', '2005-01-10 12:17:32', '1', '1', NULL, 'Middle Eastern News from World Press Review', NULL, 'http://www.worldpress.org/feeds/Mideast.xml');
INSERT INTO `feeds` VALUES ('ade6b2d5-1c1d-f17c-564c-41e2e20caaa3', 0, '2005-01-10 12:17:37', '2005-01-10 12:17:37', '1', '1', NULL, 'Top Headlines from World Press Review', NULL, 'http://www.worldpress.org/feeds/topstories.xml');
INSERT INTO `feeds` VALUES ('3c13d9ed-6b2e-ffc0-432a-41e2e2bd099b', 0, '2005-01-10 12:17:42', '2005-01-10 12:17:42', '1', '1', NULL, 'Breaking News Headlines from Around the World, Powered by Worldpress.org', NULL, 'http://www.worldpress.org/feeds/worldpresswire.xml');
INSERT INTO `feeds` VALUES ('cb27f088-bcd4-6378-d754-41e2e2c815b8', 0, '2005-01-10 12:17:50', '2005-01-10 12:17:50', '1', '1', NULL, 'Linux Journal - The Original Magazine of the Linux Community', NULL, 'http://www3.linuxjournal.com/news.rss');
INSERT INTO `feeds` VALUES ('d3b812de-b09b-d19d-1ef7-41e2e2c7175b', 0, '2005-01-10 12:17:51', '2005-01-10 12:17:51', '1', '1', NULL, 'ZDNet News - Front Door', NULL, 'http://zdnet.com.com/2036-2_2-0.xml');
INSERT INTO `feeds` VALUES ('4a1301d9-c4fe-f6be-4edb-41e2e22b41b0', 0, '2005-01-10 12:17:52', '2005-01-10 12:17:52', '1', '1', NULL, 'ZDNet News - Hardware', NULL, 'http://zdnet.com.com/2509-1103_2-0-10.xml');
INSERT INTO `feeds` VALUES ('b5cc579b-0de1-f1fb-2f4c-41e2e23dc415', 0, '2005-01-10 12:17:52', '2005-01-10 12:17:52', '1', '1', NULL, 'ZDNet News - Software', NULL, 'http://zdnet.com.com/2509-1104_2-0-10.xml');
INSERT INTO `feeds` VALUES ('36085453-2d39-d3b9-1b9c-41e2e2ab4ee7', 0, '2005-01-10 12:17:53', '2005-01-10 12:17:53', '1', '1', NULL, 'ZDNet News - Security', NULL, 'http://zdnet.com.com/2509-1105_2-0-10.xml');
INSERT INTO `feeds` VALUES ('ae0619d9-4e7e-f462-6d85-41e2e21bfd46', 0, '2005-01-10 12:17:53', '2005-01-10 12:17:53', '1', '1', NULL, 'ZDNet News - Commentary', NULL, 'http://zdnet.com.com/2509-1107_2-0-10.xml');
INSERT INTO `feeds` VALUES ('30d86812-bc01-d5d3-faca-41e2e2d9bd0d', 0, '2005-01-10 12:17:54', '2005-01-10 12:17:54', '1', '1', NULL, 'ZDNet News - Latest Headlines', NULL, 'http://zdnet.com.com/2509-11_2-0-20.xml');
INSERT INTO `feeds` VALUES ('90df24f4-9717-7a1b-ed5b-41e77fbcfba7', 0, '2005-01-14 00:16:00', '2005-01-14 00:16:00', '1', '1', '1', 'SourceForge.net: SF.net Recent Project Donations: SugarCRM', NULL, 'http://sourceforge.net/export/rss2_projdonors.php?group_id=107819');
INSERT INTO `feeds` VALUES ('4bbca87f-2017-5488-d8e0-41e7808c2553', 0, '2005-01-14 00:17:00', '2005-01-14 00:17:00', '1', '1', '1', 'SourceForge.net: SF.net Project News: SugarCRM', NULL, 'http://sourceforge.net/export/rss2_projnews.php?group_id=107819');
INSERT INTO `feeds` VALUES ('c03b64eb-d0d4-a188-e203-41e7804677bd', 0, '2005-01-14 00:17:00', '2005-01-14 00:17:00', '1', '1', '1', 'SourceForge.net: SF.net Project News: SugarCRM  (including full news text)', NULL, 'http://sourceforge.net/export/rss2_projnews.php?group_id=107819&rss_fulltext=1');
INSERT INTO `feeds` VALUES ('42210fc0-d21c-cff6-2c72-41e780195bfc', 0, '2005-01-14 00:17:00', '2005-01-14 00:17:00', '1', '1', '1', 'SourceForge.net: Project File Releases: SugarCRM', NULL, 'http://sourceforge.net/export/rss2_projfiles.php?group_id=107819');
INSERT INTO `feeds` VALUES ('d410145c-e217-8ad3-0e99-41e78038cf4a', 0, '2005-01-14 00:17:00', '2005-01-14 00:17:00', '1', '1', '1', 'SourceForge.net: Project Documentation (DocManager) Updates: SugarCRM', NULL, 'http://sourceforge.net/export/rss2_projdocs.php?group_id=107819');
INSERT INTO `feeds` VALUES ('db197b9c-9158-d779-0be3-41e780eda0f6', 0, '2005-01-14 00:17:00', '2005-01-14 00:17:00', '1', '1', '1', 'SourceForge.net: Project Summary: SugarCRM  (sugarcrm project)', NULL, 'http://sourceforge.net/export/rss2_projsummary.php?group_id=107819');

-- --------------------------------------------------------

-- 
-- Структура на таблица `fields_meta_data`
-- 

DROP TABLE IF EXISTS `fields_meta_data`;
CREATE TABLE `fields_meta_data` (
  `id` varchar(255) NOT NULL default '',
  `name` varchar(255) default NULL,
  `label` varchar(255) default NULL,
  `help` varchar(255) default NULL,
  `custom_module` varchar(255) default NULL,
  `data_type` varchar(255) default NULL,
  `max_size` int(11) default NULL,
  `required_option` varchar(255) default NULL,
  `default_value` varchar(255) default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  `audited` tinyint(1) default '0',
  `mass_update` tinyint(1) default '0',
  `duplicate_merge` smallint(6) default '0',
  `ext1` varchar(255) default '',
  `ext2` varchar(255) default '',
  `ext3` varchar(255) default '',
  `ext4` text,
  PRIMARY KEY  (`id`),
  KEY `idx_meta_id_del` (`id`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `fields_meta_data`
-- 


-- --------------------------------------------------------

-- 
-- Структура на таблица `files`
-- 

DROP TABLE IF EXISTS `files`;
CREATE TABLE `files` (
  `id` varchar(36) NOT NULL default '',
  `name` varchar(36) default NULL,
  `content` blob,
  `deleted` tinyint(1) NOT NULL default '0',
  `date_entered` datetime NOT NULL default '0000-00-00 00:00:00',
  `assigned_user_id` varchar(36) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `files`
-- 


-- --------------------------------------------------------

-- 
-- Структура на таблица `formats`
-- 

DROP TABLE IF EXISTS `formats`;
CREATE TABLE `formats` (
  `x` int(11) default NULL,
  `y` int(11) default NULL,
  `name` varchar(50) NOT NULL default ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `formats`
-- 

INSERT INTO `formats` VALUES (15, 21, 'A5');
INSERT INTO `formats` VALUES (50, 70, 'Shi');
INSERT INTO `formats` VALUES (35, 50, 'GTO');
INSERT INTO `formats` VALUES (NULL, NULL, '-');
INSERT INTO `formats` VALUES (234, 534, '');

-- --------------------------------------------------------

-- 
-- Структура на таблица `iframes`
-- 

DROP TABLE IF EXISTS `iframes`;
CREATE TABLE `iframes` (
  `id` varchar(36) NOT NULL default '',
  `name` varchar(255) NOT NULL default '',
  `url` varchar(255) NOT NULL default '',
  `type` varchar(255) NOT NULL default '',
  `placement` varchar(255) NOT NULL default '',
  `status` tinyint(1) NOT NULL default '0',
  `deleted` tinyint(1) NOT NULL default '0',
  `date_entered` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_by` varchar(36) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `idx_cont_name` (`name`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `iframes`
-- 

INSERT INTO `iframes` VALUES ('2c6c0453-7d58-5fbd-a3e7-45ab46822a67', 'Karting-zone', 'http://www.karting-zone.net', 'personal', 'shortcut', 1, 1, '2007-01-15 09:18:12', '2007-01-15 09:24:37', '177bd6bb-665d-cc61-4d82-45ab422290d3');
INSERT INTO `iframes` VALUES ('f3649e9f-d5fc-2c61-7a70-45ab47b27a3f', 'Live Soft Ltd.', 'http://www.livesoft.org', 'personal', 'shortcut', 1, 1, '2007-01-15 09:19:26', '2007-01-15 09:24:37', '177bd6bb-665d-cc61-4d82-45ab422290d3');
INSERT INTO `iframes` VALUES ('d5640973-afa1-e0ec-9649-45ab471b2441', 'Р', 'http://www.numberoneadv.com', 'personal', 'shortcut', 1, 0, '2007-01-15 09:21:02', '2007-01-15 09:21:46', '177bd6bb-665d-cc61-4d82-45ab422290d3');
INSERT INTO `iframes` VALUES ('34161d15-e088-9140-55d1-45ab48ee6769', 'Бакхус', 'http://www.bacchus.bg/', 'personal', 'shortcut', 1, 0, '2007-01-15 09:24:05', '2007-01-15 09:24:05', '177bd6bb-665d-cc61-4d82-45ab422290d3');

-- --------------------------------------------------------

-- 
-- Структура на таблица `import_maps`
-- 

DROP TABLE IF EXISTS `import_maps`;
CREATE TABLE `import_maps` (
  `id` varchar(36) NOT NULL default '',
  `name` varchar(36) NOT NULL default '',
  `source` varchar(36) NOT NULL default '',
  `module` varchar(36) NOT NULL default '',
  `content` blob,
  `has_header` tinyint(1) NOT NULL default '1',
  `deleted` tinyint(1) NOT NULL default '0',
  `date_entered` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `assigned_user_id` varchar(36) default NULL,
  `is_published` varchar(3) NOT NULL default 'no',
  PRIMARY KEY  (`id`),
  KEY `idx_owner_module_name` (`assigned_user_id`,`module`,`name`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `import_maps`
-- 


-- --------------------------------------------------------

-- 
-- Структура на таблица `inbound_email`
-- 

DROP TABLE IF EXISTS `inbound_email`;
CREATE TABLE `inbound_email` (
  `id` varchar(36) NOT NULL default '',
  `deleted` tinyint(1) NOT NULL default '0',
  `date_entered` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_user_id` varchar(36) default NULL,
  `created_by` varchar(36) default NULL,
  `name` varchar(255) default NULL,
  `status` varchar(25) NOT NULL default 'Active',
  `server_url` varchar(100) NOT NULL default '',
  `email_user` varchar(100) NOT NULL default '',
  `email_password` varchar(100) NOT NULL default '',
  `port` int(5) NOT NULL default '0',
  `service` varchar(50) NOT NULL default '',
  `mailbox` varchar(50) NOT NULL default '',
  `delete_seen` tinyint(1) default '0',
  `mailbox_type` varchar(10) default NULL,
  `template_id` varchar(36) default NULL,
  `stored_options` text,
  `group_id` varchar(36) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `inbound_email`
-- 


-- --------------------------------------------------------

-- 
-- Структура на таблица `inbound_email_autoreply`
-- 

DROP TABLE IF EXISTS `inbound_email_autoreply`;
CREATE TABLE `inbound_email_autoreply` (
  `id` varchar(36) NOT NULL default '',
  `deleted` tinyint(1) NOT NULL default '0',
  `date_entered` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `autoreplied_to` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `idx_ie_autoreplied_to` (`autoreplied_to`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `inbound_email_autoreply`
-- 


-- --------------------------------------------------------

-- 
-- Структура на таблица `ink`
-- 

DROP TABLE IF EXISTS `ink`;
CREATE TABLE `ink` (
  `id` varchar(36) NOT NULL default '',
  `date_entered` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `assigned_user_id` varchar(36) default NULL,
  `modified_user_id` varchar(36) default NULL,
  `created_by` varchar(36) default NULL,
  `name` varchar(50) NOT NULL default '',
  `short_symbol` varchar(50) default NULL,
  `show_name` varchar(50) default NULL,
  `type` varchar(50) default NULL,
  `cmyk_type` varchar(50) default NULL,
  `pantone` varchar(50) default NULL,
  `PMS_mix_charge` varchar(50) default NULL,
  `active` varchar(50) default NULL,
  `sortorder` int(11) default NULL,
  `description` text,
  `deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 PACK_KEYS=0;

-- 
-- Дъмп (схема) на данните в таблицата `ink`
-- 

INSERT INTO `ink` VALUES ('c7b4444e-2af8-1970-72e6-46812acdc62f', '2007-06-26 15:01:28', '2007-08-02 17:37:37', '1', '1', '1', 'Син', 'C', NULL, 'CMYK', 'Cyan', NULL, 'on', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 1, NULL, 0);
INSERT INTO `ink` VALUES ('bb2b1cb0-55b9-8261-ab24-468225565659', '2007-06-27 08:54:54', '2007-08-02 17:37:37', '1', '1', '1', 'Жълто', 'Y', NULL, 'CMYK', 'Proc Yellow', NULL, 'off', 'c7b4444e-2af8-1970-72e6-46812acdc62f', NULL, NULL, 0);
INSERT INTO `ink` VALUES ('52d3ab7e-36eb-80dc-866d-46b216b81e73', '2007-08-02 17:36:19', '2007-08-02 17:37:37', '1', '1', '1', 'Червено', 'M', NULL, 'CMYK', 'Magenta', NULL, 'off', 'on', NULL, NULL, 0);
INSERT INTO `ink` VALUES ('43a1e427-3cef-1fce-d9a7-46b2164cbc65', '2007-08-02 17:37:09', '2007-08-02 17:37:37', '1', '1', '1', 'Черно', 'B', NULL, 'CMYK', 'Proc Black', NULL, 'off', 'on', NULL, NULL, 0);

-- --------------------------------------------------------

-- 
-- Структура на таблица `layout`
-- 

DROP TABLE IF EXISTS `layout`;
CREATE TABLE `layout` (
  `id` varchar(36) NOT NULL default '',
  `product_component_id` varchar(36) default NULL,
  `number_lots` int(11) default NULL,
  `number_units` int(11) default NULL,
  `run_style` varchar(36) default NULL,
  `format` varchar(50) default NULL,
  `date_entered` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `assigned_user_id` varchar(36) default NULL,
  `modified_user_id` varchar(36) default NULL,
  `created_by` varchar(36) default NULL,
  `name` varchar(50) default NULL,
  `signleprice_a` float default NULL,
  `singleprice_b` float default NULL,
  `price_a` float default NULL,
  `price_b` float default NULL,
  `description` text,
  `deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 PACK_KEYS=0;

-- 
-- Дъмп (схема) на данните в таблицата `layout`
-- 

INSERT INTO `layout` VALUES ('4b7352bb-c0cf-a582-9c01-46b9a7aca1e6', '598457bc-776a-9154-9b63-4652c9ce58cb', 2, 2, '1', 'GTO', '2007-08-08 11:21:01', '2007-08-08 11:22:04', NULL, NULL, '1', 'Предпечат-Каталог "Пресфото"-2-3', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `layout` VALUES ('1b16ea32-5c86-9dbe-ce57-46b826b156b1', '598457bc-776a-9154-9b63-4652c9ce58cb', 2, 2, '2', 'GTO', '2007-08-07 08:00:48', '2007-08-07 08:00:48', NULL, NULL, '1', 'Предпечат-Каталог "Пресфото"-2-2', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `layout` VALUES ('a845814c-3524-5da9-64d1-46b824f16c13', '598457bc-776a-9154-9b63-4652c9ce58cb', 8, NULL, '1', 'GTO', '2007-08-07 07:52:17', '2007-08-07 07:52:17', NULL, NULL, '1', 'Предпечат-Каталог "Пресфото"-2-2', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `layout` VALUES ('b0b9a5b0-1736-8d2c-1244-46b824408125', '598457bc-776a-9154-9b63-4652c9ce58cb', 10, NULL, '1', 'GTO', '2007-08-07 07:50:18', '2007-08-07 07:52:17', NULL, NULL, '1', 'Предпечат-Каталог "Пресфото"-2-1', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `layout` VALUES ('6f46a160-b003-6f53-b2a7-46c57fd70f65', '6508c5a0-0630-b9c2-49df-46c57f37ab0c', 2, NULL, '1', NULL, '2007-08-17 11:01:01', '2007-08-17 11:01:01', NULL, NULL, '1', 'Предпечат-Първо издание-1-1', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `layout` VALUES ('cb9e2cf4-d514-5911-bd2e-46c93e3aacfe', 'c165910b-df60-1b59-1d45-46c93ee2e59d', 1, NULL, '1', NULL, '2007-08-20 07:09:27', '2007-08-20 07:09:27', NULL, NULL, '1', 'Предпечат-Първо издание-2-1', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `layout` VALUES ('6d4c9593-e648-74e1-9b99-46c944b7683b', '629da741-d120-307b-0f49-46c94438e8c8', 1, NULL, '1', 'GTO', '2007-08-20 07:38:15', '2007-08-20 07:38:15', NULL, NULL, '1', 'Предпечат-Каталог-01-2007-1-1', NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

-- 
-- Структура на таблица `leads`
-- 

DROP TABLE IF EXISTS `leads`;
CREATE TABLE `leads` (
  `id` varchar(36) NOT NULL default '',
  `deleted` tinyint(1) NOT NULL default '0',
  `converted` tinyint(1) NOT NULL default '0',
  `date_entered` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_user_id` varchar(36) default NULL,
  `assigned_user_id` varchar(36) default NULL,
  `created_by` varchar(36) default NULL,
  `salutation` varchar(5) default NULL,
  `first_name` varchar(25) default NULL,
  `last_name` varchar(25) default NULL,
  `title` varchar(100) default NULL,
  `refered_by` varchar(100) default NULL,
  `lead_source` varchar(100) default NULL,
  `lead_source_description` text,
  `status` varchar(100) default NULL,
  `status_description` text,
  `department` varchar(100) default NULL,
  `reports_to_id` varchar(36) default NULL,
  `do_not_call` varchar(3) default '0',
  `phone_home` varchar(25) default NULL,
  `phone_mobile` varchar(25) default NULL,
  `phone_work` varchar(25) default NULL,
  `phone_other` varchar(25) default NULL,
  `phone_fax` varchar(25) default NULL,
  `email1` varchar(100) default NULL,
  `email2` varchar(100) default NULL,
  `email_opt_out` varchar(3) default '0',
  `primary_address_street` varchar(150) default NULL,
  `primary_address_city` varchar(100) default NULL,
  `primary_address_state` varchar(100) default NULL,
  `primary_address_postalcode` varchar(20) default NULL,
  `primary_address_country` varchar(100) default NULL,
  `alt_address_street` varchar(150) default NULL,
  `alt_address_city` varchar(100) default NULL,
  `alt_address_state` varchar(100) default NULL,
  `alt_address_postalcode` varchar(20) default NULL,
  `alt_address_country` varchar(100) default NULL,
  `description` text,
  `account_name` varchar(150) default NULL,
  `account_description` text,
  `contact_id` varchar(36) default NULL,
  `account_id` varchar(36) default NULL,
  `opportunity_id` varchar(36) default NULL,
  `opportunity_name` varchar(255) default NULL,
  `opportunity_amount` varchar(50) default NULL,
  `campaign_id` varchar(36) default NULL,
  `portal_name` varchar(255) default NULL,
  `portal_app` varchar(255) default NULL,
  `invalid_email` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_lead_last_first` (`last_name`,`first_name`,`deleted`),
  KEY `idx_lead_del_stat` (`last_name`,`status`,`deleted`,`first_name`),
  KEY `idx_lead_opp_del` (`opportunity_id`,`deleted`),
  KEY `idx_leads_acct_del` (`account_id`,`deleted`),
  KEY `idx_lead_email1` (`email1`,`deleted`),
  KEY `idx_lead_email2` (`email2`,`deleted`),
  KEY `idx_lead_assigned` (`assigned_user_id`),
  KEY `idx_lead_contact` (`contact_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `leads`
-- 

INSERT INTO `leads` VALUES ('af1c0b06-6741-ef9e-f09c-45cc6745c6b7', 1, 0, '2007-02-09 12:23:37', '2007-02-09 12:23:45', '1', '1', '1', NULL, NULL, 'ttt', NULL, NULL, NULL, NULL, 'New', NULL, NULL, NULL, 'off', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'off', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `leads` VALUES ('46152ecf-8f9a-0736-fbda-468a306ba197', 1, 0, '2007-07-03 11:19:54', '2007-07-03 11:20:30', '1', '1', '1', NULL, NULL, 'gfhgf', NULL, NULL, NULL, NULL, 'New', NULL, NULL, NULL, 'on', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'on', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

-- 
-- Структура на таблица `leads_audit`
-- 

DROP TABLE IF EXISTS `leads_audit`;
CREATE TABLE `leads_audit` (
  `id` varchar(36) NOT NULL default '',
  `parent_id` varchar(36) NOT NULL default '',
  `date_created` datetime default NULL,
  `created_by` varchar(36) default NULL,
  `field_name` varchar(100) default NULL,
  `data_type` varchar(100) default NULL,
  `before_value_string` varchar(255) default NULL,
  `after_value_string` varchar(255) default NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `leads_audit`
-- 


-- --------------------------------------------------------

-- 
-- Структура на таблица `linked_documents`
-- 

DROP TABLE IF EXISTS `linked_documents`;
CREATE TABLE `linked_documents` (
  `id` varchar(36) NOT NULL default '',
  `parent_id` varchar(36) default NULL,
  `parent_type` varchar(25) default NULL,
  `document_id` varchar(36) default NULL,
  `document_revision_id` varchar(36) default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `linked_documents`
-- 


-- --------------------------------------------------------

-- 
-- Структура на таблица `machines`
-- 

DROP TABLE IF EXISTS `machines`;
CREATE TABLE `machines` (
  `id` varchar(36) NOT NULL default '',
  `date_entered` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `assigned_user_id` varchar(36) default NULL,
  `modified_user_id` varchar(36) default NULL,
  `created_by` varchar(36) default NULL,
  `name` varchar(50) NOT NULL default '',
  `category` varchar(36) default NULL,
  `format` varchar(36) default NULL,
  `description` text,
  `deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `machines`
-- 

INSERT INTO `machines` VALUES ('e277abdd-529a-886a-cce4-45e4417266fd', '2007-02-27 14:35:34', '2007-02-27 14:35:34', '1', '1', '1', 'Shinohara', NULL, NULL, NULL, 0);
INSERT INTO `machines` VALUES ('a3b6288c-49d2-bdb2-869e-45e442884a0f', '2007-02-27 14:38:05', '2007-02-27 14:38:05', '1', '1', '1', 'GTO', NULL, NULL, NULL, 0);

-- --------------------------------------------------------

-- 
-- Структура на таблица `materials`
-- 

DROP TABLE IF EXISTS `materials`;
CREATE TABLE `materials` (
  `id` varchar(36) NOT NULL default '',
  `date_entered` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `assigned_user_id` varchar(36) default NULL,
  `modified_user_id` varchar(36) default NULL,
  `pref_supplier_id` varchar(36) default NULL,
  `pref_supplier_name` varchar(50) default NULL,
  `created_by` varchar(36) default NULL,
  `num` varchar(36) NOT NULL default '',
  `type` varchar(255) default NULL,
  `measure` varchar(50) default NULL,
  `num_pref` varchar(3) default NULL,
  `num_suf` int(5) default NULL,
  `category` varchar(50) default NULL,
  `format` varchar(50) default NULL,
  `unit` varchar(10) default NULL,
  `fsize_h` int(11) default NULL,
  `fsize_w` int(11) default NULL,
  `name` varchar(50) NOT NULL default '',
  `description` text,
  `characteristic` varchar(255) default NULL,
  `manufacturer` varchar(255) default NULL,
  `deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `materials`
-- 


-- --------------------------------------------------------

-- 
-- Структура на таблица `materials_relation`
-- 

DROP TABLE IF EXISTS `materials_relation`;
CREATE TABLE `materials_relation` (
  `id` varchar(36) NOT NULL default '',
  `material_id` varchar(36) NOT NULL default '',
  `relation_id` varchar(36) NOT NULL default '',
  `relation_type` varchar(255) NOT NULL default '',
  `deleted` tinyint(1) NOT NULL default '0',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `materials_relation`
-- 


-- --------------------------------------------------------

-- 
-- Структура на таблица `meetings`
-- 

DROP TABLE IF EXISTS `meetings`;
CREATE TABLE `meetings` (
  `id` varchar(36) NOT NULL default '',
  `date_entered` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `assigned_user_id` varchar(36) default NULL,
  `modified_user_id` varchar(36) default NULL,
  `created_by` varchar(36) default NULL,
  `name` varchar(50) default NULL,
  `location` varchar(50) default NULL,
  `duration_hours` int(2) default NULL,
  `duration_minutes` int(2) default NULL,
  `date_start` date default NULL,
  `time_start` time default NULL,
  `date_end` date default NULL,
  `parent_type` varchar(25) default NULL,
  `status` varchar(25) default NULL,
  `parent_id` varchar(36) default NULL,
  `description` text,
  `deleted` tinyint(1) NOT NULL default '0',
  `reminder_time` int(11) default '-1',
  `outlook_id` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_mtg_name` (`name`),
  KEY `idx_meet_par_del` (`parent_id`,`parent_type`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `meetings`
-- 


-- --------------------------------------------------------

-- 
-- Структура на таблица `meetings_contacts`
-- 

DROP TABLE IF EXISTS `meetings_contacts`;
CREATE TABLE `meetings_contacts` (
  `id` varchar(36) NOT NULL default '',
  `meeting_id` varchar(36) default NULL,
  `contact_id` varchar(36) default NULL,
  `required` char(1) default '1',
  `accept_status` varchar(25) default 'none',
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_con_mtg_mtg` (`meeting_id`),
  KEY `idx_con_mtg_con` (`contact_id`),
  KEY `idx_meeting_contact` (`meeting_id`,`contact_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `meetings_contacts`
-- 


-- --------------------------------------------------------

-- 
-- Структура на таблица `meetings_users`
-- 

DROP TABLE IF EXISTS `meetings_users`;
CREATE TABLE `meetings_users` (
  `id` varchar(36) NOT NULL default '',
  `meeting_id` varchar(36) default NULL,
  `user_id` varchar(36) default NULL,
  `required` char(1) default '1',
  `accept_status` varchar(25) default 'none',
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_usr_mtg_mtg` (`meeting_id`),
  KEY `idx_usr_mtg_usr` (`user_id`),
  KEY `idx_meeting_users` (`meeting_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `meetings_users`
-- 


-- --------------------------------------------------------

-- 
-- Структура на таблица `notes`
-- 

DROP TABLE IF EXISTS `notes`;
CREATE TABLE `notes` (
  `id` varchar(36) NOT NULL default '',
  `date_entered` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_user_id` varchar(36) default NULL,
  `created_by` varchar(36) default NULL,
  `name` varchar(255) default NULL,
  `filename` varchar(255) default NULL,
  `file_mime_type` varchar(100) default NULL,
  `parent_type` varchar(25) default NULL,
  `parent_id` varchar(36) default NULL,
  `contact_id` varchar(36) default NULL,
  `portal_flag` tinyint(1) NOT NULL default '0',
  `description` text,
  `deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_note_name` (`name`),
  KEY `idx_notes_parent` (`parent_id`,`parent_type`),
  KEY `idx_note_contact` (`contact_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `notes`
-- 


-- --------------------------------------------------------

-- 
-- Структура на таблица `operations`
-- 

DROP TABLE IF EXISTS `operations`;
CREATE TABLE `operations` (
  `id` varchar(36) NOT NULL default '',
  `date_entered` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `assigned_user_id` varchar(36) default NULL,
  `modified_user_id` varchar(36) default NULL,
  `created_by` varchar(36) default NULL,
  `name` varchar(50) NOT NULL default '',
  `type` varchar(50) default NULL,
  `sp` double default NULL,
  `count` varchar(50) default NULL,
  `startprice` varchar(50) default NULL,
  `coefficient` varchar(50) default NULL,
  `tir` varchar(255) default NULL,
  `kol` varchar(255) default NULL,
  `description` text,
  `deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `operations`
-- 

INSERT INTO `operations` VALUES ('cc2cb632-61a2-bd4f-5e2e-4691f58d5fc6', '2007-07-09 08:44:41', '2007-08-01 16:14:36', '1', '1', '1', 'Книговезане', 'Книговезане', NULL, NULL, NULL, NULL, 'off', 'off', NULL, 0);
INSERT INTO `operations` VALUES ('e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-01 16:46:40', '2007-08-01 16:49:05', '1', '1', '1', 'Лепене', 'Други', 0.02, NULL, NULL, NULL, 'on', 'on', NULL, 0);
INSERT INTO `operations` VALUES ('5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-01 16:48:40', '2007-08-01 16:48:40', '1', '1', '1', 'ВШМ', 'Книговезане', 0.02, NULL, NULL, NULL, 'on', 'on', NULL, 0);
INSERT INTO `operations` VALUES ('2a31ebad-52ef-a8c0-dda8-46b0b9a4cb4a', '2007-08-01 16:49:51', '2007-08-01 16:50:54', '1', '1', '1', 'Опаковане', 'Други', 0, NULL, NULL, NULL, 'on', 'off', NULL, 0);
INSERT INTO `operations` VALUES ('a890ac5d-c429-a03f-a82a-46b0b9a438a1', '2007-08-01 16:50:33', '2007-08-01 16:50:33', '1', '1', '1', 'Индивид. Опаковане', 'Други', 0, NULL, NULL, NULL, 'off', 'off', NULL, 0);

-- --------------------------------------------------------

-- 
-- Структура на таблица `opportunities`
-- 

DROP TABLE IF EXISTS `opportunities`;
CREATE TABLE `opportunities` (
  `id` varchar(36) NOT NULL default '',
  `date_entered` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_user_id` varchar(36) default NULL,
  `assigned_user_id` varchar(36) default NULL,
  `created_by` varchar(36) default NULL,
  `deleted` tinyint(1) NOT NULL default '0',
  `name` varchar(50) default NULL,
  `opportunity_type` varchar(255) default NULL,
  `lead_source` varchar(50) default NULL,
  `amount` double default NULL,
  `amount_backup` varchar(25) default NULL,
  `amount_usdollar` double default NULL,
  `currency_id` varchar(36) default NULL,
  `date_closed` date default NULL,
  `next_step` varchar(100) default NULL,
  `sales_stage` varchar(25) default NULL,
  `probability` double default NULL,
  `description` text,
  PRIMARY KEY  (`id`),
  KEY `idx_opp_name` (`name`),
  KEY `idx_opp_assigned` (`assigned_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `opportunities`
-- 

INSERT INTO `opportunities` VALUES ('c4085e78-f9a8-91e9-8e5c-46cec6b8c370', '2007-08-24 11:53:45', '2007-08-24 11:53:45', '1', '1', '1', 0, 'Сделка 1', NULL, NULL, 1000, NULL, 1000, '-99', '2007-08-24', NULL, 'Prospecting', 10, NULL);

-- --------------------------------------------------------

-- 
-- Структура на таблица `opportunities_audit`
-- 

DROP TABLE IF EXISTS `opportunities_audit`;
CREATE TABLE `opportunities_audit` (
  `id` varchar(36) NOT NULL default '',
  `parent_id` varchar(36) NOT NULL default '',
  `date_created` datetime default NULL,
  `created_by` varchar(36) default NULL,
  `field_name` varchar(100) default NULL,
  `data_type` varchar(100) default NULL,
  `before_value_string` varchar(255) default NULL,
  `after_value_string` varchar(255) default NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `opportunities_audit`
-- 


-- --------------------------------------------------------

-- 
-- Структура на таблица `opportunities_contacts`
-- 

DROP TABLE IF EXISTS `opportunities_contacts`;
CREATE TABLE `opportunities_contacts` (
  `id` varchar(36) NOT NULL default '',
  `contact_id` varchar(36) default NULL,
  `opportunity_id` varchar(36) default NULL,
  `contact_role` varchar(50) default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_con_opp_con` (`contact_id`),
  KEY `idx_con_opp_opp` (`opportunity_id`),
  KEY `idx_opportunities_contacts` (`opportunity_id`,`contact_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `opportunities_contacts`
-- 


-- --------------------------------------------------------

-- 
-- Структура на таблица `paper`
-- 

DROP TABLE IF EXISTS `paper`;
CREATE TABLE `paper` (
  `id` varchar(36) NOT NULL default '',
  `pname` varchar(36) NOT NULL default '',
  `fname` varchar(255) NOT NULL default '',
  `pref_supplier_id` varchar(36) default NULL,
  `pref_supplier_name` varchar(50) default NULL,
  `description` varchar(255) default NULL,
  `format` varchar(50) default NULL,
  `size_h` int(255) default NULL,
  `size_w` int(255) default NULL,
  `weight` int(150) default NULL,
  `mweight` int(150) default NULL,
  `packcount` int(150) default NULL,
  `cutcount` int(150) default NULL,
  `chrome` varchar(10) default NULL,
  `texture` varchar(36) default NULL,
  `absorbtion` varchar(36) default NULL,
  `color` varchar(36) default NULL,
  `side` varchar(36) default NULL,
  `man` varchar(150) default NULL,
  `quality` varchar(36) default NULL,
  `is_active` tinyint(1) default '1',
  `price_on` varchar(36) default NULL,
  `price` float default NULL,
  `price_unit` varchar(36) default NULL,
  `size_unit` varchar(36) default NULL,
  `weight_unit` varchar(36) default NULL,
  `status` varchar(25) default NULL,
  `deleted` tinyint(1) default '0',
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `created_by` varchar(36) NOT NULL default ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `paper`
-- 

INSERT INTO `paper` VALUES ('a8948502-cea9-500a-0d8c-464d6305dfdc', 'Хартия 70x100 - мат - гланц', 'Хартия 70x100 - мат - гланц', '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'К1 Партнерс', NULL, NULL, 70, 100, 90, NULL, 15873, NULL, 'chromed', 'мат', 'absorption2', NULL, NULL, NULL, 'quality1', 0, NULL, NULL, NULL, NULL, 'gram', NULL, 0, '2007-05-18 08:26:06', '2007-07-17 13:04:49', '1');
INSERT INTO `paper` VALUES ('700f965b-a39b-142b-8000-464d6470e92e', 'Chantellor 100', 'Chantellor 100', '5e0b1f19-edac-32da-c0ee-45cf3dd3f612', 'Славей 91', NULL, NULL, 70, 100, 75, NULL, 19048, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'gram', NULL, 0, '2007-05-18 08:30:33', '2007-05-22 16:58:48', '1');
INSERT INTO `paper` VALUES ('a4cb4337-447a-2e72-b569-464d64ac31bf', 'Хартия - Мат - 70х100 -170гр', 'Хартия - Мат - 70х100 -170гр', '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'К1 Партнерс', NULL, NULL, 70, 100, 170, NULL, NULL, NULL, 'chromed', 'мат', 'absorption1', 'color1', 'One-Sided', NULL, 'quality1', 0, NULL, NULL, NULL, NULL, 'gram', NULL, 0, '2007-05-18 08:34:00', '2007-07-23 14:27:07', '1');
INSERT INTO `paper` VALUES ('afdedf2d-1d0d-439f-d9a8-464d656ee6d3', 'Хартия - Мат - 70х100 -300гр', 'Хартия - Мат - 70х100 -300гр', '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'К1 Партнерс', NULL, NULL, 70, 100, 300, NULL, NULL, NULL, NULL, 'мат', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'gram', NULL, 0, '2007-05-18 08:35:55', '2007-05-18 08:36:04', '1');

-- --------------------------------------------------------

-- 
-- Структура на таблица `papers_relation`
-- 

DROP TABLE IF EXISTS `papers_relation`;
CREATE TABLE `papers_relation` (
  `id` varchar(36) NOT NULL default '',
  `paper_id` varchar(36) NOT NULL default '',
  `relation_id` varchar(36) NOT NULL default '',
  `relation_type` varchar(255) NOT NULL default '',
  `deleted` tinyint(1) NOT NULL default '0',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `papers_relation`
-- 

INSERT INTO `papers_relation` VALUES ('a9705ad9-fcec-f675-5583-464d630b8b40', 'a8948502-cea9-500a-0d8c-464d6305dfdc', '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'Suppliers', 0, '0000-00-00 00:00:00');
INSERT INTO `papers_relation` VALUES ('94f1e138-32ff-8abb-4d6c-464d634a1d20', 'a8948502-cea9-500a-0d8c-464d6305dfdc', '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'Suppliers', 0, '0000-00-00 00:00:00');
INSERT INTO `papers_relation` VALUES ('70b7a8e6-2f65-76c3-b827-464d642b61e3', '700f965b-a39b-142b-8000-464d6470e92e', '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'Suppliers', 0, '0000-00-00 00:00:00');
INSERT INTO `papers_relation` VALUES ('a57b3f79-c2bb-30b2-5777-464d6403e01a', 'a4cb4337-447a-2e72-b569-464d64ac31bf', '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'Suppliers', 0, '0000-00-00 00:00:00');
INSERT INTO `papers_relation` VALUES ('38f23bae-e752-b195-2108-464d65b4d7c9', 'a4cb4337-447a-2e72-b569-464d64ac31bf', '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'Suppliers', 0, '0000-00-00 00:00:00');
INSERT INTO `papers_relation` VALUES ('b0800831-09ec-59e6-7d39-464d655ad135', 'afdedf2d-1d0d-439f-d9a8-464d656ee6d3', '', 'Suppliers', 0, '0000-00-00 00:00:00');
INSERT INTO `papers_relation` VALUES ('e9affdf4-ef0f-ddfe-1af8-464d650b2d24', 'afdedf2d-1d0d-439f-d9a8-464d656ee6d3', '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'Suppliers', 0, '0000-00-00 00:00:00');
INSERT INTO `papers_relation` VALUES ('34524fe6-f459-3aca-3189-46532137d550', '700f965b-a39b-142b-8000-464d6470e92e', '5e0b1f19-edac-32da-c0ee-45cf3dd3f612', 'Suppliers', 0, '0000-00-00 00:00:00');
INSERT INTO `papers_relation` VALUES ('a5d2bd44-36d6-8088-92cb-469cbe2b9497', 'a8948502-cea9-500a-0d8c-464d6305dfdc', '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'Suppliers', 0, '0000-00-00 00:00:00');
INSERT INTO `papers_relation` VALUES ('5ca23881-dfa8-e498-8e22-469cbe05c8f2', 'a8948502-cea9-500a-0d8c-464d6305dfdc', '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'Suppliers', 0, '0000-00-00 00:00:00');
INSERT INTO `papers_relation` VALUES ('c888e0d0-dfc6-abe3-45f1-46a4ba4a7e40', 'a4cb4337-447a-2e72-b569-464d64ac31bf', '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'Suppliers', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

-- 
-- Структура на таблица `paperwaste`
-- 

DROP TABLE IF EXISTS `paperwaste`;
CREATE TABLE `paperwaste` (
  `id` varchar(36) NOT NULL default '',
  `date_entered` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `assigned_user_id` varchar(36) default NULL,
  `modified_user_id` varchar(36) default NULL,
  `created_by` varchar(36) default NULL,
  `name` varchar(50) NOT NULL default '',
  `type` varchar(50) default NULL,
  `setup_waste_per_plate` int(11) default NULL,
  `step_amount` int(11) default NULL,
  `pressmachine_id` varchar(36) default NULL,
  `pressmachine_name` varchar(50) default NULL,
  `operation_id` varchar(36) default NULL,
  `operation_name` varchar(50) default NULL,
  `active` varchar(255) default NULL,
  `description` text,
  `deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 PACK_KEYS=0;

-- 
-- Дъмп (схема) на данните в таблицата `paperwaste`
-- 

INSERT INTO `paperwaste` VALUES ('8e7c9439-60a7-c5c2-9953-468e28c1bda4', '2007-07-06 11:34:26', '2007-08-23 07:49:23', '1', '1', '1', 'Макулатура  - ВШМ', 'Others', NULL, 1000, '7709512d-3380-6f6e-a4c0-4688c89520cf', 'GTO', '5111675d-fc3e-ffba-8548-46b0b9743e2c', 'ВШМ', 'on', NULL, 0);
INSERT INTO `paperwaste` VALUES ('174012c1-71cd-ee4a-806c-46b0ba8e4d92', '2007-08-01 16:54:17', '2007-08-23 07:49:46', '1', '1', '1', 'Макулатура  - Лепене', 'Others', NULL, 1000, '7709512d-3380-6f6e-a4c0-4688c89520cf', 'GTO', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', 'Лепене', 'on', NULL, 0);
INSERT INTO `paperwaste` VALUES ('d98ca1bf-5267-f88b-979b-46b0bc63a000', '2007-08-01 17:03:05', '2007-08-23 08:53:46', '1', '1', '1', 'Печат - GTO', 'Press', 40, 1000, '7709512d-3380-6f6e-a4c0-4688c89520cf', 'GTO', NULL, NULL, 'on', NULL, 0);

-- --------------------------------------------------------

-- 
-- Структура на таблица `paperwasteline`
-- 

DROP TABLE IF EXISTS `paperwasteline`;
CREATE TABLE `paperwasteline` (
  `id` varchar(36) NOT NULL default '',
  `paperwaste_id` varchar(36) NOT NULL default '',
  `impressions_number` int(11) NOT NULL default '0',
  `base_waste` float NOT NULL default '0',
  `step_waste` float NOT NULL default '0',
  `deleted` tinyint(1) default '0',
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `created_by` varchar(36) NOT NULL default ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `paperwasteline`
-- 

INSERT INTO `paperwasteline` VALUES ('cbc9166b-5328-0536-4b5f-468e2826689e', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 11000, 100, 100, 1, '2007-07-06 11:34:52', '2007-07-06 12:13:58', '1');
INSERT INTO `paperwasteline` VALUES ('cc281091-4e0d-adf6-541e-468e287b166c', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 21000, 1100, 120, 1, '2007-07-06 11:34:52', '2007-07-06 12:14:02', '1');
INSERT INTO `paperwasteline` VALUES ('35f820a7-e117-1e3b-77da-468e32bfc207', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 1000, 120, 50, 1, '2007-07-06 12:16:16', '2007-07-06 12:21:31', '1');
INSERT INTO `paperwasteline` VALUES ('12b67cd8-8929-3fb1-c5a3-468e327e6e18', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 3000, 220, 45, 1, '2007-07-06 12:17:26', '2007-07-06 12:21:31', '1');
INSERT INTO `paperwasteline` VALUES ('83faa008-bf92-c15e-df45-468e33183942', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 1000, 120, 50, 1, '2007-07-06 12:21:31', '2007-07-06 12:21:43', '1');
INSERT INTO `paperwasteline` VALUES ('8453de6b-77e2-507c-0b56-468e334f9a19', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 3000, 220, 45, 1, '2007-07-06 12:21:31', '2007-07-06 12:21:43', '1');
INSERT INTO `paperwasteline` VALUES ('ba81125d-327c-5ad1-8445-468e3309818a', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 1000, 120, 50, 1, '2007-07-06 12:21:43', '2007-07-06 12:22:18', '1');
INSERT INTO `paperwasteline` VALUES ('badf7b93-b605-0968-f62a-468e33c9385b', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 3000, 220, 45, 1, '2007-07-06 12:21:43', '2007-07-06 12:22:18', '1');
INSERT INTO `paperwasteline` VALUES ('d26af7f5-7625-7cc1-fc88-468e339d4097', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 1000, 120, 50, 1, '2007-07-06 12:22:18', '2007-07-06 12:22:28', '1');
INSERT INTO `paperwasteline` VALUES ('d2cdfb44-d470-3162-2815-468e33ab9889', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 3000, 220, 45, 1, '2007-07-06 12:22:18', '2007-07-06 12:22:28', '1');
INSERT INTO `paperwasteline` VALUES ('d32c49b0-fdb6-98fe-f048-468e33d44196', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 5000, 310, 40, 1, '2007-07-06 12:22:18', '2007-07-06 12:22:28', '1');
INSERT INTO `paperwasteline` VALUES ('479738fb-bb41-7e9b-4ed3-468e347f5f9f', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 1000, 120, 50, 1, '2007-07-06 12:22:28', '2007-07-06 12:25:43', '1');
INSERT INTO `paperwasteline` VALUES ('47f0fc69-9462-89fd-1494-468e343a215a', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 3000, 220, 45, 1, '2007-07-06 12:22:28', '2007-07-06 12:25:43', '1');
INSERT INTO `paperwasteline` VALUES ('4842c8ec-2383-8728-0404-468e34742b1b', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 5000, 310, 40, 1, '2007-07-06 12:22:28', '2007-07-06 12:25:43', '1');
INSERT INTO `paperwasteline` VALUES ('e5b62a12-450f-0ece-3b54-468e3464cc04', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 1000, 120, 50, 1, '2007-07-06 12:25:43', '2007-07-06 12:28:46', '1');
INSERT INTO `paperwasteline` VALUES ('e60bf334-c9e6-0c6b-189f-468e342f2e3b', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 3000, 220, 45, 1, '2007-07-06 12:25:43', '2007-07-06 12:28:46', '1');
INSERT INTO `paperwasteline` VALUES ('e67c0a31-1618-b8c9-3463-468e3464f6b6', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 5000, 310, 40, 1, '2007-07-06 12:25:43', '2007-07-06 12:28:46', '1');
INSERT INTO `paperwasteline` VALUES ('7ec39f99-0262-a469-1571-468e354e0efb', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 1000, 120, 50, 1, '2007-07-06 12:28:46', '2007-07-06 12:32:02', '1');
INSERT INTO `paperwasteline` VALUES ('7f171846-eb94-0e40-cd2b-468e35d2c798', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 3000, 220, 45, 1, '2007-07-06 12:28:46', '2007-07-06 12:32:02', '1');
INSERT INTO `paperwasteline` VALUES ('7f68025b-c122-9470-f64c-468e35d5e919', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 5000, 310, 40, 1, '2007-07-06 12:28:46', '2007-07-06 12:32:02', '1');
INSERT INTO `paperwasteline` VALUES ('4d8411a4-b869-9dd9-0b0a-468e36ef89d2', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 1000, 120, 50, 1, '2007-07-06 12:32:02', '2007-07-06 12:32:11', '1');
INSERT INTO `paperwasteline` VALUES ('4dd99001-5e64-4af7-8711-468e36603da6', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 3000, 220, 45, 1, '2007-07-06 12:32:02', '2007-07-06 12:32:11', '1');
INSERT INTO `paperwasteline` VALUES ('4e32f28e-c66d-9eca-ada1-468e367e94de', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 5000, 310, 40, 1, '2007-07-06 12:32:02', '2007-07-06 12:32:11', '1');
INSERT INTO `paperwasteline` VALUES ('b55626ad-caaa-ddef-89e9-468e368097d5', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 1000, 120, 50, 1, '2007-07-06 12:32:11', '2007-08-01 16:52:46', '1');
INSERT INTO `paperwasteline` VALUES ('b5aa73ce-6943-51e8-3478-468e3659deab', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 3000, 220, 45, 1, '2007-07-06 12:32:11', '2007-08-01 16:52:46', '1');
INSERT INTO `paperwasteline` VALUES ('b5f86ce6-b3e9-e2d5-f19b-468e3665e6f6', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 5000, 310, 40, 1, '2007-07-06 12:32:11', '2007-08-01 16:52:46', '1');
INSERT INTO `paperwasteline` VALUES ('b35d13eb-6051-ad2a-4b03-4692470871f2', 'b1fce05a-3796-4055-c968-469247086b66', 1000, 500, 60, 0, '2007-07-09 14:36:16', '2007-07-09 14:36:16', '1');
INSERT INTO `paperwasteline` VALUES ('b3cb791e-af96-c3c1-b865-4692471bcf92', 'b1fce05a-3796-4055-c968-469247086b66', 5000, 740, 55, 0, '2007-07-09 14:36:16', '2007-07-09 14:36:16', '1');
INSERT INTO `paperwasteline` VALUES ('c048a88f-043f-029d-708a-469248b97e09', 'bee79046-7822-6530-03fe-46924839ac7c', 12313, 123, 123, 0, '2007-07-09 14:39:54', '2007-07-09 14:39:54', '1');
INSERT INTO `paperwasteline` VALUES ('841d1550-5b5c-5f84-4ad9-46b0babf3057', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 1000, 120, 50, 1, '2007-08-01 16:52:46', '2007-08-01 16:54:53', '1');
INSERT INTO `paperwasteline` VALUES ('849a4916-9d2b-7e2b-ff51-46b0ba187569', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 3000, 220, 45, 1, '2007-08-01 16:52:46', '2007-08-01 16:54:53', '1');
INSERT INTO `paperwasteline` VALUES ('8521d284-a755-283c-48b4-46b0ba54fb01', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 5000, 310, 40, 1, '2007-08-01 16:52:46', '2007-08-01 16:54:53', '1');
INSERT INTO `paperwasteline` VALUES ('85997786-e780-a558-e0fb-46b0ba293ff6', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 8000, 430, 35, 1, '2007-08-01 16:52:46', '2007-08-01 16:54:53', '1');
INSERT INTO `paperwasteline` VALUES ('86204674-bd01-0503-d781-46b0ba89d456', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 11000, 535, 30, 1, '2007-08-01 16:52:46', '2007-08-01 16:54:53', '1');
INSERT INTO `paperwasteline` VALUES ('19171032-a5d2-50ea-f984-46b0baa7b7f8', '174012c1-71cd-ee4a-806c-46b0ba8e4d92', 1000, 120, 50, 1, '2007-08-01 16:54:17', '2007-08-20 11:57:10', '1');
INSERT INTO `paperwasteline` VALUES ('199be90e-e8a3-9d48-38e9-46b0ba7c0ac0', '174012c1-71cd-ee4a-806c-46b0ba8e4d92', 3000, 220, 45, 1, '2007-08-01 16:54:17', '2007-08-20 11:57:10', '1');
INSERT INTO `paperwasteline` VALUES ('1a1b4e92-ef3b-5af1-fd0b-46b0ba356925', '174012c1-71cd-ee4a-806c-46b0ba8e4d92', 5000, 310, 40, 1, '2007-08-01 16:54:17', '2007-08-20 11:57:10', '1');
INSERT INTO `paperwasteline` VALUES ('1cc8acbd-4514-e9e8-1d49-46b0ba08ecdb', '174012c1-71cd-ee4a-806c-46b0ba8e4d92', 8000, 430, 35, 1, '2007-08-01 16:54:17', '2007-08-20 11:57:10', '1');
INSERT INTO `paperwasteline` VALUES ('1d39ba43-163d-a137-4d96-46b0ba6783f1', '174012c1-71cd-ee4a-806c-46b0ba8e4d92', 11000, 535, 30, 1, '2007-08-01 16:54:17', '2007-08-20 11:57:10', '1');
INSERT INTO `paperwasteline` VALUES ('78b9ffa2-5134-39b1-019d-46b0ba4c3c07', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 1000, 120, 50, 1, '2007-08-01 16:54:53', '2007-08-20 11:56:04', '1');
INSERT INTO `paperwasteline` VALUES ('792a6f09-5ada-6762-c2d5-46b0bad91862', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 3000, 220, 45, 1, '2007-08-01 16:54:53', '2007-08-20 11:56:04', '1');
INSERT INTO `paperwasteline` VALUES ('79a17094-4947-3029-c16a-46b0bacfb11b', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 5000, 310, 40, 1, '2007-08-01 16:54:53', '2007-08-20 11:56:04', '1');
INSERT INTO `paperwasteline` VALUES ('7a16b79d-9a17-15ea-42e3-46b0bab443e7', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 8000, 430, 35, 1, '2007-08-01 16:54:53', '2007-08-20 11:56:04', '1');
INSERT INTO `paperwasteline` VALUES ('7ac2e80e-2d05-b919-3991-46b0ba29f524', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 11000, 535, 30, 1, '2007-08-01 16:54:53', '2007-08-20 11:56:04', '1');
INSERT INTO `paperwasteline` VALUES ('e3461885-52cd-7630-876d-46b0bc706d3d', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 1000, 150, 50, 1, '2007-08-01 17:03:05', '2007-08-20 11:52:11', '1');
INSERT INTO `paperwasteline` VALUES ('e711ee40-5f72-9678-433d-46b0bc359c42', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 3000, 250, 45, 1, '2007-08-01 17:03:05', '2007-08-20 11:52:11', '1');
INSERT INTO `paperwasteline` VALUES ('e78b154b-e6a8-be60-6045-46b0bc6c8520', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 5000, 340, 40, 1, '2007-08-01 17:03:05', '2007-08-20 11:52:11', '1');
INSERT INTO `paperwasteline` VALUES ('e80211eb-3085-8959-9416-46b0bcb238d6', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 8000, 460, 35, 1, '2007-08-01 17:03:05', '2007-08-20 11:52:11', '1');
INSERT INTO `paperwasteline` VALUES ('e8945948-0f27-73f2-2254-46b0bc0e89d6', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 12000, 600, 30, 1, '2007-08-01 17:03:05', '2007-08-20 11:52:11', '1');
INSERT INTO `paperwasteline` VALUES ('d11ded71-d4ff-7a7d-4be9-46c980e2781d', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 1000, 40, 50, 1, '2007-08-20 11:52:11', '2007-08-21 13:42:07', '1');
INSERT INTO `paperwasteline` VALUES ('d3542073-9eff-03ea-c611-46c98066d634', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 3000, 250, 45, 1, '2007-08-20 11:52:11', '2007-08-21 13:42:07', '1');
INSERT INTO `paperwasteline` VALUES ('d5a29255-5de1-8670-1f88-46c9803764a8', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 5000, 340, 40, 1, '2007-08-20 11:52:11', '2007-08-21 13:42:07', '1');
INSERT INTO `paperwasteline` VALUES ('d7de2604-27ea-5919-d23b-46c980ba893a', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 8000, 460, 35, 1, '2007-08-20 11:52:11', '2007-08-21 13:42:07', '1');
INSERT INTO `paperwasteline` VALUES ('da1aae82-0a11-e49d-040a-46c980e458ec', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 12000, 600, 30, 1, '2007-08-20 11:52:11', '2007-08-21 13:42:07', '1');
INSERT INTO `paperwasteline` VALUES ('e88e1b15-c0ca-1e37-1391-46c98112b072', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 1000, 40, 50, 1, '2007-08-20 11:56:04', '2007-08-23 07:49:23', '1');
INSERT INTO `paperwasteline` VALUES ('eae0ef32-43b2-739d-2941-46c981f732a1', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 3000, 220, 45, 1, '2007-08-20 11:56:04', '2007-08-23 07:49:23', '1');
INSERT INTO `paperwasteline` VALUES ('ed0e7c5a-126f-5702-2625-46c98134cfe0', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 5000, 310, 40, 1, '2007-08-20 11:56:04', '2007-08-23 07:49:23', '1');
INSERT INTO `paperwasteline` VALUES ('ef66174a-ac1b-e7fa-b479-46c98117a1fc', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 8000, 430, 35, 1, '2007-08-20 11:56:04', '2007-08-23 07:49:23', '1');
INSERT INTO `paperwasteline` VALUES ('f1a1c3c7-cb66-4e68-b87c-46c981e3b079', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 11000, 535, 30, 1, '2007-08-20 11:56:05', '2007-08-23 07:49:23', '1');
INSERT INTO `paperwasteline` VALUES ('2df198e0-27d2-277b-7b38-46c9812100b1', '174012c1-71cd-ee4a-806c-46b0ba8e4d92', 1000, 10, 50, 1, '2007-08-20 11:57:10', '2007-08-23 07:49:46', '1');
INSERT INTO `paperwasteline` VALUES ('305e7bea-86ae-2b23-12b0-46c981538dcf', '174012c1-71cd-ee4a-806c-46b0ba8e4d92', 3000, 110, 45, 1, '2007-08-20 11:57:10', '2007-08-23 07:49:46', '1');
INSERT INTO `paperwasteline` VALUES ('32e71a46-ea14-fe44-6dfc-46c9812fa68c', '174012c1-71cd-ee4a-806c-46b0ba8e4d92', 5000, 200, 40, 1, '2007-08-20 11:57:10', '2007-08-23 07:49:46', '1');
INSERT INTO `paperwasteline` VALUES ('354eef1f-fc10-c90b-f3ff-46c9815de94d', '174012c1-71cd-ee4a-806c-46b0ba8e4d92', 8000, 320, 35, 1, '2007-08-20 11:57:10', '2007-08-23 07:49:46', '1');
INSERT INTO `paperwasteline` VALUES ('379d778c-91f9-426e-5551-46c981980407', '174012c1-71cd-ee4a-806c-46b0ba8e4d92', 11000, 425, 30, 1, '2007-08-20 11:57:10', '2007-08-23 07:49:46', '1');
INSERT INTO `paperwasteline` VALUES ('a2e20edc-d03f-9552-8fe9-46caeb1c43b7', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 1000, 40, 10, 1, '2007-08-21 13:42:07', '2007-08-21 13:45:34', '1');
INSERT INTO `paperwasteline` VALUES ('a5220b2c-a169-3723-e737-46caeb8695b1', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 3000, 60, 8, 1, '2007-08-21 13:42:07', '2007-08-21 13:45:34', '1');
INSERT INTO `paperwasteline` VALUES ('a75b8688-2d23-32ae-fec2-46caeba4b089', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 5000, 76, 6, 1, '2007-08-21 13:42:07', '2007-08-21 13:45:34', '1');
INSERT INTO `paperwasteline` VALUES ('a993adaf-b7be-0df2-e4ed-46caeb2f8241', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 8000, 94, 4, 1, '2007-08-21 13:42:07', '2007-08-21 13:45:34', '1');
INSERT INTO `paperwasteline` VALUES ('3c5386e3-1bf6-a9da-09f8-46caece7e08c', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 1000, 0, 10, 1, '2007-08-21 13:45:34', '2007-08-21 13:46:25', '1');
INSERT INTO `paperwasteline` VALUES ('3e8f9d63-9711-c63e-0194-46caec80698f', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 3000, 20, 8, 1, '2007-08-21 13:45:34', '2007-08-21 13:46:25', '1');
INSERT INTO `paperwasteline` VALUES ('410d4800-be5d-9b1a-aab5-46caec4cef33', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 5000, 36, 6, 1, '2007-08-21 13:45:34', '2007-08-21 13:46:25', '1');
INSERT INTO `paperwasteline` VALUES ('4359ad3e-5ba6-dff6-1cf7-46caec374d7a', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 8000, 54, 4, 1, '2007-08-21 13:45:34', '2007-08-21 13:46:25', '1');
INSERT INTO `paperwasteline` VALUES ('449c1aea-bd06-dbec-6e61-46caecb2e394', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 1000, 10, 10, 1, '2007-08-21 13:46:25', '2007-08-21 13:55:22', '1');
INSERT INTO `paperwasteline` VALUES ('46f88683-3de4-5a75-818a-46caec171424', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 3000, 30, 8, 1, '2007-08-21 13:46:25', '2007-08-21 13:55:22', '1');
INSERT INTO `paperwasteline` VALUES ('493c2f66-0ad6-3363-f985-46caec509a50', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 5000, 46, 6, 1, '2007-08-21 13:46:25', '2007-08-21 13:55:22', '1');
INSERT INTO `paperwasteline` VALUES ('4b7e5525-d013-2b3f-84bf-46caec24bfda', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 8000, 64, 4, 1, '2007-08-21 13:46:25', '2007-08-21 13:55:22', '1');
INSERT INTO `paperwasteline` VALUES ('2536490c-50fb-9ef2-1512-46caeea2ad1d', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 0, 0, 10, 1, '2007-08-21 13:55:22', '2007-08-21 13:57:00', '1');
INSERT INTO `paperwasteline` VALUES ('275ca97a-4e8d-1209-02b4-46caeed62124', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 1000, 10, 10, 1, '2007-08-21 13:55:22', '2007-08-21 13:57:00', '1');
INSERT INTO `paperwasteline` VALUES ('299e90a6-ced0-a3cd-507d-46caee0a7c76', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 3000, 30, 8, 1, '2007-08-21 13:55:22', '2007-08-21 13:57:00', '1');
INSERT INTO `paperwasteline` VALUES ('2be07b8f-173f-76fe-81a9-46caee0ead34', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 5000, 46, 6, 1, '2007-08-21 13:55:22', '2007-08-21 13:57:00', '1');
INSERT INTO `paperwasteline` VALUES ('6e313df3-4664-af9c-2da2-46caeff980a6', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 0, 0, 10, 1, '2007-08-21 13:57:00', '2007-08-21 13:57:46', '1');
INSERT INTO `paperwasteline` VALUES ('704c454e-123d-48af-ba35-46caeffbf740', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 1000, 20, 10, 1, '2007-08-21 13:57:00', '2007-08-21 13:57:46', '1');
INSERT INTO `paperwasteline` VALUES ('728b0fe8-8803-ab69-78b1-46caef6e6f4c', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 3000, 40, 8, 1, '2007-08-21 13:57:00', '2007-08-21 13:57:46', '1');
INSERT INTO `paperwasteline` VALUES ('74bdcc9f-093d-d26a-6961-46caefaa8b3c', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 5000, 56, 6, 1, '2007-08-21 13:57:00', '2007-08-21 13:57:46', '1');
INSERT INTO `paperwasteline` VALUES ('5e611fe9-b860-0506-82b5-46caef7a88b2', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 0, 0, 20, 1, '2007-08-21 13:57:46', '2007-08-21 13:58:55', '1');
INSERT INTO `paperwasteline` VALUES ('6085306c-b8d0-b5b5-b11d-46caef1eeb0d', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 1000, 20, 20, 1, '2007-08-21 13:57:46', '2007-08-21 13:58:55', '1');
INSERT INTO `paperwasteline` VALUES ('62c0d9d0-80dc-2981-4322-46caefa0ad48', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 3000, 60, 8, 1, '2007-08-21 13:57:46', '2007-08-21 13:58:55', '1');
INSERT INTO `paperwasteline` VALUES ('65091b5e-ea7e-4b33-6599-46caefd51fb9', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 5000, 76, 6, 1, '2007-08-21 13:57:46', '2007-08-21 13:58:55', '1');
INSERT INTO `paperwasteline` VALUES ('ee316be8-1523-1c37-de66-46caef9d1dd9', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 0, 0, 20, 1, '2007-08-21 13:58:55', '2007-08-21 13:59:41', '1');
INSERT INTO `paperwasteline` VALUES ('f05351a8-b4d9-d8ab-57cd-46caefb58b66', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 1000, 20, 20, 1, '2007-08-21 13:58:55', '2007-08-21 13:59:41', '1');
INSERT INTO `paperwasteline` VALUES ('f28e84f2-5d8b-cc7a-59a8-46caef9173c3', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 2000, 40, 16, 1, '2007-08-21 13:58:55', '2007-08-21 13:59:41', '1');
INSERT INTO `paperwasteline` VALUES ('a4600e79-618d-b307-f59f-46caef4f235e', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 3000, 56, 12, 1, '2007-08-21 13:58:56', '2007-08-21 13:59:41', '1');
INSERT INTO `paperwasteline` VALUES ('da7a4f93-50d9-56bd-5e3a-46caefc33320', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 0, 0, 20, 1, '2007-08-21 13:59:41', '2007-08-21 14:00:16', '1');
INSERT INTO `paperwasteline` VALUES ('dca0d8a2-2880-14ff-8057-46caef34fa1a', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 1000, 20, 20, 1, '2007-08-21 13:59:41', '2007-08-21 14:00:16', '1');
INSERT INTO `paperwasteline` VALUES ('dee5e771-25bd-8937-11a8-46caef353b8b', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 2000, 40, 16, 1, '2007-08-21 13:59:41', '2007-08-21 14:00:16', '1');
INSERT INTO `paperwasteline` VALUES ('37012693-2475-829a-3eca-46caefcddf7e', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 0, 0, 20, 1, '2007-08-21 14:00:16', '2007-08-21 14:06:17', '1');
INSERT INTO `paperwasteline` VALUES ('39266017-713a-4179-3130-46caef268e12', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 1000, 20, 20, 1, '2007-08-21 14:00:16', '2007-08-21 14:06:17', '1');
INSERT INTO `paperwasteline` VALUES ('3b4a9dce-a7d5-5cab-e9fe-46caeff2a573', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 2000, 40, 16, 1, '2007-08-21 14:00:16', '2007-08-21 14:06:17', '1');
INSERT INTO `paperwasteline` VALUES ('3d8b043b-a4af-46c2-5336-46caefd198fb', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 3000, 56, 12, 1, '2007-08-21 14:00:16', '2007-08-21 14:06:17', '1');
INSERT INTO `paperwasteline` VALUES ('39960134-6a95-4924-99d2-46caf11dc8fb', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 1000, 10, 10, 1, '2007-08-21 14:06:17', '2007-08-21 14:08:06', '1');
INSERT INTO `paperwasteline` VALUES ('3bd51dff-f1ce-fd32-0d33-46caf1eb7543', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 4000, 40, 9, 1, '2007-08-21 14:06:17', '2007-08-21 14:08:06', '1');
INSERT INTO `paperwasteline` VALUES ('3e17a596-1718-605b-9a6f-46caf1912e2a', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 6000, 58, 8, 1, '2007-08-21 14:06:17', '2007-08-21 14:08:06', '1');
INSERT INTO `paperwasteline` VALUES ('40553b83-f302-54f1-5746-46caf1ebf8fa', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 8000, 74, 7, 1, '2007-08-21 14:06:17', '2007-08-21 14:08:06', '1');
INSERT INTO `paperwasteline` VALUES ('428d0f21-b8f0-962d-f1e9-46caf13f029c', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 10000, 88, 6, 1, '2007-08-21 14:06:17', '2007-08-21 14:08:06', '1');
INSERT INTO `paperwasteline` VALUES ('d18bbd90-7200-cdee-dfbc-46caf13c4c86', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 1000, 11, 10, 1, '2007-08-21 14:08:06', '2007-08-21 14:09:05', '1');
INSERT INTO `paperwasteline` VALUES ('d3ca2665-c316-59bb-118e-46caf1821190', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 5000, 51, 9, 1, '2007-08-21 14:08:06', '2007-08-21 14:09:05', '1');
INSERT INTO `paperwasteline` VALUES ('d601e1e3-3ad1-1dcc-4d1d-46caf14e48c4', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 6000, 60, 8, 1, '2007-08-21 14:08:06', '2007-08-21 14:09:05', '1');
INSERT INTO `paperwasteline` VALUES ('d84654bc-af1e-2bf7-d352-46caf18c3ba1', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 8000, 76, 7, 1, '2007-08-21 14:08:06', '2007-08-21 14:09:05', '1');
INSERT INTO `paperwasteline` VALUES ('da80e6ce-3f29-ef2e-ee7c-46caf1995c78', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 10000, 90, 6, 1, '2007-08-21 14:08:06', '2007-08-21 14:09:05', '1');
INSERT INTO `paperwasteline` VALUES ('1bc82ec2-75f4-8bb9-65ba-46caf25c7c4d', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 1000, 10, 11, 1, '2007-08-21 14:09:05', '2007-08-21 14:10:08', '1');
INSERT INTO `paperwasteline` VALUES ('1e05bddf-ed0e-a0bd-4486-46caf24c5eb7', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 5000, 54, 10, 1, '2007-08-21 14:09:05', '2007-08-21 14:10:08', '1');
INSERT INTO `paperwasteline` VALUES ('204826f4-4c61-d41b-c461-46caf2ede54f', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 6000, 64, 9, 1, '2007-08-21 14:09:05', '2007-08-21 14:10:08', '1');
INSERT INTO `paperwasteline` VALUES ('22894517-74f3-e357-7c80-46caf220815b', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 8000, 82, 8, 1, '2007-08-21 14:09:05', '2007-08-21 14:10:08', '1');
INSERT INTO `paperwasteline` VALUES ('24c6d2a3-7eaf-55ad-478c-46caf2971982', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 10000, 98, 7, 1, '2007-08-21 14:09:05', '2007-08-21 14:10:08', '1');
INSERT INTO `paperwasteline` VALUES ('51d277e3-aae0-9a11-f438-46caf2965c0a', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 1000, 10, 11, 1, '2007-08-21 14:10:08', '2007-08-23 07:48:41', '1');
INSERT INTO `paperwasteline` VALUES ('5404c1d3-5a4f-5f4e-57ff-46caf294db86', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 5000, 54, 10, 1, '2007-08-21 14:10:08', '2007-08-23 07:48:41', '1');
INSERT INTO `paperwasteline` VALUES ('562f2b55-bb4c-f1f0-c31c-46caf2bb5b44', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 6000, 64, 9, 1, '2007-08-21 14:10:08', '2007-08-23 07:48:41', '1');
INSERT INTO `paperwasteline` VALUES ('58782a76-83b3-75af-a843-46caf2dda2a2', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 7000, 73, 8, 1, '2007-08-21 14:10:08', '2007-08-23 07:48:41', '1');
INSERT INTO `paperwasteline` VALUES ('5aaf84f9-a625-d9a3-5ca0-46caf230dea7', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 8000, 81, 7, 1, '2007-08-21 14:10:08', '2007-08-23 07:48:41', '1');
INSERT INTO `paperwasteline` VALUES ('5cf27676-3c4c-3944-330b-46caf20fa99c', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 10000, 95, 6, 1, '2007-08-21 14:10:08', '2007-08-23 07:48:41', '1');
INSERT INTO `paperwasteline` VALUES ('e63eda8b-c5b9-b86c-f950-46cd3b1b2064', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 1000, 10, 11, 1, '2007-08-23 07:48:41', '2007-08-23 08:35:13', '1');
INSERT INTO `paperwasteline` VALUES ('e8759dd3-08be-e5e7-2611-46cd3b951a97', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 5000, 54, 10, 1, '2007-08-23 07:48:41', '2007-08-23 08:35:13', '1');
INSERT INTO `paperwasteline` VALUES ('eab30471-d7aa-71bf-b40f-46cd3b9a1717', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 6000, 64, 9, 1, '2007-08-23 07:48:41', '2007-08-23 08:35:13', '1');
INSERT INTO `paperwasteline` VALUES ('ecdeef14-0ad2-4923-b758-46cd3b172dd4', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 7000, 73, 8, 1, '2007-08-23 07:48:41', '2007-08-23 08:35:13', '1');
INSERT INTO `paperwasteline` VALUES ('ef2bf61e-5f2c-ada0-869e-46cd3bf4b208', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 8000, 81, 7, 1, '2007-08-23 07:48:41', '2007-08-23 08:35:13', '1');
INSERT INTO `paperwasteline` VALUES ('f15b5fde-4aa0-79d7-8f93-46cd3bab4b36', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 10000, 95, 6, 1, '2007-08-23 07:48:41', '2007-08-23 08:35:13', '1');
INSERT INTO `paperwasteline` VALUES ('590ff3c9-b2ad-6189-613e-46cd3c692655', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 1000, 40, 50, 0, '2007-08-23 07:49:23', '2007-08-23 07:49:23', '1');
INSERT INTO `paperwasteline` VALUES ('5b6828ea-9f23-c89d-01f8-46cd3c64521c', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 3000, 220, 45, 0, '2007-08-23 07:49:23', '2007-08-23 07:49:23', '1');
INSERT INTO `paperwasteline` VALUES ('5d9fe6f5-37b3-d296-eede-46cd3c9e9b13', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 5000, 310, 40, 0, '2007-08-23 07:49:23', '2007-08-23 07:49:23', '1');
INSERT INTO `paperwasteline` VALUES ('5fda4453-1591-4a1d-886f-46cd3cd30a40', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 8000, 430, 35, 0, '2007-08-23 07:49:23', '2007-08-23 07:49:23', '1');
INSERT INTO `paperwasteline` VALUES ('62158528-5053-f0cd-7bf5-46cd3cfeb8c6', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 11000, 535, 30, 0, '2007-08-23 07:49:23', '2007-08-23 07:49:23', '1');
INSERT INTO `paperwasteline` VALUES ('2e21ecdb-a087-daaa-6b4e-46cd3c4ee61f', '174012c1-71cd-ee4a-806c-46b0ba8e4d92', 1000, 10, 50, 0, '2007-08-23 07:49:46', '2007-08-23 07:49:46', '1');
INSERT INTO `paperwasteline` VALUES ('305de2ff-a956-a5d5-d4e8-46cd3c042fe3', '174012c1-71cd-ee4a-806c-46b0ba8e4d92', 3000, 110, 45, 0, '2007-08-23 07:49:46', '2007-08-23 07:49:46', '1');
INSERT INTO `paperwasteline` VALUES ('32add6d6-83d3-6538-5137-46cd3c7f7d7b', '174012c1-71cd-ee4a-806c-46b0ba8e4d92', 5000, 200, 40, 0, '2007-08-23 07:49:46', '2007-08-23 07:49:46', '1');
INSERT INTO `paperwasteline` VALUES ('34ee252b-e662-7655-6af0-46cd3cd85e86', '174012c1-71cd-ee4a-806c-46b0ba8e4d92', 8000, 320, 35, 0, '2007-08-23 07:49:46', '2007-08-23 07:49:46', '1');
INSERT INTO `paperwasteline` VALUES ('3728b043-4ea0-92d8-f87f-46cd3c3dc323', '174012c1-71cd-ee4a-806c-46b0ba8e4d92', 11000, 425, 30, 0, '2007-08-23 07:49:46', '2007-08-23 07:49:46', '1');
INSERT INTO `paperwasteline` VALUES ('9672c124-641c-d92d-45a5-46cd46e01d3f', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 1000, 10, 11, 1, '2007-08-23 08:35:13', '2007-08-23 08:53:46', '1');
INSERT INTO `paperwasteline` VALUES ('98be0ec7-a576-c470-fad2-46cd46e4103d', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 5000, 54, 10, 1, '2007-08-23 08:35:13', '2007-08-23 08:53:46', '1');
INSERT INTO `paperwasteline` VALUES ('9af18523-8368-0c24-b4dd-46cd46e15214', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 6000, 64, 9, 1, '2007-08-23 08:35:13', '2007-08-23 08:53:46', '1');
INSERT INTO `paperwasteline` VALUES ('9d1f814c-291c-3c3d-5ca4-46cd460fbd79', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 7000, 73, 8, 1, '2007-08-23 08:35:13', '2007-08-23 08:53:46', '1');
INSERT INTO `paperwasteline` VALUES ('9f49018a-4a00-f379-ac32-46cd46c0fb2a', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 8000, 81, 7, 1, '2007-08-23 08:35:13', '2007-08-23 08:53:46', '1');
INSERT INTO `paperwasteline` VALUES ('a1776391-7f7c-10d6-93da-46cd46e2d28f', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 10000, 95, 6, 1, '2007-08-23 08:35:13', '2007-08-23 08:53:46', '1');
INSERT INTO `paperwasteline` VALUES ('106809f9-1c62-fdd4-4cc9-46cd4b786beb', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 1000, 10, 11, 0, '2007-08-23 08:53:47', '2007-08-23 08:53:47', '1');
INSERT INTO `paperwasteline` VALUES ('33950ee4-de2b-0004-e545-46cd4b0664d4', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 5000, 54, 10, 0, '2007-08-23 08:53:47', '2007-08-23 08:53:47', '1');
INSERT INTO `paperwasteline` VALUES ('56310624-bb1f-37a7-9327-46cd4bad6996', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 6000, 64, 9, 0, '2007-08-23 08:53:47', '2007-08-23 08:53:47', '1');
INSERT INTO `paperwasteline` VALUES ('79a10c45-4dcf-aa8b-03d6-46cd4b8f3369', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 7000, 73, 8, 0, '2007-08-23 08:53:47', '2007-08-23 08:53:47', '1');
INSERT INTO `paperwasteline` VALUES ('9f1008ee-2daa-576d-29e5-46cd4baa95e6', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 8000, 81, 7, 0, '2007-08-23 08:53:47', '2007-08-23 08:53:47', '1');
INSERT INTO `paperwasteline` VALUES ('c26a0df6-9d12-0c34-0f04-46cd4b6a90fe', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 10000, 95, 6, 0, '2007-08-23 08:53:47', '2007-08-23 08:53:47', '1');

-- --------------------------------------------------------

-- 
-- Структура на таблица `press`
-- 

DROP TABLE IF EXISTS `press`;
CREATE TABLE `press` (
  `id` varchar(36) NOT NULL default '',
  `date_entered` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `assigned_user_id` varchar(36) default NULL,
  `modified_user_id` varchar(36) default NULL,
  `created_by` varchar(36) default NULL,
  `name` varchar(50) NOT NULL default '',
  `pressmachine_name` varchar(50) default NULL,
  `pressmachine_id` varchar(36) default NULL,
  `description` text,
  `deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 PACK_KEYS=0;

-- 
-- Дъмп (схема) на данните в таблицата `press`
-- 

INSERT INTO `press` VALUES ('588c855b-aca5-030f-d50d-46b9a7c47772', '2007-08-08 11:21:01', '2007-08-08 11:21:01', NULL, '1', '1', '', 'GTO', '7709512d-3380-6f6e-a4c0-4688c89520cf', NULL, 1);
INSERT INTO `press` VALUES ('1c7ef3f2-7652-2f25-4ac7-46b826160705', '2007-08-07 08:00:48', '2007-08-07 08:00:48', NULL, '1', '1', '', 'GTO', '7709512d-3380-6f6e-a4c0-4688c89520cf', NULL, 0);
INSERT INTO `press` VALUES ('a9a469e2-e4eb-5dc9-bab7-46b824980d5c', '2007-08-07 07:52:17', '2007-08-07 07:52:17', NULL, '1', '1', '', 'GTO', '7709512d-3380-6f6e-a4c0-4688c89520cf', NULL, 0);
INSERT INTO `press` VALUES ('b2188c74-f295-5f45-ea45-46b82443ee06', '2007-08-07 07:50:18', '2007-08-07 07:50:18', NULL, '1', '1', '', 'GTO', '7709512d-3380-6f6e-a4c0-4688c89520cf', NULL, 1);
INSERT INTO `press` VALUES ('7c3cd850-d52f-2960-85b8-46c57ff5fbe6', '2007-08-17 11:01:01', '2007-08-17 11:01:01', NULL, '1', '1', '', NULL, NULL, NULL, 0);
INSERT INTO `press` VALUES ('d928d96d-9b28-28c5-718d-46c93eb04d48', '2007-08-20 07:09:27', '2007-08-20 07:09:27', NULL, '1', '1', '', NULL, NULL, NULL, 0);
INSERT INTO `press` VALUES ('765b695f-77ae-09ea-539a-46c944ba2db9', '2007-08-20 07:38:15', '2007-08-20 07:38:15', NULL, '1', '1', '', 'GTO', '7709512d-3380-6f6e-a4c0-4688c89520cf', NULL, 0);

-- --------------------------------------------------------

-- 
-- Структура на таблица `pressline`
-- 

DROP TABLE IF EXISTS `pressline`;
CREATE TABLE `pressline` (
  `id` varchar(36) NOT NULL default '',
  `component_id` varchar(36) NOT NULL default '',
  `date_entered` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `assigned_user_id` varchar(36) default NULL,
  `modified_user_id` varchar(36) default NULL,
  `created_by` varchar(36) default NULL,
  `layout_name` varchar(50) default NULL,
  `press_id` varchar(36) default NULL,
  `layout_id` varchar(50) default NULL,
  `part` varchar(255) default NULL,
  `deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 PACK_KEYS=0;

-- 
-- Дъмп (схема) на данните в таблицата `pressline`
-- 

INSERT INTO `pressline` VALUES ('58e06185-57f8-87d0-678d-46b9a79206f2', '598457bc-776a-9154-9b63-4652c9ce58cb', '2007-08-08 11:21:01', '2007-08-08 11:21:01', NULL, NULL, '1', 'Предпечат-Каталог "Пресфото"-2-3', '588c855b-aca5-030f-d50d-46b9a7c47772', '4b7352bb-c0cf-a582-9c01-46b9a7aca1e6', '100', 1);
INSERT INTO `pressline` VALUES ('1cd17ff5-436d-2c25-883c-46b8260297ee', '598457bc-776a-9154-9b63-4652c9ce58cb', '2007-08-07 08:00:48', '2007-08-07 08:00:48', NULL, NULL, '1', 'Предпечат-Каталог "Пресфото"-2-2', '1c7ef3f2-7652-2f25-4ac7-46b826160705', '1b16ea32-5c86-9dbe-ce57-46b826b156b1', '100', 0);
INSERT INTO `pressline` VALUES ('a9f49ac7-fb6e-517f-6a57-46b82416dd5d', '598457bc-776a-9154-9b63-4652c9ce58cb', '2007-08-07 07:52:17', '2007-08-07 07:52:17', NULL, NULL, '1', 'Предпечат-Каталог "Пресфото"-2-2', 'a9a469e2-e4eb-5dc9-bab7-46b824980d5c', 'a845814c-3524-5da9-64d1-46b824f16c13', '100', 0);
INSERT INTO `pressline` VALUES ('b269a600-41da-4940-772e-46b824aff8d0', '', '2007-08-07 07:50:18', '2007-08-07 07:50:18', NULL, NULL, '1', 'Предпечат-Каталог "Пресфото"-2-1', 'b2188c74-f295-5f45-ea45-46b82443ee06', 'b0b9a5b0-1736-8d2c-1244-46b824408125', '100', 1);
INSERT INTO `pressline` VALUES ('7df8933b-69cf-22a9-67cf-46c57fe68b63', '6508c5a0-0630-b9c2-49df-46c57f37ab0c', '2007-08-17 11:01:01', '2007-08-17 11:01:01', NULL, NULL, '1', 'Предпечат-Първо издание-1-1', '7c3cd850-d52f-2960-85b8-46c57ff5fbe6', '6f46a160-b003-6f53-b2a7-46c57fd70f65', '100', 0);
INSERT INTO `pressline` VALUES ('db12b9ec-5d4d-cf4c-1386-46c93e105a35', 'c165910b-df60-1b59-1d45-46c93ee2e59d', '2007-08-20 07:09:27', '2007-08-20 07:09:27', NULL, NULL, '1', 'Предпечат-Първо издание-2-1', 'd928d96d-9b28-28c5-718d-46c93eb04d48', 'cb9e2cf4-d514-5911-bd2e-46c93e3aacfe', '100', 0);
INSERT INTO `pressline` VALUES ('7a3a84a0-b244-3031-681b-46c944208851', '629da741-d120-307b-0f49-46c94438e8c8', '2007-08-20 07:38:15', '2007-08-20 07:38:15', NULL, NULL, '1', 'Предпечат-Каталог-01-2007-1-1', '765b695f-77ae-09ea-539a-46c944ba2db9', '6d4c9593-e648-74e1-9b99-46c944b7683b', '100', 0);

-- --------------------------------------------------------

-- 
-- Структура на таблица `pressmachine`
-- 

DROP TABLE IF EXISTS `pressmachine`;
CREATE TABLE `pressmachine` (
  `id` varchar(36) NOT NULL default '',
  `date_entered` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `assigned_user_id` varchar(36) default NULL,
  `modified_user_id` varchar(36) default NULL,
  `created_by` varchar(36) default NULL,
  `name` varchar(50) NOT NULL default '',
  `model` varchar(50) default NULL,
  `manufacturer` varchar(50) default NULL,
  `gripper` varchar(50) default NULL,
  `speed` varchar(50) default NULL,
  `printing_units` int(11) default NULL,
  `active` varchar(255) default NULL,
  `sortorder` int(11) default NULL,
  `s_x` int(11) default NULL,
  `s_y` float default NULL,
  `s_f` varchar(50) default NULL,
  `m_x` float default NULL,
  `m_y` float default NULL,
  `m_f` varchar(50) default NULL,
  `mp_x` float default NULL,
  `mp_y` float default NULL,
  `mp_f` varchar(50) default NULL,
  `description` text,
  `deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 PACK_KEYS=0;

-- 
-- Дъмп (схема) на данните в таблицата `pressmachine`
-- 

INSERT INTO `pressmachine` VALUES ('7709512d-3380-6f6e-a4c0-4688c89520cf', '2007-07-02 09:42:49', '2007-07-16 07:02:19', '1', '1', '1', 'GTO', 'GTO', NULL, '0', '10000', 4, 'on', 1, 35, 50, 'GTO', 35, 50, 'GTO', 35, 50, 'GTO', NULL, 0);
INSERT INTO `pressmachine` VALUES ('aa750713-245a-38cc-b436-4688fc384385', '2007-07-02 13:23:36', '2007-07-03 14:36:36', '1', '1', '1', 'Shinohara', 'Shinohara', NULL, '0', '10000', 4, 'off', 2, 50, 70, 'Shi', 50, 70, 'Shi', 50, 70, 'Shi', NULL, 0);
INSERT INTO `pressmachine` VALUES ('4aad5a44-19be-eac8-73d0-4689fb4b3e87', '2007-07-03 07:31:05', '2007-07-03 07:49:36', '1', '1', '1', 'M1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Shi', NULL, NULL, 'Shi', NULL, NULL, 'Shi', NULL, 1);

-- --------------------------------------------------------

-- 
-- Структура на таблица `presspricelist`
-- 

DROP TABLE IF EXISTS `presspricelist`;
CREATE TABLE `presspricelist` (
  `id` varchar(36) NOT NULL default '',
  `date_entered` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `assigned_user_id` varchar(36) default NULL,
  `modified_user_id` varchar(36) default NULL,
  `created_by` varchar(36) default NULL,
  `name` varchar(50) NOT NULL default '',
  `type` varchar(50) default NULL,
  `inks_number` int(11) default NULL,
  `step_amount` int(11) default NULL,
  `pressmachine_id` varchar(36) default NULL,
  `pressmachine_name` varchar(50) default NULL,
  `active` varchar(255) default NULL,
  `description` text,
  `deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 PACK_KEYS=0;

-- 
-- Дъмп (схема) на данните в таблицата `presspricelist`
-- 

INSERT INTO `presspricelist` VALUES ('3be821b4-c77c-5060-fa02-468a4021c31c', '2007-07-03 12:28:11', '2007-07-04 08:27:24', '1', '1', '1', 'Тарифа 1', '1', 4, 1000, '7709512d-3380-6f6e-a4c0-4688c89520cf', 'GTO', 'on', NULL, 1);
INSERT INTO `presspricelist` VALUES ('d1dca569-e674-acf1-44c1-468a5bfa63d6', '2007-07-03 14:22:11', '2007-07-04 08:27:24', '1', '1', '1', 'Alphaprint', '1', 4, 1000, '7709512d-3380-6f6e-a4c0-4688c89520cf', 'GTO', 'on', NULL, 1);
INSERT INTO `presspricelist` VALUES ('aa5cbdcf-2dbe-2b1b-f2a4-468b4f57bb72', '2007-07-04 07:43:10', '2007-07-04 08:27:24', '1', '1', '1', 'fssf', NULL, NULL, NULL, NULL, NULL, 'off', NULL, 1);
INSERT INTO `presspricelist` VALUES ('62fe0807-8d0e-434d-8e4c-468b5287fd86', '2007-07-04 07:53:43', '2007-07-04 08:27:24', '1', '1', '1', 'fssf', NULL, NULL, NULL, NULL, NULL, 'off', NULL, 1);
INSERT INTO `presspricelist` VALUES ('b57d70ea-f97d-1fd1-a156-468b54683a1a', '2007-07-04 08:03:40', '2007-07-04 08:27:24', '1', '1', '1', 'fssf', NULL, NULL, NULL, NULL, NULL, 'off', NULL, 1);
INSERT INTO `presspricelist` VALUES ('7409de8a-f143-b3a0-b70c-468b54d37386', '2007-07-04 08:03:58', '2007-07-04 08:27:24', '1', '1', '1', 'fssf', NULL, NULL, NULL, NULL, NULL, 'off', NULL, 1);
INSERT INTO `presspricelist` VALUES ('b9800a8b-cdd3-1678-960b-468b5610b4e9', '2007-07-04 08:11:39', '2007-07-04 11:04:34', '1', '1', '1', 'шжшжшжшж', NULL, NULL, NULL, NULL, NULL, 'off', NULL, 1);
INSERT INTO `presspricelist` VALUES ('20195e8d-9e78-31b2-ca62-468b568c2bed', '2007-07-04 08:12:09', '2007-07-04 08:27:24', '1', '1', '1', 'fssf', NULL, NULL, NULL, NULL, NULL, 'off', NULL, 1);
INSERT INTO `presspricelist` VALUES ('e8f509f5-a41f-2496-b670-468b6c95ef07', '2007-07-04 09:44:49', '2007-07-04 09:46:34', '1', '1', '1', 'Тарифа 1', NULL, NULL, NULL, NULL, NULL, 'off', NULL, 1);
INSERT INTO `presspricelist` VALUES ('d1096c2c-0867-d4e6-131c-468b78ab6ce8', '2007-07-04 10:36:47', '2007-07-05 15:12:44', '1', '1', '1', 'Тарифа 1', 'Периодика', 4, 1000, '7709512d-3380-6f6e-a4c0-4688c89520cf', 'GTO', 'off', NULL, 1);
INSERT INTO `presspricelist` VALUES ('8aba7267-9fa8-3b94-1e1e-468b7f6a51ae', '2007-07-04 11:06:23', '2007-07-05 15:12:44', '1', '1', '1', 'Тарифа 2', 'Книги', 2, 1000, '7709512d-3380-6f6e-a4c0-4688c89520cf', 'GTO', 'on', NULL, 1);
INSERT INTO `presspricelist` VALUES ('e48ba0cb-26c3-b814-72f9-468b967287a1', '2007-07-04 12:46:33', '2007-07-04 14:26:27', '1', '1', '1', '123', NULL, NULL, NULL, NULL, NULL, 'off', NULL, 1);
INSERT INTO `presspricelist` VALUES ('7e5dae4e-6487-a177-2a73-468cfc9429f6', '2007-07-05 14:14:24', '2007-07-05 15:12:44', '1', '1', '1', 'sdasdas', NULL, NULL, NULL, NULL, NULL, 'off', NULL, 1);
INSERT INTO `presspricelist` VALUES ('c76f0881-905c-4dcf-a20f-468cfdf75961', '2007-07-05 14:18:19', '2007-07-05 15:12:44', '1', '1', '1', 'sdasdas', NULL, NULL, NULL, NULL, NULL, 'off', NULL, 1);
INSERT INTO `presspricelist` VALUES ('87d63449-b9c6-b184-d545-468cfe576233', '2007-07-05 14:20:07', '2007-07-05 15:12:44', '1', '1', '1', 'sdasdas', NULL, NULL, NULL, NULL, NULL, 'off', NULL, 1);
INSERT INTO `presspricelist` VALUES ('32afcea7-2a65-efa5-57e9-468cfe42afc1', '2007-07-05 14:23:34', '2007-07-05 15:12:44', '1', '1', '1', 'sdasdas', NULL, NULL, NULL, NULL, NULL, 'off', NULL, 1);
INSERT INTO `presspricelist` VALUES ('f294c657-c9c9-29e6-fa3e-468d01b5c154', '2007-07-05 14:36:01', '2007-07-05 15:12:44', '1', '1', '1', 'sdasdas', NULL, NULL, NULL, NULL, NULL, 'off', NULL, 1);
INSERT INTO `presspricelist` VALUES ('837fbde1-6731-36f0-7d6b-468d02722997', '2007-07-05 14:38:54', '2007-07-05 15:12:44', '1', '1', '1', 'sdasdas', NULL, NULL, NULL, NULL, NULL, 'off', NULL, 1);
INSERT INTO `presspricelist` VALUES ('4e81b370-37cf-dcb3-958b-468d031cf9b9', '2007-07-05 14:42:14', '2007-07-05 15:12:44', '1', '1', '1', 'sdasdas', NULL, NULL, NULL, NULL, NULL, 'off', NULL, 1);
INSERT INTO `presspricelist` VALUES ('2f03d50c-fbb0-929d-b7c1-468d03f41d90', '2007-07-05 14:43:54', '2007-07-05 15:12:44', '1', '1', '1', 'sdasdas', NULL, NULL, NULL, NULL, NULL, 'off', NULL, 1);
INSERT INTO `presspricelist` VALUES ('d70d77d3-3ae7-8308-6a24-468d05688686', '2007-07-05 14:53:07', '2007-07-05 15:12:44', '1', '1', '1', 'sdasdas', NULL, NULL, NULL, NULL, NULL, 'off', NULL, 1);
INSERT INTO `presspricelist` VALUES ('30860e2c-6fdd-2a21-9879-468d06c4f4a0', '2007-07-05 14:54:20', '2007-07-05 15:12:44', '1', '1', '1', 'sdasdas', NULL, NULL, NULL, NULL, NULL, 'off', NULL, 1);
INSERT INTO `presspricelist` VALUES ('983f483d-8af1-9472-601a-468d07c0aed0', '2007-07-05 15:01:25', '2007-08-20 12:01:29', '1', '1', '1', '2 х GTO x BOOK', NULL, 4, 1000, '7709512d-3380-6f6e-a4c0-4688c89520cf', 'GTO', 'on', NULL, 0);
INSERT INTO `presspricelist` VALUES ('4a36090d-b82e-6698-6c10-468dec12d2ec', '2007-07-06 07:19:19', '2007-07-09 14:40:28', '1', '1', '1', 'Тарифа 2', NULL, NULL, 1000, NULL, NULL, 'off', NULL, 1);

-- --------------------------------------------------------

-- 
-- Структура на таблица `pricebooks`
-- 

DROP TABLE IF EXISTS `pricebooks`;
CREATE TABLE `pricebooks` (
  `id` char(36) NOT NULL default '',
  `name` char(255) NOT NULL default '',
  `description` char(255) default NULL,
  `isvalid` tinyint(1) default '0',
  `currency_id` char(36) default NULL,
  `deleted` tinyint(1) default '0',
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `assigned_user_id` char(36) default NULL,
  `created_by` char(36) NOT NULL default ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `pricebooks`
-- 


-- --------------------------------------------------------

-- 
-- Структура на таблица `pricelistlines`
-- 

DROP TABLE IF EXISTS `pricelistlines`;
CREATE TABLE `pricelistlines` (
  `id` varchar(36) NOT NULL default '',
  `pricelist_id` varchar(36) NOT NULL default '',
  `impressions_number` int(11) NOT NULL default '0',
  `base_price` float NOT NULL default '0',
  `step_price` float NOT NULL default '0',
  `deleted` tinyint(1) default '0',
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `created_by` varchar(36) NOT NULL default ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `pricelistlines`
-- 

INSERT INTO `pricelistlines` VALUES ('1a1533d4-05a4-0423-092f-468d166e2f3d', '983f483d-8af1-9472-601a-468d07c0aed0', 1000, 120, 50, 1, '2007-07-05 16:05:25', '2007-07-05 16:05:46', '1');
INSERT INTO `pricelistlines` VALUES ('cd49d13c-0a58-fd93-7aff-468d1695d23f', '983f483d-8af1-9472-601a-468d07c0aed0', 5000, 200, 40, 1, '2007-07-05 16:04:22', '2007-07-05 16:05:25', '1');
INSERT INTO `pricelistlines` VALUES ('bfffdaed-9e88-3249-e29c-468d16d7ad63', '983f483d-8af1-9472-601a-468d07c0aed0', 5000, 200, 40, 1, '2007-07-05 16:04:11', '2007-07-05 16:04:22', '1');
INSERT INTO `pricelistlines` VALUES ('cca432a8-2f0a-c665-a791-468d166a6f3f', '983f483d-8af1-9472-601a-468d07c0aed0', 1000, 120, 50, 1, '2007-07-05 16:04:22', '2007-07-05 16:05:25', '1');
INSERT INTO `pricelistlines` VALUES ('ccfb43d3-6cfd-8a30-d247-468d16fb235e', '983f483d-8af1-9472-601a-468d07c0aed0', 3000, 150, 45, 1, '2007-07-05 16:04:22', '2007-07-05 16:05:25', '1');
INSERT INTO `pricelistlines` VALUES ('bfb2132f-b8d2-3880-6176-468d1694f5f4', '983f483d-8af1-9472-601a-468d07c0aed0', 3000, 150, 45, 1, '2007-07-05 16:04:11', '2007-07-05 16:04:22', '1');
INSERT INTO `pricelistlines` VALUES ('3b625f67-f39c-ab10-2733-468d0be14b44', '983f483d-8af1-9472-601a-468d07c0aed0', 3000, 150, 45, 1, '2007-07-05 15:17:27', '2007-07-05 16:04:11', '1');
INSERT INTO `pricelistlines` VALUES ('3bbaad64-510b-41f7-6ff9-468d0be53386', '983f483d-8af1-9472-601a-468d07c0aed0', 5000, 200, 40, 1, '2007-07-05 15:17:27', '2007-07-05 16:04:11', '1');
INSERT INTO `pricelistlines` VALUES ('bf5aaefc-a53c-7ebe-d974-468d16713db1', '983f483d-8af1-9472-601a-468d07c0aed0', 1000, 120, 50, 1, '2007-07-05 16:04:11', '2007-07-05 16:04:22', '1');
INSERT INTO `pricelistlines` VALUES ('3b01d47f-1967-69dd-a054-468d0b715bfe', '983f483d-8af1-9472-601a-468d07c0aed0', 1000, 120, 50, 1, '2007-07-05 15:17:27', '2007-07-05 16:04:11', '1');
INSERT INTO `pricelistlines` VALUES ('acf866a0-a807-efd2-343c-468d0b3a848e', '983f483d-8af1-9472-601a-468d07c0aed0', 5000, 200, 40, 1, '2007-07-05 15:16:58', '2007-07-05 15:17:27', '1');
INSERT INTO `pricelistlines` VALUES ('aca60372-3428-d869-fe99-468d0b16352a', '983f483d-8af1-9472-601a-468d07c0aed0', 3000, 150, 45, 1, '2007-07-05 15:16:58', '2007-07-05 15:17:27', '1');
INSERT INTO `pricelistlines` VALUES ('ac522d3d-e159-0e2e-ad56-468d0b56864b', '983f483d-8af1-9472-601a-468d07c0aed0', 1000, 120, 50, 1, '2007-07-05 15:16:58', '2007-07-05 15:17:27', '1');
INSERT INTO `pricelistlines` VALUES ('3e9adc92-b0c3-2227-f466-468d0bd4bce4', '983f483d-8af1-9472-601a-468d07c0aed0', 5000, 200, 40, 1, '2007-07-05 15:16:23', '2007-07-05 15:16:58', '1');
INSERT INTO `pricelistlines` VALUES ('3e48eb29-dbb8-7a47-9b90-468d0bec8ef3', '983f483d-8af1-9472-601a-468d07c0aed0', 4000, 180, 42, 1, '2007-07-05 15:16:23', '2007-07-05 15:16:58', '1');
INSERT INTO `pricelistlines` VALUES ('3df3d719-bc7b-76dc-06ef-468d0bfe88bc', '983f483d-8af1-9472-601a-468d07c0aed0', 3000, 160, 45, 1, '2007-07-05 15:16:23', '2007-07-05 15:16:58', '1');
INSERT INTO `pricelistlines` VALUES ('e100fec0-e229-56c1-415b-468d0b965acc', '983f483d-8af1-9472-601a-468d07c0aed0', 5000, 200, 40, 1, '2007-07-05 15:16:14', '2007-07-05 15:16:23', '1');
INSERT INTO `pricelistlines` VALUES ('3da0cb7c-a471-c19d-0107-468d0b0040d9', '983f483d-8af1-9472-601a-468d07c0aed0', 1000, 120, 50, 1, '2007-07-05 15:16:23', '2007-07-05 15:16:58', '1');
INSERT INTO `pricelistlines` VALUES ('e0b2de5b-72ec-1ee3-5014-468d0b8415d7', '983f483d-8af1-9472-601a-468d07c0aed0', 4000, 180, 42, 1, '2007-07-05 15:16:14', '2007-07-05 15:16:23', '1');
INSERT INTO `pricelistlines` VALUES ('e05facb4-822e-a1a9-8a8d-468d0bb9e57c', '983f483d-8af1-9472-601a-468d07c0aed0', 3000, 160, 45, 1, '2007-07-05 15:16:14', '2007-07-05 15:16:23', '1');
INSERT INTO `pricelistlines` VALUES ('dffe59a9-481d-a6c7-9433-468d0bd3239a', '983f483d-8af1-9472-601a-468d07c0aed0', 1000, 120, 50, 1, '2007-07-05 15:16:14', '2007-07-05 15:16:23', '1');
INSERT INTO `pricelistlines` VALUES ('c9d7dcec-a5f4-92f0-c81f-468d0b05c352', '983f483d-8af1-9472-601a-468d07c0aed0', 4000, 180, 42, 1, '2007-07-05 15:15:58', '2007-07-05 15:16:14', '1');
INSERT INTO `pricelistlines` VALUES ('c985e5f0-d653-fad1-85fe-468d0b5b729b', '983f483d-8af1-9472-601a-468d07c0aed0', 1000, 120, 50, 1, '2007-07-05 15:15:58', '2007-07-05 15:16:14', '1');
INSERT INTO `pricelistlines` VALUES ('c9370161-dc6f-6f2f-0c70-468d0b718bd8', '983f483d-8af1-9472-601a-468d07c0aed0', 3000, 160, 45, 1, '2007-07-05 15:15:58', '2007-07-05 15:16:14', '1');
INSERT INTO `pricelistlines` VALUES ('c8e11391-42e8-ab43-2165-468d0baf00ad', '983f483d-8af1-9472-601a-468d07c0aed0', 5000, 200, 40, 1, '2007-07-05 15:15:58', '2007-07-05 15:16:14', '1');
INSERT INTO `pricelistlines` VALUES ('695b056b-0723-68f6-7c1a-468d0b5be8c6', '983f483d-8af1-9472-601a-468d07c0aed0', 4000, 180, 42, 1, '2007-07-05 15:15:16', '2007-07-05 15:15:58', '1');
INSERT INTO `pricelistlines` VALUES ('6909abfe-64c6-b2af-e23c-468d0b0d4f04', '983f483d-8af1-9472-601a-468d07c0aed0', 1000, 120, 50, 1, '2007-07-05 15:15:16', '2007-07-05 15:15:58', '1');
INSERT INTO `pricelistlines` VALUES ('68b3791a-ef53-c97a-036c-468d0b7acf2a', '983f483d-8af1-9472-601a-468d07c0aed0', 3000, 160, 45, 1, '2007-07-05 15:15:16', '2007-07-05 15:15:58', '1');
INSERT INTO `pricelistlines` VALUES ('685d6cc8-5450-d33c-68fa-468d0be76ef7', '983f483d-8af1-9472-601a-468d07c0aed0', 5000, 200, 40, 1, '2007-07-05 15:15:16', '2007-07-05 15:15:58', '1');
INSERT INTO `pricelistlines` VALUES ('d3e75775-5898-83ef-0298-468d0a5df643', '983f483d-8af1-9472-601a-468d07c0aed0', 1000, 120, 50, 1, '2007-07-05 15:11:13', '2007-07-05 15:15:07', '1');
INSERT INTO `pricelistlines` VALUES ('cf50bd9b-07b7-1c7b-a583-468d0a971ab4', '983f483d-8af1-9472-601a-468d07c0aed0', 3000, 160, 45, 1, '2007-07-05 15:11:39', '2007-07-05 15:15:07', '1');
INSERT INTO `pricelistlines` VALUES ('2ddf866a-67fe-ab75-6d24-468d0ab8d584', '983f483d-8af1-9472-601a-468d07c0aed0', 5000, 200, 40, 1, '2007-07-05 15:12:10', '2007-07-05 15:15:07', '1');
INSERT INTO `pricelistlines` VALUES ('eef048f7-bfef-af8c-e48b-468d0a38e252', '983f483d-8af1-9472-601a-468d07c0aed0', 5000, 200, 40, 1, '2007-07-05 15:15:07', '2007-07-05 15:15:16', '1');
INSERT INTO `pricelistlines` VALUES ('ef540057-6be4-379b-32e4-468d0abf5ec0', '983f483d-8af1-9472-601a-468d07c0aed0', 3000, 160, 45, 1, '2007-07-05 15:15:07', '2007-07-05 15:15:16', '1');
INSERT INTO `pricelistlines` VALUES ('efa72dee-ae23-9c6c-7918-468d0a08c558', '983f483d-8af1-9472-601a-468d07c0aed0', 1000, 120, 50, 1, '2007-07-05 15:15:07', '2007-07-05 15:15:16', '1');
INSERT INTO `pricelistlines` VALUES ('eff807df-18eb-2268-bbdb-468d0ada91a8', '983f483d-8af1-9472-601a-468d07c0aed0', 4000, 180, 42, 1, '2007-07-05 15:15:07', '2007-07-05 15:15:16', '1');
INSERT INTO `pricelistlines` VALUES ('4ec21047-91d2-4147-e53f-468d18664871', '983f483d-8af1-9472-601a-468d07c0aed0', 3000, 150, 45, 1, '2007-07-05 16:10:45', '2007-07-05 16:11:18', '1');
INSERT INTO `pricelistlines` VALUES ('4e6f6dd5-f8e7-6134-68f5-468d180988e7', '983f483d-8af1-9472-601a-468d07c0aed0', 1000, 120, 50, 1, '2007-07-05 16:10:45', '2007-07-05 16:11:18', '1');
INSERT INTO `pricelistlines` VALUES ('76d56d79-497c-26fb-1961-468d172c52a1', '983f483d-8af1-9472-601a-468d07c0aed0', 5000, 200, 40, 1, '2007-07-05 16:07:48', '2007-07-05 16:10:45', '1');
INSERT INTO `pricelistlines` VALUES ('7687839d-8e4e-5cbd-d5d0-468d173b3710', '983f483d-8af1-9472-601a-468d07c0aed0', 3000, 150, 45, 1, '2007-07-05 16:07:48', '2007-07-05 16:10:45', '1');
INSERT INTO `pricelistlines` VALUES ('76332ec5-c1af-4d65-4823-468d1757fe8d', '983f483d-8af1-9472-601a-468d07c0aed0', 1000, 120, 50, 1, '2007-07-05 16:07:48', '2007-07-05 16:10:45', '1');
INSERT INTO `pricelistlines` VALUES ('4ca3d03c-f3e4-10b9-9c58-468d1629f389', '983f483d-8af1-9472-601a-468d07c0aed0', 5000, 200, 40, 1, '2007-07-05 16:06:19', '2007-07-05 16:07:48', '1');
INSERT INTO `pricelistlines` VALUES ('4c4e2d8f-7ca5-c6e3-61b1-468d1601ff01', '983f483d-8af1-9472-601a-468d07c0aed0', 3000, 150, 45, 1, '2007-07-05 16:06:19', '2007-07-05 16:07:48', '1');
INSERT INTO `pricelistlines` VALUES ('4bfaee99-33d3-900a-c77c-468d160132cb', '983f483d-8af1-9472-601a-468d07c0aed0', 1000, 120, 50, 1, '2007-07-05 16:06:19', '2007-07-05 16:07:48', '1');
INSERT INTO `pricelistlines` VALUES ('64884539-869f-9c1a-3b21-468d16ef8636', '983f483d-8af1-9472-601a-468d07c0aed0', 5000, 200, 40, 1, '2007-07-05 16:05:46', '2007-07-05 16:06:19', '1');
INSERT INTO `pricelistlines` VALUES ('64395d77-8773-826a-624e-468d1630a9b6', '983f483d-8af1-9472-601a-468d07c0aed0', 3000, 150, 45, 1, '2007-07-05 16:05:46', '2007-07-05 16:06:19', '1');
INSERT INTO `pricelistlines` VALUES ('1ababbca-7183-a54f-b998-468d1681dacf', '983f483d-8af1-9472-601a-468d07c0aed0', 5000, 200, 40, 1, '2007-07-05 16:05:25', '2007-07-05 16:05:46', '1');
INSERT INTO `pricelistlines` VALUES ('63d591ee-8947-2b36-47e5-468d1603227f', '983f483d-8af1-9472-601a-468d07c0aed0', 1000, 120, 50, 1, '2007-07-05 16:05:46', '2007-07-05 16:06:19', '1');
INSERT INTO `pricelistlines` VALUES ('1a69f0a2-59e8-53f9-c9d8-468d162f2612', '983f483d-8af1-9472-601a-468d07c0aed0', 3000, 150, 45, 1, '2007-07-05 16:05:25', '2007-07-05 16:05:46', '1');
INSERT INTO `pricelistlines` VALUES ('4f17dab0-e928-bb34-1e7c-468d18c74bbd', '983f483d-8af1-9472-601a-468d07c0aed0', 5000, 200, 40, 1, '2007-07-05 16:10:45', '2007-07-05 16:11:18', '1');
INSERT INTO `pricelistlines` VALUES ('8626e3d0-1457-2458-81fa-468d18f4b74d', '983f483d-8af1-9472-601a-468d07c0aed0', 1000, 120, 50, 1, '2007-07-05 16:11:18', '2007-07-05 16:12:58', '1');
INSERT INTO `pricelistlines` VALUES ('867942f6-6eee-33b2-6c24-468d1863abca', '983f483d-8af1-9472-601a-468d07c0aed0', 3000, 150, 45, 1, '2007-07-05 16:11:18', '2007-07-05 16:12:58', '1');
INSERT INTO `pricelistlines` VALUES ('86c7a2c4-2d59-3dae-9270-468d18c77037', '983f483d-8af1-9472-601a-468d07c0aed0', 5000, 200, 40, 1, '2007-07-05 16:11:18', '2007-07-05 16:12:58', '1');
INSERT INTO `pricelistlines` VALUES ('1debc7cc-d728-c6e3-a8af-468d18df5f27', '983f483d-8af1-9472-601a-468d07c0aed0', 1000, 120, 50, 1, '2007-07-05 16:12:58', '2007-07-06 06:30:05', '1');
INSERT INTO `pricelistlines` VALUES ('1e3d8815-3994-da93-3f5f-468d18535dea', '983f483d-8af1-9472-601a-468d07c0aed0', 3000, 150, 45, 1, '2007-07-05 16:12:58', '2007-07-06 06:30:05', '1');
INSERT INTO `pricelistlines` VALUES ('1e8a7ca1-b18f-7399-698d-468d18c34f8b', '983f483d-8af1-9472-601a-468d07c0aed0', 5000, 200, 40, 1, '2007-07-05 16:12:58', '2007-07-06 06:30:05', '1');
INSERT INTO `pricelistlines` VALUES ('37664ece-c94a-04f3-727e-468de186a9b6', '983f483d-8af1-9472-601a-468d07c0aed0', 1000, 120, 50, 1, '2007-07-06 06:30:05', '2007-07-06 06:45:47', '1');
INSERT INTO `pricelistlines` VALUES ('37b74037-6e54-00f6-5a0a-468de14855a2', '983f483d-8af1-9472-601a-468d07c0aed0', 3000, 150, 45, 1, '2007-07-06 06:30:05', '2007-07-06 06:45:47', '1');
INSERT INTO `pricelistlines` VALUES ('38081e1b-5120-4896-7b80-468de12a5841', '983f483d-8af1-9472-601a-468d07c0aed0', 5000, 200, 40, 1, '2007-07-06 06:30:05', '2007-07-06 06:45:47', '1');
INSERT INTO `pricelistlines` VALUES ('823e7d1b-bf4b-e914-c25e-468de5cfc5b3', '983f483d-8af1-9472-601a-468d07c0aed0', 1000, 120, 50, 1, '2007-07-06 06:45:47', '2007-07-06 06:46:19', '1');
INSERT INTO `pricelistlines` VALUES ('82a9fec2-a326-9d07-22f9-468de578d0e6', '983f483d-8af1-9472-601a-468d07c0aed0', 3000, 150, 45, 1, '2007-07-06 06:45:47', '2007-07-06 06:46:19', '1');
INSERT INTO `pricelistlines` VALUES ('82faea8a-6180-824d-b917-468de5f54de0', '983f483d-8af1-9472-601a-468d07c0aed0', 5000, 200, 40, 1, '2007-07-06 06:45:47', '2007-07-06 06:46:19', '1');
INSERT INTO `pricelistlines` VALUES ('835d13e6-f9c2-9e93-6576-468de5e7f2ae', '983f483d-8af1-9472-601a-468d07c0aed0', 7000, 200, 35, 1, '2007-07-06 06:45:47', '2007-07-06 06:46:19', '1');
INSERT INTO `pricelistlines` VALUES ('3ee466ea-fc7b-e3ba-d665-468de5ac29ab', '983f483d-8af1-9472-601a-468d07c0aed0', 1000, 120, 50, 1, '2007-07-06 06:46:19', '2007-07-06 06:47:14', '1');
INSERT INTO `pricelistlines` VALUES ('3f4c08aa-db9c-731f-c582-468de5819e19', '983f483d-8af1-9472-601a-468d07c0aed0', 3000, 150, 45, 1, '2007-07-06 06:46:19', '2007-07-06 06:47:14', '1');
INSERT INTO `pricelistlines` VALUES ('3fba1f06-0ac6-3dbc-9ab0-468de5625506', '983f483d-8af1-9472-601a-468d07c0aed0', 4000, 150, 42, 1, '2007-07-06 06:46:19', '2007-07-06 06:47:14', '1');
INSERT INTO `pricelistlines` VALUES ('400be1e9-49d6-a150-cf26-468de56d04b7', '983f483d-8af1-9472-601a-468d07c0aed0', 5000, 200, 40, 1, '2007-07-06 06:46:19', '2007-07-06 06:47:14', '1');
INSERT INTO `pricelistlines` VALUES ('4059fa24-5d0a-11e9-7ecd-468de59687ce', '983f483d-8af1-9472-601a-468d07c0aed0', 7000, 200, 35, 1, '2007-07-06 06:46:19', '2007-07-06 06:47:14', '1');
INSERT INTO `pricelistlines` VALUES ('a6d2e1fe-4f71-e56a-c49d-468de50809f8', '983f483d-8af1-9472-601a-468d07c0aed0', 1000, 120, 50, 1, '2007-07-06 06:47:14', '2007-07-06 07:15:24', '1');
INSERT INTO `pricelistlines` VALUES ('a72817e1-bcea-8f69-1efc-468de57ed6c5', '983f483d-8af1-9472-601a-468d07c0aed0', 3000, 150, 45, 1, '2007-07-06 06:47:14', '2007-07-06 07:15:26', '1');
INSERT INTO `pricelistlines` VALUES ('bd8e7461-d01c-3c1a-aa60-468deca4d77f', '983f483d-8af1-9472-601a-468d07c0aed0', 1000, 120, 50, 1, '2007-07-06 07:15:28', '2007-07-06 07:19:36', '1');
INSERT INTO `pricelistlines` VALUES ('76f443d1-a185-3860-08ff-468dec943fc3', '983f483d-8af1-9472-601a-468d07c0aed0', 3000, 150, 45, 1, '2007-07-06 07:15:31', '2007-07-06 07:19:36', '1');
INSERT INTO `pricelistlines` VALUES ('6f2d29c2-2870-62e7-2dad-468dec4b4a20', '983f483d-8af1-9472-601a-468d07c0aed0', 5000, 240, 40, 1, '2007-07-06 07:17:17', '2007-07-06 07:19:36', '1');
INSERT INTO `pricelistlines` VALUES ('4b664866-4983-ddcb-356a-468dec82ea50', '4a36090d-b82e-6698-6c10-468dec12d2ec', 1000, 120, 50, 1, '2007-07-06 07:19:19', '2007-07-06 07:19:56', '1');
INSERT INTO `pricelistlines` VALUES ('4bcd45d2-5ce0-184a-7ef6-468decc38ae4', '4a36090d-b82e-6698-6c10-468dec12d2ec', 3000, 220, 40, 1, '2007-07-06 07:19:19', '2007-07-06 07:19:56', '1');
INSERT INTO `pricelistlines` VALUES ('4c1f4c87-43eb-58f5-de58-468decc4278a', '4a36090d-b82e-6698-6c10-468dec12d2ec', 5000, 300, 30, 1, '2007-07-06 07:19:19', '2007-07-06 07:19:56', '1');
INSERT INTO `pricelistlines` VALUES ('83bc0af7-ad00-1460-24c8-468ded9c6801', '983f483d-8af1-9472-601a-468d07c0aed0', 1000, 120, 50, 1, '2007-07-06 07:19:36', '2007-07-06 09:30:07', '1');
INSERT INTO `pricelistlines` VALUES ('840e56db-db47-10a9-7f7d-468dedd11890', '983f483d-8af1-9472-601a-468d07c0aed0', 3000, 150, 45, 1, '2007-07-06 07:19:36', '2007-07-06 09:30:07', '1');
INSERT INTO `pricelistlines` VALUES ('845d120c-d90b-11d8-2576-468ded9bc9aa', '983f483d-8af1-9472-601a-468d07c0aed0', 5000, 240, 40, 1, '2007-07-06 07:19:36', '2007-07-06 09:30:07', '1');
INSERT INTO `pricelistlines` VALUES ('dcf514d3-097d-a091-a083-468ded8bbf80', '4a36090d-b82e-6698-6c10-468dec12d2ec', 1000, 120, 50, 1, '2007-07-06 07:19:56', '2007-07-06 07:20:13', '1');
INSERT INTO `pricelistlines` VALUES ('dd520a6e-34ed-14e8-4fc4-468dede5937e', '4a36090d-b82e-6698-6c10-468dec12d2ec', 3000, 220, 40, 1, '2007-07-06 07:19:56', '2007-07-06 07:20:13', '1');
INSERT INTO `pricelistlines` VALUES ('dda1ef6f-06e4-53ed-066b-468dedfada68', '4a36090d-b82e-6698-6c10-468dec12d2ec', 5000, 80, 30, 1, '2007-07-06 07:19:56', '2007-07-06 07:20:13', '1');
INSERT INTO `pricelistlines` VALUES ('be54326b-c820-056f-9604-468dedb03684', '4a36090d-b82e-6698-6c10-468dec12d2ec', 1000, 120, 50, 1, '2007-07-06 07:20:13', '2007-07-06 07:20:24', '1');
INSERT INTO `pricelistlines` VALUES ('bea8b835-cdb9-fc75-5c9c-468dedaa2f93', '4a36090d-b82e-6698-6c10-468dec12d2ec', 3000, 220, 40, 1, '2007-07-06 07:20:13', '2007-07-06 07:20:24', '1');
INSERT INTO `pricelistlines` VALUES ('bef8f7b9-5953-699e-cd82-468dedc3feb9', '4a36090d-b82e-6698-6c10-468dec12d2ec', 5000, 300, 30, 1, '2007-07-06 07:20:13', '2007-07-06 07:20:24', '1');
INSERT INTO `pricelistlines` VALUES ('e54c82d6-4cb6-1a5e-01da-468ded1e2e21', '4a36090d-b82e-6698-6c10-468dec12d2ec', 1000, 120, 50, 1, '2007-07-06 07:20:24', '2007-07-06 07:20:31', '1');
INSERT INTO `pricelistlines` VALUES ('e59f8aac-942d-7be5-0e35-468ded01833e', '4a36090d-b82e-6698-6c10-468dec12d2ec', 3000, 220, 40, 1, '2007-07-06 07:20:24', '2007-07-06 07:20:31', '1');
INSERT INTO `pricelistlines` VALUES ('e5f062ca-cf11-d093-efa4-468ded4cb776', '4a36090d-b82e-6698-6c10-468dec12d2ec', 5000, 80, 30, 1, '2007-07-06 07:20:24', '2007-07-06 07:20:31', '1');
INSERT INTO `pricelistlines` VALUES ('93dabde8-867e-f214-0e80-468ded0d9cba', '4a36090d-b82e-6698-6c10-468dec12d2ec', 1000, 120, 50, 1, '2007-07-06 07:20:31', '2007-07-06 07:22:33', '1');
INSERT INTO `pricelistlines` VALUES ('9431d88e-1a9b-3784-f346-468ded83257b', '4a36090d-b82e-6698-6c10-468dec12d2ec', 3000, 220, 40, 1, '2007-07-06 07:20:31', '2007-07-06 07:22:33', '1');
INSERT INTO `pricelistlines` VALUES ('94841184-77cf-00b8-a293-468ded1bd39e', '4a36090d-b82e-6698-6c10-468dec12d2ec', 5000, 300, 30, 1, '2007-07-06 07:20:31', '2007-07-06 07:22:33', '1');
INSERT INTO `pricelistlines` VALUES ('69d19c98-0247-27c6-3388-468ded58095d', '4a36090d-b82e-6698-6c10-468dec12d2ec', 1000, 120, 50, 1, '2007-07-06 07:22:33', '2007-07-06 07:22:51', '1');
INSERT INTO `pricelistlines` VALUES ('6a29013d-74dc-7bf7-d745-468ded229a56', '4a36090d-b82e-6698-6c10-468dec12d2ec', 3000, 220, 40, 1, '2007-07-06 07:22:33', '2007-07-06 07:22:51', '1');
INSERT INTO `pricelistlines` VALUES ('6a77dedd-b936-0d26-f674-468ded0dd793', '4a36090d-b82e-6698-6c10-468dec12d2ec', 5000, 300, 30, 1, '2007-07-06 07:22:33', '2007-07-06 07:22:51', '1');
INSERT INTO `pricelistlines` VALUES ('d03b5676-977f-2bf8-ed3e-468ded384ab8', '4a36090d-b82e-6698-6c10-468dec12d2ec', 1000, 120, 50, 1, '2007-07-06 07:22:51', '2007-07-06 07:23:48', '1');
INSERT INTO `pricelistlines` VALUES ('d0a4985c-c81f-1586-55cb-468ded64f713', '4a36090d-b82e-6698-6c10-468dec12d2ec', 3000, 220, 40, 1, '2007-07-06 07:22:51', '2007-07-06 07:23:48', '1');
INSERT INTO `pricelistlines` VALUES ('d0f4a31e-85fd-299d-1c99-468ded661ab3', '4a36090d-b82e-6698-6c10-468dec12d2ec', 5000, 300, 30, 1, '2007-07-06 07:22:51', '2007-07-06 07:23:48', '1');
INSERT INTO `pricelistlines` VALUES ('d14389f9-c11e-d5b5-6572-468ded4d2282', '4a36090d-b82e-6698-6c10-468dec12d2ec', 10000, 450, 20, 1, '2007-07-06 07:22:51', '2007-07-06 07:23:48', '1');
INSERT INTO `pricelistlines` VALUES ('50003683-382c-72a0-1212-468dee86cd9b', '4a36090d-b82e-6698-6c10-468dec12d2ec', 1000, 120, 50, 1, '2007-07-06 07:23:48', '2007-07-06 07:24:09', '1');
INSERT INTO `pricelistlines` VALUES ('5052eca8-4ebc-adc0-b1a8-468deed1626d', '4a36090d-b82e-6698-6c10-468dec12d2ec', 3000, 220, 40, 1, '2007-07-06 07:23:48', '2007-07-06 07:24:09', '1');
INSERT INTO `pricelistlines` VALUES ('50a2990a-d203-1964-3bf0-468deef7a787', '4a36090d-b82e-6698-6c10-468dec12d2ec', 5000, 300, 30, 1, '2007-07-06 07:23:48', '2007-07-06 07:24:09', '1');
INSERT INTO `pricelistlines` VALUES ('50f63446-57cc-504b-0d83-468dee7c0340', '4a36090d-b82e-6698-6c10-468dec12d2ec', 10000, 150, 20, 1, '2007-07-06 07:23:48', '2007-07-06 07:24:09', '1');
INSERT INTO `pricelistlines` VALUES ('8bd8a859-37d5-7395-2131-468deeccb4ae', '4a36090d-b82e-6698-6c10-468dec12d2ec', 1000, 120, 50, 1, '2007-07-06 07:24:09', '2007-07-06 07:25:05', '1');
INSERT INTO `pricelistlines` VALUES ('8c2e302e-46e9-a169-ba37-468dee65212d', '4a36090d-b82e-6698-6c10-468dec12d2ec', 3000, 220, 40, 1, '2007-07-06 07:24:09', '2007-07-06 07:25:05', '1');
INSERT INTO `pricelistlines` VALUES ('8c7d47ae-7061-0ccd-1b94-468deebea68b', '4a36090d-b82e-6698-6c10-468dec12d2ec', 5000, 300, 30, 1, '2007-07-06 07:24:09', '2007-07-06 07:25:05', '1');
INSERT INTO `pricelistlines` VALUES ('8cd13e3e-3d30-246e-8172-468dee865eab', '4a36090d-b82e-6698-6c10-468dec12d2ec', 10000, 450, 20, 1, '2007-07-06 07:24:09', '2007-07-06 07:25:05', '1');
INSERT INTO `pricelistlines` VALUES ('c0823896-ea36-0aac-c75c-468dee98ccd7', '4a36090d-b82e-6698-6c10-468dec12d2ec', 1000, 120, 50, 1, '2007-07-06 07:25:05', '2007-07-06 07:52:02', '1');
INSERT INTO `pricelistlines` VALUES ('c0d93214-b27d-eae8-ea09-468dee51476f', '4a36090d-b82e-6698-6c10-468dec12d2ec', 3000, 220, 40, 1, '2007-07-06 07:25:05', '2007-07-06 07:52:02', '1');
INSERT INTO `pricelistlines` VALUES ('c128d303-b097-755a-0352-468deedb5d7f', '4a36090d-b82e-6698-6c10-468dec12d2ec', 5000, 300, 30, 1, '2007-07-06 07:25:05', '2007-07-06 07:52:02', '1');
INSERT INTO `pricelistlines` VALUES ('c176c7fc-69a1-5343-5b19-468deeee9efd', '4a36090d-b82e-6698-6c10-468dec12d2ec', 10000, 450, 20, 1, '2007-07-06 07:25:05', '2007-07-06 07:52:02', '1');
INSERT INTO `pricelistlines` VALUES ('e2a0e7c9-ef6b-43ec-ffbb-468df43290b2', '4a36090d-b82e-6698-6c10-468dec12d2ec', 1000, 40, 10, 1, '2007-07-06 07:52:02', '2007-07-06 07:53:03', '1');
INSERT INTO `pricelistlines` VALUES ('e2f398d0-3460-9e9e-fcba-468df40188dd', '4a36090d-b82e-6698-6c10-468dec12d2ec', 3300, 63, 10, 1, '2007-07-06 07:52:02', '2007-07-06 07:53:03', '1');
INSERT INTO `pricelistlines` VALUES ('5154a27b-0244-b44a-88ca-468df4a42396', '4a36090d-b82e-6698-6c10-468dec12d2ec', 1000, 40, 10, 1, '2007-07-06 07:53:03', '2007-07-06 07:53:17', '1');
INSERT INTO `pricelistlines` VALUES ('51a8c526-1f58-20b2-aa2d-468df4ff3309', '4a36090d-b82e-6698-6c10-468dec12d2ec', 3300, 2340, 10, 1, '2007-07-06 07:53:03', '2007-07-06 07:53:17', '1');
INSERT INTO `pricelistlines` VALUES ('ee84bcbc-3a14-acba-be03-468df4348170', '4a36090d-b82e-6698-6c10-468dec12d2ec', 1000, 40, 10, 1, '2007-07-06 07:53:17', '2007-07-06 07:57:47', '1');
INSERT INTO `pricelistlines` VALUES ('eedfea25-a63a-2050-1ae2-468df4de9706', '4a36090d-b82e-6698-6c10-468dec12d2ec', 3300, 270, 10, 1, '2007-07-06 07:53:17', '2007-07-06 07:57:47', '1');
INSERT INTO `pricelistlines` VALUES ('1e34ccf4-83b2-c599-305f-468df52012ff', '4a36090d-b82e-6698-6c10-468dec12d2ec', 1000, 40, 10, 1, '2007-07-06 07:57:47', '2007-07-06 07:58:56', '1');
INSERT INTO `pricelistlines` VALUES ('1e9ba204-cd91-ba26-8dd1-468df515d22b', '4a36090d-b82e-6698-6c10-468dec12d2ec', 3300, 63, 10, 1, '2007-07-06 07:57:47', '2007-07-06 07:58:56', '1');
INSERT INTO `pricelistlines` VALUES ('92283364-d1c9-43d0-e841-468df6882f8b', '4a36090d-b82e-6698-6c10-468dec12d2ec', 1000, 40, 10, 0, '2007-07-06 07:58:56', '2007-07-06 07:58:56', '1');
INSERT INTO `pricelistlines` VALUES ('928eac4f-714d-d576-c921-468df6bf6b3b', '4a36090d-b82e-6698-6c10-468dec12d2ec', 3000, 60, 10, 0, '2007-07-06 07:58:56', '2007-07-06 07:58:56', '1');
INSERT INTO `pricelistlines` VALUES ('59f3c7a7-b6b8-43cf-8e68-468e0be1677d', '983f483d-8af1-9472-601a-468d07c0aed0', 1000, 120, 50, 1, '2007-07-06 09:30:07', '2007-07-06 09:30:52', '1');
INSERT INTO `pricelistlines` VALUES ('5a57f10e-65fb-aee9-b18a-468e0b97d62d', '983f483d-8af1-9472-601a-468d07c0aed0', 3000, 150, 45, 1, '2007-07-06 09:30:07', '2007-07-06 09:30:52', '1');
INSERT INTO `pricelistlines` VALUES ('5aa8519b-83b6-08db-a1e2-468e0b1be870', '983f483d-8af1-9472-601a-468d07c0aed0', 5000, 240, 40, 1, '2007-07-06 09:30:07', '2007-07-06 09:30:52', '1');
INSERT INTO `pricelistlines` VALUES ('6cb14536-1b2c-6a52-939e-468e0bef6e3a', '983f483d-8af1-9472-601a-468d07c0aed0', 1000, 120, 50, 1, '2007-07-06 09:30:52', '2007-07-06 12:08:05', '1');
INSERT INTO `pricelistlines` VALUES ('6d0618d4-2da8-f45c-d987-468e0bad549c', '983f483d-8af1-9472-601a-468d07c0aed0', 3000, 150, 45, 1, '2007-07-06 09:30:52', '2007-07-06 12:08:05', '1');
INSERT INTO `pricelistlines` VALUES ('6d54cf55-d1b7-a4ff-051a-468e0b55e217', '983f483d-8af1-9472-601a-468d07c0aed0', 5000, 240, 40, 1, '2007-07-06 09:30:52', '2007-07-06 12:08:05', '1');
INSERT INTO `pricelistlines` VALUES ('3bb68be6-f2c3-a4b2-31fd-468e303485a8', '983f483d-8af1-9472-601a-468d07c0aed0', 1000, 120, 50, 1, '2007-07-06 12:08:05', '2007-07-06 12:08:16', '1');
INSERT INTO `pricelistlines` VALUES ('3c22d6b7-391d-3c88-bdb8-468e3052d45b', '983f483d-8af1-9472-601a-468d07c0aed0', 3000, 220, 45, 1, '2007-07-06 12:08:05', '2007-07-06 12:08:16', '1');
INSERT INTO `pricelistlines` VALUES ('3c726307-9c49-dc36-fb99-468e305b46e8', '983f483d-8af1-9472-601a-468d07c0aed0', 5000, 240, 40, 1, '2007-07-06 12:08:05', '2007-07-06 12:08:16', '1');
INSERT INTO `pricelistlines` VALUES ('3ddfdb5d-7408-9ed5-3611-468e302a4578', '983f483d-8af1-9472-601a-468d07c0aed0', 1000, 120, 50, 1, '2007-07-06 12:08:16', '2007-08-02 18:41:44', '1');
INSERT INTO `pricelistlines` VALUES ('3e44284e-a0cd-3648-1c14-468e309f7d99', '983f483d-8af1-9472-601a-468d07c0aed0', 3000, 220, 45, 1, '2007-07-06 12:08:16', '2007-08-02 18:41:44', '1');
INSERT INTO `pricelistlines` VALUES ('3e935b5a-4f2a-e15a-33df-468e302a827d', '983f483d-8af1-9472-601a-468d07c0aed0', 5000, 310, 40, 1, '2007-07-06 12:08:16', '2007-08-02 18:41:44', '1');
INSERT INTO `pricelistlines` VALUES ('b757f131-01c4-186b-fc16-46b22560405b', '983f483d-8af1-9472-601a-468d07c0aed0', 1000, 120, 50, 1, '2007-08-02 18:41:44', '2007-08-03 10:55:01', '1');
INSERT INTO `pricelistlines` VALUES ('b7ed2e45-bb67-6ee9-2575-46b2251d4a15', '983f483d-8af1-9472-601a-468d07c0aed0', 3000, 220, 45, 1, '2007-08-02 18:41:44', '2007-08-03 10:55:01', '1');
INSERT INTO `pricelistlines` VALUES ('b88cf656-23e4-41be-b79e-46b2259ff77a', '983f483d-8af1-9472-601a-468d07c0aed0', 5000, 310, 40, 1, '2007-08-02 18:41:44', '2007-08-03 10:55:01', '1');
INSERT INTO `pricelistlines` VALUES ('70000ac7-fab7-d05e-3be8-46b309fd722c', '983f483d-8af1-9472-601a-468d07c0aed0', 1000, 120, 50, 1, '2007-08-03 10:55:01', '2007-08-20 12:01:13', '1');
INSERT INTO `pricelistlines` VALUES ('18110381-0c6c-dd58-633d-46b309d9cf25', '983f483d-8af1-9472-601a-468d07c0aed0', 3000, 220, 45, 1, '2007-08-03 10:55:01', '2007-08-20 12:01:13', '1');
INSERT INTO `pricelistlines` VALUES ('202e00b0-b220-df47-c065-46b3093bc901', '983f483d-8af1-9472-601a-468d07c0aed0', 5000, 310, 40, 1, '2007-08-03 10:55:01', '2007-08-20 12:01:13', '1');
INSERT INTO `pricelistlines` VALUES ('e9a450ab-57c9-789c-5545-46c982053a27', '983f483d-8af1-9472-601a-468d07c0aed0', 1000, 120, 50, 1, '2007-08-20 12:01:13', '2007-08-20 12:01:29', '1');
INSERT INTO `pricelistlines` VALUES ('ebdb1819-4d93-9263-dfe1-46c982c9a5f5', '983f483d-8af1-9472-601a-468d07c0aed0', 3000, 60, 45, 1, '2007-08-20 12:01:13', '2007-08-20 12:01:29', '1');
INSERT INTO `pricelistlines` VALUES ('ee0a8aee-35dc-32fc-f9c8-46c9820ea94f', '983f483d-8af1-9472-601a-468d07c0aed0', 5000, 310, 40, 1, '2007-08-20 12:01:13', '2007-08-20 12:01:29', '1');
INSERT INTO `pricelistlines` VALUES ('8b169c7a-0a9e-1394-55ed-46c9828b59b6', '983f483d-8af1-9472-601a-468d07c0aed0', 1000, 60, 50, 0, '2007-08-20 12:01:29', '2007-08-20 12:01:29', '1');
INSERT INTO `pricelistlines` VALUES ('8d68063e-1ba2-972f-86c3-46c98216ff3d', '983f483d-8af1-9472-601a-468d07c0aed0', 3000, 160, 45, 0, '2007-08-20 12:01:29', '2007-08-20 12:01:29', '1');
INSERT INTO `pricelistlines` VALUES ('8fa59b88-bf7c-bf77-4d28-46c982908117', '983f483d-8af1-9472-601a-468d07c0aed0', 5000, 250, 40, 0, '2007-08-20 12:01:29', '2007-08-20 12:01:29', '1');

-- --------------------------------------------------------

-- 
-- Структура на таблица `prices`
-- 

DROP TABLE IF EXISTS `prices`;
CREATE TABLE `prices` (
  `id` varchar(36) NOT NULL default '',
  `paper_id` varchar(36) default NULL,
  `material_id` varchar(36) default NULL,
  `supplier_id` varchar(36) default NULL,
  `supplier_name` varchar(50) default NULL,
  `price` double default NULL,
  `due_date` date default NULL,
  `isvalid` varchar(50) default NULL,
  `price_usdollar` double default NULL,
  `currency_id` varchar(36) default NULL,
  `date_entered` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `assigned_user_id` varchar(36) default NULL,
  `modified_user_id` varchar(36) default NULL,
  `created_by` varchar(36) default NULL,
  `name` varchar(50) NOT NULL default '',
  `description` text,
  `deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `prices`
-- 

INSERT INTO `prices` VALUES ('23fc4265-c78d-3a20-9456-45d186784b71', NULL, NULL, '5e0b1f19-edac-32da-c0ee-45cf3dd3f612', 'Славей 91', 0.51, NULL, 'Valid', 0.51, '-99', '2007-02-13 09:37:00', '2007-05-18 07:41:20', '1', '1', '1', 'хром70х100-350-2-гланц', NULL, 1);
INSERT INTO `prices` VALUES ('b217068f-439a-1194-0262-45d0182946e0', NULL, NULL, '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'К1 Партнерс', 0.5786, '2007-02-28', 'Valid', 0.5786, '-99', '2007-02-12 07:32:54', '2007-05-18 07:41:20', '1', '1', '1', 'Лепило', 'Цена за лв/кг', 1);
INSERT INTO `prices` VALUES ('853c1412-f3be-bbe3-1c20-45cf42ed056a', NULL, NULL, '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'К1 Партнерс', 0.4669, '2007-01-04', 'Not Valid', 0.4669, NULL, '2007-02-11 16:20:38', '2007-05-18 07:41:20', '177bd6bb-665d-cc61-4d82-45ab422290d3', '177bd6bb-665d-cc61-4d82-45ab422290d3', '177bd6bb-665d-cc61-4d82-45ab422290d3', 'Хромирана мат - 300', NULL, 1);
INSERT INTO `prices` VALUES ('f349beba-7b5f-74c0-e244-45cf426d9e37', NULL, NULL, '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'К1 Партнерс', 0.3664, '2007-02-02', 'Not Valid', 0.3664, NULL, '2007-02-11 16:19:44', '2007-05-18 07:41:20', '177bd6bb-665d-cc61-4d82-45ab422290d3', '177bd6bb-665d-cc61-4d82-45ab422290d3', '177bd6bb-665d-cc61-4d82-45ab422290d3', 'Хромирана мат - 200', NULL, 1);
INSERT INTO `prices` VALUES ('a1feff59-29f6-9ec5-5adf-45cf41e52748', NULL, NULL, '5e0b1f19-edac-32da-c0ee-45cf3dd3f612', 'Славей 91', 0.4484, NULL, 'Valid', 0.4484, NULL, '2007-02-11 16:18:54', '2007-05-18 07:41:20', '177bd6bb-665d-cc61-4d82-45ab422290d3', '177bd6bb-665d-cc61-4d82-45ab422290d3', '177bd6bb-665d-cc61-4d82-45ab422290d3', 'хром70х100-350-2-гланц', NULL, 1);
INSERT INTO `prices` VALUES ('c9264d4b-8100-5cfe-3ad0-45cf41a22d6f', NULL, NULL, '5e0b1f19-edac-32da-c0ee-45cf3dd3f612', 'Славей 91', 0.1292, NULL, 'Valid', 0.1292, NULL, '2007-02-11 16:18:09', '2007-05-18 07:41:20', '177bd6bb-665d-cc61-4d82-45ab422290d3', '177bd6bb-665d-cc61-4d82-45ab422290d3', '177bd6bb-665d-cc61-4d82-45ab422290d3', 'хром70x100-100-2-гланц', NULL, 1);
INSERT INTO `prices` VALUES ('8cadf156-d425-4f95-3d7a-45cf417c4fc9', NULL, NULL, '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'К1 Партнерс', 0.996, '2007-03-03', 'Valid', 0.996, NULL, '2007-02-11 16:17:07', '2007-05-18 07:41:20', '177bd6bb-665d-cc61-4d82-45ab422290d3', '177bd6bb-665d-cc61-4d82-45ab422290d3', '177bd6bb-665d-cc61-4d82-45ab422290d3', 'Хром-60-90-100-2-мат', NULL, 1);
INSERT INTO `prices` VALUES ('9a4680bd-658b-d8dd-c657-45cf419b82a5', NULL, NULL, '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'К1 Партнерс', 0.0919, '2007-02-28', 'Valid', 0.0919, '-99', '2007-02-11 16:15:04', '2007-05-18 07:41:20', '177bd6bb-665d-cc61-4d82-45ab422290d3', '177bd6bb-665d-cc61-4d82-45ab422290d3', '177bd6bb-665d-cc61-4d82-45ab422290d3', 'Хром-60-90-90-2-мат', NULL, 1);
INSERT INTO `prices` VALUES ('c345c508-9b07-8c07-5738-464d63caf724', 'a8948502-cea9-500a-0d8c-464d6305dfdc', NULL, '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'К1 Партнерс', 0.1147, NULL, 'Valid', 0.1147, '-99', '2007-05-18 08:28:01', '2007-05-18 08:28:17', '1', '1', '1', 'Хартия 70x100 - мат - гланц', NULL, 0);
INSERT INTO `prices` VALUES ('94c505d2-8bcf-694c-d675-464d64235abf', '700f965b-a39b-142b-8000-464d6470e92e', NULL, '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'К1 Партнерс', 0.0971, NULL, 'Valid', 0.0971, NULL, '2007-05-18 08:30:58', '2007-05-18 08:30:58', '1', '1', '1', 'Chantellor 100', NULL, 0);
INSERT INTO `prices` VALUES ('34447ba8-ade6-a83b-7a8d-464d651e6e81', 'a4cb4337-447a-2e72-b569-464d64ac31bf', NULL, '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'К1 Партнерс', 22, NULL, 'Valid', 22, NULL, '2007-05-18 08:34:47', '2007-05-18 08:34:47', '1', '1', '1', 'Хартия - Мат - 70х100', NULL, 0);
INSERT INTO `prices` VALUES ('b9229202-1196-26cd-e0ef-464d65246ea2', 'afdedf2d-1d0d-439f-d9a8-464d656ee6d3', NULL, '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'К1 Партнерс', 0.4, NULL, 'Valid', 0.4, '-99', '2007-05-18 08:36:15', '2007-05-18 08:38:15', '1', '1', '1', 'Хартия - Мат - 70х100 -300гр', NULL, 0);
INSERT INTO `prices` VALUES ('47eaa2d5-95fb-260b-44cf-465321aef914', '700f965b-a39b-142b-8000-464d6470e92e', NULL, '5e0b1f19-edac-32da-c0ee-45cf3dd3f612', 'Славей 91', 0.09, NULL, 'Valid', 0.09, '-99', '2007-05-22 16:59:55', '2007-05-22 17:00:19', '1', '1', '1', 'Chantellor 100', NULL, 0);
INSERT INTO `prices` VALUES ('2fe515e8-56ba-842f-090b-46c93f63c652', 'afdedf2d-1d0d-439f-d9a8-464d656ee6d3', NULL, '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'К1 Партнерс', 0.385, NULL, NULL, 0.385, '-99', '2007-08-20 07:17:18', '2007-08-20 07:17:18', '1', '1', '1', 'Хартия - Мат - 70х100 -300гр', NULL, 0);

-- --------------------------------------------------------

-- 
-- Структура на таблица `printing`
-- 

DROP TABLE IF EXISTS `printing`;
CREATE TABLE `printing` (
  `id` varchar(36) NOT NULL default '',
  `date_entered` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `assigned_user_id` varchar(36) default NULL,
  `modified_user_id` varchar(36) default NULL,
  `created_by` varchar(36) default NULL,
  `name` varchar(50) default NULL,
  `product_id` varchar(36) default NULL,
  `product_name` varchar(50) default NULL,
  `parent_id` varchar(36) NOT NULL default '',
  `count_whole_sheets` varchar(50) default NULL,
  `count_reversal_whole_sheets` varchar(50) default NULL,
  `count_whole_sheets_multiplicity` varchar(50) default NULL,
  `whole_sheets_multiplicity` int(50) default '0',
  `whole_sheets_quantity` int(50) default '0',
  `whole_sheets_preparations` int(50) default '0',
  `reversal_whole_sheets_multiplicity` int(50) default '0',
  `reversal_whole_sheets_quantity` int(50) default '0',
  `reversal_whole_sheets_preparations` int(50) default '0',
  `multiplicity_whole_sheets_multiplicity` int(50) default '0',
  `multiplicity_whole_sheets_quantity` int(50) default '0',
  `multiplicity_whole_sheets_preparations` int(50) default '0',
  `description` text,
  `deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 PACK_KEYS=0;

-- 
-- Дъмп (схема) на данните в таблицата `printing`
-- 

INSERT INTO `printing` VALUES ('e8e3b0b4-e16d-a21c-0026-4652ca4a9232', '2007-05-22 10:48:10', '2007-05-22 10:48:10', '1', '1', '1', 'Печат - Каталог "Пресфото"-2', '598457bc-776a-9154-9b63-4652c9ce58cb', 'Каталог "Пресфото"-2', 'a5a08eeb-0be7-f066-2677-464d699203bc', '1', NULL, NULL, 1, 3000, 2, 1, 3000, 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `printing` VALUES ('71f53f4b-4f10-90b2-3197-4652ca9565df', '2007-05-22 10:47:15', '2007-05-22 10:47:15', '1', '1', '1', 'Печат - Каталог "Пресфото"-1', '4769ac12-e56f-a792-07af-4652c986db5f', 'Каталог "Пресфото"-1', 'a5a08eeb-0be7-f066-2677-464d699203bc', '11', NULL, NULL, NULL, 3000, 22, 2, 1500, 0, 1, 3000, 0, NULL, 0);

-- --------------------------------------------------------

-- 
-- Структура на таблица `printing_prices`
-- 

DROP TABLE IF EXISTS `printing_prices`;
CREATE TABLE `printing_prices` (
  `quantity` varchar(30) NOT NULL default '',
  `color` int(5) NOT NULL default '0',
  `machine` varchar(10) NOT NULL default '',
  `price` int(5) NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `printing_prices`
-- 

INSERT INTO `printing_prices` VALUES ('1000', 1, 'GTO', 25);
INSERT INTO `printing_prices` VALUES ('2000', 1, 'GTO', 35);
INSERT INTO `printing_prices` VALUES ('3000', 1, 'GTO', 45);
INSERT INTO `printing_prices` VALUES ('4000', 1, 'GTO', 55);
INSERT INTO `printing_prices` VALUES ('5000', 1, 'GTO', 65);
INSERT INTO `printing_prices` VALUES ('6000', 1, 'GTO', 75);
INSERT INTO `printing_prices` VALUES ('7000', 1, 'GTO', 85);
INSERT INTO `printing_prices` VALUES ('8000', 1, 'GTO', 95);
INSERT INTO `printing_prices` VALUES ('9000', 1, 'GTO', 105);
INSERT INTO `printing_prices` VALUES ('10000', 1, 'GTO', 115);
INSERT INTO `printing_prices` VALUES ('15000', 1, 'GTO', 155);
INSERT INTO `printing_prices` VALUES ('20000', 1, 'GTO', 215);
INSERT INTO `printing_prices` VALUES ('25000', 1, 'GTO', 265);
INSERT INTO `printing_prices` VALUES ('1000', 1, 'Shinohara', 50);
INSERT INTO `printing_prices` VALUES ('2000', 1, 'Shinohara', 70);
INSERT INTO `printing_prices` VALUES ('3000', 1, 'Shinohara', 90);
INSERT INTO `printing_prices` VALUES ('4000', 1, 'Shinohara', 110);
INSERT INTO `printing_prices` VALUES ('5000', 1, 'Shinohara', 130);
INSERT INTO `printing_prices` VALUES ('6000', 1, 'Shinohara', 150);
INSERT INTO `printing_prices` VALUES ('7000', 1, 'Shinohara', 170);
INSERT INTO `printing_prices` VALUES ('8000', 1, 'Shinohara', 190);
INSERT INTO `printing_prices` VALUES ('9000', 1, 'Shinohara', 210);
INSERT INTO `printing_prices` VALUES ('10000', 1, 'Shinohara', 230);
INSERT INTO `printing_prices` VALUES ('15000', 1, 'Shinohara', 310);
INSERT INTO `printing_prices` VALUES ('20000', 1, 'Shinohara', 430);
INSERT INTO `printing_prices` VALUES ('25000', 1, 'Shinohara', 530);
INSERT INTO `printing_prices` VALUES ('1000', 2, 'Shinohara', 80);
INSERT INTO `printing_prices` VALUES ('2000', 2, 'Shinohara', 100);
INSERT INTO `printing_prices` VALUES ('3000', 2, 'Shinohara', 120);
INSERT INTO `printing_prices` VALUES ('4000', 2, 'Shinohara', 140);
INSERT INTO `printing_prices` VALUES ('5000', 2, 'Shinohara', 160);
INSERT INTO `printing_prices` VALUES ('6000', 2, 'Shinohara', 180);
INSERT INTO `printing_prices` VALUES ('7000', 2, 'Shinohara', 200);
INSERT INTO `printing_prices` VALUES ('8000', 2, 'Shinohara', 220);
INSERT INTO `printing_prices` VALUES ('9000', 2, 'Shinohara', 240);
INSERT INTO `printing_prices` VALUES ('10000', 2, 'Shinohara', 260);
INSERT INTO `printing_prices` VALUES ('15000', 2, 'Shinohara', 360);
INSERT INTO `printing_prices` VALUES ('20000', 2, 'Shinohara', 460);
INSERT INTO `printing_prices` VALUES ('25000', 2, 'Shinohara', 560);
INSERT INTO `printing_prices` VALUES ('1000', 2, 'GTO', 40);
INSERT INTO `printing_prices` VALUES ('2000', 2, 'GTO', 50);
INSERT INTO `printing_prices` VALUES ('3000', 2, 'GTO', 60);
INSERT INTO `printing_prices` VALUES ('4000', 2, 'GTO', 70);
INSERT INTO `printing_prices` VALUES ('5000', 2, 'GTO', 80);
INSERT INTO `printing_prices` VALUES ('6000', 2, 'GTO', 90);
INSERT INTO `printing_prices` VALUES ('7000', 2, 'GTO', 100);
INSERT INTO `printing_prices` VALUES ('8000', 2, 'GTO', 110);
INSERT INTO `printing_prices` VALUES ('9000', 2, 'GTO', 120);
INSERT INTO `printing_prices` VALUES ('10000', 2, 'GTO', 130);
INSERT INTO `printing_prices` VALUES ('15000', 2, 'GTO', 180);
INSERT INTO `printing_prices` VALUES ('20000', 2, 'GTO', 230);
INSERT INTO `printing_prices` VALUES ('25000', 2, 'GTO', 280);
INSERT INTO `printing_prices` VALUES ('1000', 3, 'GTO', 50);
INSERT INTO `printing_prices` VALUES ('2000', 3, 'GTO', 65);
INSERT INTO `printing_prices` VALUES ('3000', 3, 'GTO', 80);
INSERT INTO `printing_prices` VALUES ('4000', 3, 'GTO', 95);
INSERT INTO `printing_prices` VALUES ('5000', 3, 'GTO', 110);
INSERT INTO `printing_prices` VALUES ('6000', 3, 'GTO', 120);
INSERT INTO `printing_prices` VALUES ('7000', 3, 'GTO', 130);
INSERT INTO `printing_prices` VALUES ('8000', 3, 'GTO', 140);
INSERT INTO `printing_prices` VALUES ('9000', 3, 'GTO', 150);
INSERT INTO `printing_prices` VALUES ('10000', 3, 'GTO', 160);
INSERT INTO `printing_prices` VALUES ('15000', 3, 'GTO', 210);
INSERT INTO `printing_prices` VALUES ('20000', 3, 'GTO', 260);
INSERT INTO `printing_prices` VALUES ('25000', 3, 'GTO', 310);
INSERT INTO `printing_prices` VALUES ('1000', 3, 'Shinohara', 100);
INSERT INTO `printing_prices` VALUES ('2000', 3, 'Shinohara', 130);
INSERT INTO `printing_prices` VALUES ('3000', 3, 'Shinohara', 160);
INSERT INTO `printing_prices` VALUES ('4000', 3, 'Shinohara', 190);
INSERT INTO `printing_prices` VALUES ('5000', 3, 'Shinohara', 220);
INSERT INTO `printing_prices` VALUES ('6000', 3, 'Shinohara', 240);
INSERT INTO `printing_prices` VALUES ('7000', 3, 'Shinohara', 260);
INSERT INTO `printing_prices` VALUES ('8000', 3, 'Shinohara', 280);
INSERT INTO `printing_prices` VALUES ('9000', 3, 'Shinohara', 300);
INSERT INTO `printing_prices` VALUES ('10000', 3, 'Shinohara', 320);
INSERT INTO `printing_prices` VALUES ('15000', 3, 'Shinohara', 420);
INSERT INTO `printing_prices` VALUES ('20000', 3, 'Shinohara', 520);
INSERT INTO `printing_prices` VALUES ('25000', 3, 'Shinohara', 620);
INSERT INTO `printing_prices` VALUES ('1000', 4, 'Shinohara', 120);
INSERT INTO `printing_prices` VALUES ('2000', 4, 'Shinohara', 150);
INSERT INTO `printing_prices` VALUES ('3000', 4, 'Shinohara', 180);
INSERT INTO `printing_prices` VALUES ('4000', 4, 'Shinohara', 210);
INSERT INTO `printing_prices` VALUES ('5000', 4, 'Shinohara', 240);
INSERT INTO `printing_prices` VALUES ('6000', 4, 'Shinohara', 260);
INSERT INTO `printing_prices` VALUES ('7000', 4, 'Shinohara', 280);
INSERT INTO `printing_prices` VALUES ('8000', 4, 'Shinohara', 300);
INSERT INTO `printing_prices` VALUES ('9000', 4, 'Shinohara', 320);
INSERT INTO `printing_prices` VALUES ('10000', 4, 'Shinohara', 340);
INSERT INTO `printing_prices` VALUES ('15000', 4, 'Shinohara', 440);
INSERT INTO `printing_prices` VALUES ('20000', 4, 'Shinohara', 540);
INSERT INTO `printing_prices` VALUES ('25000', 4, 'Shinohara', 640);
INSERT INTO `printing_prices` VALUES ('1000', 4, 'GTO', 60);
INSERT INTO `printing_prices` VALUES ('2000', 4, 'GTO', 75);
INSERT INTO `printing_prices` VALUES ('3000', 4, 'GTO', 90);
INSERT INTO `printing_prices` VALUES ('4000', 4, 'GTO', 105);
INSERT INTO `printing_prices` VALUES ('5000', 4, 'GTO', 120);
INSERT INTO `printing_prices` VALUES ('6000', 4, 'GTO', 130);
INSERT INTO `printing_prices` VALUES ('7000', 4, 'GTO', 140);
INSERT INTO `printing_prices` VALUES ('8000', 4, 'GTO', 150);
INSERT INTO `printing_prices` VALUES ('9000', 4, 'GTO', 160);
INSERT INTO `printing_prices` VALUES ('10000', 4, 'GTO', 170);
INSERT INTO `printing_prices` VALUES ('15000', 4, 'GTO', 220);
INSERT INTO `printing_prices` VALUES ('20000', 4, 'GTO', 270);
INSERT INTO `printing_prices` VALUES ('25000', 4, 'GTO', 320);

-- --------------------------------------------------------

-- 
-- Структура на таблица `product_bodies`
-- 

DROP TABLE IF EXISTS `product_bodies`;
CREATE TABLE `product_bodies` (
  `id` varchar(36) NOT NULL default '',
  `paperid` varchar(36) NOT NULL default '',
  `productid` varchar(36) NOT NULL default '',
  `ppart` varchar(50) NOT NULL default '',
  `bnumber` int(36) default NULL,
  `bname` varchar(36) default NULL,
  `bdesc` text,
  `bpaper` varchar(36) default NULL,
  `btype` varchar(36) default NULL,
  `bformat` varchar(36) default NULL,
  `bvolume` int(36) default NULL,
  `bcolor` varchar(36) default NULL,
  `bmachine` varchar(36) default NULL,
  `bsupplier` varchar(36) default NULL,
  `bprice` float default NULL,
  `bkoli` varchar(36) default NULL,
  `status` tinyint(1) default '0',
  `deleted` tinyint(1) default '0',
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `created_by` varchar(36) NOT NULL default ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `product_bodies`
-- 


-- --------------------------------------------------------

-- 
-- Структура на таблица `productestimate`
-- 

DROP TABLE IF EXISTS `productestimate`;
CREATE TABLE `productestimate` (
  `id` varchar(36) NOT NULL default '',
  `product_id` varchar(36) NOT NULL default '',
  `product_name` varchar(50) NOT NULL default '',
  `total_paper` float default '0',
  `total_prepress` float default '0',
  `total_press` float default '0',
  `total_operations` float default '0',
  `date_entered` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `assigned_user_id` varchar(36) default NULL,
  `modified_user_id` varchar(36) default NULL,
  `created_by` varchar(36) default NULL,
  `name` varchar(50) NOT NULL default '',
  `description` text,
  `deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 PACK_KEYS=0;

-- 
-- Дъмп (схема) на данните в таблицата `productestimate`
-- 

INSERT INTO `productestimate` VALUES ('1a1e1cce-1852-4e63-09a7-46c18e02cb3b', 'a5a08eeb-0be7-f066-2677-464d699203bc', 'Каталог Пресфото', 3690, 335, 3060, 800, '2007-08-14 11:12:03', '2007-08-14 11:12:13', '1', '1', '1', 'Калкулация-Каталог Пресфото', NULL, 0);

-- --------------------------------------------------------

-- 
-- Структура на таблица `productlog`
-- 

DROP TABLE IF EXISTS `productlog`;
CREATE TABLE `productlog` (
  `id` varchar(36) NOT NULL default '',
  `date_entered` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `assigned_user_id` varchar(36) default NULL,
  `modified_user_id` varchar(36) default NULL,
  `created_by` varchar(36) default NULL,
  `product_name` varchar(50) NOT NULL default '',
  `product_id` varchar(36) NOT NULL default '',
  `description` text,
  `deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `productlog`
-- 

INSERT INTO `productlog` VALUES ('b3137fb4-8939-5231-89ca-464d69a19be1', '2007-05-18 08:52:29', '2007-07-09 07:55:14', NULL, '1', '1', 'Каталог Пресфото', 'a5a08eeb-0be7-f066-2677-464d699203bc', NULL, 0);
INSERT INTO `productlog` VALUES ('2d74031e-9f84-ce46-06d7-4678f3f4bad7', '2007-06-20 09:29:22', '2007-06-20 15:45:45', NULL, '1', '1', 'Първо издание', 'dceaf769-3f1a-e605-2df3-4678f3dbd10b', NULL, 0);
INSERT INTO `productlog` VALUES ('6bc313b0-9587-70e7-4c1c-46c9403b34bb', '2007-08-20 07:19:56', '2007-08-20 07:21:24', NULL, '1', '1', 'Каталог-01-2007', '5ad9406d-87fe-c009-3c02-46c940616ee7', NULL, 0);
INSERT INTO `productlog` VALUES ('8918a618-1dd4-738b-aabf-46c943f3ac16', '2007-08-20 07:30:27', '2007-08-20 07:34:20', NULL, '1', '1', 'asdasd', '', NULL, 0);
INSERT INTO `productlog` VALUES ('4cce0b56-8021-fc3f-de12-46c943beb14a', '2007-08-20 07:31:16', '2007-08-20 07:34:20', NULL, '1', '1', 'asdsa', '', NULL, 0);

-- --------------------------------------------------------

-- 
-- Структура на таблица `productoperations`
-- 

DROP TABLE IF EXISTS `productoperations`;
CREATE TABLE `productoperations` (
  `id` varchar(36) NOT NULL default '',
  `product_name` varchar(50) default NULL,
  `product_id` varchar(36) default NULL,
  `component_name` varchar(50) default NULL,
  `component_id` varchar(36) default NULL,
  `machine_name` varchar(50) default NULL,
  `machine_id` varchar(36) default NULL,
  `operation_name` varchar(50) default NULL,
  `operation_id` varchar(36) default NULL,
  `date_entered` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `assigned_user_id` varchar(36) default NULL,
  `modified_user_id` varchar(36) default NULL,
  `created_by` varchar(36) default NULL,
  `name` varchar(50) NOT NULL default '',
  `singleprice` float default NULL,
  `lots` int(11) default NULL,
  `quantity` int(11) default NULL,
  `operations_count` varchar(50) NOT NULL default '',
  `est_price` varchar(50) default NULL,
  `est_date` date default NULL,
  `execution_date` date default NULL,
  `executor` varchar(50) default NULL,
  `executed_date` date default NULL,
  `executored_from` varchar(50) default NULL,
  `executed_qty` varchar(50) default NULL,
  `description` text,
  `deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `productoperations`
-- 

INSERT INTO `productoperations` VALUES ('2d01a4a6-598f-774f-0f5e-46bc710e43a3', NULL, 'a5a08eeb-0be7-f066-2677-464d699203bc', 'Каталог "Пресфото"-2', '598457bc-776a-9154-9b63-4652c9ce58cb', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-10 14:10:43', '2007-08-10 14:11:21', NULL, '1', '1', 'Каталог "Пресфото"-2-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('52a600ef-755b-904d-44bf-46bc2da2b92e', NULL, 'a5a08eeb-0be7-f066-2677-464d699203bc', 'Каталог "Пресфото"-2', '598457bc-776a-9154-9b63-4652c9ce58cb', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-10 09:18:48', '2007-08-10 09:19:08', NULL, '1', '1', 'Каталог "Пресфото"-2-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('739df135-2faf-31be-8ba0-46baef0549e4', NULL, 'a5a08eeb-0be7-f066-2677-464d699203bc', 'Каталог "Пресфото"-2', '598457bc-776a-9154-9b63-4652c9ce58cb', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-09 10:43:45', '2007-08-10 09:18:48', NULL, '1', '1', 'Каталог "Пресфото"-2-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('7317a4b2-88bc-aa99-8724-46baef1d791d', NULL, 'a5a08eeb-0be7-f066-2677-464d699203bc', 'Каталог "Пресфото"-2', '598457bc-776a-9154-9b63-4652c9ce58cb', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-09 10:43:45', '2007-08-10 09:18:47', NULL, '1', '1', 'Каталог "Пресфото"-2-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('5ce90deb-1936-8532-ac6c-46bc2d85b2c9', NULL, 'a5a08eeb-0be7-f066-2677-464d699203bc', 'Каталог "Пресфото"-2', '598457bc-776a-9154-9b63-4652c9ce58cb', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-10 09:18:48', '2007-08-10 09:19:08', NULL, '1', '1', 'Каталог "Пресфото"-2-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('64ba0799-5e8d-b9cf-c7d5-46bc2d2e9b75', NULL, 'a5a08eeb-0be7-f066-2677-464d699203bc', 'Каталог "Пресфото"-2', '598457bc-776a-9154-9b63-4652c9ce58cb', NULL, NULL, 'Опаковане', '2a31ebad-52ef-a8c0-dda8-46b0b9a4cb4a', '2007-08-10 09:18:48', '2007-08-10 09:19:08', NULL, '1', '1', 'Каталог "Пресфото"-2-Опаковане', NULL, NULL, NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('27266491-541e-b66b-77d1-46bc2d1d37c9', NULL, 'a5a08eeb-0be7-f066-2677-464d699203bc', 'Каталог "Пресфото"-2', '598457bc-776a-9154-9b63-4652c9ce58cb', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-10 09:19:08', '2007-08-10 13:54:35', NULL, '1', '1', 'Каталог "Пресфото"-2-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('27ad17fa-c66a-7e27-277a-46bc2d38d9b2', NULL, 'a5a08eeb-0be7-f066-2677-464d699203bc', 'Каталог "Пресфото"-2', '598457bc-776a-9154-9b63-4652c9ce58cb', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-10 09:19:08', '2007-08-10 13:54:35', NULL, '1', '1', 'Каталог "Пресфото"-2-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('31f49ea8-33da-11c3-26e9-46bc6e9c82aa', NULL, 'a5a08eeb-0be7-f066-2677-464d699203bc', 'Каталог "Пресфото"-2', '598457bc-776a-9154-9b63-4652c9ce58cb', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-10 13:54:35', '2007-08-10 14:10:43', NULL, '1', '1', 'Каталог "Пресфото"-2-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('3294bba8-e54a-814d-76de-46bc6e3f700d', NULL, 'a5a08eeb-0be7-f066-2677-464d699203bc', 'Каталог "Пресфото"-2', '598457bc-776a-9154-9b63-4652c9ce58cb', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-10 13:54:35', '2007-08-10 14:10:43', NULL, '1', '1', 'Каталог "Пресфото"-2-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('2d8d5669-ae34-94de-c321-46bc71b18688', NULL, 'a5a08eeb-0be7-f066-2677-464d699203bc', 'Каталог "Пресфото"-2', '598457bc-776a-9154-9b63-4652c9ce58cb', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-10 14:10:43', '2007-08-10 14:11:21', NULL, '1', '1', 'Каталог "Пресфото"-2-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('3347b8ee-12ec-4be4-f5aa-46bc722c0d5a', NULL, 'a5a08eeb-0be7-f066-2677-464d699203bc', 'Каталог "Пресфото"-2', '598457bc-776a-9154-9b63-4652c9ce58cb', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-10 14:11:21', '2007-08-23 09:41:26', NULL, '1', '1', 'Каталог "Пресфото"-2-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('33d385c5-cdfd-0876-5fc0-46bc7266e9da', NULL, 'a5a08eeb-0be7-f066-2677-464d699203bc', 'Каталог "Пресфото"-2', '598457bc-776a-9154-9b63-4652c9ce58cb', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-10 14:11:21', '2007-08-23 09:41:26', NULL, '1', '1', 'Каталог "Пресфото"-2-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('a3269fdd-97c4-3d74-960c-46c945fb0663', NULL, '5ad9406d-87fe-c009-3c02-46c940616ee7', NULL, '629da741-d120-307b-0f49-46c94438e8c8', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-20 07:41:24', '2007-08-20 07:52:52', NULL, '1', '1', '-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('a91137e9-5b07-bfeb-01f9-46c9453abbcb', NULL, '5ad9406d-87fe-c009-3c02-46c940616ee7', NULL, '629da741-d120-307b-0f49-46c94438e8c8', NULL, NULL, 'Опаковане', '2a31ebad-52ef-a8c0-dda8-46b0b9a4cb4a', '2007-08-20 07:41:24', '2007-08-20 07:52:52', NULL, '1', '1', '-Опаковане', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('a6aee181-9f9a-236a-7683-46c94a4a5219', NULL, '5ad9406d-87fe-c009-3c02-46c940616ee7', NULL, '629da741-d120-307b-0f49-46c94438e8c8', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-20 08:00:41', '2007-08-20 08:19:11', NULL, '1', '1', '-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('b9231f69-959f-a78c-01f9-46c94ac8c7c9', NULL, '5ad9406d-87fe-c009-3c02-46c940616ee7', NULL, '629da741-d120-307b-0f49-46c94438e8c8', NULL, NULL, 'Опаковане', '2a31ebad-52ef-a8c0-dda8-46b0b9a4cb4a', '2007-08-20 08:00:44', '2007-08-20 08:19:11', NULL, '1', '1', '-Опаковане', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('f1fea2ad-b492-a011-6d08-46c94eb6ccc3', NULL, '5ad9406d-87fe-c009-3c02-46c940616ee7', 'Каталог-01-2007-1', '629da741-d120-307b-0f49-46c94438e8c8', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-20 08:19:11', '2007-08-20 08:19:38', NULL, '1', '1', 'Каталог-01-2007-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('420800cb-aff1-3ec8-388d-46c94ee643db', NULL, '5ad9406d-87fe-c009-3c02-46c940616ee7', 'Каталог-01-2007-1', '629da741-d120-307b-0f49-46c94438e8c8', NULL, NULL, 'Опаковане', '2a31ebad-52ef-a8c0-dda8-46b0b9a4cb4a', '2007-08-20 08:19:12', '2007-08-20 08:19:38', NULL, '1', '1', 'Каталог-01-2007-1-Опаковане', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('56a70920-f035-8733-5e4a-46c94e286595', NULL, '5ad9406d-87fe-c009-3c02-46c940616ee7', 'Каталог-01-2007-1', '629da741-d120-307b-0f49-46c94438e8c8', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-20 08:19:39', '2007-08-20 08:20:04', NULL, '1', '1', 'Каталог-01-2007-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('b4920366-da4a-5ad7-f123-46c94e6be694', NULL, '5ad9406d-87fe-c009-3c02-46c940616ee7', 'Каталог-01-2007-1', '629da741-d120-307b-0f49-46c94438e8c8', NULL, NULL, 'Опаковане', '2a31ebad-52ef-a8c0-dda8-46b0b9a4cb4a', '2007-08-20 08:19:39', '2007-08-20 08:20:04', NULL, '1', '1', 'Каталог-01-2007-1-Опаковане', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('44aec7be-8009-34b2-92bc-46c94e977a53', NULL, '5ad9406d-87fe-c009-3c02-46c940616ee7', 'Каталог-01-2007-1', '629da741-d120-307b-0f49-46c94438e8c8', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-20 08:20:04', '2007-08-20 11:58:33', NULL, '1', '1', 'Каталог-01-2007-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('4a9caf50-a692-bd44-8115-46c94e531705', NULL, '5ad9406d-87fe-c009-3c02-46c940616ee7', 'Каталог-01-2007-1', '629da741-d120-307b-0f49-46c94438e8c8', NULL, NULL, 'Опаковане', '2a31ebad-52ef-a8c0-dda8-46b0b9a4cb4a', '2007-08-20 08:20:04', '2007-08-20 11:58:33', NULL, '1', '1', 'Каталог-01-2007-1-Опаковане', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('4dc282cd-8103-7077-7b75-46c94e53063f', NULL, '5ad9406d-87fe-c009-3c02-46c940616ee7', 'Каталог-01-2007-1', '629da741-d120-307b-0f49-46c94438e8c8', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-20 08:20:04', '2007-08-20 08:20:17', NULL, '1', '1', 'Каталог-01-2007-1-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('e6ef1bde-bc53-af98-756b-46c981babc53', NULL, '5ad9406d-87fe-c009-3c02-46c940616ee7', 'Каталог-01-2007-1', '629da741-d120-307b-0f49-46c94438e8c8', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-20 11:58:33', '2007-08-20 11:59:00', NULL, '1', '1', 'Каталог-01-2007-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('335a6bd2-7279-88a2-beca-46c9820644b8', NULL, '5ad9406d-87fe-c009-3c02-46c940616ee7', 'Каталог-01-2007-1', '629da741-d120-307b-0f49-46c94438e8c8', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-20 11:59:00', '2007-08-20 12:23:12', NULL, '1', '1', 'Каталог-01-2007-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('387091e8-5335-6567-9240-46c982983d9b', NULL, '5ad9406d-87fe-c009-3c02-46c940616ee7', 'Каталог-01-2007-1', '629da741-d120-307b-0f49-46c94438e8c8', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-20 11:59:00', '2007-08-20 12:23:12', NULL, '1', '1', 'Каталог-01-2007-1-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('301c676c-1668-d4ee-e0b5-46c98775cc19', NULL, '5ad9406d-87fe-c009-3c02-46c940616ee7', 'Каталог-01-2007-1', '629da741-d120-307b-0f49-46c94438e8c8', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-20 12:23:12', '2007-08-21 07:03:44', NULL, '1', '1', 'Каталог-01-2007-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('35703862-a827-8d1e-9531-46c9871fcc4d', NULL, '5ad9406d-87fe-c009-3c02-46c940616ee7', 'Каталог-01-2007-1', '629da741-d120-307b-0f49-46c94438e8c8', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-20 12:23:12', '2007-08-21 07:03:44', NULL, '1', '1', 'Каталог-01-2007-1-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('e893ca0e-2316-3a74-392f-46ca8ed99a5b', NULL, '5ad9406d-87fe-c009-3c02-46c940616ee7', 'Каталог-01-2007-1', '629da741-d120-307b-0f49-46c94438e8c8', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-21 07:04:19', '2007-08-21 07:05:10', NULL, '1', '1', 'Каталог-01-2007-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('f2102d01-a826-86d1-e3e9-46ca8e4ba1c1', NULL, '5ad9406d-87fe-c009-3c02-46c940616ee7', 'Каталог-01-2007-1', '629da741-d120-307b-0f49-46c94438e8c8', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-21 07:04:20', '2007-08-21 07:05:10', NULL, '1', '1', 'Каталог-01-2007-1-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('ac2e8666-c4ba-6ae8-4929-46ca8e1a8281', NULL, '5ad9406d-87fe-c009-3c02-46c940616ee7', 'Каталог-01-2007-1', '629da741-d120-307b-0f49-46c94438e8c8', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-21 07:05:10', '2007-08-21 07:07:47', NULL, '1', '1', 'Каталог-01-2007-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('b2323724-fd7c-1755-0b04-46ca8ec3a9fd', NULL, '5ad9406d-87fe-c009-3c02-46c940616ee7', 'Каталог-01-2007-1', '629da741-d120-307b-0f49-46c94438e8c8', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-21 07:05:10', '2007-08-21 07:07:47', NULL, '1', '1', 'Каталог-01-2007-1-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('c66118bb-724b-99b4-cba4-46ca8f8f1c82', NULL, '5ad9406d-87fe-c009-3c02-46c940616ee7', 'Каталог-01-2007-1', '629da741-d120-307b-0f49-46c94438e8c8', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-21 07:07:47', '2007-08-21 07:25:05', NULL, '1', '1', 'Каталог-01-2007-1-ВШМ', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('cbca6a89-a409-0be4-46a3-46ca8fb28d71', NULL, '5ad9406d-87fe-c009-3c02-46c940616ee7', 'Каталог-01-2007-1', '629da741-d120-307b-0f49-46c94438e8c8', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-21 07:07:47', '2007-08-21 07:25:05', NULL, '1', '1', 'Каталог-01-2007-1-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('144f153d-b5f1-8296-f2f5-46ca9d29380a', NULL, '5ad9406d-87fe-c009-3c02-46c940616ee7', 'Каталог-01-2007-1', '629da741-d120-307b-0f49-46c94438e8c8', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-21 08:06:59', '2007-08-21 08:33:18', NULL, '1', '1', 'Каталог-01-2007-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('199b19a8-600f-45e8-6758-46ca9da62731', NULL, '5ad9406d-87fe-c009-3c02-46c940616ee7', 'Каталог-01-2007-1', '629da741-d120-307b-0f49-46c94438e8c8', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-21 08:06:59', '2007-08-21 08:33:18', NULL, '1', '1', 'Каталог-01-2007-1-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('308e6ebb-2ac8-57e7-5305-46caa8f41d57', NULL, '5ad9406d-87fe-c009-3c02-46c940616ee7', 'Каталог-01-2007-1', '629da741-d120-307b-0f49-46c94438e8c8', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-21 08:53:37', '2007-08-21 08:54:01', NULL, '1', '1', 'Каталог-01-2007-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('35d061c7-4f7f-1b1a-89fe-46caa82fd120', NULL, '5ad9406d-87fe-c009-3c02-46c940616ee7', 'Каталог-01-2007-1', '629da741-d120-307b-0f49-46c94438e8c8', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-21 08:53:37', '2007-08-21 08:54:01', NULL, '1', '1', 'Каталог-01-2007-1-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('aac0c74b-c8a6-7566-75be-46caa813d4f1', NULL, '5ad9406d-87fe-c009-3c02-46c940616ee7', 'Каталог-01-2007-1', '629da741-d120-307b-0f49-46c94438e8c8', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-21 08:54:01', '2007-08-21 08:54:40', NULL, '1', '1', 'Каталог-01-2007-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('b00ba52e-e584-eaa4-5bd4-46caa87f32a1', NULL, '5ad9406d-87fe-c009-3c02-46c940616ee7', 'Каталог-01-2007-1', '629da741-d120-307b-0f49-46c94438e8c8', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-21 08:54:01', '2007-08-21 08:54:40', NULL, '1', '1', 'Каталог-01-2007-1-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('7c8dd768-1367-08b2-1c13-46caa82379dc', NULL, '5ad9406d-87fe-c009-3c02-46c940616ee7', 'Каталог-01-2007-1', '629da741-d120-307b-0f49-46c94438e8c8', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-21 08:54:40', '2007-08-21 08:55:25', NULL, '1', '1', 'Каталог-01-2007-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('7cda5be9-6efc-f642-af31-46caa89d4965', NULL, '5ad9406d-87fe-c009-3c02-46c940616ee7', 'Каталог-01-2007-1', '629da741-d120-307b-0f49-46c94438e8c8', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-21 08:55:25', '2007-08-21 08:57:41', NULL, '1', '1', 'Каталог-01-2007-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('8290b29a-ea8b-62ed-61b1-46caa93f8b6e', NULL, '5ad9406d-87fe-c009-3c02-46c940616ee7', 'Каталог-01-2007-1', '629da741-d120-307b-0f49-46c94438e8c8', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-21 08:57:41', '2007-08-21 08:59:01', NULL, '1', '1', 'Каталог-01-2007-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('87f47246-92d4-72b4-29d6-46caa99cb87c', NULL, '5ad9406d-87fe-c009-3c02-46c940616ee7', 'Каталог-01-2007-1', '629da741-d120-307b-0f49-46c94438e8c8', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-21 08:57:41', '2007-08-21 08:59:02', NULL, '1', '1', 'Каталог-01-2007-1-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('f1d5040f-3750-376d-9c2c-46caa933b0a3', NULL, '5ad9406d-87fe-c009-3c02-46c940616ee7', 'Каталог-01-2007-1', '629da741-d120-307b-0f49-46c94438e8c8', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-21 08:59:02', '2007-08-21 09:00:48', NULL, '1', '1', 'Каталог-01-2007-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('146a1288-4e16-3983-f966-46caa9992175', NULL, '5ad9406d-87fe-c009-3c02-46c940616ee7', 'Каталог-01-2007-1', '629da741-d120-307b-0f49-46c94438e8c8', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-21 08:59:02', '2007-08-21 09:00:48', NULL, '1', '1', 'Каталог-01-2007-1-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('d372a986-d663-0cb2-e46f-46caa9402ba2', NULL, '5ad9406d-87fe-c009-3c02-46c940616ee7', 'Каталог-01-2007-1', '629da741-d120-307b-0f49-46c94438e8c8', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-21 09:00:48', '2007-08-21 09:29:37', NULL, '1', '1', 'Каталог-01-2007-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('d8c76b42-4364-aec4-4f65-46caa963ac06', NULL, '5ad9406d-87fe-c009-3c02-46c940616ee7', 'Каталог-01-2007-1', '629da741-d120-307b-0f49-46c94438e8c8', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-21 09:00:48', '2007-08-21 09:29:37', NULL, '1', '1', 'Каталог-01-2007-1-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('30f922e4-9cf6-fa69-d659-46cab0cbab89', NULL, '5ad9406d-87fe-c009-3c02-46c940616ee7', 'Каталог-01-2007-1', '629da741-d120-307b-0f49-46c94438e8c8', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-21 09:29:37', '2007-08-21 09:41:57', NULL, '1', '1', 'Каталог-01-2007-1-ВШМ', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('35f3d35e-c7f6-543e-aa3a-46cab00c68a0', NULL, '5ad9406d-87fe-c009-3c02-46c940616ee7', 'Каталог-01-2007-1', '629da741-d120-307b-0f49-46c94438e8c8', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-21 09:29:37', '2007-08-21 09:41:57', NULL, '1', '1', 'Каталог-01-2007-1-Лепене', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('545af650-2dbc-c6b0-a19f-46cac3fc7899', NULL, '5ad9406d-87fe-c009-3c02-46c940616ee7', 'Каталог-01-2007-1', '629da741-d120-307b-0f49-46c94438e8c8', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-21 10:51:37', '2007-08-21 10:52:12', NULL, '1', '1', 'Каталог-01-2007-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('57358786-0930-3473-5739-46cac3c287b4', NULL, '5ad9406d-87fe-c009-3c02-46c940616ee7', 'Каталог-01-2007-1', '629da741-d120-307b-0f49-46c94438e8c8', NULL, NULL, 'Книговезане', 'cc2cb632-61a2-bd4f-5e2e-4691f58d5fc6', '2007-08-21 10:51:37', '2007-08-21 10:52:12', NULL, '1', '1', 'Каталог-01-2007-1-Книговезане', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('549a4cf8-ee77-26f3-03ff-46cac3404640', NULL, '5ad9406d-87fe-c009-3c02-46c940616ee7', 'Каталог-01-2007-1', '629da741-d120-307b-0f49-46c94438e8c8', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-21 10:52:12', '2007-08-21 11:38:46', NULL, '1', '1', 'Каталог-01-2007-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('71cbdd17-466c-7a3e-7847-46caceedbe21', NULL, '5ad9406d-87fe-c009-3c02-46c940616ee7', 'Каталог-01-2007-1', '629da741-d120-307b-0f49-46c94438e8c8', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-21 11:38:46', '2007-08-21 11:38:46', NULL, '1', '1', 'Каталог-01-2007-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `productoperations` VALUES ('773585ef-daf2-d83e-4825-46cacec84b24', NULL, '5ad9406d-87fe-c009-3c02-46c940616ee7', 'Каталог-01-2007-1', '629da741-d120-307b-0f49-46c94438e8c8', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-21 11:38:46', '2007-08-21 11:38:46', NULL, '1', '1', 'Каталог-01-2007-1-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `productoperations` VALUES ('e347c880-9821-dcae-d85e-46cd569da3ba', NULL, 'a5a08eeb-0be7-f066-2677-464d699203bc', 'Корица Пресфото', '598457bc-776a-9154-9b63-4652c9ce58cb', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-23 09:41:26', '2007-08-24 07:40:58', NULL, '1', '1', 'Корица Пресфото-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('ec9f666d-fcbc-934e-32e3-46cd56703ba0', NULL, 'a5a08eeb-0be7-f066-2677-464d699203bc', 'Корица Пресфото', '598457bc-776a-9154-9b63-4652c9ce58cb', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-23 09:41:26', '2007-08-24 07:40:58', NULL, '1', '1', 'Корица Пресфото-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('960a88c9-5dfa-5ca9-beaf-46ce8b115898', NULL, 'a5a08eeb-0be7-f066-2677-464d699203bc', 'Корица Пресфото', '598457bc-776a-9154-9b63-4652c9ce58cb', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-24 07:40:58', '2007-08-24 07:40:58', NULL, '1', '1', 'Корица Пресфото-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `productoperations` VALUES ('9b8bea84-31de-5d46-c98c-46ce8bb87d12', NULL, 'a5a08eeb-0be7-f066-2677-464d699203bc', 'Корица Пресфото', '598457bc-776a-9154-9b63-4652c9ce58cb', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-24 07:40:58', '2007-08-24 07:40:58', NULL, '1', '1', 'Корица Пресфото-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

-- 
-- Структура на таблица `products`
-- 

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` varchar(36) NOT NULL default '',
  `date_entered` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `assigned_user_id` varchar(36) default NULL,
  `modified_user_id` varchar(36) default NULL,
  `account_id` varchar(36) default NULL,
  `account_name` varchar(50) NOT NULL default '',
  `contact_id` varchar(36) default NULL,
  `contact_name` varchar(50) default NULL,
  `created_by` varchar(36) default NULL,
  `pnum` varchar(36) NOT NULL default '',
  `type` varchar(255) default NULL,
  `pnum_pref` varchar(3) default NULL,
  `pnum_suf` int(5) default NULL,
  `category` varchar(50) default NULL,
  `format` varchar(50) default NULL,
  `unit` varchar(10) default NULL,
  `is_active` tinyint(1) default '1',
  `deadline` date default NULL,
  `components` int(12) default NULL,
  `volume` int(11) default NULL,
  `status` varchar(25) default NULL,
  `period` varchar(64) default NULL,
  `note` text,
  `vision` varchar(80) default NULL,
  `quantity` int(11) default NULL,
  `fsize_h` int(11) default NULL,
  `fsize_w` int(11) default NULL,
  `samples` varchar(12) default NULL,
  `file` varchar(12) default NULL,
  `name` varchar(50) NOT NULL default '',
  `description` text,
  `deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `products`
-- 

INSERT INTO `products` VALUES ('a5a08eeb-0be7-f066-2677-464d699203bc', '2007-05-18 08:52:29', '2007-07-09 07:55:14', '1', '1', NULL, 'Артком', NULL, NULL, '1', 'PRD10000', NULL, 'PRD', 10000, 'Magazine', NULL, NULL, 1, NULL, NULL, NULL, 'Waiting for Estimate', 'No', NULL, NULL, 3000, 70, 100, 'Yes', 'email', 'Каталог Пресфото', NULL, 0);
INSERT INTO `products` VALUES ('dceaf769-3f1a-e605-2df3-4678f3dbd10b', '2007-06-20 09:29:22', '2007-06-20 15:45:45', '1', '1', NULL, 'Format Vision', NULL, 'Иван Иванов', '1', 'PRD10001', NULL, 'PRD', 10001, 'Magazine', NULL, NULL, 1, '2007-06-24', 2, NULL, 'Waiting for Estimate', 'Yes', NULL, 'Болен Здрав Носи', 10000, NULL, NULL, 'Yes', 'ftp', 'Първо издание', NULL, 0);
INSERT INTO `products` VALUES ('5ad9406d-87fe-c009-3c02-46c940616ee7', '2007-08-20 07:19:56', '2007-08-20 07:21:24', '1', '1', '3469d46c-01d4-3d22-343e-46c940a85ca0', 'Марио Николов', NULL, NULL, '1', 'PRD10002', NULL, 'PRD', 10002, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'Waiting for Estimate', 'No', NULL, NULL, 400, NULL, NULL, 'No', 'email', 'Каталог-01-2007', NULL, 0);
INSERT INTO `products` VALUES ('855ecc8f-76e5-b3d5-4691-46c9438ed9c5', '2007-08-20 07:30:27', '2007-08-20 07:34:20', '1', '1', NULL, 'Артком', NULL, NULL, '1', 'PRD10003', NULL, 'PRD', 10003, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'Waiting for Estimate', 'No', NULL, NULL, NULL, NULL, NULL, 'No', 'email', 'asdasd', NULL, 1);
INSERT INTO `products` VALUES ('c390cd3c-e848-d864-a22c-46c9433575bc', '2007-08-20 07:31:15', '2007-08-20 07:34:20', '1', '1', NULL, 'Артком', NULL, NULL, '1', 'PRD10004', NULL, 'PRD', 10004, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'Waiting for Estimate', 'No', NULL, NULL, NULL, NULL, NULL, 'No', 'email', 'asdsa', NULL, 1);

-- --------------------------------------------------------

-- 
-- Структура на таблица `products_components`
-- 

DROP TABLE IF EXISTS `products_components`;
CREATE TABLE `products_components` (
  `id` varchar(36) NOT NULL default '',
  `date_entered` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `assigned_user_id` varchar(36) default NULL,
  `modified_user_id` varchar(36) default NULL,
  `created_by` varchar(36) default NULL,
  `name` varchar(50) NOT NULL default '',
  `status` varchar(255) default NULL,
  `parent_id` varchar(36) NOT NULL default '',
  `description` text,
  `paperid` varchar(36) NOT NULL default '',
  `client_paper` varchar(10) default NULL,
  `number` varchar(36) default NULL,
  `number_pref` varchar(3) default NULL,
  `number_suf` int(3) default NULL,
  `paper` varchar(36) default NULL,
  `type` varchar(36) default NULL,
  `format` varchar(36) default NULL,
  `fsize_h` int(11) default NULL,
  `fsize_w` int(11) default NULL,
  `bleed_format` varchar(50) default NULL,
  `run_format` varchar(50) default NULL,
  `run_size_x` float default NULL,
  `run_size_y` float default NULL,
  `bleed_size_x` float default NULL,
  `bleed_size_y` float default NULL,
  `press_format` varchar(36) default NULL,
  `press_size_x` float NOT NULL default '0',
  `press_size_y` float NOT NULL default '0',
  `volume` int(36) default NULL,
  `quantity` int(36) default NULL,
  `color_side_a` int(36) default NULL,
  `color_side_b` int(36) default NULL,
  `machine` varchar(36) default NULL,
  `price` varchar(50) default NULL,
  `price_id` varchar(36) default NULL,
  `supplier_id` varchar(36) default NULL,
  `supplier_name` varchar(50) default NULL,
  `order_number` int(11) default '1',
  `task_number` int(11) default NULL,
  `depends_on_id` varchar(36) default NULL,
  `milestone_flag` varchar(255) default NULL,
  `deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `products_components`
-- 

INSERT INTO `products_components` VALUES ('4769ac12-e56f-a792-07af-4652c986db5f', '2007-05-22 10:43:38', '2007-08-01 13:48:20', '1', '1', '1', 'Каталог "Пресфото"-1', NULL, 'a5a08eeb-0be7-f066-2677-464d699203bc', NULL, 'a4cb4337-447a-2e72-b569-464d64ac31bf', NULL, 'PRD10000-1', 'PRD', 1, 'Хартия - Мат - 70х100 -170гр', 'Body', NULL, 70, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 88, NULL, NULL, NULL, 'Shinohara', NULL, NULL, NULL, NULL, 1, NULL, NULL, 'off', 0);
INSERT INTO `products_components` VALUES ('598457bc-776a-9154-9b63-4652c9ce58cb', '2007-05-22 10:45:43', '2007-08-24 07:40:58', '1', '1', '1', 'Корица Пресфото', NULL, 'a5a08eeb-0be7-f066-2677-464d699203bc', 'Това е корицата на каталога Пресфото', 'a4cb4337-447a-2e72-b569-464d64ac31bf', 'No', 'PRD10000-2', 'PRD', 2, 'Хартия - Мат - 70х100 -170гр', 'Cover', 'GTO', 35, 50, 'GTO', 'GTO', 35, 50, 35, 50, 'GTO', 35, 50, 5, 2000, 4, 4, 'GTO', '0.4', 'b9229202-1196-26cd-e0ef-464d65246ea2', '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'К1 Партнерс', 1, NULL, NULL, 'off', 0);
INSERT INTO `products_components` VALUES ('ea1dcb84-deb8-27a6-8979-46794b54eecc', '2007-06-20 15:45:45', '2007-08-07 12:28:50', '1', '1', '1', 'Първо издание-3', NULL, 'dceaf769-3f1a-e605-2df3-4678f3dbd10b', NULL, '', NULL, 'PRD10001-3', 'PRD', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1, NULL, NULL, NULL, 1);
INSERT INTO `products_components` VALUES ('455b648a-14f4-8040-dc22-46794b85388d', '2007-06-20 15:45:25', '2007-08-07 12:28:51', '1', '1', '1', 'Първо издание-1', NULL, 'dceaf769-3f1a-e605-2df3-4678f3dbd10b', NULL, '', NULL, 'PRD10001-1', 'PRD', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1, NULL, NULL, NULL, 1);
INSERT INTO `products_components` VALUES ('f7180fe0-c681-3c25-d43a-46794b94c950', '2007-06-20 15:45:32', '2007-08-07 12:28:51', '1', '1', '1', 'Първо издание-2', NULL, 'dceaf769-3f1a-e605-2df3-4678f3dbd10b', NULL, '', NULL, 'PRD10001-2', 'PRD', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1, NULL, NULL, NULL, 1);
INSERT INTO `products_components` VALUES ('effda548-643f-4045-c97d-469392a33f44', '2007-07-10 14:05:41', '2007-07-11 12:45:53', '1', '1', '1', 'Каталог Пресфото-3', NULL, 'a5a08eeb-0be7-f066-2677-464d699203bc', NULL, '', NULL, 'PRD10000-3', 'PRD', 3, 'Хартия - Мат - 70х100 -170гр', 'Body', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 55, NULL, 4, 4, NULL, NULL, NULL, '', '', 1, NULL, NULL, 'off', 0);
INSERT INTO `products_components` VALUES ('a6b3c2b7-b1b5-0038-18ae-46948481b3e8', '2007-07-11 07:20:10', '2007-07-16 07:42:43', '1', '1', '1', 'Каталог Пресфото-4', NULL, 'a5a08eeb-0be7-f066-2677-464d699203bc', NULL, '', NULL, 'PRD10000-4', 'PRD', 4, 'Хартия - Мат - 70х100 -170гр', 'Body', 'GTO', 35, 50, 'GTO', 'GTO', 35, 50, 35, 50, NULL, 0, 0, 52, NULL, 3, 3, NULL, NULL, NULL, '', '', 1, NULL, NULL, 'off', 0);
INSERT INTO `products_components` VALUES ('6508c5a0-0630-b9c2-49df-46c57f37ab0c', '2007-08-17 11:01:01', '2007-08-17 11:01:01', '1', '1', '1', 'Първо издание-1', NULL, 'dceaf769-3f1a-e605-2df3-4678f3dbd10b', NULL, 'afdedf2d-1d0d-439f-d9a8-464d656ee6d3', NULL, 'PRD10001-1', 'PRD', 1, 'Хартия - Мат - 70х100 -300гр', 'Body', 'GTO', 35, 50, 'GTO', 'GTO', 35, 50, 35, 50, NULL, 0, 0, 10, NULL, 4, 4, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 0);
INSERT INTO `products_components` VALUES ('c165910b-df60-1b59-1d45-46c93ee2e59d', '2007-08-20 07:09:27', '2007-08-20 07:09:27', '1', '1', '1', 'Първо издание-2', NULL, 'dceaf769-3f1a-e605-2df3-4678f3dbd10b', NULL, 'a4cb4337-447a-2e72-b569-464d64ac31bf', NULL, 'PRD10001-2', 'PRD', 2, 'Хартия - Мат - 70х100 -170гр', 'Body', 'GTO', 35, 50, 'GTO', 'GTO', 35, 50, 35, 50, NULL, 0, 0, 10, NULL, 4, 4, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 0);
INSERT INTO `products_components` VALUES ('629da741-d120-307b-0f49-46c94438e8c8', '2007-08-20 07:38:15', '2007-08-21 11:38:46', '1', '1', '1', 'Каталог-01-2007-1', NULL, '5ad9406d-87fe-c009-3c02-46c940616ee7', NULL, 'afdedf2d-1d0d-439f-d9a8-464d656ee6d3', 'No', 'PRD10002-1', 'PRD', 1, 'Хартия - Мат - 70х100 -300гр', 'Body', 'A5', 15, 21, 'A5', 'A5', 15, 21, 15, 21, 'GTO', 35, 50, 8, 400, 4, 4, NULL, '0.385', '2fe515e8-56ba-842f-090b-46c93f63c652', '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'К1 Партнерс', 1, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

-- 
-- Структура на таблица `products_pricebooks`
-- 

DROP TABLE IF EXISTS `products_pricebooks`;
CREATE TABLE `products_pricebooks` (
  `id` char(36) NOT NULL default '',
  `product_id` char(36) default NULL,
  `pricebook_id` char(36) default NULL,
  `trade_price` double default NULL,
  `created_by` char(36) default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_pro_prc_pro` (`product_id`),
  KEY `idx_prc_pro_prc` (`pricebook_id`),
  KEY `idx_products_pricebooks` (`product_id`,`pricebook_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `products_pricebooks`
-- 


-- --------------------------------------------------------

-- 
-- Структура на таблица `products_relation`
-- 

DROP TABLE IF EXISTS `products_relation`;
CREATE TABLE `products_relation` (
  `id` varchar(36) NOT NULL default '',
  `product_id` varchar(36) NOT NULL default '',
  `relation_id` varchar(36) NOT NULL default '',
  `relation_type` varchar(255) NOT NULL default '',
  `deleted` tinyint(1) NOT NULL default '0',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `products_relation`
-- 

INSERT INTO `products_relation` VALUES ('54b014a3-bde0-c79e-6100-46543f8debaa', 'a5a08eeb-0be7-f066-2677-464d699203bc', '1ae804e8-06a5-ed75-94d3-45d194878ef8', 'Contacts', 1, '2007-05-23 13:20:40');
INSERT INTO `products_relation` VALUES ('28720907-315f-6de8-cf5a-4678f3712a96', 'dceaf769-3f1a-e605-2df3-4678f3dbd10b', '67ef6d1c-cd37-03b8-0d82-4678e72f46e8', 'Contacts', 1, '2007-06-20 15:33:47');
INSERT INTO `products_relation` VALUES ('7af6dec9-15a2-f37f-a5ad-467945679bf3', 'dceaf769-3f1a-e605-2df3-4678f3dbd10b', '67ef6d1c-cd37-03b8-0d82-4678e72f46e8', 'Contacts', 1, '2007-06-20 15:33:47');

-- --------------------------------------------------------

-- 
-- Структура на таблица `project`
-- 

DROP TABLE IF EXISTS `project`;
CREATE TABLE `project` (
  `id` varchar(36) NOT NULL default '',
  `date_entered` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `assigned_user_id` varchar(36) default NULL,
  `modified_user_id` varchar(36) default NULL,
  `created_by` varchar(36) default NULL,
  `name` varchar(50) NOT NULL default '',
  `description` text,
  `deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 PACK_KEYS=0;

-- 
-- Дъмп (схема) на данните в таблицата `project`
-- 

INSERT INTO `project` VALUES ('de0999f7-ba02-5cd5-7ded-45dd5c61727b', '2007-02-22 09:05:13', '2007-02-23 08:21:48', '1', '1', '1', ' Хоремаг бр.9', NULL, 1);
INSERT INTO `project` VALUES ('a50d0064-056e-9a25-a090-465404e7d193', '2007-05-23 09:10:20', '2007-05-23 13:19:48', '1', '1', '1', 'as', NULL, 1);

-- --------------------------------------------------------

-- 
-- Структура на таблица `project_relation`
-- 

DROP TABLE IF EXISTS `project_relation`;
CREATE TABLE `project_relation` (
  `id` varchar(36) NOT NULL default '',
  `project_id` varchar(36) NOT NULL default '',
  `relation_id` varchar(36) NOT NULL default '',
  `relation_type` varchar(255) NOT NULL default '',
  `deleted` tinyint(1) NOT NULL default '0',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `project_relation`
-- 

INSERT INTO `project_relation` VALUES ('83e09c08-81bc-1caa-9b75-45ab8c4bee73', 'bf06ff96-299f-9e51-2a8f-45ab8caafa90', '745993fd-6032-8635-ce12-459e75c3c42e', 'Accounts', 1, '2007-02-05 13:17:40');
INSERT INTO `project_relation` VALUES ('a4edd575-bd27-9777-0c7c-45ab8df5e775', 'bf06ff96-299f-9e51-2a8f-45ab8caafa90', 'af1043aa-69c5-a0ed-61ff-45ab42c669a3', 'Accounts', 1, '2007-01-16 15:38:18');

-- --------------------------------------------------------

-- 
-- Структура на таблица `project_task`
-- 

DROP TABLE IF EXISTS `project_task`;
CREATE TABLE `project_task` (
  `id` varchar(36) NOT NULL default '',
  `date_entered` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `assigned_user_id` varchar(36) default NULL,
  `modified_user_id` varchar(36) default NULL,
  `created_by` varchar(36) default NULL,
  `name` varchar(50) NOT NULL default '',
  `status` varchar(255) default NULL,
  `date_due` date default NULL,
  `time_due` time default NULL,
  `date_start` date default NULL,
  `time_start` time default NULL,
  `parent_id` varchar(36) NOT NULL default '',
  `priority` varchar(255) default NULL,
  `description` text,
  `order_number` int(11) default '1',
  `task_number` int(11) default NULL,
  `depends_on_id` varchar(36) default NULL,
  `milestone_flag` varchar(255) default NULL,
  `estimated_effort` int(11) default NULL,
  `actual_effort` int(11) default NULL,
  `utilization` int(11) default '100',
  `percent_complete` int(11) default '0',
  `deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `project_task`
-- 

INSERT INTO `project_task` VALUES ('cb5d0044-28a1-8936-507f-459b94b74d07', '2007-01-03 11:35:00', '2007-01-12 13:59:04', '1', '1', '1', 'pro task 1', 'Not Started', NULL, NULL, NULL, NULL, '', 'High', NULL, 1, NULL, NULL, 'off', NULL, NULL, 100, 0, 1);
INSERT INTO `project_task` VALUES ('1e7d4f0a-4788-a437-7301-45dd5cc7f101', '2007-02-22 09:05:28', '2007-02-23 08:21:48', '1', '1', '1', ' Хоремаг бр.9', 'Not Started', NULL, NULL, NULL, NULL, '', 'High', NULL, 1, NULL, NULL, 'off', NULL, NULL, 100, 0, 1);

-- --------------------------------------------------------

-- 
-- Структура на таблица `project_task_audit`
-- 

DROP TABLE IF EXISTS `project_task_audit`;
CREATE TABLE `project_task_audit` (
  `id` varchar(36) NOT NULL default '',
  `parent_id` varchar(36) NOT NULL default '',
  `date_created` datetime default NULL,
  `created_by` varchar(36) default NULL,
  `field_name` varchar(100) default NULL,
  `data_type` varchar(100) default NULL,
  `before_value_string` varchar(255) default NULL,
  `after_value_string` varchar(255) default NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `project_task_audit`
-- 


-- --------------------------------------------------------

-- 
-- Структура на таблица `prospect_list_campaigns`
-- 

DROP TABLE IF EXISTS `prospect_list_campaigns`;
CREATE TABLE `prospect_list_campaigns` (
  `id` varchar(36) NOT NULL default '',
  `prospect_list_id` varchar(36) default NULL,
  `campaign_id` varchar(36) default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_pro_id` (`prospect_list_id`),
  KEY `idx_cam_id` (`campaign_id`),
  KEY `idx_prospect_list_campaigns` (`prospect_list_id`,`campaign_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `prospect_list_campaigns`
-- 


-- --------------------------------------------------------

-- 
-- Структура на таблица `prospect_lists`
-- 

DROP TABLE IF EXISTS `prospect_lists`;
CREATE TABLE `prospect_lists` (
  `id` varchar(36) NOT NULL default '',
  `name` varchar(50) default NULL,
  `list_type` varchar(25) default NULL,
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `modified_user_id` varchar(36) default NULL,
  `assigned_user_id` varchar(36) default NULL,
  `created_by` varchar(36) default NULL,
  `deleted` tinyint(1) NOT NULL default '0',
  `description` text,
  `domain_name` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_prospect_list_name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `prospect_lists`
-- 


-- --------------------------------------------------------

-- 
-- Структура на таблица `prospect_lists_prospects`
-- 

DROP TABLE IF EXISTS `prospect_lists_prospects`;
CREATE TABLE `prospect_lists_prospects` (
  `id` varchar(36) NOT NULL default '',
  `prospect_list_id` varchar(36) default NULL,
  `related_id` varchar(36) default NULL,
  `related_type` varchar(25) default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_plp_pro_id` (`prospect_list_id`),
  KEY `idx_plp_rel_id` (`related_id`,`related_type`,`prospect_list_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `prospect_lists_prospects`
-- 


-- --------------------------------------------------------

-- 
-- Структура на таблица `prospects`
-- 

DROP TABLE IF EXISTS `prospects`;
CREATE TABLE `prospects` (
  `id` varchar(36) NOT NULL default '',
  `tracker_key` int(11) NOT NULL auto_increment,
  `deleted` tinyint(1) default '0',
  `date_entered` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_user_id` varchar(36) default NULL,
  `assigned_user_id` varchar(36) default NULL,
  `created_by` varchar(36) default NULL,
  `salutation` varchar(5) default NULL,
  `first_name` varchar(100) default NULL,
  `last_name` varchar(100) default NULL,
  `title` varchar(25) default NULL,
  `department` varchar(255) default NULL,
  `birthdate` date default NULL,
  `do_not_call` varchar(3) default '0',
  `phone_home` varchar(25) default NULL,
  `phone_mobile` varchar(25) default NULL,
  `phone_work` varchar(25) default NULL,
  `phone_other` varchar(25) default NULL,
  `phone_fax` varchar(25) default NULL,
  `email1` varchar(100) default NULL,
  `email2` varchar(100) default NULL,
  `assistant` varchar(75) default NULL,
  `assistant_phone` varchar(25) default NULL,
  `email_opt_out` varchar(3) default '0',
  `primary_address_street` varchar(150) default NULL,
  `primary_address_city` varchar(100) default NULL,
  `primary_address_state` varchar(100) default NULL,
  `primary_address_postalcode` varchar(20) default NULL,
  `primary_address_country` varchar(100) default NULL,
  `alt_address_street` varchar(150) default NULL,
  `alt_address_city` varchar(100) default NULL,
  `alt_address_state` varchar(100) default NULL,
  `alt_address_postalcode` varchar(20) default NULL,
  `alt_address_country` varchar(100) default NULL,
  `description` text,
  `invalid_email` tinyint(1) default '0',
  `lead_id` varchar(36) default NULL,
  `account_name` varchar(150) default NULL,
  PRIMARY KEY  (`id`),
  KEY `prospect_auto_tracker_key` (`tracker_key`),
  KEY `idx_prospects_last_first` (`last_name`,`first_name`,`deleted`),
  KEY `idx_prospecs_del_last` (`last_name`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Дъмп (схема) на данните в таблицата `prospects`
-- 

INSERT INTO `prospects` VALUES ('704a24d7-19aa-355b-1078-45dd6830fcd1', 1, 1, '2007-02-22 09:53:48', '2007-02-22 09:54:01', '1', '1', '1', NULL, NULL, 'Administrator', NULL, NULL, NULL, 'on', NULL, NULL, NULL, NULL, NULL, 'lord_pgp@abv.bg', NULL, NULL, NULL, 'on', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

-- 
-- Структура на таблица `purchaseorderlines`
-- 

DROP TABLE IF EXISTS `purchaseorderlines`;
CREATE TABLE `purchaseorderlines` (
  `id` varchar(36) NOT NULL default '',
  `purchaseorderid` varchar(36) NOT NULL default '',
  `materialid` varchar(36) default NULL,
  `paperid` varchar(36) default NULL,
  `materialname` varchar(50) NOT NULL default '',
  `measure` varchar(36) default NULL,
  `number` varchar(36) default NULL,
  `quantity` double default NULL,
  `deleted` tinyint(1) default '0',
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `created_by` varchar(36) NOT NULL default '',
  `price` varchar(36) default NULL,
  `singlep` varchar(36) default NULL,
  `unit` varchar(11) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `purchaseorderlines`
-- 

INSERT INTO `purchaseorderlines` VALUES ('a73a0e38-7f5d-579e-71e8-469331199ad1', '9ff46cc1-c26c-f6bc-4dfa-46933145d897', NULL, 'a4cb4337-447a-2e72-b569-464d64ac31bf', 'Хартия - Мат - 70х100 -170гр', NULL, '2', NULL, 0, '2007-07-10 07:14:27', '2007-07-10 07:14:27', '1', NULL, NULL, NULL);

-- --------------------------------------------------------

-- 
-- Структура на таблица `purchaseorders`
-- 

DROP TABLE IF EXISTS `purchaseorders`;
CREATE TABLE `purchaseorders` (
  `id` varchar(36) NOT NULL default '',
  `name` varchar(36) NOT NULL default '',
  `num` varchar(50) NOT NULL default '',
  `num_pref` varchar(3) NOT NULL default '',
  `num_suf` varchar(5) NOT NULL default '',
  `total_price` varchar(36) default NULL,
  `supplier_name` varchar(36) NOT NULL default '',
  `supplier_id` varchar(36) default NULL,
  `order_date` date default NULL,
  `delivery_date` date default NULL,
  `delivered_date` date default NULL,
  `supplier_contact_name` varchar(50) NOT NULL default '',
  `supplier_contact_id` varchar(36) default NULL,
  `sales_order_num` varchar(20) default NULL,
  `sales_order_id` varchar(20) default NULL,
  `payment_term` varchar(20) default NULL,
  `supplier_address` varchar(20) default NULL,
  `shipping_address` int(11) default NULL,
  `assigned_user_id` varchar(36) default NULL,
  `note` varchar(200) default NULL,
  `status` tinyint(1) default '0',
  `deleted` tinyint(1) default '0',
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `created_by` varchar(36) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `idx_quote_id_del` (`id`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `purchaseorders`
-- 

INSERT INTO `purchaseorders` VALUES ('9ff46cc1-c26c-f6bc-4dfa-46933145d897', 'POR10000', 'POR10000', 'POR', '10000', NULL, 'К1 Партнерс', '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', NULL, NULL, NULL, 'Петър Петров', '1ae804e8-06a5-ed75-94d3-45d194878ef8', NULL, NULL, NULL, NULL, NULL, '1', NULL, 0, 0, '2007-07-10 07:14:27', '2007-07-10 07:14:27', '1');

-- --------------------------------------------------------

-- 
-- Структура на таблица `quotelines`
-- 

DROP TABLE IF EXISTS `quotelines`;
CREATE TABLE `quotelines` (
  `id` varchar(36) NOT NULL default '',
  `quoteid` varchar(36) NOT NULL default '',
  `productid` varchar(36) NOT NULL default '',
  `productname` varchar(50) NOT NULL default '',
  `productnum` varchar(36) default NULL,
  `quantity` double default NULL,
  `status` tinyint(1) default '0',
  `deleted` tinyint(1) default '0',
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `created_by` varchar(36) NOT NULL default '',
  `price` float default NULL,
  `estp` float default NULL,
  `pages` int(11) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `quotelines`
-- 

INSERT INTO `quotelines` VALUES ('8ebf7f9c-0f06-1c83-afab-4666bddac054', '8744347e-fd60-6b8e-d9a1-4666bd16fcb4', 'a5a08eeb-0be7-f066-2677-464d699203bc', 'Каталог Пресфото', 'PRD10000', 3000, 0, 1, '2007-06-06 13:58:16', '2007-06-15 14:01:13', '1', 1000, 0.5, 100);
INSERT INTO `quotelines` VALUES ('321794a1-5a5a-9cc4-43be-46729ba82fe4', '8744347e-fd60-6b8e-d9a1-4666bd16fcb4', 'a5a08eeb-0be7-f066-2677-464d699203bc', 'Каталог Пресфото', 'PRD10000', 3000, 0, 1, '2007-06-15 14:01:13', '2007-06-15 14:51:10', '1', 1000, 0.5, 100);
INSERT INTO `quotelines` VALUES ('4f48faa8-e2b4-59e2-ef3a-4672a7a62c66', '8744347e-fd60-6b8e-d9a1-4666bd16fcb4', 'a5a08eeb-0be7-f066-2677-464d699203bc', 'Каталог Пресфото', 'PRD10000', 3000, 0, 1, '2007-06-15 14:51:10', '2007-06-15 14:52:03', '1', 1000, 0.5, 100);
INSERT INTO `quotelines` VALUES ('2602a68e-dbba-a0ff-7dfd-4672a7b71ef8', '8744347e-fd60-6b8e-d9a1-4666bd16fcb4', 'a5a08eeb-0be7-f066-2677-464d699203bc', 'Каталог Пресфото', 'PRD10000', 3000, 0, 1, '2007-06-15 14:52:03', '2007-06-15 14:53:45', '1', 1000, 0.5, 100);
INSERT INTO `quotelines` VALUES ('95437eac-6aa4-2e71-624d-4672a76ab830', '8744347e-fd60-6b8e-d9a1-4666bd16fcb4', 'a5a08eeb-0be7-f066-2677-464d699203bc', 'Каталог Пресфото', 'PRD10000', 3000, 0, 1, '2007-06-15 14:53:45', '2007-06-15 14:54:33', '1', 1000, 0.5, 100);
INSERT INTO `quotelines` VALUES ('71dd1970-abc4-d7cf-b6cf-4672a8b89c86', '8744347e-fd60-6b8e-d9a1-4666bd16fcb4', 'a5a08eeb-0be7-f066-2677-464d699203bc', 'Каталог Пресфото', 'PRD10000', 3000, 0, 1, '2007-06-15 14:54:33', '2007-06-15 14:54:49', '1', 1000, 0.5, 100);
INSERT INTO `quotelines` VALUES ('f384a6ed-2f04-d893-95a4-4672a8dabb98', '8744347e-fd60-6b8e-d9a1-4666bd16fcb4', 'a5a08eeb-0be7-f066-2677-464d699203bc', 'Каталог Пресфото', 'PRD10000', 3000, 0, 1, '2007-06-15 14:54:50', '2007-06-18 08:17:41', '1', 1000, 0.5, 100);
INSERT INTO `quotelines` VALUES ('83638a06-8fca-dbe1-95c8-46763ff1388f', '8744347e-fd60-6b8e-d9a1-4666bd16fcb4', 'a5a08eeb-0be7-f066-2677-464d699203bc', 'Каталог Пресфото', 'PRD10000', 3000, 0, 1, '2007-06-18 08:17:41', '2007-07-04 12:42:02', '1', 1000, 0.5, 100);
INSERT INTO `quotelines` VALUES ('3b25c55e-bfdd-6286-2696-468b791f3ffa', '32efa8ec-e7c3-543b-ddb4-468b79379fb4', 'a5a08eeb-0be7-f066-2677-464d699203bc', 'Каталог Пресфото', 'PRD10000', 3000, 0, 1, '2007-07-04 10:40:13', '2007-08-20 14:19:58', '1', NULL, NULL, NULL);
INSERT INTO `quotelines` VALUES ('3bbf6a4e-5e84-cbcf-e054-468b7998ee13', '32efa8ec-e7c3-543b-ddb4-468b79379fb4', 'dceaf769-3f1a-e605-2df3-4678f3dbd10b', 'Първо издание', 'PRD10001', 10000, 0, 1, '2007-07-04 10:40:13', '2007-08-20 14:19:58', '1', NULL, NULL, NULL);
INSERT INTO `quotelines` VALUES ('9bd4fd85-f8c7-a379-f1a5-468b95e5c8bc', '8744347e-fd60-6b8e-d9a1-4666bd16fcb4', 'a5a08eeb-0be7-f066-2677-464d699203bc', 'Каталог Пресфото', 'PRD10000', 3000, 0, 0, '2007-07-04 12:42:02', '2007-07-04 12:42:02', '1', 1000, 0.5, 100);
INSERT INTO `quotelines` VALUES ('9c52d453-1178-6257-c122-468b95eb6b6e', '8744347e-fd60-6b8e-d9a1-4666bd16fcb4', 'dceaf769-3f1a-e605-2df3-4678f3dbd10b', 'Първо издание', 'PRD10001', 10000, 0, 0, '2007-07-04 12:42:02', '2007-07-04 12:42:02', '1', NULL, NULL, 100);
INSERT INTO `quotelines` VALUES ('504e87be-f965-5eaf-199d-46c9a30db5d3', '32efa8ec-e7c3-543b-ddb4-468b79379fb4', 'a5a08eeb-0be7-f066-2677-464d699203bc', 'Каталог Пресфото', 'PRD10000', 3000, 0, 1, '2007-08-20 14:19:58', '2007-08-20 14:20:09', '1', NULL, NULL, NULL);
INSERT INTO `quotelines` VALUES ('52f59046-fd04-8b0d-00ef-46c9a3ebaf96', '32efa8ec-e7c3-543b-ddb4-468b79379fb4', 'dceaf769-3f1a-e605-2df3-4678f3dbd10b', 'Първо издание', 'PRD10001', NULL, 0, 1, '2007-08-20 14:19:58', '2007-08-20 14:20:09', '1', NULL, NULL, NULL);
INSERT INTO `quotelines` VALUES ('512bf800-5c74-540c-1182-46c9a3aaf6ae', '32efa8ec-e7c3-543b-ddb4-468b79379fb4', 'a5a08eeb-0be7-f066-2677-464d699203bc', 'Каталог Пресфото', 'PRD10000', 3000, 0, 1, '2007-08-20 14:20:09', '2007-08-20 14:20:27', '1', NULL, NULL, NULL);
INSERT INTO `quotelines` VALUES ('5423d279-060a-e677-9899-46c9a3cca159', '32efa8ec-e7c3-543b-ddb4-468b79379fb4', 'dceaf769-3f1a-e605-2df3-4678f3dbd10b', 'Първо издание', 'PRD10001', 0, 0, 1, '2007-08-20 14:20:09', '2007-08-20 14:20:27', '1', NULL, NULL, NULL);
INSERT INTO `quotelines` VALUES ('6d144486-cfcc-6ca5-0878-46c9a3434256', '32efa8ec-e7c3-543b-ddb4-468b79379fb4', 'a5a08eeb-0be7-f066-2677-464d699203bc', 'Каталог Пресфото', 'PRD10000', 3000, 0, 0, '2007-08-20 14:20:27', '2007-08-20 14:20:27', '1', 0, 0, 0);
INSERT INTO `quotelines` VALUES ('70156293-352f-0897-0d18-46c9a3d375fd', '32efa8ec-e7c3-543b-ddb4-468b79379fb4', 'dceaf769-3f1a-e605-2df3-4678f3dbd10b', 'Първо издание', 'PRD10001', 0, 0, 0, '2007-08-20 14:20:27', '2007-08-20 14:20:27', '1', 0, 0, 0);

-- --------------------------------------------------------

-- 
-- Структура на таблица `quotes`
-- 

DROP TABLE IF EXISTS `quotes`;
CREATE TABLE `quotes` (
  `id` varchar(36) NOT NULL default '',
  `name` varchar(50) NOT NULL default '',
  `quotenum` varchar(36) NOT NULL default '',
  `num_pref` varchar(3) NOT NULL default '',
  `num_suf` varchar(5) NOT NULL default '',
  `opportunity_id` varchar(36) default NULL,
  `opportunity_name` varchar(50) default NULL,
  `account_id` varchar(36) default NULL,
  `account_name` varchar(50) NOT NULL default '',
  `currency_id` varchar(36) default NULL,
  `payment_method` varchar(20) default NULL,
  `payment_term` varchar(20) default NULL,
  `shipping_term` varchar(20) default NULL,
  `stage` varchar(20) default NULL,
  `ordernum` int(11) default NULL,
  `validuntil` date default NULL,
  `assigned_user_id` varchar(36) default NULL,
  `billtocontactname` varchar(36) default NULL,
  `billtocontactid` varchar(36) default NULL,
  `billtoaddress` varchar(150) default NULL,
  `billtocity` varchar(100) default NULL,
  `billpostalcode` varchar(20) default NULL,
  `billtostate` varchar(100) default NULL,
  `billtocountry` varchar(100) default NULL,
  `description` varchar(200) default NULL,
  `status` tinyint(1) default '0',
  `deleted` tinyint(1) default '0',
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `created_by` varchar(36) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `idx_quote_id_del` (`id`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `quotes`
-- 

INSERT INTO `quotes` VALUES ('8744347e-fd60-6b8e-d9a1-4666bd16fcb4', 'Субект', 'QTE10000', 'QTE', '10000', NULL, NULL, 'eda6787a-dc2f-d683-59a9-45ab41cdba8d', 'Format Vision', '-99', 'Cash', 'Net 15', 'CIF', 'Draft', NULL, '2007-06-29', '1', 'Петър Петров', '1ae804e8-06a5-ed75-94d3-45d194878ef8', 'Бул. България №221', NULL, '4400', NULL, NULL, NULL, 0, 0, '2007-06-06 13:58:16', '2007-07-04 12:42:02', '1');
INSERT INTO `quotes` VALUES ('32efa8ec-e7c3-543b-ddb4-468b79379fb4', 'Оферта', 'QTE10001', 'QTE', '10001', NULL, NULL, 'af1043aa-69c5-a0ed-61ff-45ab42c669a3', 'Артком', '-99', NULL, NULL, NULL, 'Draft', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2007-07-04 10:40:13', '2007-08-20 14:20:27', '1');

-- --------------------------------------------------------

-- 
-- Структура на таблица `quotes_documents`
-- 

DROP TABLE IF EXISTS `quotes_documents`;
CREATE TABLE `quotes_documents` (
  `id` char(36) NOT NULL default '',
  `quote_id` char(36) default NULL,
  `document_id` char(36) default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_quote_doc_quote` (`quote_id`),
  KEY `idx_quote_doc_doc` (`document_id`),
  KEY `idx_quote_doc` (`quote_id`,`document_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `quotes_documents`
-- 


-- --------------------------------------------------------

-- 
-- Структура на таблица `ratefilm`
-- 

DROP TABLE IF EXISTS `ratefilm`;
CREATE TABLE `ratefilm` (
  `id` varchar(36) NOT NULL default '',
  `date_entered` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `assigned_user_id` varchar(36) default NULL,
  `modified_user_id` varchar(36) default NULL,
  `created_by` varchar(36) default NULL,
  `name` varchar(50) NOT NULL default '',
  `price` float default '0',
  `format` varchar(50) default NULL,
  `size_x` float default '0',
  `size_y` float default '0',
  `description` text,
  `deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 PACK_KEYS=0;

-- 
-- Дъмп (схема) на данните в таблицата `ratefilm`
-- 

INSERT INTO `ratefilm` VALUES ('16a2984b-87a1-9f2f-a88e-469618434ca2', '2007-07-12 12:04:51', '2007-07-12 12:06:37', '1', '1', '1', 'asd', 0, '', 0, 0, NULL, 1);
INSERT INTO `ratefilm` VALUES ('319a1633-aa9f-6b4e-df98-469628a1c043', '2007-07-12 13:11:04', '2007-08-10 13:54:13', '1', '1', '1', 'ФИЛМ 35 х 50', 3.5, 'GTO', 35, 50, NULL, 0);

-- --------------------------------------------------------

-- 
-- Структура на таблица `rateplate`
-- 

DROP TABLE IF EXISTS `rateplate`;
CREATE TABLE `rateplate` (
  `id` varchar(36) NOT NULL default '',
  `date_entered` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `assigned_user_id` varchar(36) default NULL,
  `modified_user_id` varchar(36) default NULL,
  `created_by` varchar(36) default NULL,
  `name` varchar(50) NOT NULL default '',
  `price` float default '0',
  `gauge` float default '0',
  `format` varchar(50) default NULL,
  `size_x` float default '0',
  `size_y` float default '0',
  `description` text,
  `deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 PACK_KEYS=0;

-- 
-- Дъмп (схема) на данните в таблицата `rateplate`
-- 

INSERT INTO `rateplate` VALUES ('a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', '2007-07-12 13:52:57', '2007-08-10 13:52:35', '1', '1', '1', 'CTP - 35 x 50 x 10', 15, 10, 'GTO', 35, 50, NULL, 0);

-- --------------------------------------------------------

-- 
-- Структура на таблица `relationships`
-- 

DROP TABLE IF EXISTS `relationships`;
CREATE TABLE `relationships` (
  `id` varchar(36) NOT NULL default '',
  `relationship_name` varchar(150) NOT NULL default '',
  `lhs_module` varchar(100) NOT NULL default '',
  `lhs_table` varchar(64) NOT NULL default '',
  `lhs_key` varchar(64) NOT NULL default '',
  `rhs_module` varchar(100) NOT NULL default '',
  `rhs_table` varchar(64) NOT NULL default '',
  `rhs_key` varchar(64) NOT NULL default '',
  `join_table` varchar(64) default NULL,
  `join_key_lhs` varchar(64) default NULL,
  `join_key_rhs` varchar(64) default NULL,
  `relationship_type` varchar(64) default NULL,
  `relationship_role_column` varchar(64) default NULL,
  `relationship_role_column_value` varchar(50) default NULL,
  `reverse` tinyint(1) default '0',
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_rel_name` (`relationship_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `relationships`
-- 

INSERT INTO `relationships` VALUES ('257e0658-81f3-37ff-2272-458d3e586136', 'acl_roles_users', 'ACLRoles', 'acl_roles', 'id', 'Users', 'users', 'id', 'acl_roles_users', 'role_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('2f860cf6-a384-3ed5-2912-458d3ebfe5aa', 'acl_roles_actions', 'ACLRoles', 'acl_role', 'id', 'ACLActions', 'acl_action', 'id', 'acl_roles_actions', 'role_id', 'action_id', 'many-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('269eba76-bc35-83a2-4310-458d3e2f51a2', 'lead_direct_reports', 'Leads', 'leads', 'id', 'Leads', 'leads', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('26f2448e-f0fb-1915-123d-458d3ea52dbb', 'lead_tasks', 'Leads', 'leads', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0);
INSERT INTO `relationships` VALUES ('274b2cb8-bde8-4188-9f17-458d3ee36b04', 'lead_notes', 'Leads', 'leads', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0);
INSERT INTO `relationships` VALUES ('27aa5502-cc43-2e13-a4a8-458d3e622fde', 'lead_meetings', 'Leads', 'leads', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0);
INSERT INTO `relationships` VALUES ('28152ef5-34bd-34a4-3248-458d3eef14bb', 'lead_calls', 'Leads', 'leads', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0);
INSERT INTO `relationships` VALUES ('286aa21a-f097-8894-d55e-458d3e125615', 'lead_emails', 'Leads', 'leads', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0);
INSERT INTO `relationships` VALUES ('28c7d3c1-2161-94bb-d1f7-458d3e88a2fc', 'lead_campaign_log', 'Leads', 'leads', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('292d15bc-e3ae-d376-2c2f-458d3e968404', 'leads_assigned_user', 'Users', 'users', 'id', 'Leads', 'leads', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('298003d9-a989-1fbf-9c17-458d3ed9820a', 'leads_modified_user', 'Users', 'users', 'id', 'Leads', 'leads', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('29d2a0fd-e1ad-059e-ccd9-458d3e1f6f30', 'leads_created_by', 'Users', 'users', 'id', 'Leads', 'leads', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('42488632-7a4a-5538-ca7c-458d3e342aee', 'contact_direct_reports', 'Contacts', 'contacts', 'id', 'Contacts', 'contacts', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('42a53c7b-ef7f-cd11-b762-458d3e7a168c', 'contact_leads', 'Contacts', 'contacts', 'id', 'Leads', 'leads', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('42f439c1-6bff-a7c4-f617-458d3ecbde00', 'contact_notes', 'Contacts', 'contacts', 'id', 'Notes', 'notes', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('4351aef3-ebe0-b119-65f3-458d3e1115b9', 'contact_tasks', 'Contacts', 'contacts', 'id', 'Tasks', 'tasks', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('43a79902-fd1b-99d7-138e-458d3eb4e707', 'contacts_assigned_user', 'Users', 'users', 'id', 'Contacts', 'contacts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('43f89378-2b2f-081e-0359-458d3eca9102', 'contacts_modified_user', 'Users', 'users', 'id', 'Contacts', 'contacts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('444d5963-ae44-c3ee-8410-458d3e625dc1', 'contacts_created_by', 'Users', 'users', 'id', 'Contacts', 'contacts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('44adcace-de9c-b0a5-bcc2-458d3e766bd2', 'contact_campaign_log', 'Contacts', 'contacts', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('5f94d601-c91f-5373-5576-458d3e7405b3', 'member_accounts', 'Accounts', 'accounts', 'id', 'Accounts', 'accounts', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('5ff494e6-4ac8-8143-937e-458d3e08fd1a', 'account_cases', 'Accounts', 'accounts', 'id', 'Cases', 'cases', 'account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('604e7b48-fb97-a608-20a0-458d3e145193', 'account_tasks', 'Accounts', 'accounts', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0);
INSERT INTO `relationships` VALUES ('60a37d6b-9838-a9ba-e021-458d3e409955', 'account_notes', 'Accounts', 'accounts', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0);
INSERT INTO `relationships` VALUES ('60f993d5-c59f-43b8-db29-458d3e726615', 'account_meetings', 'Accounts', 'accounts', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0);
INSERT INTO `relationships` VALUES ('616571bd-71d8-6c09-c61f-458d3e453d9f', 'account_calls', 'Accounts', 'accounts', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0);
INSERT INTO `relationships` VALUES ('61bd3622-1a94-03cb-f46f-458d3ef9326f', 'account_emails', 'Accounts', 'accounts', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0);
INSERT INTO `relationships` VALUES ('6216ab77-92e6-6b5a-0afa-458d3ed775af', 'account_leads', 'Accounts', 'accounts', 'id', 'Leads', 'leads', 'account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('626460d8-4d66-f3e2-9ac2-458d3ef62941', 'accounts_assigned_user', 'Users', 'users', 'id', 'Accounts', 'accounts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('62c8af8a-83eb-f85e-b7e3-458d3e7bbd34', 'accounts_modified_user', 'Users', 'users', 'id', 'Accounts', 'accounts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('63694577-d0d3-5e0e-cb01-458d3ed6eeb7', 'accounts_created_by', 'Users', 'users', 'id', 'Accounts', 'accounts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('7c7b50b1-ba64-e3eb-2274-458d3e2404a8', 'opportunity_calls', 'Opportunities', 'opportunities', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0);
INSERT INTO `relationships` VALUES ('7cf34ff4-5832-aee0-cb7c-458d3e67c549', 'opportunity_meetings', 'Opportunities', 'opportunities', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0);
INSERT INTO `relationships` VALUES ('7d4f5886-c41b-6b1c-acc7-458d3e0c201a', 'opportunity_tasks', 'Opportunities', 'opportunities', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0);
INSERT INTO `relationships` VALUES ('7da29768-1533-ba41-e06c-458d3e0d8317', 'opportunity_notes', 'Opportunities', 'opportunities', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0);
INSERT INTO `relationships` VALUES ('7df8ef23-3f66-5af1-b66e-458d3ef8869d', 'opportunity_emails', 'Opportunities', 'opportunities', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0);
INSERT INTO `relationships` VALUES ('7eae0015-2e3a-8aa9-0545-458d3e65ee36', 'opportunity_leads', 'Opportunities', 'opportunities', 'id', 'Leads', 'leads', 'opportunity_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('7efdbe4d-0930-901c-df15-458d3e907353', 'opportunities_assigned_user', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('7f54bb8f-547d-147d-9f59-458d3e76935d', 'opportunities_modified_user', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('7fafed50-5d07-6854-43bf-458d3e3b7c33', 'opportunities_created_by', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('97baee38-5950-f0fe-e1f9-458d3efc6477', 'case_calls', 'Cases', 'cases', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0);
INSERT INTO `relationships` VALUES ('980bb0eb-a902-a9a2-3950-458d3e2e559b', 'case_tasks', 'Cases', 'cases', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0);
INSERT INTO `relationships` VALUES ('98678479-d33b-554b-4e2a-458d3e20f4bb', 'case_notes', 'Cases', 'cases', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0);
INSERT INTO `relationships` VALUES ('98c5fe4b-0e2e-7764-32b5-458d3e7ef675', 'case_meetings', 'Cases', 'cases', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0);
INSERT INTO `relationships` VALUES ('9916fa77-ac3c-a259-ba63-458d3e92dc80', 'case_emails', 'Cases', 'cases', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0);
INSERT INTO `relationships` VALUES ('99bdc803-56df-2ce3-3763-458d3e7e1a2a', 'cases_assigned_user', 'Users', 'users', 'id', 'Cases', 'cases', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('9a0f6674-c21d-b863-bf73-458d3e2f634c', 'cases_modified_user', 'Users', 'users', 'id', 'Cases', 'cases', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('9a5d5838-479c-f1f4-a146-458d3eb23446', 'cases_created_by', 'Users', 'users', 'id', 'Cases', 'cases', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('ac79c673-db60-4c12-80b1-458d3e62a351', 'notes_modified_user', 'Users', 'users', 'id', 'Notes', 'notes', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('acca67d8-0ac8-55fc-e8f7-458d3e40b6b5', 'notes_created_by', 'Users', 'users', 'id', 'Notes', 'notes', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('e7c17b76-6cc0-4789-4a2f-458d3e8eae89', 'calls_assigned_user', 'Users', 'users', 'id', 'Calls', 'calls', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('e81140c3-f8a2-b479-c9d2-458d3eea85a2', 'calls_modified_user', 'Users', 'users', 'id', 'Calls', 'calls', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('e869f8cd-2fef-0190-e888-458d3e88beda', 'calls_created_by', 'Users', 'users', 'id', 'Calls', 'calls', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('e8bdeeb4-3971-324e-5f15-458d3ec81593', 'calls_notes', 'Calls', 'calls', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('81170fae-ee64-45b6-76ff-458d3e189e3e', 'emails_assigned_user', 'Users', 'users', 'id', 'Emails', 'emails', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('862404ee-3c51-bdac-23ca-458d3ea223e4', 'emails_modified_user', 'Users', 'users', 'id', 'Emails', 'emails', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('8b300613-c10a-c5fa-145d-458d3e766ce4', 'emails_created_by', 'Users', 'users', 'id', 'Emails', 'emails', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('92b3053c-0d75-5cca-faaa-458d3e0584e2', 'emails_notes_rel', 'Emails', 'emails', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('1ce87cb8-2e41-234c-71bf-458d3e0f3da4', 'meetings_assigned_user', 'Users', 'users', 'id', 'Meetings', 'meetings', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('1d8ea7fe-8696-f563-1c34-458d3e240e1f', 'meetings_modified_user', 'Users', 'users', 'id', 'Meetings', 'meetings', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('1e3ccd71-2636-3d0e-9fb7-458d3e1c8c98', 'meetings_created_by', 'Users', 'users', 'id', 'Meetings', 'meetings', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('1e93fa44-a8dc-81cc-52be-458d3e14eab9', 'meetings_notes', 'Meetings', 'meetings', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Meetings', 0, 0);
INSERT INTO `relationships` VALUES ('3cf38ad1-e151-a980-94ec-458d3e46bf36', 'tasks_assigned_user', 'Users', 'users', 'id', 'Tasks', 'tasks', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('3d4a3bbc-683e-5551-bd04-458d3e69df68', 'tasks_modified_user', 'Users', 'users', 'id', 'Tasks', 'tasks', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('3da20a83-443b-1ab8-7daf-458d3e91b6e8', 'tasks_created_by', 'Users', 'users', 'id', 'Tasks', 'tasks', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('4921a198-9f4b-9790-ccd2-458d3e580a8d', 'user_direct_reports', 'Users', 'users', 'id', 'Users', 'users', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('a1694031-853f-02b2-9871-458d3e0eb2c7', 'bug_tasks', 'Bugs', 'bugs', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0);
INSERT INTO `relationships` VALUES ('a202af23-b592-4c21-67da-458d3e4bc446', 'bug_meetings', 'Bugs', 'bugs', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0);
INSERT INTO `relationships` VALUES ('a2644932-161e-9b7a-8502-458d3ecce01f', 'bug_calls', 'Bugs', 'bugs', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0);
INSERT INTO `relationships` VALUES ('a30101e2-d6ed-0ebd-35f5-458d3eaad4a3', 'bug_emails', 'Bugs', 'bugs', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0);
INSERT INTO `relationships` VALUES ('a3591e89-4088-889a-fbd8-458d3e62bcf4', 'bug_notes', 'Bugs', 'bugs', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0);
INSERT INTO `relationships` VALUES ('a3acfb9f-2e1b-2203-3eff-458d3e15220f', 'bugs_assigned_user', 'Users', 'users', 'id', 'Bugs', 'bugs', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('a405a096-11a5-abb3-b4b9-458d3e610cce', 'bugs_modified_user', 'Users', 'users', 'id', 'Bugs', 'bugs', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('a45f3e29-31d1-bb1e-4277-458d3e0337ac', 'bugs_created_by', 'Users', 'users', 'id', 'Bugs', 'bugs', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('a4af2a89-fa77-4685-c88c-458d3ee0bfd5', 'bugs_release', 'Releases', 'releases', 'id', 'Bugs', 'bugs', 'found_in_release', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('a4fe0de1-0cdf-569b-0586-458d3ea4c1d6', 'bugs_fixed_in_release', 'Releases', 'releases', 'id', 'Bugs', 'bugs', 'fixed_in_release', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('f37762a1-8dde-5ff5-1b29-458d3e1d6ada', 'feeds_assigned_user', 'Users', 'users', 'id', 'Feeds', 'feeds', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('f3ca3a77-6cc2-a7cf-45ab-458d3e3d7dac', 'feeds_modified_user', 'Users', 'users', 'id', 'Feeds', 'feeds', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('f41a35ca-cfd3-d327-42ac-458d3e825d47', 'feeds_created_by', 'Users', 'users', 'id', 'Feeds', 'feeds', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('120bbd1b-7fc9-3aa0-fd6c-458d3e36a5a8', 'project_notes', 'Project', 'project', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0);
INSERT INTO `relationships` VALUES ('12cc2b45-8fcd-a682-8ea7-458d3ef81b33', 'project_meetings', 'Project', 'project', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0);
INSERT INTO `relationships` VALUES ('13efa3bd-e3fe-d98a-1253-458d3e5a295a', 'project_calls', 'Project', 'project', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0);
INSERT INTO `relationships` VALUES ('144cf68d-c064-93d3-b202-458d3ec644e6', 'project_emails', 'Project', 'project', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0);
INSERT INTO `relationships` VALUES ('14aacd00-af9b-f386-3bcb-458d3e8cdc41', 'project_project_tasks', 'Project', 'project', 'id', 'ProjectTask', 'project_task', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('151f77bf-14ab-f3cc-c496-458d3ef8ad45', 'projects_assigned_user', 'Users', 'users', 'id', 'Project', 'project', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('1580a1db-180d-051a-d105-458d3e755533', 'projects_modified_user', 'Users', 'users', 'id', 'Project', 'project', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('15e50d20-4dbd-63fc-0239-458d3e3399c2', 'projects_created_by', 'Users', 'users', 'id', 'Project', 'project', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('2f672c66-57ab-26d8-732f-458d3efe92c2', 'project_task_notes', 'ProjectTask', 'project_task', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0);
INSERT INTO `relationships` VALUES ('2fbbbfd2-c1eb-efa9-c954-458d3e8ae539', 'project_task_meetings', 'ProjectTask', 'project_task', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0);
INSERT INTO `relationships` VALUES ('3014d4cd-cd83-a9bb-a2b3-458d3ec39ad8', 'project_task_calls', 'ProjectTask', 'project_task', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0);
INSERT INTO `relationships` VALUES ('30739c75-91b0-9a88-a933-458d3ee91bb6', 'project_task_emails', 'ProjectTask', 'project_task', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0);
INSERT INTO `relationships` VALUES ('30caccf8-2934-1116-4f5b-458d3e67cf20', 'project_task_assigned_user', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('31381212-44e6-9ea9-9963-458d3e0ff88a', 'project_task_modified_user', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('318e3d1a-b57a-c648-0cb0-458d3e3352a7', 'project_task_created_by', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('4e976031-f67d-bf60-ab1b-458d3ea1bb5e', 'email_template_email_marketings', 'EmailTemplates', 'email_templates', 'id', 'EmailMarketing', 'email_marketing', 'template_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('6e76e6fb-fa61-7ba7-35d6-458d3e2c52f5', 'campaign_email_marketing', 'Campaigns', 'campaigns', 'id', 'EmailMarketing', 'email_marketing', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('6ecf7ca5-5202-1af9-1b31-458d3e0718d7', 'campaign_emailman', 'Campaigns', 'campaigns', 'id', 'EmailMan', 'emailman', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('6f210099-2b35-c076-6674-458d3ed381fa', 'campaign_campaignlog', 'Campaigns', 'campaigns', 'id', 'CampaignLog', 'campaign_log', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('6f826c46-fd32-74d8-5598-458d3e74b782', 'campaign_assigned_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('6fd45429-4cb8-76f4-5ebc-458d3e8cc0e6', 'campaign_modified_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('975da0ea-3b71-3032-1702-458d3ed0dc10', 'prospect_campaign_log', 'Prospects', 'prospects', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('ae100b1d-79d2-5827-b863-458d3e486a30', 'document_revisions', 'Documents', 'documents', 'id', 'Documents', 'document_revisions', 'document_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('ae6928c8-b25a-26a7-ee65-458d3e376a78', 'documents_modified_user', 'Users', 'users', 'id', 'Documents', 'documents', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('af0a837e-59ea-fe03-4985-458d3e83ccdc', 'documents_created_by', 'Users', 'users', 'id', 'Documents', 'documents', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('c0f75bea-e097-221d-7e77-458d3efd46ed', 'revisions_created_by', 'Users', 'users', 'id', 'DocumentRevisions', 'document_revisions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('dd838419-3247-6875-8f8c-458d3e6afab5', 'schedulers_created_by_rel', 'Users', 'users', 'id', 'Schedulers', 'schedulers', 'created_by', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('dddacb33-0222-315b-b5fc-458d3e802481', 'schedulers_modified_user_id_rel', 'Users', 'users', 'id', 'Schedulers', 'schedulers', 'modified_user_id', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('de2fd5ed-abaf-0a11-3d74-458d3e1bcc73', 'schedulers_jobs_rel', 'Schedulers', 'schedulers', 'id', 'SchedulersJobs', 'schedulers_times', 'scheduler_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('9ded04e9-81bc-c284-e0d9-458d3efa74fd', 'inbound_email_created_by', 'Users', 'users', 'id', 'InboundEmail', 'inbound_email', 'created_by', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('a3b80a18-bce7-a418-734d-458d3e7f614a', 'inbound_email_modified_user_id', 'Users', 'users', 'id', 'InboundEmail', 'inbound_email', 'modified_user_id', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('206d628e-afb4-a99c-c8b7-458d3ed71dfd', 'dashboards_assigned_user', 'Users', 'users', 'id', 'Dashboards', 'dashboards', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('20bfe428-100e-f2df-1572-458d3e680354', 'dashboards_modified_user', 'Users', 'users', 'id', 'Dashboards', 'dashboards', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('211321a2-2816-5b19-2170-458d3ed0c294', 'dashboards_created_by', 'Users', 'users', 'id', 'Dashboards', 'dashboards', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('27f6d1d2-e85f-d3b2-2920-458d3e2ab47f', 'campaign_campaigntrakers', 'Campaigns', 'campaigns', 'id', 'CampaignTrackers', 'campaign_trkrs', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('354fe790-9c1e-3ca5-c7c2-458d3e676a63', 'saved_search_assigned_user', 'Users', 'users', 'id', 'SavedSearch', 'saved_search', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('548c9f64-ab22-6083-f631-458d3ee64e70', 'accounts_bugs', 'Accounts', 'accounts', 'id', 'Bugs', 'bugs', 'id', 'accounts_bugs', 'account_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('5d2ba72a-9d80-d2c2-d6bd-458d3e2259ea', 'accounts_contacts', 'Accounts', 'accounts', 'id', 'Contacts', 'contacts', 'id', 'accounts_contacts', 'account_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('60ff47bb-b4f6-a136-9e60-458d3e0b7099', 'accounts_opportunities', 'Accounts', 'accounts', 'id', 'Opportunities', 'opportunities', 'id', 'accounts_opportunities', 'account_id', 'opportunity_id', 'many-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('6e419e3f-fbc0-0656-20dd-458d3e8579a7', 'calls_contacts', 'Calls', 'calls', 'id', 'Contacts', 'contacts', 'id', 'calls_contacts', 'call_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('72480e56-d1e0-0d57-6248-458d3e00d119', 'calls_users', 'Calls', 'calls', 'id', 'Users', 'users', 'id', 'calls_users', 'call_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('774eaa0b-9ff8-353b-2fec-458d3ea0c4e5', 'cases_bugs', 'Cases', 'cases', 'id', 'Bugs', 'bugs', 'id', 'cases_bugs', 'case_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('7b6fc3e3-6c67-4173-0bf2-458d3ed53cb3', 'contacts_bugs', 'Contacts', 'contacts', 'id', 'Bugs', 'bugs', 'id', 'contacts_bugs', 'contact_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('7f87870f-fc71-a6f4-5e29-458d3e8dcee5', 'contacts_cases', 'Contacts', 'contacts', 'id', 'Cases', 'cases', 'id', 'contacts_cases', 'contact_id', 'case_id', 'many-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('8382b824-929c-c7e1-8f4c-458d3ed01f3a', 'contacts_users', 'Contacts', 'contacts', 'id', 'Users', 'users', 'id', 'contacts_users', 'contact_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('8cdcf33f-6806-78fc-cb12-458d3ec989cc', 'email_marketing_prospect_lists', 'EmailMarketing', 'email_marketing', 'id', 'ProspectLists', 'prospect_lists', 'id', 'email_marketing_prospect_lists', 'email_marketing_id', 'prospect_list_id', 'many-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('9180b44a-dceb-b1e2-0443-458d3ebeb3d8', 'emails_accounts_rel', 'Emails', 'emails', 'id', 'Accounts', 'accounts', 'id', 'emails_accounts', 'email_id', 'account_id', 'many-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('959275c2-ad6d-ce9c-be61-458d3e38e4ea', 'emails_bugs_rel', 'Emails', 'emails', 'id', 'Bugs', 'bugs', 'id', 'emails_bugs', 'email_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('995a0bfc-67fc-0e26-5f33-458d3e2e31f3', 'emails_cases_rel', 'Emails', 'emails', 'id', 'Cases', 'cases', 'id', 'emails_cases', 'email_id', 'case_id', 'many-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('9da5a88c-ceaf-bed9-cd9e-458d3ec62d5f', 'emails_contacts_rel', 'Emails', 'emails', 'id', 'Contacts', 'contacts', 'id', 'emails_contacts', 'email_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('a1b636ef-d70f-ddc2-02a9-458d3e87e76f', 'emails_leads_rel', 'Emails', 'emails', 'id', 'Leads', 'leads', 'id', 'emails_leads', 'email_id', 'lead_id', 'many-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('a6750bac-9156-bdd6-c1a3-458d3e7202eb', 'emails_opportunities_rel', 'Emails', 'emails', 'id', 'Opportunities', 'opportunities', 'id', 'emails_opportunities', 'email_id', 'opportunity_id', 'many-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('aa18c181-beb4-9b5b-a893-458d3e38321a', 'emails_project_task_rel', 'Emails', 'emails', 'id', 'ProjectTask', 'project_task', 'id', 'emails_project_tasks', 'email_id', 'project_task_id', 'many-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('af44abd3-9dce-95ea-375d-458d3e5d4faa', 'emails_projects_rel', 'Emails', 'emails', 'id', 'Project', 'project', 'id', 'emails_projects', 'email_id', 'project_id', 'many-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('b36b27a1-ea92-5102-54e5-458d3eb07995', 'emails_prospects_rel', 'Emails', 'emails', 'id', 'Prospect', 'prospects', 'id', 'emails_prospects', 'email_id', 'prospect_id', 'many-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('b7cb0d80-aa03-431f-bc12-458d3e66db02', 'emails_tasks_rel', 'Emails', 'emails', 'id', 'Tasks', 'tasks', 'id', 'emails_tasks', 'email_id', 'task_id', 'many-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('bbcb6406-56a8-53bc-c143-458d3e9aff98', 'emails_users_rel', 'Emails', 'emails', 'id', 'Users', 'users', 'id', 'emails_users', 'email_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('c1a131c3-495e-0ae6-94b5-458d3e6e3b26', 'contracts_documents', 'contracts', 'contracts', 'id', 'documents', 'documents', 'id', 'linked_documents', 'parent_id', 'document_id', 'many-to-many', 'parent_type', 'Contracts', 0, 0);
INSERT INTO `relationships` VALUES ('c1f5b781-03ed-1037-1ff1-458d3eaaf4cc', 'leads_documents', 'leads', 'leads', 'id', 'documents', 'documents', 'id', 'linked_documents', 'parent_id', 'document_id', 'many-to-many', 'parent_type', 'Leads', 0, 0);
INSERT INTO `relationships` VALUES ('c252f558-f414-8cbc-cd4b-458d3e329ece', 'contracttype_documents', 'ContracTemplates', 'contract_types', 'id', 'documents', 'documents', 'id', 'linked_documents', 'parent_id', 'document_id', 'many-to-many', 'parent_type', 'ContracTemplates', 0, 0);
INSERT INTO `relationships` VALUES ('c66aed8c-90cd-ce61-f96d-458d3eb38047', 'meetings_contacts', 'Meetings', 'meetings', 'id', 'Contacts', 'contacts', 'id', 'meetings_contacts', 'meeting_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('ca6a02f1-c402-a386-bde7-458d3e1c223d', 'meetings_users', 'Meetings', 'meetings', 'id', 'Users', 'users', 'id', 'meetings_users', 'meeting_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('cea21baa-10a6-2ee8-2536-458d3eeb7107', 'opportunities_contacts', 'Opportunities', 'opportunities', 'id', 'Contacts', 'contacts', 'id', 'opportunities_contacts', 'opportunity_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('d3957f8d-72f6-b181-4155-458d3ea4624b', 'projects_accounts', 'Accounts', 'accounts', 'id', 'Project', 'project', 'id', 'project_relation', 'relation_id', 'project_id', 'many-to-many', 'relation_type', 'Accounts', 0, 0);
INSERT INTO `relationships` VALUES ('d3e91180-51e0-6a03-3836-458d3e7ba2d1', 'projects_contacts', 'Project', 'project', 'id', 'Contacts', 'contacts', 'id', 'project_relation', 'project_id', 'relation_id', 'many-to-many', 'relation_type', 'Contacts', 0, 0);
INSERT INTO `relationships` VALUES ('d451ee7f-3b0e-cfd4-0f00-458d3e4e9a71', 'projects_opportunities', 'Project', 'project', 'id', 'Opportunities', 'opportunities', 'id', 'project_relation', 'project_id', 'relation_id', 'many-to-many', 'relation_type', 'Opportunities', 0, 0);
INSERT INTO `relationships` VALUES ('d4a57c02-3b7b-49c3-d522-458d3ef17299', 'projects_quotes', 'Project', 'project', 'id', 'Quotes', 'quotes', 'id', 'project_relation', 'project_id', 'relation_id', 'many-to-many', 'relation_type', 'Quotes', 0, 0);
INSERT INTO `relationships` VALUES ('d9bde23e-23ea-c5da-4dc7-458d3e8f556e', 'prospect_list_campaigns', 'ProspectLists', 'prospect_lists', 'id', 'Campaigns', 'campaigns', 'id', 'prospect_list_campaigns', 'prospect_list_id', 'campaign_id', 'many-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('dd9b08e2-cf0c-ebad-bbe4-458d3eaefe75', 'prospect_list_contacts', 'ProspectLists', 'prospect_lists', 'id', 'Contacts', 'contacts', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Contacts', 0, 0);
INSERT INTO `relationships` VALUES ('ddfa7009-18ec-b347-59d8-458d3e4cd7ea', 'prospect_list_prospects', 'ProspectLists', 'prospect_lists', 'id', 'Prospects', 'prospects', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Prospects', 0, 0);
INSERT INTO `relationships` VALUES ('deb4ab2d-a060-b063-8f37-458d3eec6241', 'prospect_list_leads', 'ProspectLists', 'prospect_lists', 'id', 'Leads', 'leads', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Leads', 0, 0);
INSERT INTO `relationships` VALUES ('df1113fa-0527-d454-5254-458d3e75459f', 'prospect_list_users', 'ProspectLists', 'prospect_lists', 'id', 'Users', 'users', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Users', 0, 0);
INSERT INTO `relationships` VALUES ('e6a29177-9b59-b4a7-0ec9-458d3e910ab2', 'roles_users', 'Roles', 'roles', 'id', 'Users', 'users', 'id', 'roles_users', 'role_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('c27728ee-bcfb-51a3-0238-458d4077f31f', 'products_products_components', 'Products', 'products', 'id', 'ProductComponents', 'products_components', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('c2cc06eb-672d-8273-e3de-458d40d0a0e9', 'products_assigned_user', 'Users', 'users', 'id', 'Products', 'products', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('c329f24d-bcd4-44cc-d793-458d40b731b8', 'products_modified_user', 'Users', 'users', 'id', 'Products', 'products', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('c37b14a8-4cda-831c-6d64-458d400830ce', 'products_created_by', 'Users', 'users', 'id', 'Products', 'products', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('3461e394-e16d-9dc1-2b72-459b83c9926b', 'product_component_modified_user', 'Users', 'users', 'id', 'ProductComponents', 'products_components', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('34dd1d21-dfa1-ae7b-8a52-459b83122185', 'product_component__created_by', 'Users', 'users', 'id', 'ProductComponents', 'products_components', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('55e2e4cc-3d8b-dff9-845a-459cdf23395d', 'products_components_notes', 'ProductComponents', 'products_components', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProductComponents', 0, 0);
INSERT INTO `relationships` VALUES ('561e1605-ac49-b053-eb3a-459cdfb9ca5e', 'products_components_meetings', 'ProductComponents', 'products_components', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProductComponents', 0, 0);
INSERT INTO `relationships` VALUES ('56518856-e641-e58c-ffd4-459cdf391667', 'products_components_calls', 'ProductComponents', 'products_components', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProductComponents', 0, 0);
INSERT INTO `relationships` VALUES ('56848b25-9337-011f-5413-459cdf2461c5', 'products_components_emails', 'ProductComponents', 'products_components', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProductComponents', 0, 0);
INSERT INTO `relationships` VALUES ('56b7922f-ce8e-579a-fab1-459cdfa94593', 'products_components_assigned_user', 'Users', 'users', 'id', 'ProductComponents', 'products_components', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('56e9cebb-27c4-d11d-5401-459cdf18c45f', 'products_components_modified_user', 'Users', 'users', 'id', 'ProductComponents', 'products_components', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('571c845e-03ee-fd5f-9fbb-459cdf6664de', 'products_components_created_by', 'Users', 'users', 'id', 'ProductComponents', 'products_components', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('97c7fd0c-db3d-c7d0-a3f6-45ab8759fc6d', 'accounts_products', 'Accounts', 'accounts', 'id', 'Products', 'products', 'account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('4da2ec6a-b79a-52d1-bcc1-45aba2fd80c5', 'account_quotes', 'Accounts', 'accounts', 'id', 'Quotes', 'quotes', 'account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('17e40641-51d6-8117-ad98-458d3e6c5793', 'suppliers_assigned_user', 'Users', 'users', 'id', 'Suppliers', 'suppliers', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('980c8d72-e5d2-318c-1a8c-45b913290de4', 'suppliers_modified_user', 'Users', 'users', 'id', 'Suppliers', 'suppliers', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('9fb34068-b4cc-521f-a28c-45b914d69c39', 'suppliers_created_by', 'Users', 'users', 'id', 'Suppliers', 'suppliers', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('2f6005f1-3512-2335-ead7-45be1258a5ae', 'materials_assigned_user', 'Users', 'users', 'id', 'Materials', 'materials', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('9b099f85-0573-e6b0-327b-45be12412c0c', 'materials_modified_user', 'Users', 'users', 'id', 'Materials', 'materials', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('c755220f-7fde-3212-3196-45be127f2743', 'materials_created_by', 'Users', 'users', 'id', 'Materials', 'materials', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('9a902f8f-af8a-2691-1b6d-45b8daaeb1e8', 'materials_suppliers', 'Suppliers', 'suppliers', 'id', 'Materials', 'materials', 'id', 'materials_relation', 'relation_id', 'material_id', 'many-to-many', 'relation_type', 'Suppliers', 0, 0);
INSERT INTO `relationships` VALUES ('67833b09-a2b2-1acf-15b0-45cc629b986f', 'materials_prices', 'Materials', 'materials', 'id', 'Prices', 'prices', 'material_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('d1d6e35c-4bd1-d549-8919-45cc7f9e34a8', 'papers_prices', 'Paper', 'paper', 'id', 'Prices', 'prices', 'paper_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('ec08ef3b-14a4-4e5e-c42d-459b9455fb6c', 'materials_supplies', 'Materials', 'materials', 'id', 'Supplylines', 'supplylines', 'materialid', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('ac7d5068-23e2-fb83-f178-45cb3c86b462', 'prices_assigned_user', 'Users', 'users', 'id', 'Prices', 'prices', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('60fad945-0057-e7af-021a-45cb3ce6fa8d', 'prices_modified_user', 'Users', 'users', 'id', 'Prices', 'prices', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('cab53899-5635-6145-5fe9-45cb3cd91113', 'prices_created_by', 'Users', 'users', 'id', 'Prices', 'prices', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('3cd7e136-50fe-ee67-1812-45d01c11e8be', 'papers_supplies', 'Paper', 'paper', 'id', 'Supplylines', 'supplylines', 'paperid', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('94d458da-7599-f492-610a-45d04413dd5e', 'papers_suppliers', 'Suppliers', 'suppliers', 'id', 'Paper', 'paper', 'id', 'papers_relation', 'relation_id', 'paper_id', 'many-to-many', 'relation_type', 'Suppliers', 0, 0);
INSERT INTO `relationships` VALUES ('762e840b-8bdb-e487-f26e-45dd53509d9c', 'operations_assigned_user', 'Users', 'users', 'id', 'Operations', 'operations', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('81ce03a4-d16b-884e-66f9-45dd53232e3d', 'operations_modified_user', 'Users', 'users', 'id', 'Operations', 'operations', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('a1cd038c-59f3-6475-3740-45dd5353189c', 'operations_created_by', 'Users', 'users', 'id', 'Operations', 'operations', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('c22cab9b-ae5a-338e-4d06-45e29fd061fa', 'productoperations_assigned_user', 'Users', 'users', 'id', 'ProductOperations', 'productoperations', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('ef50a922-11fe-45ab-84bf-45e29f0bf790', 'productoperations_modified_user', 'Users', 'users', 'id', 'ProductOperations', 'productoperations', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('ce10c40d-9558-4e3c-723d-45e29f8e521a', 'productoperations_created_by', 'Users', 'users', 'id', 'ProductOperations', 'productoperations', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('26c204ec-4918-6ac3-d985-45e3f342fee5', 'products_operations', 'Products', 'products', 'id', 'ProductOperations', 'productoperations', 'product_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('d72cfbcd-acc2-b375-7844-45e406f8f6c8', 'productcomponents_operations', 'ProductComponents', 'products_components', 'id', 'ProductOperations', 'productoperations', 'component_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('6be98900-9a08-e374-0324-45e3e393fb1a', 'machines_assigned_user', 'Users', 'users', 'id', 'Machines', 'machines', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('aa2474b2-b283-a077-a520-45e3e3ba2076', 'machines_modified_user', 'Users', 'users', 'id', 'Machines', 'machines', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('455000c5-56a6-6c76-9d97-45e3e3a5916e', 'machines_created_by', 'Users', 'users', 'id', 'Machines', 'machines', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('c592eeac-58e4-cbd0-c472-462483758eeb', 'estimates_assigned_user', 'Users', 'users', 'id', 'Estimates', 'estimate', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('c5a176c2-7119-ba0e-6889-462483a68230', 'estimates_modified_user', 'Users', 'users', 'id', 'Estimates', 'estimate', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('c5a920d7-e16b-b5a1-2e2b-462483311cd5', 'estimates_created_by', 'Users', 'users', 'id', 'Estimates', 'estimate', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('3c43cf69-70b6-1a1a-bfe8-46287d58657f', 'productlogs_assigned_user', 'Users', 'users', 'id', 'ProductLogs', 'productlog', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('3c5a0a50-60eb-c998-e871-46287d0cec6f', 'productlogs_modified_user', 'Users', 'users', 'id', 'ProductLogs', 'productlog', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('3c6daf54-e306-13f7-3e06-46287d7ee5c8', 'productlogs_created_by', 'Users', 'users', 'id', 'ProductLogs', 'productlog', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('7d128ed9-2c5b-72f5-1a99-4629d530dcea', 'products_productlogs', 'Products', 'products', 'id', 'ProductLogs', 'productlog', 'product_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('b36b258b-e5fa-6a8f-f755-463056970cd7', 'products_estimates', 'Products', 'products', 'id', 'Estimates', 'estimate', 'product_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('15a49dd0-4f2c-a32f-b7b8-46399341fa22', 'printing_assigned_user', 'Users', 'users', 'id', 'Printing', 'printing', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('15b258a4-b419-da52-ff3b-46399337315c', 'printing_modified_user', 'Users', 'users', 'id', 'Printing', 'printing', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('15ba1a85-ae4b-3264-cfad-4639931ad19f', 'printing_created_by', 'Users', 'users', 'id', 'Printing', 'printing', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('a76ec53a-cb21-432e-8136-463a1c6cbc13', 'products_printing', 'Products', 'products', 'id', 'Printing', 'printing', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('c4cd18f0-2aa3-b63c-04bb-463a29082ea3', 'components_printing', 'ProductComponents', 'products_components', 'id', 'Printing', 'printing', 'product_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('568475ae-30e1-b714-c080-46540ce6b1df', 'products_contacts', 'Products', 'products', 'id', 'Contacts', 'contacts', 'id', 'products_relation', 'product_id', 'relation_id', 'many-to-many', 'relation_type', 'Contacts', 0, 0);
INSERT INTO `relationships` VALUES ('56927072-88ec-3999-f929-46540cc3a8a1', 'products_opportunities', 'Products', 'products', 'id', 'Opportunities', 'opportunities', 'id', 'products_relation', 'product_id', 'relation_id', 'many-to-many', 'relation_type', 'Opportunities', 0, 0);
INSERT INTO `relationships` VALUES ('bbdc572b-0aa3-9adf-5f2b-46543db2b324', 'products_notes', 'Products', 'products', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Products', 0, 0);
INSERT INTO `relationships` VALUES ('bbf41024-19e0-cba5-740a-46543dc4a2a4', 'products_meetings', 'Products', 'products', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Products', 0, 0);
INSERT INTO `relationships` VALUES ('bbfc37b4-da05-82b9-7d5c-46543d68e31f', 'products_calls', 'Products', 'products', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Products', 0, 0);
INSERT INTO `relationships` VALUES ('bc03e285-16fb-6fbb-0198-46543d85bcab', 'products_emails', 'Products', 'products', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Products', 0, 0);
INSERT INTO `relationships` VALUES ('6fb32b75-b017-0cc3-3485-4680dbabd441', 'inks_assigned_user', 'Users', 'users', 'id', 'Ink', 'ink', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('6fca6a7e-9926-f5d4-7510-4680db26eeda', 'inks_modified_user', 'Users', 'users', 'id', 'Ink', 'ink', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('6fd27e82-db8a-d0b1-74bb-4680dbbb1d3f', 'inks_created_by', 'Users', 'users', 'id', 'Ink', 'ink', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('d5c0b002-86f9-a2a4-498b-46825aabcc6e', 'pressmachines_assigned_user', 'Users', 'users', 'id', 'Pressmachine', 'pressmachine', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('d5ceecc1-8fa3-6ac9-80a0-46825a8dc5b5', 'pressmachines_modified_user', 'Users', 'users', 'id', 'Pressmachine', 'pressmachine', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('d5d6ee8c-306f-400c-f5da-46825a6d3d3f', 'pressmachines_created_by', 'Users', 'users', 'id', 'Pressmachine', 'pressmachine', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('3888ad68-16d7-a617-0a2a-468a09789f77', 'pricelists_assigned_user', 'Users', 'users', 'id', 'Pricelist', 'pricelist', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('38a46822-df5c-cc25-c7a3-468a09c9ec14', 'pricelists_modified_user', 'Users', 'users', 'id', 'Pricelist', 'pricelist', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('38ac86c3-5c3b-2024-8ec6-468a095b18d4', 'pricelists_created_by', 'Users', 'users', 'id', 'Pricelist', 'pricelist', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('443367e8-c8a4-0266-4061-469246689c13', 'layouts_assigned_user', 'Users', 'users', 'id', 'Layout', 'layout', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('444104b4-83fb-1ce9-7fcb-46924626b9e1', 'layouts_modified_user', 'Users', 'users', 'id', 'Layout', 'layout', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('44490b20-c828-7d62-0435-469246c2857e', 'layouts_created_by', 'Users', 'users', 'id', 'Layout', 'layout', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('4450900a-1777-af9b-326a-4692466ee0c1', 'paperwaste_assigned_user', 'Users', 'users', 'id', 'Paperwaste', 'paperwaste', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('44583813-07a6-73cb-db07-46924624a745', 'paperwaste_modified_user', 'Users', 'users', 'id', 'Paperwaste', 'paperwaste', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('445fc34d-4559-f3fa-c2b7-46924618b64f', 'paperwaste_created_by', 'Users', 'users', 'id', 'Paperwaste', 'paperwaste', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('9898ec7c-1244-8ca5-3add-46960c3e2e2c', 'press_assigned_user', 'Users', 'users', 'id', 'Press', 'press', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('98adec95-03cb-b924-0fa2-46960ce4f12b', 'press_modified_user', 'Users', 'users', 'id', 'Press', 'press', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('98b5d979-6ae2-363c-16af-46960c988afe', 'press_created_by', 'Users', 'users', 'id', 'Press', 'press', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('98bdab15-f2de-4a41-95ea-46960c61942d', 'ratefilms_assigned_user', 'Users', 'users', 'id', 'Ratefilm', 'ratefilm', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('98c55094-01b2-950d-61be-46960c22a440', 'ratefilms_modified_user', 'Users', 'users', 'id', 'Ratefilm', 'ratefilm', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('98cd04dd-8676-184d-a3b8-46960c218eee', 'ratefilms_created_by', 'Users', 'users', 'id', 'Ratefilm', 'ratefilm', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('190add40-f7cd-02d2-2516-46bb277ed3ea', 'productestimates_assigned_user', 'Users', 'users', 'id', 'ProductEstimate', 'productestimate', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('191f6480-9698-f876-da1b-46bb27635c85', 'productestimates_modified_user', 'Users', 'users', 'id', 'ProductEstimate', 'productestimate', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('192755c3-11f6-8a2b-e835-46bb27210e89', 'productestimates_created_by', 'Users', 'users', 'id', 'ProductEstimate', 'productestimate', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('d86350b2-fead-20d0-62aa-46c0359bea34', 'componentestimates_assigned_user', 'Users', 'users', 'id', 'ComponentEstimate', 'componentestimate', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('d87137c5-7d38-7ae3-5484-46c035373e42', 'componentestimates_modified_user', 'Users', 'users', 'id', 'ComponentEstimate', 'componentestimate', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` VALUES ('d878dcbd-60fd-bb73-4db3-46c035337576', 'componentestimates_created_by', 'Users', 'users', 'id', 'ComponentEstimate', 'componentestimate', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);

-- --------------------------------------------------------

-- 
-- Структура на таблица `releases`
-- 

DROP TABLE IF EXISTS `releases`;
CREATE TABLE `releases` (
  `id` varchar(36) NOT NULL default '',
  `deleted` tinyint(1) NOT NULL default '0',
  `date_entered` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_user_id` varchar(36) NOT NULL default '',
  `created_by` varchar(36) default NULL,
  `name` varchar(50) NOT NULL default '',
  `list_order` int(4) default NULL,
  `status` varchar(25) default NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_releases` (`name`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `releases`
-- 


-- --------------------------------------------------------

-- 
-- Структура на таблица `roles`
-- 

DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` varchar(36) NOT NULL default '',
  `date_entered` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_user_id` varchar(36) NOT NULL default '',
  `created_by` varchar(36) default NULL,
  `name` varchar(150) default NULL,
  `description` text,
  `modules` text,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_role_id_del` (`id`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `roles`
-- 


-- --------------------------------------------------------

-- 
-- Структура на таблица `roles_modules`
-- 

DROP TABLE IF EXISTS `roles_modules`;
CREATE TABLE `roles_modules` (
  `id` varchar(36) NOT NULL default '',
  `role_id` varchar(36) default NULL,
  `module_id` varchar(36) default NULL,
  `allow` tinyint(1) default '0',
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_role_id` (`role_id`),
  KEY `idx_module_id` (`module_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `roles_modules`
-- 


-- --------------------------------------------------------

-- 
-- Структура на таблица `roles_users`
-- 

DROP TABLE IF EXISTS `roles_users`;
CREATE TABLE `roles_users` (
  `id` varchar(36) NOT NULL default '',
  `role_id` varchar(36) default NULL,
  `user_id` varchar(36) default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_ru_role_id` (`role_id`),
  KEY `idx_ru_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `roles_users`
-- 


-- --------------------------------------------------------

-- 
-- Структура на таблица `saved_search`
-- 

DROP TABLE IF EXISTS `saved_search`;
CREATE TABLE `saved_search` (
  `id` varchar(36) NOT NULL default '',
  `name` varchar(150) default NULL,
  `search_module` varchar(150) default NULL,
  `deleted` tinyint(1) NOT NULL default '0',
  `date_entered` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `assigned_user_id` varchar(36) default NULL,
  `contents` text,
  `description` text,
  PRIMARY KEY  (`id`),
  KEY `idx_desc` (`name`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `saved_search`
-- 


-- --------------------------------------------------------

-- 
-- Структура на таблица `schedulers`
-- 

DROP TABLE IF EXISTS `schedulers`;
CREATE TABLE `schedulers` (
  `id` varchar(36) NOT NULL default '',
  `deleted` tinyint(1) NOT NULL default '0',
  `date_entered` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_by` varchar(36) default NULL,
  `modified_user_id` varchar(36) default NULL,
  `name` varchar(255) NOT NULL default '',
  `job` varchar(255) NOT NULL default '',
  `date_time_start` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_time_end` datetime default NULL,
  `job_interval` varchar(100) NOT NULL default '',
  `time_from` time default NULL,
  `time_to` time default NULL,
  `last_run` datetime default NULL,
  `status` varchar(25) default NULL,
  `catch_up` tinyint(1) default '1',
  PRIMARY KEY  (`id`),
  KEY `idx_schedule` (`date_time_start`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `schedulers`
-- 

INSERT INTO `schedulers` VALUES ('d680020d-c3fe-7b15-63e2-458d3ef9bc2a', 0, '2006-12-23 14:35:31', '2006-12-23 14:35:31', NULL, '1', 'Check Inbound Mailboxes', 'function::pollMonitoredInboxes', '2004-12-31 22:00:00', '2020-12-31 21:59:00', '*::*::*::*::*', NULL, NULL, NULL, 'Active', 0);
INSERT INTO `schedulers` VALUES ('36a202b3-5201-4418-c50c-458d3ee39298', 0, '2006-12-23 14:35:31', '2006-12-23 14:35:31', NULL, '1', 'Run Nightly Process Bounced Campaign Emails', 'function::pollMonitoredInboxesForBouncedCampaignEmails', '2004-12-31 22:00:00', '2020-12-31 21:59:00', '0::2-6::*::*::*', NULL, NULL, NULL, 'Active', 1);
INSERT INTO `schedulers` VALUES ('5f8d0e1a-e5da-581b-5d5e-458d3e715c74', 0, '2006-12-23 14:35:31', '2006-12-23 14:35:31', NULL, '1', 'Run Nightly Mass Email Campaigns', 'function::runMassEmailCampaign', '2004-12-31 22:00:00', '2020-12-31 21:59:00', '0::2-6::*::*::*', NULL, NULL, NULL, 'Active', 1);
INSERT INTO `schedulers` VALUES ('830401b9-06e7-9930-a6cd-458d3e71ca22', 0, '2006-12-23 14:35:31', '2006-12-23 14:35:31', NULL, '1', 'Prune Database on 1st of Month', 'function::pruneDatabase', '2004-12-31 22:00:00', '2020-12-31 21:59:00', '0::4::1::*::*', NULL, NULL, NULL, 'Inactive', 0);

-- --------------------------------------------------------

-- 
-- Структура на таблица `schedulers_times`
-- 

DROP TABLE IF EXISTS `schedulers_times`;
CREATE TABLE `schedulers_times` (
  `id` varchar(36) NOT NULL default '',
  `deleted` tinyint(1) NOT NULL default '0',
  `date_entered` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `scheduler_id` varchar(36) NOT NULL default '',
  `execute_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `status` varchar(25) NOT NULL default 'ready',
  PRIMARY KEY  (`id`),
  KEY `idx_scheduler_id` (`scheduler_id`,`execute_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `schedulers_times`
-- 


-- --------------------------------------------------------

-- 
-- Структура на таблица `suppliers`
-- 

DROP TABLE IF EXISTS `suppliers`;
CREATE TABLE `suppliers` (
  `id` varchar(36) NOT NULL default '',
  `acc_id` varchar(36) default NULL,
  `acc_name` varchar(150) default NULL,
  `date_entered` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_user_id` varchar(36) NOT NULL default '',
  `assigned_user_id` varchar(36) default NULL,
  `created_by` varchar(36) default NULL,
  `name` varchar(150) default NULL,
  `parent_id` varchar(36) default NULL,
  `category` varchar(40) default NULL,
  `num` varchar(25) default NULL,
  `num_suf` int(5) default NULL,
  `phone_fax` varchar(25) default NULL,
  `billing_address_street` varchar(150) default NULL,
  `billing_address_city` varchar(100) default NULL,
  `billing_address_state` varchar(100) default NULL,
  `billing_address_postalcode` varchar(20) default NULL,
  `billing_address_country` varchar(100) default NULL,
  `description` text,
  `num_pref` varchar(3) default NULL,
  `phone_office` varchar(25) default NULL,
  `phone_alternate` varchar(25) default NULL,
  `email1` varchar(100) default NULL,
  `email2` varchar(100) default NULL,
  `website` varchar(255) default NULL,
  `cid` varchar(100) default NULL,
  `ctid` varchar(30) default NULL,
  `iban` varchar(40) default NULL,
  `pay_terms` varchar(40) default NULL,
  `shipping_address_street` varchar(150) default NULL,
  `shipping_address_city` varchar(100) default NULL,
  `shipping_address_state` varchar(100) default NULL,
  `shipping_address_postalcode` varchar(20) default NULL,
  `shipping_address_country` varchar(100) default NULL,
  `deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_accnt_id_del` (`id`,`deleted`),
  KEY `idx_accnt_assigned_del` (`deleted`,`assigned_user_id`),
  KEY `idx_accnt_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `suppliers`
-- 

INSERT INTO `suppliers` VALUES ('5e0b1f19-edac-32da-c0ee-45cf3dd3f612', NULL, NULL, '2007-02-11 16:01:04', '2007-05-22 16:37:13', '1', '177bd6bb-665d-cc61-4d82-45ab422290d3', '177bd6bb-665d-cc61-4d82-45ab422290d3', 'Славей 91', NULL, 'Finishing', 'SUP10001', 10001, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SUP', NULL, NULL, NULL, NULL, 'http://', NULL, NULL, NULL, 'Cash', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `suppliers` VALUES ('56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', NULL, NULL, '2007-02-11 16:01:26', '2007-02-11 16:01:26', '177bd6bb-665d-cc61-4d82-45ab422290d3', '177bd6bb-665d-cc61-4d82-45ab422290d3', '177bd6bb-665d-cc61-4d82-45ab422290d3', 'К1 Партнерс', NULL, 'Finishing', 'SUP10000', 10000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SUP', NULL, NULL, NULL, NULL, 'http://', NULL, NULL, NULL, 'Cash', NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

-- 
-- Структура на таблица `suppliers_contacts`
-- 

DROP TABLE IF EXISTS `suppliers_contacts`;
CREATE TABLE `suppliers_contacts` (
  `id` varchar(36) NOT NULL default '',
  `contact_id` varchar(36) default NULL,
  `supplier_id` varchar(36) default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_sup_cont_sup` (`supplier_id`),
  KEY `idx_sup_cont_cont` (`contact_id`),
  KEY `idx_supplier_contact` (`supplier_id`,`contact_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `suppliers_contacts`
-- 


-- --------------------------------------------------------

-- 
-- Структура на таблица `supplies`
-- 

DROP TABLE IF EXISTS `supplies`;
CREATE TABLE `supplies` (
  `id` varchar(36) NOT NULL default '',
  `name` varchar(36) default NULL,
  `supplynum` varchar(36) default NULL,
  `category` varchar(36) default NULL,
  `status` varchar(36) default NULL,
  `num_pref` varchar(36) NOT NULL default '',
  `num_suf` varchar(36) NOT NULL default '',
  `total_price` varchar(36) default '0',
  `supplier_id` varchar(36) default NULL,
  `supplier_name` varchar(50) default NULL,
  `purchaseorder_id` varchar(36) default NULL,
  `purchaseorder_num` varchar(50) default NULL,
  `delivery_date` date default NULL,
  `delivered_date` date default NULL,
  `assigned_user_id` varchar(36) default NULL,
  `sales_order_id` varchar(36) default NULL,
  `sales_order_num` varchar(36) default NULL,
  `note` varchar(200) default NULL,
  `deleted` tinyint(1) default '0',
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `created_by` varchar(36) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `idx_quote_id_del` (`id`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `supplies`
-- 

INSERT INTO `supplies` VALUES ('ca5f7364-bc69-fa1c-aa4d-46531b96bfe9', 'SPL10000', 'SPL10000', NULL, 'In Progress', 'SPL', '10000', '5.00', '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'К1 Партнерс', NULL, NULL, '2007-05-31', NULL, '1', NULL, NULL, NULL, 0, '2007-05-22 16:35:39', '2007-05-22 16:35:39', '1');

-- --------------------------------------------------------

-- 
-- Структура на таблица `supplylines`
-- 

DROP TABLE IF EXISTS `supplylines`;
CREATE TABLE `supplylines` (
  `id` varchar(36) NOT NULL default '',
  `supplyid` varchar(36) NOT NULL default '',
  `supplynum` varchar(36) NOT NULL default '',
  `delivery_date` date default NULL,
  `delivered_date` date default NULL,
  `status` varchar(36) default NULL,
  `materialid` varchar(36) default NULL,
  `paperid` varchar(36) default NULL,
  `materialname` varchar(50) NOT NULL default '',
  `number` varchar(36) default NULL,
  `measure` varchar(36) default NULL,
  `deleted` tinyint(1) default '0',
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `created_by` varchar(36) NOT NULL default '',
  `price` varchar(36) default NULL,
  `singlep` varchar(36) default NULL,
  `unit` varchar(11) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `supplylines`
-- 

INSERT INTO `supplylines` VALUES ('cbedcbc2-61cd-a8f6-606d-46531b240628', 'ca5f7364-bc69-fa1c-aa4d-46531b96bfe9', 'SPL10000', '2007-05-31', NULL, 'In Progress', NULL, '700f965b-a39b-142b-8000-464d6470e92e', 'Chantellor 100', '1', NULL, 0, '2007-05-22 16:35:39', '2007-05-22 16:35:39', '1', '5.00', '0.5', '10');

-- --------------------------------------------------------

-- 
-- Структура на таблица `tasks`
-- 

DROP TABLE IF EXISTS `tasks`;
CREATE TABLE `tasks` (
  `id` varchar(36) NOT NULL default '',
  `date_entered` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `assigned_user_id` varchar(36) default NULL,
  `modified_user_id` varchar(36) default NULL,
  `created_by` varchar(36) default NULL,
  `name` varchar(50) default NULL,
  `status` varchar(25) default NULL,
  `date_due_flag` varchar(5) default 'on',
  `date_due` date default NULL,
  `time_due` time default NULL,
  `date_start_flag` varchar(5) default 'on',
  `date_start` date default NULL,
  `time_start` time default NULL,
  `parent_type` varchar(25) default NULL,
  `parent_id` varchar(36) default NULL,
  `contact_id` varchar(36) default NULL,
  `priority` varchar(25) default NULL,
  `description` text,
  `deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_tsk_name` (`name`),
  KEY `idx_task_con_del` (`contact_id`,`deleted`),
  KEY `idx_task_par_del` (`parent_id`,`parent_type`,`deleted`),
  KEY `idx_task_assigned` (`assigned_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `tasks`
-- 

INSERT INTO `tasks` VALUES ('4f19c87b-f578-7544-95ba-45e80e218576', '2007-03-02 11:47:30', '2007-03-05 08:18:23', '1', '1', '1', 'Test Task', 'Completed', 'off', '2007-03-03', '10:00:00', 'off', NULL, NULL, 'Accounts', 'eda6787a-dc2f-d683-59a9-45ab41cdba8d', NULL, 'High', NULL, 1);
INSERT INTO `tasks` VALUES ('a61a035f-cbd6-ef78-870c-45e824d88fa8', '2007-03-02 13:18:46', '2007-03-05 08:18:10', '1', '1', '1', 'Task1_P1', 'In Progress', 'off', '2007-03-02', '13:47:00', 'off', NULL, NULL, 'Accounts', NULL, NULL, 'Medium', NULL, 1);
INSERT INTO `tasks` VALUES ('4009343b-d142-6a52-efd3-45ebebfa38cd', '0000-00-00 00:00:00', '2007-05-18 07:40:22', '1', NULL, '1', 'PRD10005-Estimate', 'In Progress', 'off', NULL, NULL, 'off', NULL, NULL, NULL, NULL, NULL, 'Medium', 'PRD10005 is waiting for estimate', 1);
INSERT INTO `tasks` VALUES ('4bc343a5-6b37-424a-e4c0-45ebecab6727', '0000-00-00 00:00:00', '2007-05-18 07:43:29', '177bd6bb-665d-cc61-4d82-45ab422290d3', NULL, '1', 'PRD10001-Estimate', 'In Progress', 'off', NULL, NULL, 'off', NULL, NULL, NULL, NULL, NULL, 'Medium', 'PRD10001 is waiting for estimate', 1);
INSERT INTO `tasks` VALUES ('6a34bfc2-ab1c-c79d-87f5-45f12a4bfdfd', '0000-00-00 00:00:00', '2007-05-18 07:43:29', '177bd6bb-665d-cc61-4d82-45ab422290d3', NULL, '1', 'PRD10000-Estimate', 'In Progress', 'off', NULL, NULL, 'off', NULL, NULL, NULL, NULL, NULL, 'Medium', 'PRD10000 is waiting for estimate', 1);
INSERT INTO `tasks` VALUES ('847dea88-fbc2-7208-78f1-46287c93ff6a', '0000-00-00 00:00:00', '2007-05-18 07:43:29', '1', NULL, '1', 'PRD10007-Estimate', 'In Progress', 'off', NULL, NULL, 'off', NULL, NULL, NULL, NULL, NULL, 'Medium', 'PRD10007 is waiting for estimate', 1);
INSERT INTO `tasks` VALUES ('71a23fab-a15e-e273-1ffb-464d6979e53b', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', NULL, '1', 'PRD10000-Estimate', 'In Progress', 'off', NULL, NULL, 'off', NULL, NULL, NULL, NULL, NULL, 'Medium', 'PRD10000 is waiting for estimate', 0);
INSERT INTO `tasks` VALUES ('8c2bf347-5728-636b-e1e4-4678f330880a', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', NULL, '1', 'PRD10001-Estimate', 'In Progress', 'off', NULL, NULL, 'off', NULL, NULL, NULL, NULL, NULL, 'Medium', 'PRD10001 is waiting for estimate', 0);
INSERT INTO `tasks` VALUES ('40a0e8b1-b75b-da06-1819-46c9403aa84d', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', NULL, '1', 'PRD10002-Estimate', 'In Progress', 'off', NULL, NULL, 'off', NULL, NULL, NULL, NULL, NULL, 'Medium', 'PRD10002 is waiting for estimate', 0);
INSERT INTO `tasks` VALUES ('4a927be6-eb08-be76-ed15-46c9430c6317', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', NULL, '1', 'PRD10003-Estimate', 'In Progress', 'off', NULL, NULL, 'off', NULL, NULL, NULL, NULL, NULL, 'Medium', 'PRD10003 is waiting for estimate', 0);
INSERT INTO `tasks` VALUES ('94883148-0b2d-3aee-1270-46c9438a3cbd', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', NULL, '1', 'PRD10004-Estimate', 'In Progress', 'off', NULL, NULL, 'off', NULL, NULL, NULL, NULL, NULL, 'Medium', 'PRD10004 is waiting for estimate', 0);
INSERT INTO `tasks` VALUES ('e4a32ca1-e258-66f3-bec7-46cec7c0744a', '2007-08-24 11:54:49', '2007-08-24 11:54:49', '1', '1', '1', 'ояао', 'Not Started', 'off', NULL, NULL, 'off', NULL, NULL, 'Opportunities', 'c4085e78-f9a8-91e9-8e5c-46cec6b8c370', NULL, 'High', NULL, 0);

-- --------------------------------------------------------

-- 
-- Структура на таблица `tracker`
-- 

DROP TABLE IF EXISTS `tracker`;
CREATE TABLE `tracker` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` varchar(36) default NULL,
  `module_name` varchar(25) default NULL,
  `item_id` varchar(36) default NULL,
  `item_summary` varchar(255) default NULL,
  `date_modified` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=4179 ;

-- 
-- Дъмп (схема) на данните в таблицата `tracker`
-- 

INSERT INTO `tracker` VALUES (26, '1', 'ProductComponents', '7aca0f09-6eb9-3564-1d83-459e69bba094', 'comp3', '2007-01-08 14:02:16');
INSERT INTO `tracker` VALUES (1916, '177bd6bb-665d-cc61-4d82-45ab422290d3', 'Employees', '177bd6bb-665d-cc61-4d82-45ab422290d3', 'Demo User', '2007-03-02 14:42:35');
INSERT INTO `tracker` VALUES (3996, '1', 'ProductComponents', '629da741-d120-307b-0f49-46c94438e8c8', 'Каталог-01-2007-1', '2007-08-23 08:03:12');
INSERT INTO `tracker` VALUES (4178, '1', 'ProductComponents', '598457bc-776a-9154-9b63-4652c9ce58cb', 'Корица Пресфото', '2007-08-27 14:48:17');
INSERT INTO `tracker` VALUES (1917, '177bd6bb-665d-cc61-4d82-45ab422290d3', 'Contacts', '1ae804e8-06a5-ed75-94d3-45d194878ef8', 'Петър Петров', '2007-03-02 14:42:44');
INSERT INTO `tracker` VALUES (4002, '1', 'Paperwaste', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 'Макулатура  - ВШМ', '2007-08-23 08:53:13');
INSERT INTO `tracker` VALUES (4004, '1', 'Paperwaste', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 'Печат - GTO', '2007-08-23 08:53:58');
INSERT INTO `tracker` VALUES (4047, '1', 'Quotes', '32efa8ec-e7c3-543b-ddb4-468b79379fb4', 'Оферта', '2007-08-24 12:07:17');
INSERT INTO `tracker` VALUES (4101, '1', 'Products', 'a5a08eeb-0be7-f066-2677-464d699203bc', 'Каталог Пресфото', '2007-08-27 08:20:18');
INSERT INTO `tracker` VALUES (4097, '1', 'Ink', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'Червено', '2007-08-27 08:14:56');
INSERT INTO `tracker` VALUES (4170, '1', 'Ink', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'Жълто', '2007-08-27 12:32:02');
INSERT INTO `tracker` VALUES (4052, '1', 'Opportunities', 'c4085e78-f9a8-91e9-8e5c-46cec6b8c370', 'Сделка 1', '2007-08-24 12:10:49');

-- --------------------------------------------------------

-- 
-- Структура на таблица `upgrade_history`
-- 

DROP TABLE IF EXISTS `upgrade_history`;
CREATE TABLE `upgrade_history` (
  `id` varchar(36) NOT NULL default '',
  `filename` varchar(255) default NULL,
  `md5sum` varchar(32) default NULL,
  `type` varchar(30) default NULL,
  `status` varchar(50) default NULL,
  `version` varchar(10) default NULL,
  `date_entered` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `upgrade_history_md5_uk` (`md5sum`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `upgrade_history`
-- 

INSERT INTO `upgrade_history` VALUES ('c5f1a9d7-4380-1b69-67a1-458d4028e709', 'cache/upload/upgrades/module/Products-v0.2.1b.zip', 'ab789afadd622840712953cc03dcf079', 'module', 'installed', '0.2.1b', '2006-12-23 14:42:20');
INSERT INTO `upgrade_history` VALUES ('c0cb39cb-ea18-0cb8-16d6-459cdfac7123', 'cache/upload/upgrades/module/ProductComponents-0.1b.zip', '2a3131a50a4622792bc24d9416b6fa7e', 'module', 'installed', '0.1b', '2007-01-04 11:04:50');
INSERT INTO `upgrade_history` VALUES ('7e410add-8dbc-3d7e-b21d-45a251f14a2f', 'cache/upload/upgrades/module/Paper.2006-12-01-v0.2.zip', 'd246ee537005fd93963a31db7027f538', 'module', 'installed', '0.2b', '2007-01-08 14:12:05');

-- --------------------------------------------------------

-- 
-- Структура на таблица `user_preferences`
-- 

DROP TABLE IF EXISTS `user_preferences`;
CREATE TABLE `user_preferences` (
  `id` varchar(36) NOT NULL default '',
  `category` varchar(50) default NULL,
  `deleted` tinyint(1) NOT NULL default '0',
  `date_entered` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `assigned_user_id` varchar(36) default NULL,
  `contents` text,
  PRIMARY KEY  (`id`),
  KEY `idx_userprefnamecat` (`assigned_user_id`,`category`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `user_preferences`
-- 

INSERT INTO `user_preferences` VALUES ('b9648400-d123-afa0-57e2-46c02b650609', 'ComponentEstimate2_COMPONENTESTIMATE', 0, '2007-08-13 10:00:23', '2007-08-13 10:00:23', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0=');
INSERT INTO `user_preferences` VALUES ('641c49ea-af3c-ba37-d646-46baeac897de', 'ProductEstimate2_PRODUCTESTIMATE', 0, '2007-08-09 10:22:30', '2007-08-09 10:22:30', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0=');
INSERT INTO `user_preferences` VALUES ('a5787cfa-bc08-3aeb-93dd-46baf024f13c', 'Paperwaste2_PAPERWASTE', 0, '2007-08-09 10:44:55', '2007-08-09 10:44:55', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0=');
INSERT INTO `user_preferences` VALUES ('425a9337-e1ae-f46c-5c27-46bc612c06bf', 'Rateplate2_RATEPLATE', 0, '2007-08-10 13:02:50', '2007-08-10 13:02:50', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0=');
INSERT INTO `user_preferences` VALUES ('8702663a-82e3-cd1d-538b-46bc6dd143bd', 'Ratefilm2_RATEFILM', 0, '2007-08-10 13:52:45', '2007-08-10 13:52:45', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0=');
INSERT INTO `user_preferences` VALUES ('c6928202-4091-e9e5-59b9-46bac9f0ad56', 'Prices2_PRICE', 0, '2007-08-09 08:00:13', '2007-08-09 08:00:13', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0=');
INSERT INTO `user_preferences` VALUES ('9cc0d457-ed62-f5c6-84b2-46b98a8ef57c', 'Presspricelist2_PRESSPRICELIST', 0, '2007-08-08 09:19:34', '2007-08-08 09:19:34', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0=');
INSERT INTO `user_preferences` VALUES ('9ffa1311-c34f-8b48-88d3-46b864559b1a', 'ProductOperations2_PRODUCTOPERATION', 0, '2007-08-07 12:24:09', '2007-08-07 12:24:09', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0=');
INSERT INTO `user_preferences` VALUES ('bbd2cda4-3cdb-33a6-54f3-46b84b3d4391', 'Home2_MEETING', 0, '2007-08-07 10:38:47', '2007-08-07 10:38:47', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0=');
INSERT INTO `user_preferences` VALUES ('bc2a2f15-0e39-ab88-459d-46b84beff7e1', 'Home2_LEAD', 0, '2007-08-07 10:38:47', '2007-08-07 10:38:47', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0=');
INSERT INTO `user_preferences` VALUES ('bddb3603-eee4-7bf1-4cf8-46b84b508451', 'Home2_CASE', 0, '2007-08-07 10:38:47', '2007-08-07 10:38:47', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0=');
INSERT INTO `user_preferences` VALUES ('be45f44e-fe19-062a-b7fd-46b84bad862f', 'Home2_OPPORTUNITY', 0, '2007-08-07 10:38:47', '2007-08-07 10:38:47', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMToiZGF0ZV9jbG9zZWQiO3M6OToic29ydE9yZGVyIjtzOjM6IkFTQyI7fX0=');
INSERT INTO `user_preferences` VALUES ('bea47352-0895-4a0b-f9cb-46b84b14c34c', 'Home2_ACCOUNT', 0, '2007-08-07 10:38:47', '2007-08-07 10:38:47', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0=');
INSERT INTO `user_preferences` VALUES ('d0ba763e-fae4-0bb2-11b4-46b84b051377', 'ProductComponents2_PRODUCTCOMPONENTS', 0, '2007-08-07 10:39:05', '2007-08-07 10:39:05', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0=');
INSERT INTO `user_preferences` VALUES ('b954f260-889c-0c0d-42c4-46b84b172c48', 'Products2_PRODUCTS', 0, '2007-08-07 10:39:11', '2007-08-07 10:39:11', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0=');
INSERT INTO `user_preferences` VALUES ('eab7497e-d8f5-c2fb-9240-46b84b54a669', 'global', 0, '2007-08-07 10:38:46', '2007-08-27 13:19:37', '1', 'YToxODp7czo4OiJ0aW1lem9uZSI7czoxMjoiRXVyb3BlL1NvZmlhIjtzOjI6InV0IjtpOjE7czoxMjoidXNlclByaXZHdWlkIjtzOjM2OiI5OWRiOTk2Mi1mYjc4LTlhNWUtMzUwZS00NmI4NGJiMzAxNWEiO3M6MjI6IkFDTFJvbGVzX1JPTEVfT1JERVJfQlkiO3M6NDoibmFtZSI7czoyOToiT3BlcmF0aW9uc19PUEVSQVRJT05fT1JERVJfQlkiO3M6NDoibmFtZSI7czoyMDoiUGFwZXJfUEFQRVJfT1JERVJfQlkiO3M6NToicG5hbWUiO3M6MjE6IlByaWNlc19QUklDRV9PUkRFUl9CWSI7czo0OiJuYW1lIjtzOjE5OiJVc2Vyc19VU0VSX09SREVSX0JZIjtzOjk6InVzZXJfbmFtZSI7czoyNjoiUmF0ZWZpbG1fUkFURUZJTE1fT1JERVJfQlkiO3M6NDoibmFtZSI7czoyMToiUXVvdGVzX1FVT1RFX09SREVSX0JZIjtzOjE4OiJkYXRlX21vZGlmaWVkIGRlc2MiO3M6Mjc6IlN1cHBsaWVyc19TVVBQTElFUl9PUkRFUl9CWSI7czo0OiJuYW1lIjtzOjI1OiJBY2NvdW50c19BQ0NPVU5UX09SREVSX0JZIjtzOjQ6Im5hbWUiO3M6MjU6IkNvbnRhY3RzX0NPTlRBQ1RfT1JERVJfQlkiO3M6Mzk6ImNvbnRhY3RzLmZpcnN0X25hbWUsIGNvbnRhY3RzLmxhc3RfbmFtZSI7czoxNjoiSW5rX0lOS19PUkRFUl9CWSI7czo0OiJuYW1lIjtzOjI4OiJSYXRlcGxhdGVfUkFURVBMQVRFX09SREVSX0JZIjtzOjQ6Im5hbWUiO3M6Mjc6IkRvY3VtZW50c19ET0NVTUVOVF9PUkRFUl9CWSI7czoxMzoiZG9jdW1lbnRfbmFtZSI7czoyMToiRW1haWxzX0VNQUlMX09SREVSX0JZIjtzOjI4OiJkYXRlX3NlbnQsIGRhdGVfZW50ZXJlZCBERVNDIjtzOjE5OiJUYXNrc19UQVNLX09SREVSX0JZIjtzOjIwOiJkYXRlX2R1ZSxzdGF0dXMgZGVzYyI7fQ==');
INSERT INTO `user_preferences` VALUES ('bb100e79-b2e5-3a43-1de2-46b84bb08650', 'home', 0, '2007-08-07 10:38:47', '2007-08-23 11:06:24', '1', 'YToyOntzOjg6ImRhc2hsZXRzIjthOjg6e3M6MzY6Ijc1OTVhYzQyLTAyNmItZGE3Yy01NDRkLTQ2Yjg0YmY2MmY5NyI7YToyOntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1ODoiLi9tb2R1bGVzL0NhbGxzL0Rhc2hsZXRzL015Q2FsbHNEYXNobGV0L015Q2FsbHNEYXNobGV0LnBocCI7fXM6MzY6Ijc1OWZjMjgzLWFjNjctZGUxNi1hYTIzLTQ2Yjg0YjZjMmNjMCI7YTozOntzOjk6ImNsYXNzTmFtZSI7czoxMzoiSm90UGFkRGFzaGxldCI7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU1OiIuL21vZHVsZXMvSG9tZS9EYXNobGV0cy9Kb3RQYWREYXNobGV0L0pvdFBhZERhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MTp7czo5OiJzYXZlZFRleHQiO3M6NjM3OiLQlNC+0LHRgNC1INC00L7RiNC70Lgg0LIg0YHQuNGB0YLQtdC80LAgQWxwaGFQcmludDxiciAvPg0KPGJyIC8+DQrQn9GA0LXQtNGB0YLQsNCy0LvRj9C10Lwg0LLQsNC8INC90L7QstC+0LLQstC10LTQtdC90LjQtSDQtNCw0L3QvdC+0Lkg0LLQtdGA0YHQuNC4IC0g0YDQsNC30LTQtdC70YsgKFN1Z2FyIERhc2hsZXQpLiDQotC10L/QtdGA0Ywg0LLRiyDQvNC+0LbQtdGC0LUg0L3QsNGB0YLRgNC+0LjRgtGMINCz0LvQsNCy0L3Rg9GOINGB0YLRgNCw0L3QuNGG0YMg0YHQuNGB0YLQtdC80Ysg0L/QvtC0INGB0LLQvtC4INGB0L7QsdGB0YLQstC10L3QvdGL0LUg0L3Rg9C20LTRiywg0YHQvtC30LTQsNCy0LDRjywg0LjQt9C80LXQvdGP0Y8g0LjQu9C4INGD0LTQsNC70Y/RjyDRgdGD0YnQtdGB0YLQstGD0Y7RidC40LUg0YDQsNC30LTQtdC70YsuIDxiciAvPg0K0J/QvtC00YDQvtCx0L3QsNGPINC40L3RhNC+0YDQvNCw0YbQuNGPINC+INGA0LDQt9C00LXQu9Cw0YUgKFN1Z2FyIERhc2hsZXQpINC00L7RgdGC0YPQv9C90LAg0LIgJmx0O0EgaHJlZj0mcXVvdDtodHRwOi8vd3d3LnN1Z2FyY3JtLmNvbS93aWtpL2luZGV4LnBocD90aXRsZT1EYXNobGV0cyZxdW90OyZndDtTdWdhcldpa2kmbHQ7L0EmZ3Q7LjxiciAvPg0KIjt9fXM6MzY6Ijc1YTdjYjAxLWZiMjYtZTQzZC02NjhjLTQ2Yjg0YmQ0M2IyNSI7YToyOntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NzoiLi9tb2R1bGVzL01lZXRpbmdzL0Rhc2hsZXRzL015TWVldGluZ3NEYXNobGV0L015TWVldGluZ3NEYXNobGV0LnBocCI7fXM6MzY6Ijc1YWY4MDAxLWU4MmUtZDNmOS1iYmI3LTQ2Yjg0Yjc3N2I5YSI7YToyOntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYXNlc0Rhc2hsZXQiO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1ODoiLi9tb2R1bGVzL0Nhc2VzL0Rhc2hsZXRzL015Q2FzZXNEYXNobGV0L015Q2FzZXNEYXNobGV0LnBocCI7fXM6MzY6Ijc1YjczNTgwLTRjMzctZjk4OS00ZjRlLTQ2Yjg0YjZmZTM2OSI7YToyOntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlMZWFkc0Rhc2hsZXQiO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1ODoiLi9tb2R1bGVzL0xlYWRzL0Rhc2hsZXRzL015TGVhZHNEYXNobGV0L015TGVhZHNEYXNobGV0LnBocCI7fXM6MzY6Ijc1YmVlMzhkLTZkNTUtNjZkNS1lNjU5LTQ2Yjg0YmE1ZDE4NiI7YToyOntzOjk6ImNsYXNzTmFtZSI7czoyMjoiTXlPcHBvcnR1bml0aWVzRGFzaGxldCI7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjgyOiIuL21vZHVsZXMvT3Bwb3J0dW5pdGllcy9EYXNobGV0cy9NeU9wcG9ydHVuaXRpZXNEYXNobGV0L015T3Bwb3J0dW5pdGllc0Rhc2hsZXQucGhwIjt9czozNjoiNzVjNmEzMjUtZjY4Zi05MTQ5LWZlZGMtNDZiODRiMGRmNTNhIjthOjI6e3M6OToiY2xhc3NOYW1lIjtzOjI5OiJNeVBpcGVsaW5lQnlTYWxlc1N0YWdlRGFzaGxldCI7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjg5OiIuL21vZHVsZXMvQ2hhcnRzL0Rhc2hsZXRzL015UGlwZWxpbmVCeVNhbGVzU3RhZ2VEYXNobGV0L015UGlwZWxpbmVCeVNhbGVzU3RhZ2VEYXNobGV0LnBocCI7fXM6MzY6Ijc1Y2U2NDMxLWEzODItM2Y0Yi04YTIxLTQ2Yjg0YmIzYjJmYiI7YToyOntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlBY2NvdW50c0Rhc2hsZXQiO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NzoiLi9tb2R1bGVzL0FjY291bnRzL0Rhc2hsZXRzL015QWNjb3VudHNEYXNobGV0L015QWNjb3VudHNEYXNobGV0LnBocCI7fX1zOjc6ImNvbHVtbnMiO2E6Mjp7aTowO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI2MCUiO3M6ODoiZGFzaGxldHMiO2E6NDp7aTowO3M6MzY6Ijc1OTVhYzQyLTAyNmItZGE3Yy01NDRkLTQ2Yjg0YmY2MmY5NyI7aToxO3M6MzY6Ijc1YTdjYjAxLWZiMjYtZTQzZC02NjhjLTQ2Yjg0YmQ0M2IyNSI7aToyO3M6MzY6Ijc1YjczNTgwLTRjMzctZjk4OS00ZjRlLTQ2Yjg0YjZmZTM2OSI7aTozO3M6MzY6Ijc1YzZhMzI1LWY2OGYtOTE0OS1mZWRjLTQ2Yjg0YjBkZjUzYSI7fX1pOjE7YToyOntzOjU6IndpZHRoIjtzOjM6IjQwJSI7czo4OiJkYXNobGV0cyI7YTo0OntpOjA7czozNjoiNzU5ZmMyODMtYWM2Ny1kZTE2LWFhMjMtNDZiODRiNmMyY2MwIjtpOjE7czozNjoiNzVhZjgwMDEtZTgyZS1kM2Y5LWJiYjctNDZiODRiNzc3YjlhIjtpOjI7czozNjoiNzViZWUzOGQtNmQ1NS02NmQ1LWU2NTktNDZiODRiYTVkMTg2IjtpOjM7czozNjoiNzVjZTY0MzEtYTM4Mi0zZjRiLThhMjEtNDZiODRiYjNiMmZiIjt9fX19');
INSERT INTO `user_preferences` VALUES ('bb78fa9e-318c-d6ad-3012-46b84b52bc91', 'Home2_CALL', 0, '2007-08-07 10:38:47', '2007-08-07 10:38:47', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0=');
INSERT INTO `user_preferences` VALUES ('6ec2c45b-5c25-a22e-f2b1-46c40e6a3c33', 'Ink2_INK', 0, '2007-08-16 08:46:08', '2007-08-16 08:46:08', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0=');
INSERT INTO `user_preferences` VALUES ('957c2ef0-cf86-ffab-d61c-46c454040c06', 'Opportunities2_OPPORTUNITY', 0, '2007-08-16 13:41:48', '2007-08-16 13:41:48', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0=');
INSERT INTO `user_preferences` VALUES ('f0b0dc22-15bf-5e64-b856-46ca8f20b2a6', 'Accounts2_ACCOUNT', 0, '2007-08-21 07:08:36', '2007-08-21 07:08:36', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0=');
INSERT INTO `user_preferences` VALUES ('36bdd79c-e78a-5160-df99-46cd3d960b72', 'Calls2_CALL', 0, '2007-08-23 07:55:58', '2007-08-23 07:55:58', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0=');
INSERT INTO `user_preferences` VALUES ('b01a11c5-cddd-2dea-f0a7-46cd9b73c276', 'Leads2_LEAD', 0, '2007-08-23 14:36:37', '2007-08-23 14:36:37', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0=');
INSERT INTO `user_preferences` VALUES ('ef7b09c0-fa48-08e9-190b-46cd9b06d6da', 'Cases2_CASE', 0, '2007-08-23 14:37:24', '2007-08-23 14:37:24', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0=');
INSERT INTO `user_preferences` VALUES ('3a076981-9520-47ec-a9fe-46cd9bdee5f3', 'Bugs2_BUG', 0, '2007-08-23 14:37:39', '2007-08-23 14:37:39', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0=');
INSERT INTO `user_preferences` VALUES ('ede53d04-1aa5-b1a7-8e61-46cd9b7274e4', 'Documents2_DOCUMENT', 0, '2007-08-23 14:37:49', '2007-08-23 14:37:49', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0=');
INSERT INTO `user_preferences` VALUES ('b575c32d-eb51-62ed-ee66-46cd9b82ddd5', 'Campaigns2_CAMPAIGN', 0, '2007-08-23 14:38:25', '2007-08-23 14:38:25', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0=');
INSERT INTO `user_preferences` VALUES ('c79f3c29-efe2-a373-6592-46cd9b0e64f1', 'Contacts2_CONTACT', 0, '2007-08-23 14:38:36', '2007-08-23 14:38:36', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0=');
INSERT INTO `user_preferences` VALUES ('14c0f731-9f14-ed8c-ca50-46ce82281eba', 'Materials2_MATERIAL', 0, '2007-08-24 07:04:00', '2007-08-24 07:04:00', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0=');

-- --------------------------------------------------------

-- 
-- Структура на таблица `users`
-- 

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` varchar(36) NOT NULL default '',
  `user_name` varchar(60) default NULL,
  `user_hash` varchar(32) default NULL,
  `authenticate_id` varchar(100) default NULL,
  `sugar_login` tinyint(1) default '1',
  `first_name` varchar(30) default NULL,
  `last_name` varchar(30) default NULL,
  `reports_to_id` varchar(36) default NULL,
  `is_admin` tinyint(1) default '0',
  `receive_notifications` tinyint(1) default '1',
  `description` text,
  `date_entered` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_user_id` varchar(36) default NULL,
  `created_by` varchar(36) default NULL,
  `title` varchar(50) default NULL,
  `department` varchar(50) default NULL,
  `phone_home` varchar(50) default NULL,
  `phone_mobile` varchar(50) default NULL,
  `phone_work` varchar(50) default NULL,
  `phone_other` varchar(50) default NULL,
  `phone_fax` varchar(50) default NULL,
  `email1` varchar(100) default NULL,
  `email2` varchar(100) default NULL,
  `status` varchar(25) default NULL,
  `address_street` varchar(150) default NULL,
  `address_city` varchar(100) default NULL,
  `address_state` varchar(100) default NULL,
  `address_country` varchar(25) default NULL,
  `address_postalcode` varchar(9) default NULL,
  `user_preferences` text,
  `deleted` tinyint(1) NOT NULL default '0',
  `portal_only` tinyint(1) default '0',
  `employee_status` varchar(25) default NULL,
  `messenger_id` varchar(25) default NULL,
  `messenger_type` varchar(25) default NULL,
  `is_group` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `user_name_idx` (`user_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `users`
-- 

INSERT INTO `users` VALUES ('1', 'admin', 'cd3c3621a18bef2bcb2cc568833aa0a5', NULL, 1, NULL, 'Administrator', NULL, 1, 1, NULL, '2006-12-23 14:35:30', '2007-03-07 09:36:32', '1', NULL, 'Administrator', NULL, NULL, NULL, NULL, NULL, NULL, 'lord_pgp@abv.bg', NULL, 'Active', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Active', NULL, NULL, 0);
INSERT INTO `users` VALUES ('177bd6bb-665d-cc61-4d82-45ab422290d3', 'Demo', 'f0258b6685684c113bad94d91b8fa02a', NULL, 1, 'Demo', 'User', NULL, 0, 1, NULL, '2007-01-15 09:01:47', '2007-02-13 09:49:04', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Active', NULL, NULL, 0);

-- --------------------------------------------------------

-- 
-- Структура на таблица `users_feeds`
-- 

DROP TABLE IF EXISTS `users_feeds`;
CREATE TABLE `users_feeds` (
  `user_id` varchar(36) default NULL,
  `feed_id` varchar(36) default NULL,
  `rank` int(11) default NULL,
  `date_modified` datetime default NULL,
  `deleted` tinyint(1) NOT NULL default '0',
  KEY `idx_ud_user_id` (`user_id`,`feed_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `users_feeds`
-- 

INSERT INTO `users_feeds` VALUES ('1', '4bbca87f-2017-5488-d8e0-41e7808c2553', 1, NULL, 0);
INSERT INTO `users_feeds` VALUES ('177bd6bb-665d-cc61-4d82-45ab422290d3', '3a68ade5-eba9-dcf7-b8bc-41e2df75bea6', 1, NULL, 0);

-- --------------------------------------------------------

-- 
-- Структура на таблица `users_last_import`
-- 

DROP TABLE IF EXISTS `users_last_import`;
CREATE TABLE `users_last_import` (
  `id` varchar(36) NOT NULL default '',
  `assigned_user_id` varchar(36) default NULL,
  `bean_type` varchar(36) default NULL,
  `bean_id` varchar(36) default NULL,
  `deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_user_id` (`assigned_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `users_last_import`
-- 


-- --------------------------------------------------------

-- 
-- Структура на таблица `users_signatures`
-- 

DROP TABLE IF EXISTS `users_signatures`;
CREATE TABLE `users_signatures` (
  `id` varchar(36) NOT NULL default '',
  `date_entered` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `deleted` tinyint(1) NOT NULL default '0',
  `user_id` varchar(36) default NULL,
  `name` varchar(255) default NULL,
  `signature` text,
  `signature_html` text,
  PRIMARY KEY  (`id`),
  KEY `idx_usersig_uid` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `users_signatures`
-- 


-- --------------------------------------------------------

-- 
-- Структура на таблица `vcals`
-- 

DROP TABLE IF EXISTS `vcals`;
CREATE TABLE `vcals` (
  `id` varchar(36) NOT NULL default '',
  `deleted` tinyint(1) NOT NULL default '0',
  `date_entered` datetime default NULL,
  `date_modified` datetime default NULL,
  `user_id` varchar(36) NOT NULL default '',
  `type` varchar(25) default NULL,
  `source` varchar(25) default NULL,
  `content` text,
  PRIMARY KEY  (`id`),
  KEY `idx_vcal` (`type`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `vcals`
-- 

INSERT INTO `vcals` VALUES ('812e0287-58e2-81a3-e2b9-45e82bf6ca44', 0, '2007-03-02 13:49:33', '2007-03-02 14:44:17', '1', 'vfb', 'sugar', 'BEGIN:VCALENDAR\nVERSION:2.0\nPRODID:-//SugarCRM//SugarCRM Calendar//EN\nBEGIN:VFREEBUSY\nORGANIZER;CN= Administrator:\nDTSTART:20070301T144400Z\nDTEND:20070501T144400Z\nFREEBUSY:20070302T140000Z/20070302T144400Z\nFREEBUSY:20070302T143000Z/20070302T154400Z\nDTSTAMP:20070302T144400Z\nEND:VFREEBUSY\nEND:VCALENDAR\n');

-- --------------------------------------------------------

-- 
-- Структура на таблица `versions`
-- 

DROP TABLE IF EXISTS `versions`;
CREATE TABLE `versions` (
  `id` varchar(36) NOT NULL default '',
  `deleted` tinyint(1) NOT NULL default '0',
  `date_entered` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_user_id` varchar(36) NOT NULL default '',
  `created_by` varchar(36) default NULL,
  `name` varchar(255) NOT NULL default '',
  `file_version` varchar(255) NOT NULL default '',
  `db_version` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `idx_version` (`name`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дъмп (схема) на данните в таблицата `versions`
-- 

INSERT INTO `versions` VALUES ('fd82040a-71b3-ae25-661b-458d3ecce76f', 0, '2006-12-23 14:35:31', '2006-12-23 14:35:31', '1', NULL, 'Custom Labels', '3.0', '3.0');
INSERT INTO `versions` VALUES ('11323113-1d08-3e1d-c115-458d3e8763dd', 0, '2006-12-23 14:35:31', '2006-12-23 14:35:31', '1', NULL, 'Chart Data Cache', '3.5.1', '3.5.1');
INSERT INTO `versions` VALUES ('130960f7-7232-8ad7-67e0-458d3e6c10fb', 0, '2006-12-23 14:35:31', '2006-12-23 14:35:31', '1', NULL, 'htaccess', '3.5.1', '3.5.1');
INSERT INTO `versions` VALUES ('13b084d4-e21b-f167-e857-458d3ef68c50', 0, '2006-12-23 14:35:31', '2006-12-23 14:35:31', '1', NULL, 'DST Fix', '3.5.1b', '3.5.1b');
INSERT INTO `versions` VALUES ('14aa99be-db6e-c6cd-4ef2-458d3ea2db6b', 0, '2006-12-23 14:35:31', '2006-12-23 14:35:31', '1', NULL, 'Rebuild Relationships', '4.0.0', '4.0.0');
INSERT INTO `versions` VALUES ('154d9aab-a36a-c0b1-e5fd-458d3e9e873d', 0, '2006-12-23 14:35:31', '2006-12-23 14:35:31', '1', NULL, 'Rebuild Extensions', '4.0.0', '4.0.0');
INSERT INTO `versions` VALUES ('16572cfe-4764-9b0c-fc5a-458d3e02a20c', 0, '2006-12-23 14:35:31', '2006-12-23 14:35:31', '1', NULL, 'Studio Files', '4.5.0', '4.5.0');
