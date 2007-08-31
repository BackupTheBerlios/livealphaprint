-- phpMyAdmin SQL Dump
-- version 2.6.1
-- http://www.phpmyadmin.net
-- 
-- Хост: localhost
-- Време на генериране:  август 2007 в 15:49
-- Версия на сървъра: 4.1.9
-- Версия на PHP: 5.0.2
-- 
-- БД: `alphaprint`
-- 

-- --------------------------------------------------------

-- 
-- Структура на таблица `accounts`
-- 

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

INSERT INTO `accounts` VALUES ('eb2e4078-4422-c298-5679-46d7c9e0919f', '2007-08-31 07:54:10', '2007-08-31 07:54:10', '1', '1', '1', 'Начо', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `accounts` VALUES ('a4728179-5436-820e-3eaf-46d5667efb56', '2007-08-29 12:29:48', '2007-08-29 12:29:48', '1', '1', '1', 'Капитал', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

-- 
-- Структура на таблица `accounts_audit`
-- 

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

INSERT INTO `accounts_contacts` VALUES ('dac3867f-09df-2fd7-c334-46d67c403073', '7449dc44-5cfa-cec1-9a86-46d566c72c6e', 'a4728179-5436-820e-3eaf-46d5667efb56', '2007-08-30 08:16:44', 0);

-- --------------------------------------------------------

-- 
-- Структура на таблица `accounts_opportunities`
-- 

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


-- --------------------------------------------------------

-- 
-- Структура на таблица `acl_actions`
-- 

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


-- --------------------------------------------------------

-- 
-- Структура на таблица `calls_contacts`
-- 

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


-- --------------------------------------------------------

-- 
-- Структура на таблица `calls_users`
-- 

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


-- --------------------------------------------------------

-- 
-- Структура на таблица `campaign_log`
-- 

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


-- --------------------------------------------------------

-- 
-- Структура на таблица `cases_audit`
-- 

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

INSERT INTO `componentestimate` VALUES ('df259a8b-3907-50dd-1fe7-46d6d9705a48', '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'Корица - Книга Компанията на паяците', 49, 30, 185, 20, NULL, '2007-08-30 14:52:00', '2007-08-31 07:04:03', '1', '1', '1', 'Калкулация-Корица - Книга Компанията на паяците', NULL, 1);
INSERT INTO `componentestimate` VALUES ('39f386ff-05a2-c8ec-2a0c-46d6c197bb18', '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'Корица - Книга Компанията на паяците', 49, 7.5, 185, 20, NULL, '2007-08-30 13:09:10', '2007-08-30 14:51:15', '1', '1', '1', 'Калкулация-Корица - Книга Компанията на паяците', NULL, 1);
INSERT INTO `componentestimate` VALUES ('4038def4-5590-dfea-904b-46d6c1f23fb9', '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', 'Тяло - Книга Компанията на паяците', 281, 255, 850, 260, NULL, '2007-08-30 13:08:51', '2007-08-30 14:51:15', '1', '1', '1', 'Калкулация-Тяло - Книга Компанията на паяците', NULL, 1);
INSERT INTO `componentestimate` VALUES ('795b1f5f-e7a3-bd52-5e16-46d6d95461b1', '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', 'Тяло - Книга Компанията на паяците', 281, 255, 850, 260, NULL, '2007-08-30 14:52:33', '2007-08-30 15:13:01', '1', '1', '1', 'Калкулация-Тяло - Книга Компанията на паяците', NULL, 1);
INSERT INTO `componentestimate` VALUES ('4fbdf0f3-790d-410e-8bda-46d6de8059a4', '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците', '8f50860d-16b5-5491-e451-46d6dce0fc06', 'Тяло2 - Компанията на паяците-3', 17, 15, 125, 20, NULL, '2007-08-30 15:12:44', '2007-08-31 07:04:03', '1', '1', '1', 'Калкулация-Тяло2 - Компанията на паяците-3', NULL, 1);
INSERT INTO `componentestimate` VALUES ('dc555fad-9467-0e0d-6a6f-46d6dec8e0ab', '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', 'Тяло - Книга Компанията на паяците', 262, 225, 800, 260, NULL, '2007-08-30 15:14:47', '2007-08-30 15:14:47', '1', '1', '1', 'Калкулация-Тяло - Книга Компанията на паяците', NULL, 0);
INSERT INTO `componentestimate` VALUES ('167fba60-58a0-7a15-0346-46d7badcfd25', '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците', '8f50860d-16b5-5491-e451-46d6dce0fc06', 'Тяло2 - Компанията на паяците', 17, 15, 50, 20, NULL, '2007-08-31 06:52:30', '2007-08-31 06:52:30', '1', '1', '1', 'Калкулация-Тяло2 - Компанията на паяците', NULL, 0);
INSERT INTO `componentestimate` VALUES ('9281959b-7f35-8782-9dd0-46d7bd0cb02b', '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'Корица - Книга Компанията на паяците', 49, 30, 60, 20, NULL, '2007-08-31 07:04:54', '2007-08-31 07:04:54', '1', '1', '1', 'Калкулация-Корица - Книга Компанията на паяците', NULL, 0);

-- --------------------------------------------------------

-- 
-- Структура на таблица `componentink`
-- 

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

INSERT INTO `componentink` VALUES ('6f680635-0b17-0b10-a764-46d803475f33', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-31 12:02:18', '2007-08-31 12:02:18', NULL, '1', NULL, 0);
INSERT INTO `componentink` VALUES ('64569559-cd2d-3d1e-0899-46d803109f13', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-31 12:02:18', '2007-08-31 12:02:18', NULL, '1', NULL, 0);
INSERT INTO `componentink` VALUES ('cf83d45b-cbe5-5ba2-4d50-46d6de3fb0e2', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-30 15:13:43', '2007-08-31 12:02:18', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('ca7e0c35-fa9a-c80f-7735-46d6dee192d5', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-30 15:13:43', '2007-08-31 12:02:18', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('1e255211-b180-f0ba-a850-46d6d8b65460', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-30 14:49:25', '2007-08-30 14:49:25', NULL, '1', NULL, 0);
INSERT INTO `componentink` VALUES ('1972c957-f59f-691b-62fe-46d6d89d9008', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-30 14:49:25', '2007-08-30 14:49:25', NULL, '1', NULL, 0);
INSERT INTO `componentink` VALUES ('173dcec1-7b87-76ff-2658-46d6d8e083b6', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-30 14:49:25', '2007-08-30 14:49:25', NULL, '1', NULL, 0);
INSERT INTO `componentink` VALUES ('1500b94b-7d04-9e0b-62fc-46d6d8f77a5f', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-30 14:49:25', '2007-08-30 14:49:25', NULL, '1', NULL, 0);
INSERT INTO `componentink` VALUES ('1c13cd58-44ef-0d49-c497-46d6be4bf4d6', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-30 12:57:58', '2007-08-30 14:49:25', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('19de54af-680a-a04c-74e6-46d6be784b3b', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-30 12:57:58', '2007-08-30 14:49:25', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('17936d57-a85b-940e-8e98-46d6bed3ba6f', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-30 12:57:58', '2007-08-30 14:49:25', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('1578fa99-92d9-ed8f-64d5-46d6bebcb55c', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-30 12:57:58', '2007-08-30 14:49:25', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('1a751175-f87d-1804-1437-46d6bbc54545', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-30 12:44:06', '2007-08-30 15:13:43', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('15b75327-d243-8144-21cf-46d6bbb0860b', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-30 12:44:06', '2007-08-30 15:13:43', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('555fa8fc-2256-1bed-6ad7-46d6ba49e114', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-30 12:38:43', '2007-08-30 12:44:06', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('50cb95c6-6d65-4967-8585-46d6ba693c29', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-30 12:38:43', '2007-08-30 12:44:06', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('a8cf2e28-89a9-272a-3651-46d6b9116d6b', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-30 12:36:47', '2007-08-30 12:38:43', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('a4120461-d0d6-5663-debd-46d6b98addf3', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-30 12:36:47', '2007-08-30 12:38:43', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('abdd2316-2e10-4f0a-87c5-46d6aaaccb52', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-30 11:30:23', '2007-08-30 12:36:47', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('a732a38d-f8f9-ea70-d88e-46d6aa9cc0bb', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-30 11:30:23', '2007-08-30 12:36:47', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('b8bd021b-d5c5-bfbb-67f9-46d6a969bc3d', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-30 11:25:08', '2007-08-30 11:30:23', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('b6a6f424-53c4-6493-9aba-46d6a93b7561', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-30 11:25:08', '2007-08-30 11:30:23', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('b48b0666-16d7-05fe-1442-46d6a981112f', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-30 11:25:08', '2007-08-30 11:30:23', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('b04620ea-b536-66bb-c2de-46d6a9b380ec', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-30 11:25:08', '2007-08-30 11:30:23', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('4b9280a7-ce13-e583-984a-46cacef1c4da', '629da741-d120-307b-0f49-46c94438e8c8', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-21 11:38:46', '2007-08-21 11:38:46', NULL, '1', NULL, 0);
INSERT INTO `componentink` VALUES ('4da8081a-d9e4-94b0-ba86-46cacecd6957', '629da741-d120-307b-0f49-46c94438e8c8', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-21 11:38:46', '2007-08-21 11:38:46', NULL, '1', NULL, 0);
INSERT INTO `componentink` VALUES ('4fbf246b-dad3-f303-fcc2-46cacee6ecea', '629da741-d120-307b-0f49-46c94438e8c8', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-21 11:38:46', '2007-08-21 11:38:46', NULL, '1', NULL, 0);
INSERT INTO `componentink` VALUES ('51d8ee2a-cbfe-4883-7d49-46cace490ebe', '629da741-d120-307b-0f49-46c94438e8c8', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-21 11:38:46', '2007-08-21 11:38:46', NULL, '1', NULL, 0);
INSERT INTO `componentink` VALUES ('566167a3-312d-7d26-12ec-46cace3ad474', '629da741-d120-307b-0f49-46c94438e8c8', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-21 11:38:46', '2007-08-21 11:38:46', NULL, '1', NULL, 0);
INSERT INTO `componentink` VALUES ('587c20bc-fd40-ec28-b8d7-46cace5a564a', '629da741-d120-307b-0f49-46c94438e8c8', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-21 11:38:46', '2007-08-21 11:38:46', NULL, '1', NULL, 0);
INSERT INTO `componentink` VALUES ('5aaa15c7-6cd1-9d2a-99a4-46cace68020b', '629da741-d120-307b-0f49-46c94438e8c8', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-21 11:38:46', '2007-08-21 11:38:46', NULL, '1', NULL, 0);
INSERT INTO `componentink` VALUES ('5d24b12b-cb47-c3e0-5a46-46cacee5ebf1', '629da741-d120-307b-0f49-46c94438e8c8', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-21 11:38:46', '2007-08-21 11:38:46', NULL, '1', NULL, 0);
INSERT INTO `componentink` VALUES ('995e866c-d44a-4127-3585-46d69ea1385d', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-30 10:41:22', '2007-08-30 12:57:58', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('972e2b2a-3314-2c74-b092-46d69eb085a9', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-30 10:41:22', '2007-08-30 12:57:58', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('907c3078-5577-24fd-4983-46d69e42ade1', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-30 10:41:22', '2007-08-30 12:57:58', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('8e2cef60-cb8a-179a-3cec-46d69e18c8e2', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-30 10:41:22', '2007-08-30 12:57:58', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('98d11bbc-d08f-8eba-fec1-46d69ecfe873', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-30 10:40:38', '2007-08-30 10:41:22', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('9699173e-f26e-f1d5-6927-46d69ef75bad', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-30 10:40:38', '2007-08-30 10:41:22', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('9476f38d-2a6a-51ec-c663-46d69ed61384', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-30 10:40:38', '2007-08-30 10:41:22', NULL, '1', NULL, 1);
INSERT INTO `componentink` VALUES ('8f7a9492-8372-11a9-10e9-46d69e9ecd88', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-30 10:40:38', '2007-08-30 10:41:22', NULL, '1', NULL, 1);
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

INSERT INTO `componentprepress` VALUES ('8fa7c57d-b779-c065-9b4a-46d6de461290', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', '8f50860d-16b5-5491-e451-46d6dce0fc06', 'b', 'ctp', 1, '2007-08-30 15:12:05', '2007-08-31 06:51:12', NULL, '1', NULL, 1);
INSERT INTO `componentprepress` VALUES ('8ac1e918-0c30-fea5-d055-46d6de4f0af7', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', '8f50860d-16b5-5491-e451-46d6dce0fc06', 'a', 'ctp', 1, '2007-08-30 15:12:05', '2007-08-31 06:51:12', NULL, '1', NULL, 1);
INSERT INTO `componentprepress` VALUES ('ba831f57-a3ca-425d-99eb-46d6dc5aad2a', '3f7e93cd-3491-675f-3186-46d56ac29df0', '8f50860d-16b5-5491-e451-46d6dce0fc06', 'b', 'ctp', 1, '2007-08-30 15:05:22', '2007-08-30 15:12:05', NULL, '1', NULL, 1);
INSERT INTO `componentprepress` VALUES ('b5717263-57dd-cb0b-54a5-46d6dc98c2b9', '3f7e93cd-3491-675f-3186-46d56ac29df0', '8f50860d-16b5-5491-e451-46d6dce0fc06', 'a', 'ctp', 1, '2007-08-30 15:05:22', '2007-08-30 15:12:05', NULL, '1', NULL, 1);
INSERT INTO `componentprepress` VALUES ('4f93cef2-619e-fbfa-c804-46d6d8e2320c', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 4, '2007-08-30 14:49:25', '2007-08-30 14:49:25', NULL, '1', NULL, 0);
INSERT INTO `componentprepress` VALUES ('479ca04b-57ac-ae8f-d019-46d6bec54d40', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-08-30 12:57:58', '2007-08-30 14:49:25', NULL, '1', NULL, 1);
INSERT INTO `componentprepress` VALUES ('4a0d6a30-8f8b-610d-5436-46d6bb54a8ff', '3f7e93cd-3491-675f-3186-46d56ac29df0', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', 'b', 'ctp', 8, '2007-08-30 12:44:06', '2007-08-30 15:13:44', NULL, '1', NULL, 1);
INSERT INTO `componentprepress` VALUES ('c4a44d47-87f3-d374-3b3b-46d69e5cc42e', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-08-30 10:41:22', '2007-08-30 12:57:58', NULL, '1', NULL, 1);
INSERT INTO `componentprepress` VALUES ('e5603aed-412a-e198-92f8-46d6a9a09585', '3f7e93cd-3491-675f-3186-46d56ac29df0', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', 'a', 'ctp', 8, '2007-08-30 11:25:08', '2007-08-30 11:30:23', NULL, '1', NULL, 1);
INSERT INTO `componentprepress` VALUES ('1fc3fb2d-c7d5-161b-2df2-46d6a929ab8a', '3f7e93cd-3491-675f-3186-46d56ac29df0', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', 'b', 'ctp', 7, '2007-08-30 11:25:09', '2007-08-30 11:30:23', NULL, '1', NULL, 1);
INSERT INTO `componentprepress` VALUES ('d8aa45e5-f11a-1b62-aa01-46d6aaa9363c', '3f7e93cd-3491-675f-3186-46d56ac29df0', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', 'a', 'ctp', 8, '2007-08-30 11:30:23', '2007-08-30 12:36:47', NULL, '1', NULL, 1);
INSERT INTO `componentprepress` VALUES ('ddfc1beb-cb83-8d60-302b-46d6aa6ed1f8', '3f7e93cd-3491-675f-3186-46d56ac29df0', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', 'b', 'ctp', 7, '2007-08-30 11:30:23', '2007-08-30 12:36:47', NULL, '1', NULL, 1);
INSERT INTO `componentprepress` VALUES ('d3be3782-2036-f46b-cc37-46d6b9d4a3bb', 'e5fe5458-fe8d-bdc1-d227-46d6b9dd62e7', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', 'a', 'ctp', 1, '2007-08-30 12:36:47', '2007-08-30 12:38:43', NULL, '1', NULL, 1);
INSERT INTO `componentprepress` VALUES ('d8b7bbfe-c0c2-93e5-2ca9-46d6b9a9c304', 'e5fe5458-fe8d-bdc1-d227-46d6b9dd62e7', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', 'b', 'ctp', 1, '2007-08-30 12:36:47', '2007-08-30 12:38:43', NULL, '1', NULL, 1);
INSERT INTO `componentprepress` VALUES ('7f90cb71-4fb6-eebd-f2ab-46d6ba8e0794', 'e5fe5458-fe8d-bdc1-d227-46d6b9dd62e7', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', 'a', 'ctp', 8, '2007-08-30 12:38:43', '2007-08-30 12:44:06', NULL, '1', NULL, 1);
INSERT INTO `componentprepress` VALUES ('846cd9de-3c9a-7838-6ddc-46d6ba736f5d', 'e5fe5458-fe8d-bdc1-d227-46d6b9dd62e7', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', 'b', 'ctp', 7, '2007-08-30 12:38:43', '2007-08-30 12:44:06', NULL, '1', NULL, 1);
INSERT INTO `componentprepress` VALUES ('44fc8533-98fa-77e3-50f9-46d6bba3ea21', '3f7e93cd-3491-675f-3186-46d56ac29df0', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', 'a', 'ctp', 9, '2007-08-30 12:44:06', '2007-08-30 15:13:44', NULL, '1', NULL, 1);
INSERT INTO `componentprepress` VALUES ('b3032f59-fc67-89cb-a5fe-46d80dc9e3f3', '3f7e93cd-3491-675f-3186-46d56ac29df0', 'b2b4f119-b162-e477-9f78-46d7cac9f270', 'a', 'ctp', 3, '2007-08-31 12:44:28', '2007-08-31 12:44:28', NULL, '1', NULL, 0);
INSERT INTO `componentprepress` VALUES ('2985a90c-f6ad-fa67-7a70-46d80c6a0366', '3f7e93cd-3491-675f-3186-46d56ac29df0', 'b2b4f119-b162-e477-9f78-46d7cac9f270', 'a', 'ctp', 3, '2007-08-31 12:42:56', '2007-08-31 12:44:28', NULL, '1', NULL, 1);
INSERT INTO `componentprepress` VALUES ('3655a88c-8655-0a64-68a3-46d80a412442', '3f7e93cd-3491-675f-3186-46d56ac29df0', 'b2b4f119-b162-e477-9f78-46d7cac9f270', 'a', 'ctp', 3, '2007-08-31 12:32:34', '2007-08-31 12:42:56', NULL, '1', NULL, 1);
INSERT INTO `componentprepress` VALUES ('b4662b9c-e6a0-47bf-9b09-46d80847c67d', '3f7e93cd-3491-675f-3186-46d56ac29df0', 'b2b4f119-b162-e477-9f78-46d7cac9f270', 'a', 'ctp', 3, '2007-08-31 12:23:54', '2007-08-31 12:32:34', NULL, '1', NULL, 1);
INSERT INTO `componentprepress` VALUES ('b7857b06-50a5-1d05-422f-46d8035159c0', '3f7e93cd-3491-675f-3186-46d56ac29df0', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', 'b', 'ctp', 7, '2007-08-31 12:02:18', '2007-08-31 12:02:18', NULL, '1', NULL, 0);
INSERT INTO `componentprepress` VALUES ('b221341e-8979-04d8-b847-46d803beab8d', '3f7e93cd-3491-675f-3186-46d56ac29df0', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', 'a', 'ctp', 8, '2007-08-31 12:02:18', '2007-08-31 12:02:18', NULL, '1', NULL, 0);
INSERT INTO `componentprepress` VALUES ('ca3ff540-02af-ca99-5692-46d7cc7940e1', '3f7e93cd-3491-675f-3186-46d56ac29df0', 'b2b4f119-b162-e477-9f78-46d7cac9f270', 'a', 'ctp', 3, '2007-08-31 08:10:28', '2007-08-31 12:23:54', NULL, '1', NULL, 1);
INSERT INTO `componentprepress` VALUES ('80fc4d87-1f10-7922-c3f6-46d7cc8b93e1', '3f7e93cd-3491-675f-3186-46d56ac29df0', 'b2b4f119-b162-e477-9f78-46d7cac9f270', 'a', 'ctp', 3, '2007-08-31 08:06:56', '2007-08-31 08:10:28', NULL, '1', NULL, 1);
INSERT INTO `componentprepress` VALUES ('2db64772-3368-de71-9035-46d7cb2c1a2c', '3f7e93cd-3491-675f-3186-46d56ac29df0', 'b2b4f119-b162-e477-9f78-46d7cac9f270', 'a', 'ctp', 3, '2007-08-31 08:02:49', '2007-08-31 08:06:56', NULL, '1', NULL, 1);
INSERT INTO `componentprepress` VALUES ('d391a6ef-ff06-5c14-da29-46d7ba85d92f', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', '8f50860d-16b5-5491-e451-46d6dce0fc06', 'b', 'ctp', 1, '2007-08-31 06:51:12', '2007-08-31 06:51:12', NULL, '1', NULL, 0);
INSERT INTO `componentprepress` VALUES ('cefba0cc-b8d8-21bc-0a81-46d7ba082b00', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', '8f50860d-16b5-5491-e451-46d6dce0fc06', 'a', 'ctp', 1, '2007-08-31 06:51:12', '2007-08-31 06:51:12', NULL, '1', NULL, 0);
INSERT INTO `componentprepress` VALUES ('cd780834-f307-3667-d748-46d6de338100', '3f7e93cd-3491-675f-3186-46d56ac29df0', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', 'b', 'ctp', 7, '2007-08-30 15:13:44', '2007-08-31 12:02:18', NULL, '1', NULL, 1);
INSERT INTO `componentprepress` VALUES ('71d70756-fdcc-c58e-2071-46d6deea41ee', '3f7e93cd-3491-675f-3186-46d56ac29df0', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', 'a', 'ctp', 8, '2007-08-30 15:13:44', '2007-08-31 12:02:18', NULL, '1', NULL, 1);
INSERT INTO `componentprepress` VALUES ('a285407d-06b1-e0ff-60c3-46d58702f806', '3f7e93cd-3491-675f-3186-46d56ac29df0', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', 'b', 'ctp', 7, '2007-08-29 14:48:11', '2007-08-30 08:22:20', NULL, '1', NULL, 1);
INSERT INTO `componentprepress` VALUES ('9da612ed-78e6-c145-787a-46d58735bfce', '3f7e93cd-3491-675f-3186-46d56ac29df0', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', 'a', 'ctp', 8, '2007-08-29 14:48:11', '2007-08-30 08:22:20', NULL, '1', NULL, 1);
INSERT INTO `componentprepress` VALUES ('c6f53b80-e96f-79c7-5d53-46d69e99e667', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-08-30 10:40:38', '2007-08-30 10:41:22', NULL, '1', NULL, 1);
INSERT INTO `componentprepress` VALUES ('51d8f737-7333-c3ee-ad06-46d68d68e909', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-08-30 09:27:25', '2007-08-30 09:59:05', NULL, '1', NULL, 1);
INSERT INTO `componentprepress` VALUES ('895bbcdd-975a-a54d-4acf-46cacef035e3', '319a1633-aa9f-6b4e-df98-469628a1c043', '629da741-d120-307b-0f49-46c94438e8c8', 'a', 'flm', 4, '2007-08-21 11:38:46', '2007-08-21 11:38:46', NULL, '1', NULL, 0);
INSERT INTO `componentprepress` VALUES ('8e667abf-8a95-49b5-eab7-46cace1e11c8', '319a1633-aa9f-6b4e-df98-469628a1c043', '629da741-d120-307b-0f49-46c94438e8c8', 'b', 'flm', 4, '2007-08-21 11:38:46', '2007-08-21 11:38:46', NULL, '1', NULL, 0);
INSERT INTO `componentprepress` VALUES ('9d168469-e3cb-6f0e-6aca-46d6874ce489', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-08-30 09:03:49', '2007-08-30 09:27:25', NULL, '1', NULL, 1);
INSERT INTO `componentprepress` VALUES ('b08e4627-45e6-8822-c261-46d687d84501', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-08-30 09:02:08', '2007-08-30 09:03:49', NULL, '1', NULL, 1);
INSERT INTO `componentprepress` VALUES ('75abe8ca-4590-4054-5505-46d67e909fb1', '3f7e93cd-3491-675f-3186-46d56ac29df0', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', 'b', 'ctp', 7, '2007-08-30 08:22:20', '2007-08-30 09:58:01', NULL, '1', NULL, 1);
INSERT INTO `componentprepress` VALUES ('70deabb5-5a46-6641-dfd5-46d67ea3402a', '3f7e93cd-3491-675f-3186-46d56ac29df0', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', 'a', 'ctp', 8, '2007-08-30 08:22:20', '2007-08-30 09:58:01', NULL, '1', NULL, 1);
INSERT INTO `componentprepress` VALUES ('ac463400-6a9f-9a7c-342f-46ce8be1da1b', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', '598457bc-776a-9154-9b63-4652c9ce58cb', 'a', 'ctp', 10, '2007-08-24 07:40:58', '2007-08-24 07:40:58', NULL, '1', NULL, 0);
INSERT INTO `componentprepress` VALUES ('b1715208-21c0-9e4d-d156-46ce8b1844bb', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', '598457bc-776a-9154-9b63-4652c9ce58cb', 'b', 'ctp', 10, '2007-08-24 07:40:58', '2007-08-24 07:40:58', NULL, '1', NULL, 0);
INSERT INTO `componentprepress` VALUES ('b67df0ab-9087-7d34-64c5-46ce8bc8e2b1', '319a1633-aa9f-6b4e-df98-469628a1c043', '598457bc-776a-9154-9b63-4652c9ce58cb', 'a', 'flm', 5, '2007-08-24 07:40:58', '2007-08-24 07:40:58', NULL, '1', NULL, 0);
INSERT INTO `componentprepress` VALUES ('bb912226-ebe7-38f9-604e-46ce8beebec5', '319a1633-aa9f-6b4e-df98-469628a1c043', '598457bc-776a-9154-9b63-4652c9ce58cb', 'b', 'flm', 5, '2007-08-24 07:40:58', '2007-08-24 07:40:58', NULL, '1', NULL, 0);

-- --------------------------------------------------------

-- 
-- Структура на таблица `config`
-- 

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

INSERT INTO `contacts` VALUES ('80f6ca47-d6b2-401e-9135-46d7c9d84a0f', 0, '2007-08-31 07:54:50', '2007-08-31 07:54:50', '1', '1', '1', NULL, 'Николай', 'Рачев', NULL, NULL, NULL, NULL, NULL, 'off', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'off', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0);
INSERT INTO `contacts` VALUES ('7449dc44-5cfa-cec1-9a86-46d566c72c6e', 0, '2007-08-29 12:30:18', '2007-08-30 08:16:44', '1', '1', '1', NULL, 'Марио', 'Коев', NULL, NULL, NULL, NULL, NULL, 'off', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'off', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0);

-- --------------------------------------------------------

-- 
-- Структура на таблица `contacts_audit`
-- 

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


-- --------------------------------------------------------

-- 
-- Структура на таблица `emails_leads`
-- 

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


-- --------------------------------------------------------

-- 
-- Структура на таблица `estimate`
-- 

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


-- --------------------------------------------------------

-- 
-- Структура на таблица `feeds`
-- 

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

-- --------------------------------------------------------

-- 
-- Структура на таблица `iframes`
-- 

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

INSERT INTO `iframes` VALUES ('d5640973-afa1-e0ec-9649-45ab471b2441', 'Р', 'http://www.numberoneadv.com', 'personal', 'shortcut', 1, 0, '2007-01-15 09:21:02', '2007-01-15 09:21:46', '177bd6bb-665d-cc61-4d82-45ab422290d3');
INSERT INTO `iframes` VALUES ('34161d15-e088-9140-55d1-45ab48ee6769', 'Бакхус', 'http://www.bacchus.bg/', 'personal', 'shortcut', 1, 0, '2007-01-15 09:24:05', '2007-01-15 09:24:05', '177bd6bb-665d-cc61-4d82-45ab422290d3');

-- --------------------------------------------------------

-- 
-- Структура на таблица `import_maps`
-- 

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

INSERT INTO `ink` VALUES ('c7b4444e-2af8-1970-72e6-46812acdc62f', '2007-06-26 15:01:28', '2007-08-28 08:23:24', '1', '1', '1', 'Син', 'C', NULL, 'CMYK', 'Cyan', NULL, 'on', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 1, NULL, 0);
INSERT INTO `ink` VALUES ('bb2b1cb0-55b9-8261-ab24-468225565659', '2007-06-27 08:54:54', '2007-08-28 08:23:24', '1', '1', '1', 'Жълто', 'Y', NULL, 'CMYK', 'Proc Yellow', NULL, 'off', 'c7b4444e-2af8-1970-72e6-46812acdc62f', NULL, NULL, 0);
INSERT INTO `ink` VALUES ('52d3ab7e-36eb-80dc-866d-46b216b81e73', '2007-08-02 17:36:19', '2007-08-28 08:23:24', '1', '1', '1', 'Червено', 'M', NULL, 'CMYK', 'Magenta', NULL, 'off', 'on', NULL, NULL, 0);
INSERT INTO `ink` VALUES ('43a1e427-3cef-1fce-d9a7-46b2164cbc65', '2007-08-02 17:37:09', '2007-08-30 07:45:29', '1', '1', '1', 'Черно', 'K', NULL, 'CMYK', 'Proc Black', NULL, 'off', 'on', NULL, NULL, 0);

-- --------------------------------------------------------

-- 
-- Структура на таблица `layout`
-- 

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

INSERT INTO `layout` VALUES ('c464a966-2602-b7e1-4a03-46d7ca5d9459', 'b2b4f119-b162-e477-9f78-46d7cac9f270', 1, 4, '2', 'Shi', '2007-08-31 08:00:52', '2007-08-31 08:00:52', NULL, NULL, '1', 'Предпечат-Листовки ДЗИ-1-1', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `layout` VALUES ('1b16ea32-5c86-9dbe-ce57-46b826b156b1', '598457bc-776a-9154-9b63-4652c9ce58cb', 2, 2, '2', 'GTO', '2007-08-07 08:00:48', '2007-08-07 08:00:48', NULL, NULL, '1', 'Предпечат-Каталог "Пресфото"-2-2', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `layout` VALUES ('a845814c-3524-5da9-64d1-46b824f16c13', '598457bc-776a-9154-9b63-4652c9ce58cb', 8, NULL, '1', 'GTO', '2007-08-07 07:52:17', '2007-08-07 07:52:17', NULL, NULL, '1', 'Предпечат-Каталог "Пресфото"-2-2', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `layout` VALUES ('9938cdd1-f0df-314f-5b4e-46d6dc8e6483', '8f50860d-16b5-5491-e451-46d6dce0fc06', 1, NULL, '1', 'GTO', '2007-08-30 15:02:43', '2007-08-30 15:02:43', NULL, NULL, '1', 'Предпечат-Книга Компанията на паяците-3-1', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `layout` VALUES ('6f46a160-b003-6f53-b2a7-46c57fd70f65', '6508c5a0-0630-b9c2-49df-46c57f37ab0c', 2, NULL, '1', NULL, '2007-08-17 11:01:01', '2007-08-17 11:01:01', NULL, NULL, '1', 'Предпечат-Първо издание-1-1', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `layout` VALUES ('cb9e2cf4-d514-5911-bd2e-46c93e3aacfe', 'c165910b-df60-1b59-1d45-46c93ee2e59d', 1, NULL, '1', NULL, '2007-08-20 07:09:27', '2007-08-20 07:09:27', NULL, NULL, '1', 'Предпечат-Първо издание-2-1', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `layout` VALUES ('6d4c9593-e648-74e1-9b99-46c944b7683b', '629da741-d120-307b-0f49-46c94438e8c8', 1, NULL, '1', 'GTO', '2007-08-20 07:38:15', '2007-08-20 07:38:15', NULL, NULL, '1', 'Предпечат-Каталог-01-2007-1-1', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `layout` VALUES ('996be1ed-a112-10ac-abf1-46d43a3ab852', '90527d21-6801-50aa-5e6c-46d43a4c0c12', 1, NULL, '1', NULL, '2007-08-28 15:10:27', '2007-08-28 15:10:27', NULL, NULL, '1', 'Предпечат-Каталог Пресфото-3-1', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `layout` VALUES ('862b14b1-d4cb-5bc7-40d1-46d43b6026df', '7d0627b7-e9f0-ab14-cfbd-46d43bd1e411', 1, NULL, '1', NULL, '2007-08-28 15:11:37', '2007-08-28 15:11:37', NULL, NULL, '1', 'Предпечат-Каталог Пресфото-4-1', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `layout` VALUES ('95c0ec7e-4312-8c05-6f3c-46d691f296dd', '8bf7767a-67fb-4332-3f8d-46d69175660b', NULL, NULL, '1', NULL, '2007-08-30 09:42:48', '2007-08-30 09:42:48', NULL, NULL, '1', 'Предпечат-Книга Компанията на паяците-3-1', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `layout` VALUES ('d15c3714-e823-a502-f4e9-46d6860f74ad', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 1, 2, '1', 'GTO', '2007-08-30 08:57:26', '2007-08-30 08:57:26', NULL, NULL, '1', 'Предпечат-Книга Компанията на паяците-2-1', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `layout` VALUES ('deab7c83-3da9-0222-bac7-46d56e27b181', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', 8, NULL, '1', 'Shi', '2007-08-29 13:04:29', '2007-08-29 13:04:29', NULL, NULL, '1', 'Предпечат-Книга Компанията на паяците-1-3', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `layout` VALUES ('e7f1625a-ad05-591a-6892-46d56e67c434', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', 1, 1, '2', 'Shi', '2007-08-29 13:04:29', '2007-08-30 15:13:43', NULL, NULL, '1', 'Предпечат-Книга Компанията на паяците-1-4', NULL, NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

-- 
-- Структура на таблица `leads`
-- 

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


-- --------------------------------------------------------

-- 
-- Структура на таблица `leads_audit`
-- 

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

INSERT INTO `operations` VALUES ('273450b1-677f-fe2a-7b99-46d7cb1bdf30', '2007-08-31 08:06:02', '2007-08-31 08:06:02', '1', '1', '1', 'Рязане', 'Книговезане', 0.0015, NULL, NULL, NULL, 'on', 'on', NULL, 0);
INSERT INTO `operations` VALUES ('e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-01 16:46:40', '2007-08-29 13:50:08', '1', '1', '1', 'Лепене', 'Други', 0.02, NULL, NULL, NULL, 'on', 'off', NULL, 0);
INSERT INTO `operations` VALUES ('5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-01 16:48:40', '2007-08-29 13:49:50', '1', '1', '1', 'ВШМ', 'Книговезане', 0.02, NULL, NULL, NULL, 'on', 'off', NULL, 0);
INSERT INTO `operations` VALUES ('2a31ebad-52ef-a8c0-dda8-46b0b9a4cb4a', '2007-08-01 16:49:51', '2007-08-31 08:05:19', '1', '1', '1', 'Опаковане', 'Други', 0.0005, NULL, NULL, NULL, 'on', 'on', NULL, 0);
INSERT INTO `operations` VALUES ('a890ac5d-c429-a03f-a82a-46b0b9a438a1', '2007-08-01 16:50:33', '2007-08-01 16:50:33', '1', '1', '1', 'Индивид. Опаковане', 'Други', 0, NULL, NULL, NULL, 'off', 'off', NULL, 0);

-- --------------------------------------------------------

-- 
-- Структура на таблица `opportunities`
-- 

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

INSERT INTO `opportunities` VALUES ('c4085e78-f9a8-91e9-8e5c-46cec6b8c370', '2007-08-24 11:53:45', '2007-08-30 11:53:46', '1', '1', '1', 1, 'Сделка 1', NULL, NULL, 1000, NULL, 1000, '-99', '2007-08-24', NULL, 'Prospecting', 10, NULL);

-- --------------------------------------------------------

-- 
-- Структура на таблица `opportunities_audit`
-- 

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
INSERT INTO `paper` VALUES ('1275003c-ecc0-48d5-aa67-46d7cab64165', '60 х 90 - мат', '60 х 90 - мат', NULL, NULL, NULL, NULL, 60, 90, 150, NULL, NULL, NULL, NULL, 'мат', NULL, NULL, 'One-Sided', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'gram', NULL, 0, '2007-08-31 07:58:16', '2007-08-31 07:58:16', '1');
INSERT INTO `paper` VALUES ('a4cb4337-447a-2e72-b569-464d64ac31bf', 'Хартия - Мат - 70х100 -170гр', 'Хартия - Мат - 70х100 -170гр', '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'К1 Партнерс', NULL, NULL, 70, 100, 170, NULL, NULL, NULL, 'chromed', 'мат', 'absorption1', 'color1', 'One-Sided', NULL, 'quality1', 0, NULL, NULL, NULL, NULL, 'gram', NULL, 0, '2007-05-18 08:34:00', '2007-07-23 14:27:07', '1');
INSERT INTO `paper` VALUES ('afdedf2d-1d0d-439f-d9a8-464d656ee6d3', 'Хартия - Мат - 70х100 -300гр', 'Хартия - Мат - 70х100 -300гр', '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'К1 Партнерс', NULL, NULL, 70, 100, 300, NULL, NULL, NULL, NULL, 'мат', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'gram', NULL, 0, '2007-05-18 08:35:55', '2007-05-18 08:36:04', '1');
INSERT INTO `paper` VALUES ('6e81e697-e379-92dc-732c-46d6861ae393', 'Опаковъчен картон 70x100', 'Опаковъчен картон', NULL, NULL, NULL, NULL, 70, 100, 240, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'One-Sided', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'gram', NULL, 0, '2007-08-30 08:56:52', '2007-08-30 08:56:52', '1');
INSERT INTO `paper` VALUES ('acb15f14-faa6-de84-7614-46d52b677396', 'Хартия 50х100 мат-гланц', '100', NULL, NULL, NULL, NULL, 50, 100, NULL, NULL, NULL, NULL, 'chromed', 'мат', 'absorption2', NULL, 'One-Sided', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2007-08-29 08:17:52', '2007-08-29 08:17:52', '1');
INSERT INTO `paper` VALUES ('13dfa91a-0374-7e5a-f194-46d568e8137b', '70 x 100 - офсет', '70 x 100 - офсет', NULL, NULL, NULL, NULL, 70, 100, 80, NULL, NULL, NULL, 'chromed', NULL, NULL, NULL, 'One-Sided', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'gram', NULL, 0, '2007-08-29 12:35:47', '2007-08-29 12:35:47', '1');

-- --------------------------------------------------------

-- 
-- Структура на таблица `papers_relation`
-- 

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
INSERT INTO `papers_relation` VALUES ('a57b3f79-c2bb-30b2-5777-464d6403e01a', 'a4cb4337-447a-2e72-b569-464d64ac31bf', '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'Suppliers', 0, '0000-00-00 00:00:00');
INSERT INTO `papers_relation` VALUES ('38f23bae-e752-b195-2108-464d65b4d7c9', 'a4cb4337-447a-2e72-b569-464d64ac31bf', '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'Suppliers', 0, '0000-00-00 00:00:00');
INSERT INTO `papers_relation` VALUES ('b0800831-09ec-59e6-7d39-464d655ad135', 'afdedf2d-1d0d-439f-d9a8-464d656ee6d3', '', 'Suppliers', 0, '0000-00-00 00:00:00');
INSERT INTO `papers_relation` VALUES ('e9affdf4-ef0f-ddfe-1af8-464d650b2d24', 'afdedf2d-1d0d-439f-d9a8-464d656ee6d3', '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'Suppliers', 0, '0000-00-00 00:00:00');
INSERT INTO `papers_relation` VALUES ('a5d2bd44-36d6-8088-92cb-469cbe2b9497', 'a8948502-cea9-500a-0d8c-464d6305dfdc', '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'Suppliers', 0, '0000-00-00 00:00:00');
INSERT INTO `papers_relation` VALUES ('5ca23881-dfa8-e498-8e22-469cbe05c8f2', 'a8948502-cea9-500a-0d8c-464d6305dfdc', '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'Suppliers', 0, '0000-00-00 00:00:00');
INSERT INTO `papers_relation` VALUES ('c888e0d0-dfc6-abe3-45f1-46a4ba4a7e40', 'a4cb4337-447a-2e72-b569-464d64ac31bf', '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'Suppliers', 0, '0000-00-00 00:00:00');
INSERT INTO `papers_relation` VALUES ('8bb40b4f-90e6-2afb-a531-46d7ca138525', '1275003c-ecc0-48d5-aa67-46d7cab64165', '', 'Suppliers', 0, '0000-00-00 00:00:00');
INSERT INTO `papers_relation` VALUES ('71ff0141-bc07-fbd6-dafd-46d6867fb044', '6e81e697-e379-92dc-732c-46d6861ae393', '', 'Suppliers', 0, '0000-00-00 00:00:00');
INSERT INTO `papers_relation` VALUES ('b029e1b7-b845-4c8b-1441-46d52b75b025', 'acb15f14-faa6-de84-7614-46d52b677396', '', 'Suppliers', 0, '0000-00-00 00:00:00');
INSERT INTO `papers_relation` VALUES ('1bc622ef-7b1d-0a80-258a-46d568d2c73c', '13dfa91a-0374-7e5a-f194-46d568e8137b', '', 'Suppliers', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

-- 
-- Структура на таблица `paperwaste`
-- 

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

INSERT INTO `paperwaste` VALUES ('8e7c9439-60a7-c5c2-9953-468e28c1bda4', '2007-07-06 11:34:26', '2007-08-30 08:49:56', '1', '1', '1', 'Макулатура  - ВШМ', 'Others', NULL, 1000, '7709512d-3380-6f6e-a4c0-4688c89520cf', 'GTO', '5111675d-fc3e-ffba-8548-46b0b9743e2c', 'ВШМ', 'on', NULL, 0);
INSERT INTO `paperwaste` VALUES ('b5f04e5d-0678-fe92-9ff8-46d572708e89', '2007-08-29 13:20:59', '2007-08-29 14:53:41', '1', '1', '1', 'Печат - Shinohara', 'Press', 40, 1000, 'aa750713-245a-38cc-b436-4688fc384385', 'Shinohara', NULL, NULL, 'on', NULL, 0);
INSERT INTO `paperwaste` VALUES ('174012c1-71cd-ee4a-806c-46b0ba8e4d92', '2007-08-01 16:54:17', '2007-08-30 08:50:07', '1', '1', '1', 'Макулатура  - Лепене', 'Others', NULL, 1000, '7709512d-3380-6f6e-a4c0-4688c89520cf', 'GTO', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', 'Лепене', 'on', NULL, 0);
INSERT INTO `paperwaste` VALUES ('d98ca1bf-5267-f88b-979b-46b0bc63a000', '2007-08-01 17:03:05', '2007-08-30 07:55:28', '1', '1', '1', 'Печат - GTO', 'Press', 40, 1000, '7709512d-3380-6f6e-a4c0-4688c89520cf', 'GTO', NULL, NULL, 'on', NULL, 0);

-- --------------------------------------------------------

-- 
-- Структура на таблица `paperwasteline`
-- 

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

INSERT INTO `paperwasteline` VALUES ('b35d13eb-6051-ad2a-4b03-4692470871f2', 'b1fce05a-3796-4055-c968-469247086b66', 1000, 500, 60, 0, '2007-07-09 14:36:16', '2007-07-09 14:36:16', '1');
INSERT INTO `paperwasteline` VALUES ('b3cb791e-af96-c3c1-b865-4692471bcf92', 'b1fce05a-3796-4055-c968-469247086b66', 5000, 740, 55, 0, '2007-07-09 14:36:16', '2007-07-09 14:36:16', '1');
INSERT INTO `paperwasteline` VALUES ('c048a88f-043f-029d-708a-469248b97e09', 'bee79046-7822-6530-03fe-46924839ac7c', 12313, 123, 123, 0, '2007-07-09 14:39:54', '2007-07-09 14:39:54', '1');
INSERT INTO `paperwasteline` VALUES ('590ff3c9-b2ad-6189-613e-46cd3c692655', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 1000, 40, 50, 1, '2007-08-23 07:49:23', '2007-08-30 08:49:56', '1');
INSERT INTO `paperwasteline` VALUES ('5b6828ea-9f23-c89d-01f8-46cd3c64521c', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 3000, 220, 45, 1, '2007-08-23 07:49:23', '2007-08-30 08:49:56', '1');
INSERT INTO `paperwasteline` VALUES ('5d9fe6f5-37b3-d296-eede-46cd3c9e9b13', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 5000, 310, 40, 1, '2007-08-23 07:49:23', '2007-08-30 08:49:56', '1');
INSERT INTO `paperwasteline` VALUES ('5fda4453-1591-4a1d-886f-46cd3cd30a40', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 8000, 430, 35, 1, '2007-08-23 07:49:23', '2007-08-30 08:49:56', '1');
INSERT INTO `paperwasteline` VALUES ('62158528-5053-f0cd-7bf5-46cd3cfeb8c6', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 11000, 535, 30, 1, '2007-08-23 07:49:23', '2007-08-30 08:49:56', '1');
INSERT INTO `paperwasteline` VALUES ('2e21ecdb-a087-daaa-6b4e-46cd3c4ee61f', '174012c1-71cd-ee4a-806c-46b0ba8e4d92', 1000, 10, 50, 1, '2007-08-23 07:49:46', '2007-08-30 08:50:07', '1');
INSERT INTO `paperwasteline` VALUES ('305de2ff-a956-a5d5-d4e8-46cd3c042fe3', '174012c1-71cd-ee4a-806c-46b0ba8e4d92', 3000, 110, 45, 1, '2007-08-23 07:49:46', '2007-08-30 08:50:07', '1');
INSERT INTO `paperwasteline` VALUES ('32add6d6-83d3-6538-5137-46cd3c7f7d7b', '174012c1-71cd-ee4a-806c-46b0ba8e4d92', 5000, 200, 40, 1, '2007-08-23 07:49:46', '2007-08-30 08:50:07', '1');
INSERT INTO `paperwasteline` VALUES ('34ee252b-e662-7655-6af0-46cd3cd85e86', '174012c1-71cd-ee4a-806c-46b0ba8e4d92', 8000, 320, 35, 1, '2007-08-23 07:49:46', '2007-08-30 08:50:07', '1');
INSERT INTO `paperwasteline` VALUES ('3728b043-4ea0-92d8-f87f-46cd3c3dc323', '174012c1-71cd-ee4a-806c-46b0ba8e4d92', 11000, 425, 30, 1, '2007-08-23 07:49:46', '2007-08-30 08:50:07', '1');
INSERT INTO `paperwasteline` VALUES ('ea86f95d-2ebf-7d35-fd3e-46d684a86c4e', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 1000, 40, 10, 0, '2007-08-30 08:49:56', '2007-08-30 08:49:56', '1');
INSERT INTO `paperwasteline` VALUES ('76d68cbf-fb06-cead-3eab-46d684dc398f', '174012c1-71cd-ee4a-806c-46b0ba8e4d92', 1000, 33, 3, 0, '2007-08-30 08:50:07', '2007-08-30 08:50:07', '1');
INSERT INTO `paperwasteline` VALUES ('7315f3a3-92bd-5922-30f7-46d571c74d5c', '2962049a-32fb-10bd-221a-46d56ba8f8fa', 1000, 40, 10, 0, '2007-08-29 13:17:03', '2007-08-29 13:17:03', '1');
INSERT INTO `paperwasteline` VALUES ('b37b8b2f-6e8e-3f4a-3aa8-46d6771d9017', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 1000, 30, 30, 0, '2007-08-30 07:55:28', '2007-08-30 07:55:28', '1');
INSERT INTO `paperwasteline` VALUES ('cda1428b-74b5-6873-e51f-46d588a04f10', 'b5f04e5d-0678-fe92-9ff8-46d572708e89', 1000, 30, 30, 0, '2007-08-29 14:53:41', '2007-08-29 14:53:41', '1');

-- --------------------------------------------------------

-- 
-- Структура на таблица `press`
-- 

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

INSERT INTO `press` VALUES ('cb9d9b35-cf8c-e010-3dcb-46d7ca94e08b', '2007-08-31 08:00:52', '2007-08-31 08:00:52', NULL, '1', '1', '', 'Shinohara', 'aa750713-245a-38cc-b436-4688fc384385', NULL, 0);
INSERT INTO `press` VALUES ('1c7ef3f2-7652-2f25-4ac7-46b826160705', '2007-08-07 08:00:48', '2007-08-07 08:00:48', NULL, '1', '1', '', 'GTO', '7709512d-3380-6f6e-a4c0-4688c89520cf', NULL, 0);
INSERT INTO `press` VALUES ('a9a469e2-e4eb-5dc9-bab7-46b824980d5c', '2007-08-07 07:52:17', '2007-08-07 07:52:17', NULL, '1', '1', '', 'GTO', '7709512d-3380-6f6e-a4c0-4688c89520cf', NULL, 0);
INSERT INTO `press` VALUES ('9dd70232-1b9f-b07c-a8bf-46d6dc91ad2a', '2007-08-30 15:02:43', '2007-08-30 15:02:43', NULL, '1', '1', '', 'GTO', '7709512d-3380-6f6e-a4c0-4688c89520cf', NULL, 0);
INSERT INTO `press` VALUES ('7c3cd850-d52f-2960-85b8-46c57ff5fbe6', '2007-08-17 11:01:01', '2007-08-17 11:01:01', NULL, '1', '1', '', NULL, NULL, NULL, 0);
INSERT INTO `press` VALUES ('d928d96d-9b28-28c5-718d-46c93eb04d48', '2007-08-20 07:09:27', '2007-08-20 07:09:27', NULL, '1', '1', '', NULL, NULL, NULL, 0);
INSERT INTO `press` VALUES ('765b695f-77ae-09ea-539a-46c944ba2db9', '2007-08-20 07:38:15', '2007-08-20 07:38:15', NULL, '1', '1', '', 'GTO', '7709512d-3380-6f6e-a4c0-4688c89520cf', NULL, 0);
INSERT INTO `press` VALUES ('a8e99b13-1295-f675-b166-46d43a03f493', '2007-08-28 15:10:27', '2007-08-28 15:10:27', NULL, '1', '1', '', NULL, NULL, NULL, 0);
INSERT INTO `press` VALUES ('8aa557a3-e24d-6ef6-ea4a-46d43bfae0cb', '2007-08-28 15:11:37', '2007-08-28 15:11:37', NULL, '1', '1', '', NULL, NULL, NULL, 0);
INSERT INTO `press` VALUES ('9e5e3647-8c02-38da-9f48-46d69101a265', '2007-08-30 09:42:48', '2007-08-30 09:42:48', NULL, '1', '1', '', NULL, NULL, NULL, 0);
INSERT INTO `press` VALUES ('d60f6e69-8186-92a9-f02b-46d6865933fe', '2007-08-30 08:57:26', '2007-08-30 08:57:26', NULL, '1', '1', '', 'GTO', '7709512d-3380-6f6e-a4c0-4688c89520cf', NULL, 0);
INSERT INTO `press` VALUES ('e35c4328-7ec5-0c84-e8e8-46d56e6d58df', '2007-08-29 13:04:29', '2007-08-29 13:04:29', NULL, '1', '1', '', 'Shinohara', 'aa750713-245a-38cc-b436-4688fc384385', NULL, 0);
INSERT INTO `press` VALUES ('eb2da2bc-45f2-2b27-c8c6-46d56ed68d6b', '2007-08-29 13:04:29', '2007-08-29 13:04:29', NULL, '1', '1', '', 'Shinohara', 'aa750713-245a-38cc-b436-4688fc384385', NULL, 1);

-- --------------------------------------------------------

-- 
-- Структура на таблица `pressline`
-- 

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

INSERT INTO `pressline` VALUES ('d2bc9ed9-0da5-ea1b-4161-46d7ca64f19c', 'b2b4f119-b162-e477-9f78-46d7cac9f270', '2007-08-31 08:00:52', '2007-08-31 08:00:52', NULL, NULL, '1', 'Предпечат-Листовки ДЗИ-1-1', 'cb9d9b35-cf8c-e010-3dcb-46d7ca94e08b', 'c464a966-2602-b7e1-4a03-46d7ca5d9459', '100', 0);
INSERT INTO `pressline` VALUES ('1cd17ff5-436d-2c25-883c-46b8260297ee', '598457bc-776a-9154-9b63-4652c9ce58cb', '2007-08-07 08:00:48', '2007-08-07 08:00:48', NULL, NULL, '1', 'Предпечат-Каталог "Пресфото"-2-2', '1c7ef3f2-7652-2f25-4ac7-46b826160705', '1b16ea32-5c86-9dbe-ce57-46b826b156b1', '100', 0);
INSERT INTO `pressline` VALUES ('a9f49ac7-fb6e-517f-6a57-46b82416dd5d', '598457bc-776a-9154-9b63-4652c9ce58cb', '2007-08-07 07:52:17', '2007-08-07 07:52:17', NULL, NULL, '1', 'Предпечат-Каталог "Пресфото"-2-2', 'a9a469e2-e4eb-5dc9-bab7-46b824980d5c', 'a845814c-3524-5da9-64d1-46b824f16c13', '100', 0);
INSERT INTO `pressline` VALUES ('9f7a9311-efbe-9a76-5378-46d6dcf8418b', '8f50860d-16b5-5491-e451-46d6dce0fc06', '2007-08-30 15:02:43', '2007-08-30 15:02:43', NULL, NULL, '1', 'Предпечат-Книга Компанията на паяците-3-1', '9dd70232-1b9f-b07c-a8bf-46d6dc91ad2a', '9938cdd1-f0df-314f-5b4e-46d6dc8e6483', '100', 0);
INSERT INTO `pressline` VALUES ('7df8933b-69cf-22a9-67cf-46c57fe68b63', '6508c5a0-0630-b9c2-49df-46c57f37ab0c', '2007-08-17 11:01:01', '2007-08-17 11:01:01', NULL, NULL, '1', 'Предпечат-Първо издание-1-1', '7c3cd850-d52f-2960-85b8-46c57ff5fbe6', '6f46a160-b003-6f53-b2a7-46c57fd70f65', '100', 0);
INSERT INTO `pressline` VALUES ('db12b9ec-5d4d-cf4c-1386-46c93e105a35', 'c165910b-df60-1b59-1d45-46c93ee2e59d', '2007-08-20 07:09:27', '2007-08-20 07:09:27', NULL, NULL, '1', 'Предпечат-Първо издание-2-1', 'd928d96d-9b28-28c5-718d-46c93eb04d48', 'cb9e2cf4-d514-5911-bd2e-46c93e3aacfe', '100', 0);
INSERT INTO `pressline` VALUES ('7a3a84a0-b244-3031-681b-46c944208851', '629da741-d120-307b-0f49-46c94438e8c8', '2007-08-20 07:38:15', '2007-08-20 07:38:15', NULL, NULL, '1', 'Предпечат-Каталог-01-2007-1-1', '765b695f-77ae-09ea-539a-46c944ba2db9', '6d4c9593-e648-74e1-9b99-46c944b7683b', '100', 0);
INSERT INTO `pressline` VALUES ('aaceabe6-174c-7cd1-9502-46d43a759504', '90527d21-6801-50aa-5e6c-46d43a4c0c12', '2007-08-28 15:10:27', '2007-08-28 15:10:27', NULL, NULL, '1', 'Предпечат-Каталог Пресфото-3-1', 'a8e99b13-1295-f675-b166-46d43a03f493', '996be1ed-a112-10ac-abf1-46d43a3ab852', '100', 0);
INSERT INTO `pressline` VALUES ('8c3cf32c-95c1-43f3-2350-46d43bebff3a', '7d0627b7-e9f0-ab14-cfbd-46d43bd1e411', '2007-08-28 15:11:37', '2007-08-28 15:11:37', NULL, NULL, '1', 'Предпечат-Каталог Пресфото-4-1', '8aa557a3-e24d-6ef6-ea4a-46d43bfae0cb', '862b14b1-d4cb-5bc7-40d1-46d43b6026df', '100', 0);
INSERT INTO `pressline` VALUES ('a04b6fe6-d8ed-eece-1e64-46d69113c1de', '8bf7767a-67fb-4332-3f8d-46d69175660b', '2007-08-30 09:42:48', '2007-08-30 09:42:48', NULL, NULL, '1', 'Предпечат-Книга Компанията на паяците-3-1', '9e5e3647-8c02-38da-9f48-46d69101a265', '95c0ec7e-4312-8c05-6f3c-46d691f296dd', '100', 0);
INSERT INTO `pressline` VALUES ('d7a90d7f-74b2-a7c4-c15d-46d6866f2c29', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '2007-08-30 08:57:26', '2007-08-30 08:57:26', NULL, NULL, '1', 'Предпечат-Книга Компанията на паяците-2-1', 'd60f6e69-8186-92a9-f02b-46d6865933fe', 'd15c3714-e823-a502-f4e9-46d6860f74ad', '100', 0);
INSERT INTO `pressline` VALUES ('e54fa38d-77cc-0d6c-c225-46d56e7eb69c', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', '2007-08-29 13:04:29', '2007-08-29 13:04:29', NULL, NULL, '1', 'Предпечат-Книга Компанията на паяците-1-3', 'e35c4328-7ec5-0c84-e8e8-46d56e6d58df', 'deab7c83-3da9-0222-bac7-46d56e27b181', '100', 0);
INSERT INTO `pressline` VALUES ('ed02721f-bedc-3d4b-22ef-46d56ed2d91f', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', '2007-08-29 13:04:29', '2007-08-29 13:04:29', NULL, NULL, '1', 'Предпечат-Книга Компанията на паяците-1-4', 'eb2da2bc-45f2-2b27-c8c6-46d56ed68d6b', 'e7f1625a-ad05-591a-6892-46d56e67c434', '100', 1);

-- --------------------------------------------------------

-- 
-- Структура на таблица `pressmachine`
-- 

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
INSERT INTO `pressmachine` VALUES ('aa750713-245a-38cc-b436-4688fc384385', '2007-07-02 13:23:36', '2007-08-30 13:52:06', '1', '1', '1', 'Shinohara', 'Shinohara', NULL, '0', '10000', 4, 'on', 2, 50, 70, 'Shi', 50, 70, 'Shi', 50, 70, 'Shi', NULL, 0);

-- --------------------------------------------------------

-- 
-- Структура на таблица `presspricelist`
-- 

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

INSERT INTO `presspricelist` VALUES ('9f884209-0086-55d3-942a-46d67c1ff493', '2007-08-30 08:14:29', '2007-08-30 08:14:29', '1', '1', '1', '4 x Shinohara', 'Книги', 4, 1000, 'aa750713-245a-38cc-b436-4688fc384385', 'Shinohara', 'on', NULL, 0);
INSERT INTO `presspricelist` VALUES ('b8aed1f4-281a-1119-244b-46d67cadae88', '2007-08-30 08:13:36', '2007-08-30 08:13:36', '1', '1', '1', '3 x Shinohara', 'Книги', 3, 1000, 'aa750713-245a-38cc-b436-4688fc384385', 'Shinohara', 'on', NULL, 0);
INSERT INTO `presspricelist` VALUES ('90cd9e83-4e54-4de4-1a37-46d67b97c4c1', '2007-08-30 08:11:27', '2007-08-30 08:11:27', '1', '1', '1', '2 x Shinohara', 'Книги', 2, 1000, 'aa750713-245a-38cc-b436-4688fc384385', 'Shinohara', 'on', NULL, 0);
INSERT INTO `presspricelist` VALUES ('e4965bbc-bf4b-fde5-f796-46d67bca30ce', '2007-08-30 08:10:08', '2007-08-30 08:12:10', '1', '1', '1', '1 x Shinohara', 'Книги', 1, 1000, 'aa750713-245a-38cc-b436-4688fc384385', 'Shinohara', 'on', NULL, 0);
INSERT INTO `presspricelist` VALUES ('4ee288eb-8342-bc46-ce5c-46d67a86f455', '2007-08-30 08:07:52', '2007-08-30 08:07:52', '1', '1', '1', '3 х GTO', 'Книги', 3, 1000, '7709512d-3380-6f6e-a4c0-4688c89520cf', 'GTO', 'on', NULL, 0);
INSERT INTO `presspricelist` VALUES ('97d264cf-639e-cec4-4303-46d67a8c5f32', '2007-08-30 08:07:06', '2007-08-30 08:07:06', '1', '1', '1', '2 х GTO', 'Книги', 2, 1000, '7709512d-3380-6f6e-a4c0-4688c89520cf', 'GTO', 'on', NULL, 0);
INSERT INTO `presspricelist` VALUES ('983f483d-8af1-9472-601a-468d07c0aed0', '2007-07-05 15:01:25', '2007-08-30 09:08:52', '1', '1', '1', '4 х GTO', 'Книги', 4, 1000, '7709512d-3380-6f6e-a4c0-4688c89520cf', 'GTO', 'on', NULL, 0);
INSERT INTO `presspricelist` VALUES ('d90538b5-a7f8-95ef-85c8-46d67a3a1c7e', '2007-08-30 08:06:24', '2007-08-30 08:06:24', '1', '1', '1', '1 х GTO', 'Книги', 1, 1000, '7709512d-3380-6f6e-a4c0-4688c89520cf', 'GTO', 'on', NULL, 0);

-- --------------------------------------------------------

-- 
-- Структура на таблица `pricebooks`
-- 

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

INSERT INTO `pricelistlines` VALUES ('b114d94b-1a9a-a8fa-d805-46d689ec3e5f', '983f483d-8af1-9472-601a-468d07c0aed0', 8000, 185, 12.5, 0, '2007-08-30 09:08:52', '2007-08-30 09:08:52', '1');
INSERT INTO `pricelistlines` VALUES ('aee7aa42-316d-1b39-c66d-46d689ce9d30', '983f483d-8af1-9472-601a-468d07c0aed0', 6000, 155, 15, 0, '2007-08-30 09:08:52', '2007-08-30 09:08:52', '1');
INSERT INTO `pricelistlines` VALUES ('ac9565fa-81e4-fbce-71cc-46d689583798', '983f483d-8af1-9472-601a-468d07c0aed0', 4000, 120, 17.5, 0, '2007-08-30 09:08:52', '2007-08-30 09:08:52', '1');
INSERT INTO `pricelistlines` VALUES ('aa652e8c-c0cb-f7a1-f7e8-46d68990d8d0', '983f483d-8af1-9472-601a-468d07c0aed0', 1000, 60, 20, 0, '2007-08-30 09:08:52', '2007-08-30 09:08:52', '1');
INSERT INTO `pricelistlines` VALUES ('ac83b780-7fe9-044d-577a-46d67cd08622', '9f884209-0086-55d3-942a-46d67c1ff493', 8000, 370, 25, 0, '2007-08-30 08:14:29', '2007-08-30 08:14:29', '1');
INSERT INTO `pricelistlines` VALUES ('aa416d22-9171-86c2-9aaa-46d67c26266b', '9f884209-0086-55d3-942a-46d67c1ff493', 6000, 310, 30, 0, '2007-08-30 08:14:29', '2007-08-30 08:14:29', '1');
INSERT INTO `pricelistlines` VALUES ('a7e94b59-d264-34b7-04e5-46d67cde3cd2', '9f884209-0086-55d3-942a-46d67c1ff493', 4000, 240, 35, 0, '2007-08-30 08:14:29', '2007-08-30 08:14:29', '1');
INSERT INTO `pricelistlines` VALUES ('a5a00fb8-d091-4ffc-c09f-46d67cf1e9f1', '9f884209-0086-55d3-942a-46d67c1ff493', 1000, 120, 40, 0, '2007-08-30 08:14:29', '2007-08-30 08:14:29', '1');
INSERT INTO `pricelistlines` VALUES ('c3909ad9-e023-3eec-c0f4-46d67c8156b4', 'b8aed1f4-281a-1119-244b-46d67cadae88', 6000, 265, 25, 0, '2007-08-30 08:13:36', '2007-08-30 08:13:36', '1');
INSERT INTO `pricelistlines` VALUES ('92283364-d1c9-43d0-e841-468df6882f8b', '4a36090d-b82e-6698-6c10-468dec12d2ec', 1000, 40, 10, 0, '2007-07-06 07:58:56', '2007-07-06 07:58:56', '1');
INSERT INTO `pricelistlines` VALUES ('928eac4f-714d-d576-c921-468df6bf6b3b', '4a36090d-b82e-6698-6c10-468dec12d2ec', 3000, 60, 10, 0, '2007-07-06 07:58:56', '2007-07-06 07:58:56', '1');
INSERT INTO `pricelistlines` VALUES ('c140b60c-4085-b356-0ab4-46d67c7773ef', 'b8aed1f4-281a-1119-244b-46d67cadae88', 4000, 205, 30, 0, '2007-08-30 08:13:36', '2007-08-30 08:13:36', '1');
INSERT INTO `pricelistlines` VALUES ('bea44b3e-2c32-9953-56c3-46d67c3a4050', 'b8aed1f4-281a-1119-244b-46d67cadae88', 1000, 100, 35, 0, '2007-08-30 08:13:36', '2007-08-30 08:13:36', '1');
INSERT INTO `pricelistlines` VALUES ('844bc2da-e324-05b0-2f2c-46d67be4533f', 'e4965bbc-bf4b-fde5-f796-46d67bca30ce', 1000, 50, 25, 0, '2007-08-30 08:12:10', '2007-08-30 08:12:10', '1');
INSERT INTO `pricelistlines` VALUES ('990443a8-cd60-6da8-26c6-46d67b154051', '90cd9e83-4e54-4de4-1a37-46d67b97c4c1', 4000, 170, 25, 0, '2007-08-30 08:11:27', '2007-08-30 08:11:27', '1');
INSERT INTO `pricelistlines` VALUES ('9697ae60-ca29-1429-b106-46d67b6fbf9a', '90cd9e83-4e54-4de4-1a37-46d67b97c4c1', 1000, 80, 30, 0, '2007-08-30 08:11:27', '2007-08-30 08:11:27', '1');
INSERT INTO `pricelistlines` VALUES ('ea69f812-6052-2774-c9d4-46d67b9b26c9', 'e4965bbc-bf4b-fde5-f796-46d67bca30ce', 1000, 0, 25, 1, '2007-08-30 08:10:08', '2007-08-30 08:12:10', '1');
INSERT INTO `pricelistlines` VALUES ('3c750f17-57a8-539b-8b42-46d67ad66b2c', '983f483d-8af1-9472-601a-468d07c0aed0', 8000, 185, 12.5, 1, '2007-08-30 08:08:23', '2007-08-30 09:08:52', '1');
INSERT INTO `pricelistlines` VALUES ('187000a7-0eed-bf79-1267-46d67a6e979b', '983f483d-8af1-9472-601a-468d07c0aed0', 6000, 155, 15, 1, '2007-08-30 08:08:23', '2007-08-30 09:08:52', '1');
INSERT INTO `pricelistlines` VALUES ('f37083ea-e8d8-f312-881c-46d67a2a0e91', '983f483d-8af1-9472-601a-468d07c0aed0', 4000, 120, 17.5, 1, '2007-08-30 08:08:23', '2007-08-30 09:08:52', '1');
INSERT INTO `pricelistlines` VALUES ('f12402eb-7826-8552-9846-46d67a1b7cbf', '983f483d-8af1-9472-601a-468d07c0aed0', 1000, 60, 20, 1, '2007-08-30 08:08:22', '2007-08-30 09:08:52', '1');
INSERT INTO `pricelistlines` VALUES ('5979cae0-b060-b564-cd4c-46d67ac02715', '4ee288eb-8342-bc46-ce5c-46d67a86f455', 6000, 132.5, 12.5, 0, '2007-08-30 08:07:52', '2007-08-30 08:07:52', '1');
INSERT INTO `pricelistlines` VALUES ('572e2bfc-abe9-ebc2-c506-46d67a994407', '4ee288eb-8342-bc46-ce5c-46d67a86f455', 4000, 102.5, 15, 0, '2007-08-30 08:07:52', '2007-08-30 08:07:52', '1');
INSERT INTO `pricelistlines` VALUES ('54dfb547-ca05-df2f-004f-46d67a876b6b', '4ee288eb-8342-bc46-ce5c-46d67a86f455', 1000, 50, 17.5, 0, '2007-08-30 08:07:52', '2007-08-30 08:07:52', '1');
INSERT INTO `pricelistlines` VALUES ('a1692353-c4ed-9620-7dcc-46d67afbfa1e', '97d264cf-639e-cec4-4303-46d67a8c5f32', 4000, 85, 12.5, 0, '2007-08-30 08:07:06', '2007-08-30 08:07:06', '1');
INSERT INTO `pricelistlines` VALUES ('9d91f963-c39a-dae2-85e1-46d67a613e46', '97d264cf-639e-cec4-4303-46d67a8c5f32', 1000, 40, 15, 0, '2007-08-30 08:07:06', '2007-08-30 08:07:06', '1');
INSERT INTO `pricelistlines` VALUES ('e17a3cbe-6045-51ac-6236-46d67a08e8b6', 'd90538b5-a7f8-95ef-85c8-46d67a3a1c7e', 4000, 62.5, 12.5, 0, '2007-08-30 08:06:24', '2007-08-30 08:06:24', '1');
INSERT INTO `pricelistlines` VALUES ('def522c7-5aa0-67ac-1de5-46d67a6dea6a', 'd90538b5-a7f8-95ef-85c8-46d67a3a1c7e', 1000, 25, 12.5, 0, '2007-08-30 08:06:24', '2007-08-30 08:06:24', '1');
INSERT INTO `pricelistlines` VALUES ('82c0f287-3154-8f9b-9971-46d67ac84041', '983f483d-8af1-9472-601a-468d07c0aed0', 8000, 185, 12.5, 1, '2007-08-30 08:04:42', '2007-08-30 08:08:22', '1');
INSERT INTO `pricelistlines` VALUES ('806d2ac6-c9ed-4612-132a-46d67af6e632', '983f483d-8af1-9472-601a-468d07c0aed0', 6000, 155, 15, 1, '2007-08-30 08:04:42', '2007-08-30 08:08:22', '1');
INSERT INTO `pricelistlines` VALUES ('7e0d9658-0782-49a2-d736-46d67a81ffde', '983f483d-8af1-9472-601a-468d07c0aed0', 4000, 120, 17.5, 1, '2007-08-30 08:04:42', '2007-08-30 08:08:22', '1');
INSERT INTO `pricelistlines` VALUES ('7bbbf1bb-94c1-4404-fbf5-46d67a006af1', '983f483d-8af1-9472-601a-468d07c0aed0', 1000, 60, 20, 1, '2007-08-30 08:04:42', '2007-08-30 08:08:22', '1');
INSERT INTO `pricelistlines` VALUES ('8b169c7a-0a9e-1394-55ed-46c9828b59b6', '983f483d-8af1-9472-601a-468d07c0aed0', 1000, 60, 50, 1, '2007-08-20 12:01:29', '2007-08-30 08:04:42', '1');
INSERT INTO `pricelistlines` VALUES ('8d68063e-1ba2-972f-86c3-46c98216ff3d', '983f483d-8af1-9472-601a-468d07c0aed0', 3000, 160, 45, 1, '2007-08-20 12:01:29', '2007-08-30 08:04:42', '1');
INSERT INTO `pricelistlines` VALUES ('8fa59b88-bf7c-bf77-4d28-46c982908117', '983f483d-8af1-9472-601a-468d07c0aed0', 5000, 250, 40, 1, '2007-08-20 12:01:29', '2007-08-30 08:04:42', '1');

-- --------------------------------------------------------

-- 
-- Структура на таблица `prices`
-- 

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

INSERT INTO `prices` VALUES ('b501e3f9-7106-e981-1832-46d7ca305f77', '1275003c-ecc0-48d5-aa67-46d7cab64165', NULL, '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'К1 Партнерс', 0.16, NULL, NULL, 0.16, NULL, '2007-08-31 08:01:50', '2007-08-31 08:01:50', '1', '1', '1', '60 х 90 - мат', NULL, 0);
INSERT INTO `prices` VALUES ('74294374-69e4-a24d-3b1f-46d6861808d9', '6e81e697-e379-92dc-732c-46d6861ae393', NULL, '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'К1 Партнерс', 0.4, NULL, NULL, 0.4, NULL, '2007-08-30 08:58:43', '2007-08-30 08:58:43', '1', '1', '1', 'Опаковъчен картон 70x100', NULL, 0);
INSERT INTO `prices` VALUES ('146cb4fd-b430-8dd3-9673-46d5683fc5dd', '13dfa91a-0374-7e5a-f194-46d568e8137b', NULL, '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'К1 Партнерс', 0.1, NULL, NULL, 0.1, NULL, '2007-08-29 12:38:33', '2007-08-29 12:38:33', '1', '1', '1', '70 x 100 - офсет', NULL, 0);
INSERT INTO `prices` VALUES ('a6fa96d4-4f10-da08-6cb2-46d53836e9a1', 'a4cb4337-447a-2e72-b569-464d64ac31bf', NULL, '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'К1 Партнерс', 0.3, NULL, NULL, 0.3, NULL, '2007-08-29 09:12:03', '2007-08-29 09:12:03', '1', '1', '1', 'Хартия - Мат - 70х100 -170гр', NULL, 0);
INSERT INTO `prices` VALUES ('e69007ff-389e-40a9-9403-46d537f864b3', 'a4cb4337-447a-2e72-b569-464d64ac31bf', NULL, '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'К1 Партнерс', 0.36, NULL, NULL, 0.36, NULL, '2007-08-29 09:09:40', '2007-08-29 09:09:40', '1', '1', '1', 'Хартия - Мат - 70х100 -170гр', NULL, 0);
INSERT INTO `prices` VALUES ('60070ad1-cb83-e458-fa58-46d5380287f7', 'a4cb4337-447a-2e72-b569-464d64ac31bf', NULL, '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'К1 Партнерс', 221, NULL, NULL, 221, NULL, '2007-08-29 09:10:43', '2007-08-29 09:10:43', '1', '1', '1', 'Хартия - Мат - 70х100 -170гр', NULL, 0);
INSERT INTO `prices` VALUES ('c345c508-9b07-8c07-5738-464d63caf724', 'a8948502-cea9-500a-0d8c-464d6305dfdc', NULL, '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'К1 Партнерс', 0.1147, NULL, 'Valid', 0.1147, '-99', '2007-05-18 08:28:01', '2007-05-18 08:28:17', '1', '1', '1', 'Хартия 70x100 - мат - гланц', NULL, 0);
INSERT INTO `prices` VALUES ('94c505d2-8bcf-694c-d675-464d64235abf', NULL, NULL, '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'К1 Партнерс', 0.0971, NULL, 'Valid', 0.0971, NULL, '2007-05-18 08:30:58', '2007-08-30 07:43:41', '1', '1', '1', 'Chantellor 100', NULL, 0);
INSERT INTO `prices` VALUES ('34447ba8-ade6-a83b-7a8d-464d651e6e81', 'a4cb4337-447a-2e72-b569-464d64ac31bf', NULL, '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'К1 Партнерс', 22, NULL, 'Valid', 22, NULL, '2007-05-18 08:34:47', '2007-05-18 08:34:47', '1', '1', '1', 'Хартия - Мат - 70х100', NULL, 0);
INSERT INTO `prices` VALUES ('b9229202-1196-26cd-e0ef-464d65246ea2', 'afdedf2d-1d0d-439f-d9a8-464d656ee6d3', NULL, '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'К1 Партнерс', 0.4, NULL, 'Valid', 0.4, '-99', '2007-05-18 08:36:15', '2007-05-18 08:38:15', '1', '1', '1', 'Хартия - Мат - 70х100 -300гр', NULL, 0);
INSERT INTO `prices` VALUES ('47eaa2d5-95fb-260b-44cf-465321aef914', NULL, NULL, '5e0b1f19-edac-32da-c0ee-45cf3dd3f612', 'Славей 91', 0.09, NULL, 'Valid', 0.09, '-99', '2007-05-22 16:59:55', '2007-08-30 07:43:41', '1', '1', '1', 'Chantellor 100', NULL, 0);
INSERT INTO `prices` VALUES ('2fe515e8-56ba-842f-090b-46c93f63c652', 'afdedf2d-1d0d-439f-d9a8-464d656ee6d3', NULL, '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'К1 Партнерс', 0.385, NULL, NULL, 0.385, '-99', '2007-08-20 07:17:18', '2007-08-20 07:17:18', '1', '1', '1', 'Хартия - Мат - 70х100 -300гр', NULL, 0);
INSERT INTO `prices` VALUES ('4b99ed68-1656-3817-1284-46d523491301', 'a4cb4337-447a-2e72-b569-464d64ac31bf', NULL, '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', NULL, NULL, NULL, NULL, NULL, NULL, '2007-08-29 07:41:36', '2007-08-29 07:41:36', '1', '1', '1', 'gghfg', NULL, 0);

-- --------------------------------------------------------

-- 
-- Структура на таблица `printing`
-- 

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

INSERT INTO `printing` VALUES ('e8e3b0b4-e16d-a21c-0026-4652ca4a9232', '2007-05-22 10:48:10', '2007-08-30 07:42:09', '1', '1', '1', 'Печат - Каталог "Пресфото"-2', NULL, 'Каталог "Пресфото"-2', '', '1', NULL, NULL, 1, 3000, 2, 1, 3000, 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `printing` VALUES ('71f53f4b-4f10-90b2-3197-4652ca9565df', '2007-05-22 10:47:15', '2007-08-30 07:42:09', '1', '1', '1', 'Печат - Каталог "Пресфото"-1', NULL, 'Каталог "Пресфото"-1', '', '11', NULL, NULL, NULL, 3000, 22, 2, 1500, 0, 1, 3000, 0, NULL, 0);

-- --------------------------------------------------------

-- 
-- Структура на таблица `printing_prices`
-- 

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

INSERT INTO `productestimate` VALUES ('1a1e1cce-1852-4e63-09a7-46c18e02cb3b', 'a5a08eeb-0be7-f066-2677-464d699203bc', 'Каталог Пресфото', 3690, 335, 3060, 800, '2007-08-14 11:12:03', '2007-08-30 07:47:55', '1', '1', '1', 'Калкулация-Каталог Пресфото', NULL, 1);
INSERT INTO `productestimate` VALUES ('9b8e2108-d9c3-461b-8078-46d6c1196b89', '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците', 330, 262.5, 1035, 280, '2007-08-30 13:09:43', '2007-08-31 06:51:46', '1', '1', '1', 'Калкулация-Книга Компанията на паяците', NULL, 1);

-- --------------------------------------------------------

-- 
-- Структура на таблица `productlog`
-- 

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

INSERT INTO `productlog` VALUES ('b3137fb4-8939-5231-89ca-464d69a19be1', '2007-05-18 08:52:29', '2007-08-30 07:41:44', NULL, '1', '1', 'Каталог Пресфото', '', NULL, 0);
INSERT INTO `productlog` VALUES ('2d74031e-9f84-ce46-06d7-4678f3f4bad7', '2007-06-20 09:29:22', '2007-08-30 07:41:44', NULL, '1', '1', 'Първо издание', '', NULL, 0);
INSERT INTO `productlog` VALUES ('6bc313b0-9587-70e7-4c1c-46c9403b34bb', '2007-08-20 07:19:56', '2007-08-30 07:41:44', NULL, '1', '1', 'Каталог-01-2007', '', NULL, 0);
INSERT INTO `productlog` VALUES ('8918a618-1dd4-738b-aabf-46c943f3ac16', '2007-08-20 07:30:27', '2007-08-20 07:34:20', NULL, '1', '1', 'asdasd', '', NULL, 0);
INSERT INTO `productlog` VALUES ('4cce0b56-8021-fc3f-de12-46c943beb14a', '2007-08-20 07:31:16', '2007-08-20 07:34:20', NULL, '1', '1', 'asdsa', '', NULL, 0);
INSERT INTO `productlog` VALUES ('a4bfd6aa-d776-16bb-fcc1-46d567b4c357', '2007-08-29 12:31:36', '2007-08-29 12:31:36', NULL, '1', '1', 'Книга Компанията на паяците', '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', NULL, 0);
INSERT INTO `productlog` VALUES ('e2b6d7e6-8b1f-94f3-9829-46d7c9873dd9', '2007-08-31 07:56:35', '2007-08-31 07:56:35', NULL, '1', '1', 'Листовки ДЗИ', 'ccc6aadc-4f3c-33b3-7fad-46d7c97e3ec4', NULL, 0);

-- --------------------------------------------------------

-- 
-- Структура на таблица `productoperations`
-- 

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

INSERT INTO `productoperations` VALUES ('2d01a4a6-598f-774f-0f5e-46bc710e43a3', NULL, NULL, 'Каталог "Пресфото"-2', NULL, NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-10 14:10:43', '2007-08-30 07:42:09', NULL, '1', '1', 'Каталог "Пресфото"-2-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('52a600ef-755b-904d-44bf-46bc2da2b92e', NULL, NULL, 'Каталог "Пресфото"-2', NULL, NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-10 09:18:48', '2007-08-30 07:42:09', NULL, '1', '1', 'Каталог "Пресфото"-2-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('739df135-2faf-31be-8ba0-46baef0549e4', NULL, NULL, 'Каталог "Пресфото"-2', NULL, NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-09 10:43:45', '2007-08-30 07:42:09', NULL, '1', '1', 'Каталог "Пресфото"-2-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('7317a4b2-88bc-aa99-8724-46baef1d791d', NULL, NULL, 'Каталог "Пресфото"-2', NULL, NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-09 10:43:45', '2007-08-30 07:42:09', NULL, '1', '1', 'Каталог "Пресфото"-2-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('5ce90deb-1936-8532-ac6c-46bc2d85b2c9', NULL, NULL, 'Каталог "Пресфото"-2', NULL, NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-10 09:18:48', '2007-08-30 07:42:09', NULL, '1', '1', 'Каталог "Пресфото"-2-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('64ba0799-5e8d-b9cf-c7d5-46bc2d2e9b75', NULL, NULL, 'Каталог "Пресфото"-2', NULL, NULL, NULL, 'Опаковане', '2a31ebad-52ef-a8c0-dda8-46b0b9a4cb4a', '2007-08-10 09:18:48', '2007-08-30 07:42:09', NULL, '1', '1', 'Каталог "Пресфото"-2-Опаковане', NULL, NULL, NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('27266491-541e-b66b-77d1-46bc2d1d37c9', NULL, NULL, 'Каталог "Пресфото"-2', NULL, NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-10 09:19:08', '2007-08-30 07:42:09', NULL, '1', '1', 'Каталог "Пресфото"-2-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('27ad17fa-c66a-7e27-277a-46bc2d38d9b2', NULL, NULL, 'Каталог "Пресфото"-2', NULL, NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-10 09:19:08', '2007-08-30 07:42:09', NULL, '1', '1', 'Каталог "Пресфото"-2-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('31f49ea8-33da-11c3-26e9-46bc6e9c82aa', NULL, NULL, 'Каталог "Пресфото"-2', NULL, NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-10 13:54:35', '2007-08-30 07:42:09', NULL, '1', '1', 'Каталог "Пресфото"-2-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('d38c783f-987c-3c9b-0ec1-46d69432843d', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Тяло - Книга Компанията на паяците', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-30 09:58:01', '2007-08-30 11:25:08', NULL, '1', '1', 'Тяло - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('3294bba8-e54a-814d-76de-46bc6e3f700d', NULL, NULL, 'Каталог "Пресфото"-2', NULL, NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-10 13:54:35', '2007-08-30 07:42:09', NULL, '1', '1', 'Каталог "Пресфото"-2-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('2d8d5669-ae34-94de-c321-46bc71b18688', NULL, NULL, 'Каталог "Пресфото"-2', NULL, NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-10 14:10:43', '2007-08-30 07:42:09', NULL, '1', '1', 'Каталог "Пресфото"-2-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('3347b8ee-12ec-4be4-f5aa-46bc722c0d5a', NULL, NULL, 'Каталог "Пресфото"-2', NULL, NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-10 14:11:21', '2007-08-30 07:42:09', NULL, '1', '1', 'Каталог "Пресфото"-2-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('33d385c5-cdfd-0876-5fc0-46bc7266e9da', NULL, NULL, 'Каталог "Пресфото"-2', NULL, NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-10 14:11:21', '2007-08-30 07:42:09', NULL, '1', '1', 'Каталог "Пресфото"-2-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('a3269fdd-97c4-3d74-960c-46c945fb0663', NULL, NULL, NULL, NULL, NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-20 07:41:24', '2007-08-30 07:42:10', NULL, '1', '1', '-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('a91137e9-5b07-bfeb-01f9-46c9453abbcb', NULL, NULL, NULL, NULL, NULL, NULL, 'Опаковане', '2a31ebad-52ef-a8c0-dda8-46b0b9a4cb4a', '2007-08-20 07:41:24', '2007-08-30 07:42:10', NULL, '1', '1', '-Опаковане', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('a6aee181-9f9a-236a-7683-46c94a4a5219', NULL, NULL, NULL, NULL, NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-20 08:00:41', '2007-08-30 07:42:10', NULL, '1', '1', '-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('b9231f69-959f-a78c-01f9-46c94ac8c7c9', NULL, NULL, NULL, NULL, NULL, NULL, 'Опаковане', '2a31ebad-52ef-a8c0-dda8-46b0b9a4cb4a', '2007-08-20 08:00:44', '2007-08-30 07:42:10', NULL, '1', '1', '-Опаковане', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('f1fea2ad-b492-a011-6d08-46c94eb6ccc3', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-20 08:19:11', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('4870ecfe-2055-5609-93c7-46d68d11121f', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците-Корица', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-30 09:27:25', '2007-08-30 09:59:05', NULL, '1', '1', 'Книга Компанията на паяците-Корица-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('420800cb-aff1-3ec8-388d-46c94ee643db', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'Опаковане', '2a31ebad-52ef-a8c0-dda8-46b0b9a4cb4a', '2007-08-20 08:19:12', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-Опаковане', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('56a70920-f035-8733-5e4a-46c94e286595', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-20 08:19:39', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('b4920366-da4a-5ad7-f123-46c94e6be694', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'Опаковане', '2a31ebad-52ef-a8c0-dda8-46b0b9a4cb4a', '2007-08-20 08:19:39', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-Опаковане', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('44aec7be-8009-34b2-92bc-46c94e977a53', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-20 08:20:04', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('4a9caf50-a692-bd44-8115-46c94e531705', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'Опаковане', '2a31ebad-52ef-a8c0-dda8-46b0b9a4cb4a', '2007-08-20 08:20:04', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-Опаковане', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('43555d5e-d6c0-0ad0-dde3-46d68dd9e801', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците-Корица', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-30 09:27:25', '2007-08-30 09:59:05', NULL, '1', '1', 'Книга Компанията на паяците-Корица-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('4dc282cd-8103-7077-7b75-46c94e53063f', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-20 08:20:04', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('e6ef1bde-bc53-af98-756b-46c981babc53', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-20 11:58:33', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('335a6bd2-7279-88a2-beca-46c9820644b8', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-20 11:59:00', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('387091e8-5335-6567-9240-46c982983d9b', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-20 11:59:00', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('301c676c-1668-d4ee-e0b5-46c98775cc19', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-20 12:23:12', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('93e4ea34-1016-554b-4488-46d687e2f7f4', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците-2', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-30 09:03:49', '2007-08-30 09:27:25', NULL, '1', '1', 'Книга Компанията на паяците-2-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('35703862-a827-8d1e-9531-46c9871fcc4d', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-20 12:23:12', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('e893ca0e-2316-3a74-392f-46ca8ed99a5b', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-21 07:04:19', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('f2102d01-a826-86d1-e3e9-46ca8e4ba1c1', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-21 07:04:20', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('ac2e8666-c4ba-6ae8-4929-46ca8e1a8281', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-21 07:05:10', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('b2323724-fd7c-1755-0b04-46ca8ec3a9fd', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-21 07:05:10', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('8ecb850d-8667-11d5-ef58-46d6879bab08', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците-2', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-30 09:03:49', '2007-08-30 09:27:25', NULL, '1', '1', 'Книга Компанията на паяците-2-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('c66118bb-724b-99b4-cba4-46ca8f8f1c82', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-21 07:07:47', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-ВШМ', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('cbca6a89-a409-0be4-46a3-46ca8fb28d71', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-21 07:07:47', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('144f153d-b5f1-8296-f2f5-46ca9d29380a', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-21 08:06:59', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('199b19a8-600f-45e8-6758-46ca9da62731', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-21 08:06:59', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('308e6ebb-2ac8-57e7-5305-46caa8f41d57', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-21 08:53:37', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('35d061c7-4f7f-1b1a-89fe-46caa82fd120', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-21 08:53:37', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('a7602d21-7aac-1cd1-0e7b-46d6878ed06f', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците-2', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-30 09:02:08', '2007-08-30 09:03:49', NULL, '1', '1', 'Книга Компанията на паяците-2-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('aac0c74b-c8a6-7566-75be-46caa813d4f1', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-21 08:54:01', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('b00ba52e-e584-eaa4-5bd4-46caa87f32a1', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-21 08:54:01', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('7c8dd768-1367-08b2-1c13-46caa82379dc', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-21 08:54:40', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('7cda5be9-6efc-f642-af31-46caa89d4965', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-21 08:55:25', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('8290b29a-ea8b-62ed-61b1-46caa93f8b6e', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-21 08:57:41', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('a48667cc-062e-ce6b-0827-46d687c6aae8', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците-2', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-30 09:02:08', '2007-08-30 09:03:49', NULL, '1', '1', 'Книга Компанията на паяците-2-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('87f47246-92d4-72b4-29d6-46caa99cb87c', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-21 08:57:41', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('ce7c93e6-4418-c5f7-b8ae-46d694107bdf', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Тяло - Книга Компанията на паяците', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-30 09:58:01', '2007-08-30 11:25:08', NULL, '1', '1', 'Тяло - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('f1d5040f-3750-376d-9c2c-46caa933b0a3', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-21 08:59:02', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('146a1288-4e16-3983-f966-46caa9992175', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-21 08:59:02', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('d372a986-d663-0cb2-e46f-46caa9402ba2', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-21 09:00:48', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('d8c76b42-4364-aec4-4f65-46caa963ac06', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-21 09:00:48', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('30f922e4-9cf6-fa69-d659-46cab0cbab89', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-21 09:29:37', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-ВШМ', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('64f3d0dc-df18-4463-d6a7-46d67e31e4eb', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците-1', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-30 08:22:20', '2007-08-30 09:58:01', NULL, '1', '1', 'Книга Компанията на паяците-1-Лепене', NULL, NULL, NULL, '25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('35f3d35e-c7f6-543e-aa3a-46cab00c68a0', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-21 09:29:37', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-Лепене', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('545af650-2dbc-c6b0-a19f-46cac3fc7899', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-21 10:51:37', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('57358786-0930-3473-5739-46cac3c287b4', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'Книговезане', 'cc2cb632-61a2-bd4f-5e2e-4691f58d5fc6', '2007-08-21 10:51:37', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-Книговезане', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('549a4cf8-ee77-26f3-03ff-46cac3404640', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-21 10:52:12', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('71cbdd17-466c-7a3e-7847-46caceedbe21', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-21 11:38:46', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `productoperations` VALUES ('773585ef-daf2-d83e-4825-46cacec84b24', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-21 11:38:46', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `productoperations` VALUES ('5fafd6c8-2b49-08d7-e639-46d67ef31f56', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците-1', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-30 08:22:20', '2007-08-30 09:58:01', NULL, '1', '1', 'Книга Компанията на паяците-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('e347c880-9821-dcae-d85e-46cd569da3ba', NULL, NULL, 'Корица Пресфото', NULL, NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-23 09:41:26', '2007-08-30 07:42:09', NULL, '1', '1', 'Корица Пресфото-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('ec9f666d-fcbc-934e-32e3-46cd56703ba0', NULL, NULL, 'Корица Пресфото', NULL, NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-23 09:41:26', '2007-08-30 07:42:09', NULL, '1', '1', 'Корица Пресфото-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('960a88c9-5dfa-5ca9-beaf-46ce8b115898', NULL, NULL, 'Корица Пресфото', NULL, NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-24 07:40:58', '2007-08-30 07:42:09', NULL, '1', '1', 'Корица Пресфото-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `productoperations` VALUES ('b7731e74-1058-805e-dec3-46d6948248d2', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-30 09:59:05', '2007-08-30 10:36:30', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('9b8bea84-31de-5d46-c98c-46ce8bb87d12', NULL, NULL, 'Корица Пресфото', NULL, NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-24 07:40:58', '2007-08-30 07:42:09', NULL, '1', '1', 'Корица Пресфото-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `productoperations` VALUES ('aea63d71-f2f9-bc1e-d579-46d56a19e423', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците-1', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-29 12:46:38', '2007-08-29 12:51:10', NULL, '1', '1', 'Книга Компанията на паяците-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('b4ddb9a8-d336-b937-cd21-46d56aee11b0', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците-1', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-29 12:46:38', '2007-08-29 12:51:10', NULL, '1', '1', 'Книга Компанията на паяците-1-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('b7bb83ff-7fa0-d409-b073-46d56a93725a', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците-1', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'Опаковане', '2a31ebad-52ef-a8c0-dda8-46b0b9a4cb4a', '2007-08-29 12:46:38', '2007-08-29 12:51:10', NULL, '1', '1', 'Книга Компанията на паяците-1-Опаковане', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('c99429b1-be96-8fd9-5612-46d56b7615b3', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците-1', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-29 12:51:10', '2007-08-29 13:04:30', NULL, '1', '1', 'Книга Компанията на паяците-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('cf06911b-9cfd-ddbe-d286-46d56b25f7f1', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците-1', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-29 12:51:10', '2007-08-29 13:04:30', NULL, '1', '1', 'Книга Компанията на паяците-1-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('d1e4c5ad-407d-b9a0-38e0-46d56b4ddddc', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците-1', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'Опаковане', '2a31ebad-52ef-a8c0-dda8-46b0b9a4cb4a', '2007-08-29 12:51:10', '2007-08-29 13:04:30', NULL, '1', '1', 'Книга Компанията на паяците-1-Опаковане', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('2260b3b8-f05a-dfd2-6576-46d56e096f9b', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците-1', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-29 13:04:30', '2007-08-29 13:39:45', NULL, '1', '1', 'Книга Компанията на паяците-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('27b645fb-74f4-bd6d-8e92-46d56e08b8b9', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците-1', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-29 13:04:30', '2007-08-29 13:39:46', NULL, '1', '1', 'Книга Компанията на паяците-1-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('2a8e881c-0b79-9433-29fe-46d56e0af2e4', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците-1', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'Опаковане', '2a31ebad-52ef-a8c0-dda8-46b0b9a4cb4a', '2007-08-29 13:04:30', '2007-08-29 13:39:46', NULL, '1', '1', 'Книга Компанията на паяците-1-Опаковане', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('a9aa0317-1deb-e924-1a93-46d57728a04f', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците-1', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-29 13:39:46', '2007-08-29 13:45:38', NULL, '1', '1', 'Книга Компанията на паяците-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('10051c20-11af-239b-a0e4-46d577c60a35', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците-1', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-29 13:39:46', '2007-08-29 13:45:38', NULL, '1', '1', 'Книга Компанията на паяците-1-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('58a15890-2522-89de-306d-46d578be66a9', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците-1', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-29 13:45:38', '2007-08-29 13:48:20', NULL, '1', '1', 'Книга Компанията на паяците-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('5de6a17b-c0e9-509f-28c7-46d5786bf71b', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците-1', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-29 13:45:38', '2007-08-29 13:48:20', NULL, '1', '1', 'Книга Компанията на паяците-1-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('5ac129ea-5023-001d-9fac-46d579b2bfaa', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците-1', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-29 13:48:20', '2007-08-29 14:28:59', NULL, '1', '1', 'Книга Компанията на паяците-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('6030ee2c-a7b4-122f-bbd4-46d57904d9f6', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците-1', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-29 13:48:20', '2007-08-29 14:28:59', NULL, '1', '1', 'Книга Компанията на паяците-1-Лепене', NULL, NULL, NULL, '25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('e3c55cff-9a8f-de9b-9d72-46d58205d6d3', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците-1', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-29 14:28:59', '2007-08-29 14:45:36', NULL, '1', '1', 'Книга Компанията на паяците-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('e92657d7-f296-1209-ce22-46d582858c2e', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците-1', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-29 14:28:59', '2007-08-29 14:45:36', NULL, '1', '1', 'Книга Компанията на паяците-1-Лепене', NULL, NULL, NULL, '25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('2ef7837c-ea09-ddfd-630e-46d58661eb65', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците-1', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-29 14:45:36', '2007-08-29 14:48:11', NULL, '1', '1', 'Книга Компанията на паяците-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('342bb464-6e3d-a77b-fcde-46d58635057b', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците-1', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-29 14:45:36', '2007-08-29 14:48:11', NULL, '1', '1', 'Книга Компанията на паяците-1-Лепене', NULL, NULL, NULL, '25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('8c881986-cde0-d465-b73c-46d587b40d95', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците-1', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-29 14:48:11', '2007-08-30 08:22:20', NULL, '1', '1', 'Книга Компанията на паяците-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('91d20fda-97eb-e050-6801-46d5873a6fd6', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците-1', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-29 14:48:11', '2007-08-30 08:22:20', NULL, '1', '1', 'Книга Компанията на паяците-1-Лепене', NULL, NULL, NULL, '25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('bc60cdfb-b9de-3193-cf80-46d69466fa07', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-30 09:59:05', '2007-08-30 10:36:31', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('f6df0567-7e1c-dc42-7d03-46d69db89c2f', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-30 10:36:31', '2007-08-30 10:37:18', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('14705b3b-f02e-23ed-ded6-46d69d62f053', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-30 10:36:31', '2007-08-30 10:37:18', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('c261edda-e80b-5842-3866-46d69d0870fa', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-30 10:37:18', '2007-08-30 10:40:38', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('c769ee8b-7bfb-309e-a7a7-46d69deeddfb', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-30 10:37:18', '2007-08-30 10:40:38', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('ba8c5316-c456-ef4a-96e5-46d69e4fc100', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-30 10:40:38', '2007-08-30 10:41:22', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('bfa1d1b2-e917-6e9b-1360-46d69e165462', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-30 10:40:38', '2007-08-30 10:41:22', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('b506ab3e-b62b-e8ca-d444-46d69e2052e5', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-30 10:41:22', '2007-08-30 12:57:58', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('ba938382-03b8-c4b3-820e-46d69e7d25a6', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-30 10:41:22', '2007-08-30 12:57:58', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('d86b72a7-29c1-706d-6ae1-46d6a949640e', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Тяло - Книга Компанията на паяците', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-30 11:25:08', '2007-08-30 11:30:23', NULL, '1', '1', 'Тяло - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('ddebe0e0-5754-f694-0996-46d6a9b0f735', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Тяло - Книга Компанията на паяците', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-30 11:25:08', '2007-08-30 11:30:23', NULL, '1', '1', 'Тяло - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('c5e33bab-a4ea-b61b-8ff9-46d6aa145246', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Тяло - Книга Компанията на паяците', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-30 11:30:23', '2007-08-30 12:36:47', NULL, '1', '1', 'Тяло - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('cb8e7c3e-1565-8f45-9bbf-46d6aa7ec42d', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Тяло - Книга Компанията на паяците', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-30 11:30:23', '2007-08-30 12:36:47', NULL, '1', '1', 'Тяло - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('c23e0716-f2dd-42e4-5559-46d6b9f16f26', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Тяло - Книга Компанията на паяците', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-30 12:36:47', '2007-08-30 12:38:43', NULL, '1', '1', 'Тяло - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('c791900a-f9de-08eb-df45-46d6b91ca27b', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Тяло - Книга Компанията на паяците', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-30 12:36:47', '2007-08-30 12:38:43', NULL, '1', '1', 'Тяло - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('6e42631a-ebde-5a45-038f-46d6babebb50', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Тяло - Книга Компанията на паяците', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-30 12:38:43', '2007-08-30 12:44:06', NULL, '1', '1', 'Тяло - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('738dde02-4381-88e1-bce3-46d6ba82f9b7', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Тяло - Книга Компанията на паяците', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-30 12:38:43', '2007-08-30 12:44:06', NULL, '1', '1', 'Тяло - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('33a909fa-7d33-ab45-31b1-46d6bb38f9f9', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Тяло - Книга Компанията на паяците', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-30 12:44:06', '2007-08-30 15:13:43', NULL, '1', '1', 'Тяло - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('3902747a-926b-a230-e505-46d6bb342b8b', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Тяло - Книга Компанията на паяците', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-30 12:44:06', '2007-08-30 15:13:43', NULL, '1', '1', 'Тяло - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('38162136-f444-0856-2183-46d6be8a857b', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-30 12:57:58', '2007-08-30 14:49:25', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('3d8bd9a2-ff57-2f02-73ea-46d6be129fe9', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-30 12:57:58', '2007-08-30 14:49:25', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('4062519c-20c8-0a96-778d-46d6d81e5749', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-30 14:49:25', '2007-08-30 14:49:25', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `productoperations` VALUES ('45c4d224-1744-13be-8bb5-46d6d8a54a93', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-30 14:49:25', '2007-08-30 14:49:25', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `productoperations` VALUES ('a8b3e7a5-424d-36fb-3078-46d6dc2d0943', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Тяло2 - Компанията на паяците-3', '8f50860d-16b5-5491-e451-46d6dce0fc06', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-30 15:05:22', '2007-08-30 15:12:05', NULL, '1', '1', 'Тяло2 - Компанията на паяците-3-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('ae0440cb-d94c-976f-8687-46d6dc86cb4f', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Тяло2 - Компанията на паяците-3', '8f50860d-16b5-5491-e451-46d6dce0fc06', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-30 15:05:22', '2007-08-30 15:12:05', NULL, '1', '1', 'Тяло2 - Компанията на паяците-3-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('7842586c-b1fd-d3d6-2897-46d6debdd90a', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Тяло2 - Компанията на паяците-3', '8f50860d-16b5-5491-e451-46d6dce0fc06', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-30 15:12:05', '2007-08-31 06:51:12', NULL, '1', '1', 'Тяло2 - Компанията на паяците-3-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('7e282709-a98a-767f-5f99-46d6de581b16', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Тяло2 - Компанията на паяците-3', '8f50860d-16b5-5491-e451-46d6dce0fc06', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-30 15:12:05', '2007-08-31 06:51:12', NULL, '1', '1', 'Тяло2 - Компанията на паяците-3-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('e9b0f3f4-e482-9f36-66f6-46d6def46e94', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Тяло - Книга Компанията на паяците', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-30 15:13:43', '2007-08-31 12:02:18', NULL, '1', '1', 'Тяло - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('ef010938-d410-5cab-7818-46d6de6a73e8', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Тяло - Книга Компанията на паяците', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-30 15:13:43', '2007-08-31 12:02:18', NULL, '1', '1', 'Тяло - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('be9d2fe6-1133-46ac-3afa-46d7baea3ab4', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Тяло2 - Компанията на паяците', '8f50860d-16b5-5491-e451-46d6dce0fc06', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-31 06:51:12', '2007-08-31 06:51:12', NULL, '1', '1', 'Тяло2 - Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `productoperations` VALUES ('c3a16dfa-4a4f-70f9-a2e5-46d7ba41e1e8', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Тяло2 - Компанията на паяците', '8f50860d-16b5-5491-e451-46d6dce0fc06', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-31 06:51:12', '2007-08-31 06:51:12', NULL, '1', '1', 'Тяло2 - Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `productoperations` VALUES ('708b2518-562b-8019-ee71-46d7cc3dd4a3', NULL, 'ccc6aadc-4f3c-33b3-7fad-46d7c97e3ec4', 'Листовки ДЗИ-1', 'b2b4f119-b162-e477-9f78-46d7cac9f270', NULL, NULL, 'Рязане', '273450b1-677f-fe2a-7b99-46d7cb1bdf30', '2007-08-31 08:06:56', '2007-08-31 08:10:28', NULL, '1', '1', 'Листовки ДЗИ-1-Рязане', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('759765c2-623b-2c03-a529-46d7cc74e7ce', NULL, 'ccc6aadc-4f3c-33b3-7fad-46d7c97e3ec4', 'Листовки ДЗИ-1', 'b2b4f119-b162-e477-9f78-46d7cac9f270', NULL, NULL, 'Опаковане', '2a31ebad-52ef-a8c0-dda8-46b0b9a4cb4a', '2007-08-31 08:06:56', '2007-08-31 08:10:28', NULL, '1', '1', 'Листовки ДЗИ-1-Опаковане', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('b5697909-3ae6-cba5-016e-46d7ccaa0cba', NULL, 'ccc6aadc-4f3c-33b3-7fad-46d7c97e3ec4', 'Листовки ДЗИ-1', 'b2b4f119-b162-e477-9f78-46d7cac9f270', NULL, NULL, 'Рязане', '273450b1-677f-fe2a-7b99-46d7cb1bdf30', '2007-08-31 08:10:28', '2007-08-31 12:23:54', NULL, '1', '1', 'Листовки ДЗИ-1-Рязане', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('b89b8ef1-5a4f-a2fe-d184-46d7ccd04512', NULL, 'ccc6aadc-4f3c-33b3-7fad-46d7c97e3ec4', 'Листовки ДЗИ-1', 'b2b4f119-b162-e477-9f78-46d7cac9f270', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-31 08:10:28', '2007-08-31 12:23:54', NULL, '1', '1', 'Листовки ДЗИ-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('bdd5f7c0-8d5b-9cc5-591b-46d7cc9a56bb', NULL, 'ccc6aadc-4f3c-33b3-7fad-46d7c97e3ec4', 'Листовки ДЗИ-1', 'b2b4f119-b162-e477-9f78-46d7cac9f270', NULL, NULL, 'Опаковане', '2a31ebad-52ef-a8c0-dda8-46b0b9a4cb4a', '2007-08-31 08:10:28', '2007-08-31 12:23:54', NULL, '1', '1', 'Листовки ДЗИ-1-Опаковане', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('c0ba274f-f308-d8bf-33e0-46d7ccf1b575', NULL, 'ccc6aadc-4f3c-33b3-7fad-46d7c97e3ec4', 'Листовки ДЗИ-1', 'b2b4f119-b162-e477-9f78-46d7cac9f270', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-31 08:10:28', '2007-08-31 12:23:54', NULL, '1', '1', 'Листовки ДЗИ-1-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('9b4bf85f-add9-1e30-b405-46d8037500eb', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Тяло - Книга Компанията на паяците', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-31 12:02:18', '2007-08-31 12:02:18', NULL, '1', '1', 'Тяло - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `productoperations` VALUES ('a0da4815-c626-e22d-17ef-46d80300a6e1', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Тяло - Книга Компанията на паяците', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-31 12:02:18', '2007-08-31 12:02:18', NULL, '1', '1', 'Тяло - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `productoperations` VALUES ('9ed48223-a452-851c-58e9-46d808fe12f0', NULL, 'ccc6aadc-4f3c-33b3-7fad-46d7c97e3ec4', 'Листовки ДЗИ-1', 'b2b4f119-b162-e477-9f78-46d7cac9f270', NULL, NULL, 'Рязане', '273450b1-677f-fe2a-7b99-46d7cb1bdf30', '2007-08-31 12:23:54', '2007-08-31 12:32:34', NULL, '1', '1', 'Листовки ДЗИ-1-Рязане', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('a1cbfdb2-6303-a0b8-5fac-46d808e81469', NULL, 'ccc6aadc-4f3c-33b3-7fad-46d7c97e3ec4', 'Листовки ДЗИ-1', 'b2b4f119-b162-e477-9f78-46d7cac9f270', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-31 12:23:54', '2007-08-31 12:32:34', NULL, '1', '1', 'Листовки ДЗИ-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('a77b9114-9ade-aaa0-4bb5-46d80875f5a2', NULL, 'ccc6aadc-4f3c-33b3-7fad-46d7c97e3ec4', 'Листовки ДЗИ-1', 'b2b4f119-b162-e477-9f78-46d7cac9f270', NULL, NULL, 'Опаковане', '2a31ebad-52ef-a8c0-dda8-46b0b9a4cb4a', '2007-08-31 12:23:54', '2007-08-31 12:32:34', NULL, '1', '1', 'Листовки ДЗИ-1-Опаковане', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('aa69938f-074e-b909-051b-46d808ca865a', NULL, 'ccc6aadc-4f3c-33b3-7fad-46d7c97e3ec4', 'Листовки ДЗИ-1', 'b2b4f119-b162-e477-9f78-46d7cac9f270', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-31 12:23:54', '2007-08-31 12:32:34', NULL, '1', '1', 'Листовки ДЗИ-1-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('280300c9-c2f2-09cd-b567-46d80a6657a7', NULL, 'ccc6aadc-4f3c-33b3-7fad-46d7c97e3ec4', 'Листовки ДЗИ-1', 'b2b4f119-b162-e477-9f78-46d7cac9f270', NULL, NULL, 'Рязане', '273450b1-677f-fe2a-7b99-46d7cb1bdf30', '2007-08-31 12:32:34', '2007-08-31 12:42:56', NULL, '1', '1', 'Листовки ДЗИ-1-Рязане', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('2d1503e5-7f94-1c1a-37af-46d80a487871', NULL, 'ccc6aadc-4f3c-33b3-7fad-46d7c97e3ec4', 'Листовки ДЗИ-1', 'b2b4f119-b162-e477-9f78-46d7cac9f270', NULL, NULL, 'Опаковане', '2a31ebad-52ef-a8c0-dda8-46b0b9a4cb4a', '2007-08-31 12:32:34', '2007-08-31 12:42:56', NULL, '1', '1', 'Листовки ДЗИ-1-Опаковане', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('14fdcb23-713d-03e1-3ba9-46d80c4116b5', NULL, 'ccc6aadc-4f3c-33b3-7fad-46d7c97e3ec4', 'Листовки ДЗИ-1', 'b2b4f119-b162-e477-9f78-46d7cac9f270', NULL, NULL, 'Рязане', '273450b1-677f-fe2a-7b99-46d7cb1bdf30', '2007-08-31 12:42:56', '2007-08-31 12:44:28', NULL, '1', '1', 'Листовки ДЗИ-1-Рязане', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('17cb6763-fce1-a904-0e83-46d80c2acf04', NULL, 'ccc6aadc-4f3c-33b3-7fad-46d7c97e3ec4', 'Листовки ДЗИ-1', 'b2b4f119-b162-e477-9f78-46d7cac9f270', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-31 12:42:56', '2007-08-31 12:44:28', NULL, '1', '1', 'Листовки ДЗИ-1-ВШМ', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('1d143c51-af83-6d19-4983-46d80c1e50ee', NULL, 'ccc6aadc-4f3c-33b3-7fad-46d7c97e3ec4', 'Листовки ДЗИ-1', 'b2b4f119-b162-e477-9f78-46d7cac9f270', NULL, NULL, 'Опаковане', '2a31ebad-52ef-a8c0-dda8-46b0b9a4cb4a', '2007-08-31 12:42:56', '2007-08-31 12:44:28', NULL, '1', '1', 'Листовки ДЗИ-1-Опаковане', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('20055e83-84ed-be99-6a59-46d80c1cea5a', NULL, 'ccc6aadc-4f3c-33b3-7fad-46d7c97e3ec4', 'Листовки ДЗИ-1', 'b2b4f119-b162-e477-9f78-46d7cac9f270', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-31 12:42:56', '2007-08-31 12:44:28', NULL, '1', '1', 'Листовки ДЗИ-1-Лепене', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` VALUES ('9ed00fe2-b155-56ec-8f16-46d80da2f534', NULL, 'ccc6aadc-4f3c-33b3-7fad-46d7c97e3ec4', 'Листовки ДЗИ-1', 'b2b4f119-b162-e477-9f78-46d7cac9f270', NULL, NULL, 'Рязане', '273450b1-677f-fe2a-7b99-46d7cb1bdf30', '2007-08-31 12:44:28', '2007-08-31 12:44:28', NULL, '1', '1', 'Листовки ДЗИ-1-Рязане', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `productoperations` VALUES ('a1a63e5d-12df-2921-5297-46d80d4c5c16', NULL, 'ccc6aadc-4f3c-33b3-7fad-46d7c97e3ec4', 'Листовки ДЗИ-1', 'b2b4f119-b162-e477-9f78-46d7cac9f270', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-31 12:44:28', '2007-08-31 12:44:28', NULL, '1', '1', 'Листовки ДЗИ-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `productoperations` VALUES ('a6d6dd88-9c33-7f6a-67a8-46d80d6bfaf6', NULL, 'ccc6aadc-4f3c-33b3-7fad-46d7c97e3ec4', 'Листовки ДЗИ-1', 'b2b4f119-b162-e477-9f78-46d7cac9f270', NULL, NULL, 'Опаковане', '2a31ebad-52ef-a8c0-dda8-46b0b9a4cb4a', '2007-08-31 12:44:28', '2007-08-31 12:44:28', NULL, '1', '1', 'Листовки ДЗИ-1-Опаковане', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `productoperations` VALUES ('a9b0272a-9a1d-a453-f81e-46d80dde0640', NULL, 'ccc6aadc-4f3c-33b3-7fad-46d7c97e3ec4', 'Листовки ДЗИ-1', 'b2b4f119-b162-e477-9f78-46d7cac9f270', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-31 12:44:28', '2007-08-31 12:44:28', NULL, '1', '1', 'Листовки ДЗИ-1-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

-- 
-- Структура на таблица `products`
-- 

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

INSERT INTO `products` VALUES ('a5a08eeb-0be7-f066-2677-464d699203bc', '2007-05-18 08:52:29', '2007-08-30 07:41:43', '1', '1', NULL, 'Артком', NULL, NULL, '1', 'PRD10000', NULL, 'PRD', 10000, 'Magazine', NULL, NULL, 1, NULL, NULL, NULL, 'Waiting for Estimate', 'No', NULL, NULL, 3000, 70, 100, 'Yes', 'email', 'Каталог Пресфото', NULL, 1);
INSERT INTO `products` VALUES ('dceaf769-3f1a-e605-2df3-4678f3dbd10b', '2007-06-20 09:29:22', '2007-08-30 07:41:44', '1', '1', NULL, 'Format Vision', NULL, 'Иван Иванов', '1', 'PRD10001', NULL, 'PRD', 10001, 'Magazine', NULL, NULL, 1, '2007-06-24', 2, NULL, 'Waiting for Estimate', 'Yes', NULL, 'Болен Здрав Носи', 10000, NULL, NULL, 'Yes', 'ftp', 'Първо издание', NULL, 1);
INSERT INTO `products` VALUES ('5ad9406d-87fe-c009-3c02-46c940616ee7', '2007-08-20 07:19:56', '2007-08-30 08:17:13', '1', '1', NULL, 'Марио Николов', NULL, NULL, '1', 'PRD10002', NULL, 'PRD', 10002, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'Waiting for Estimate', 'No', NULL, NULL, 400, NULL, NULL, 'No', 'email', 'Каталог-01-2007', NULL, 1);
INSERT INTO `products` VALUES ('855ecc8f-76e5-b3d5-4691-46c9438ed9c5', '2007-08-20 07:30:27', '2007-08-20 07:34:20', '1', '1', NULL, 'Артком', NULL, NULL, '1', 'PRD10003', NULL, 'PRD', 10003, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'Waiting for Estimate', 'No', NULL, NULL, NULL, NULL, NULL, 'No', 'email', 'asdasd', NULL, 1);
INSERT INTO `products` VALUES ('c390cd3c-e848-d864-a22c-46c9433575bc', '2007-08-20 07:31:15', '2007-08-20 07:34:20', '1', '1', NULL, 'Артком', NULL, NULL, '1', 'PRD10004', NULL, 'PRD', 10004, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'Waiting for Estimate', 'No', NULL, NULL, NULL, NULL, NULL, 'No', 'email', 'asdsa', NULL, 1);
INSERT INTO `products` VALUES ('87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', '2007-08-29 12:31:36', '2007-08-29 12:31:36', '1', '1', 'a4728179-5436-820e-3eaf-46d5667efb56', 'Капитал', '7449dc44-5cfa-cec1-9a86-46d566c72c6e', 'Марио Коев', '1', 'PRD10003', NULL, 'PRD', 10003, 'Book', NULL, NULL, 1, '2007-08-08', NULL, NULL, 'Waiting for Estimate', 'No', NULL, 'Компанията на паяците', 500, NULL, NULL, 'No', 'email', 'Книга Компанията на паяците', NULL, 0);
INSERT INTO `products` VALUES ('ccc6aadc-4f3c-33b3-7fad-46d7c97e3ec4', '2007-08-31 07:56:35', '2007-08-31 07:56:35', '1', '1', 'eb2e4078-4422-c298-5679-46d7c9e0919f', 'Начо', '80f6ca47-d6b2-401e-9135-46d7c9d84a0f', 'Николай Рачев', '1', 'PRD10004', NULL, 'PRD', 10004, 'Business card', NULL, NULL, 1, NULL, NULL, NULL, 'Waiting for Estimate', 'No', NULL, 'Листовки ДЗИ', 40000, NULL, NULL, 'No', 'email', 'Листовки ДЗИ', NULL, 0);

-- --------------------------------------------------------

-- 
-- Структура на таблица `products_components`
-- 

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
  `paperpress_format` varchar(50) default NULL,
  `paperpress_size_x` float default '0',
  `paperpress_size_y` float default '0',
  `press_format` varchar(36) default NULL,
  `press_size_x` float NOT NULL default '0',
  `press_size_y` float NOT NULL default '0',
  `volume` int(36) default NULL,
  `quantity` int(36) default NULL,
  `color_side_a` int(36) default NULL,
  `color_side_b` int(36) default NULL,
  `machine` varchar(36) default NULL,
  `price` varchar(50) default NULL,
  `paper_rate_id` varchar(36) default NULL,
  `paper_rate` varchar(50) default NULL,
  `rate_price` varchar(30) default NULL,
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

INSERT INTO `products_components` VALUES ('4769ac12-e56f-a792-07af-4652c986db5f', '2007-05-22 10:43:38', '2007-08-30 07:42:09', '1', '1', '1', 'Каталог "Пресфото"-1', NULL, '', NULL, 'a4cb4337-447a-2e72-b569-464d64ac31bf', NULL, 'PRD10000-1', 'PRD', 1, 'Хартия - Мат - 70х100 -170гр', 'Body', NULL, 70, 100, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, 0, NULL, 0, 0, 88, NULL, NULL, NULL, 'Shinohara', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'off', 1);
INSERT INTO `products_components` VALUES ('598457bc-776a-9154-9b63-4652c9ce58cb', '2007-05-22 10:45:43', '2007-08-30 07:42:09', '1', '1', '1', 'Корица Пресфото', NULL, '', 'Това е корицата на каталога Пресфото', 'a4cb4337-447a-2e72-b569-464d64ac31bf', 'No', 'PRD10000-2', 'PRD', 2, 'Хартия - Мат - 70х100 -170гр', 'Cover', 'GTO', 35, 50, 'GTO', 'GTO', 35, 50, 35, 50, '', 0, 0, 'GTO', 35, 50, 5, 2000, 4, 4, 'GTO', '0.4', 'b9229202-1196-26cd-e0ef-464d65246ea2', NULL, NULL, '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'К1 Партнерс', 1, NULL, NULL, 'off', 1);
INSERT INTO `products_components` VALUES ('8bf7767a-67fb-4332-3f8d-46d69175660b', '2007-08-30 09:42:48', '2007-08-30 09:59:31', '1', '1', '1', 'Книга Компанията на паяците-3', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', NULL, '13dfa91a-0374-7e5a-f194-46d568e8137b', NULL, 'PRD10003-3', 'PRD', 3, '70 x 100 - офсет', 'Form', 'GTO', 15, 21, 'GTO', 'GTO', 35, 50, 35, 50, '', 0, 0, NULL, 0, 0, 5, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1);
INSERT INTO `products_components` VALUES ('629da741-d120-307b-0f49-46c94438e8c8', '2007-08-20 07:38:15', '2007-08-30 07:42:10', '1', '1', '1', 'Каталог-01-2007-1', NULL, '', NULL, 'afdedf2d-1d0d-439f-d9a8-464d656ee6d3', 'No', 'PRD10002-1', 'PRD', 1, 'Хартия - Мат - 70х100 -300гр', 'Body', 'A5', 15, 21, 'A5', 'A5', 15, 21, 15, 21, '', 0, 0, 'GTO', 35, 50, 8, 400, 4, 4, NULL, '0.385', '2fe515e8-56ba-842f-090b-46c93f63c652', NULL, NULL, '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'К1 Партнерс', 1, NULL, NULL, NULL, 1);
INSERT INTO `products_components` VALUES ('c8a58adb-cda5-467b-3c4a-46d686d1c111', '2007-08-30 08:57:26', '2007-08-30 14:49:24', '1', '1', '1', 'Корица - Книга Компанията на паяците', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', NULL, '6e81e697-e379-92dc-732c-46d6861ae393', 'No', 'PRD10003-2', 'PRD', 2, 'Опаковъчен картон 70x100', 'Cover', '-', 11, 18, '-', '-', 11, 18, 11, 18, '', 0, 0, 'GTO', 35, 50, 4, 500, 4, 0, NULL, '0.4', '74294374-69e4-a24d-3b1f-46d6861808d9', 'Опаковъчен картон 70x100', 'Лв 0.40', '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'К1 Партнерс', 1, NULL, NULL, NULL, 0);
INSERT INTO `products_components` VALUES ('90527d21-6801-50aa-5e6c-46d43a4c0c12', '2007-08-28 15:10:27', '2007-08-30 07:42:10', '1', '1', '1', 'Каталог Пресфото-3', NULL, '', NULL, 'afdedf2d-1d0d-439f-d9a8-464d656ee6d3', NULL, 'PRD10000-3', 'PRD', 3, 'Хартия - Мат - 70х100 -300гр', 'Form', 'Shi', 50, 70, 'Shi', 'Shi', 50, 70, 50, 70, '', 0, 0, NULL, 0, 0, 55, NULL, 4, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1);
INSERT INTO `products_components` VALUES ('7d0627b7-e9f0-ab14-cfbd-46d43bd1e411', '2007-08-28 15:11:37', '2007-08-30 07:42:10', '1', '1', '1', 'Каталог Пресфото-4', NULL, '', NULL, 'afdedf2d-1d0d-439f-d9a8-464d656ee6d3', NULL, 'PRD10000-4', 'PRD', 4, 'Хартия - Мат - 70х100 -300гр', 'Body', 'GTO', 35, 50, 'GTO', 'GTO', 35, 50, 35, 50, '', 0, 0, NULL, 0, 0, 44, NULL, 4, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1);
INSERT INTO `products_components` VALUES ('a4512284-554b-cd49-c7ca-46d568fa0e6c', '2007-08-29 12:37:28', '2007-08-31 12:02:18', '1', '1', '1', 'Тяло - Книга Компанията на паяците', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', NULL, '13dfa91a-0374-7e5a-f194-46d568e8137b', 'No', 'PRD10003-1', 'PRD', 1, '70 x 100 - офсет', 'Body', '-', 11, 18, '-', '-', 11, 18, 11, 18, 'Shi', 50, 70, 'Shi', 50, 70, 200, 500, 1, 1, NULL, '0.1', '146cb4fd-b430-8dd3-9673-46d5683fc5dd', '70 x 100 - офсет', 'Лв 0.10', '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'К1 Партнерс', 1, NULL, NULL, NULL, 0);
INSERT INTO `products_components` VALUES ('8f50860d-16b5-5491-e451-46d6dce0fc06', '2007-08-30 15:02:43', '2007-08-31 06:51:12', '1', '1', '1', 'Тяло2 - Компанията на паяците', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', NULL, '13dfa91a-0374-7e5a-f194-46d568e8137b', 'No', 'PRD10003-3', 'PRD', 3, '70 x 100 - офсет', 'Body', '-', 11, 18, '-', '-', 11, 18, 11, 18, '', 0, 0, 'GTO', 35, 50, 1, 500, 1, 1, NULL, '0.1', '146cb4fd-b430-8dd3-9673-46d5683fc5dd', '70 x 100 - офсет', 'Лв 0.10', '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'К1 Партнерс', 1, NULL, NULL, NULL, 0);
INSERT INTO `products_components` VALUES ('b2b4f119-b162-e477-9f78-46d7cac9f270', '2007-08-31 08:00:52', '2007-08-31 12:44:28', '1', '1', '1', 'Листовки ДЗИ-1', NULL, 'ccc6aadc-4f3c-33b3-7fad-46d7c97e3ec4', NULL, '1275003c-ecc0-48d5-aa67-46d7cab64165', 'No', 'PRD10004-1', 'PRD', 1, '60 х 90 - мат', 'Flayer', '-', 14, 20, '-', '-', 14.5, 20.7, 14.9, 21.1, '-', 30, 45, 'Shi', 50, 70, 2, 40000, 3, 3, NULL, '0.16', 'b501e3f9-7106-e981-1832-46d7ca305f77', '60 х 90 - мат', 'Лв 0.16', '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'К1 Партнерс', 1, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

-- 
-- Структура на таблица `products_pricebooks`
-- 

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

INSERT INTO `products_relation` VALUES ('54b014a3-bde0-c79e-6100-46543f8debaa', 'a5a08eeb-0be7-f066-2677-464d699203bc', '1ae804e8-06a5-ed75-94d3-45d194878ef8', 'Contacts', 1, '2007-08-30 07:41:44');
INSERT INTO `products_relation` VALUES ('28720907-315f-6de8-cf5a-4678f3712a96', 'dceaf769-3f1a-e605-2df3-4678f3dbd10b', '67ef6d1c-cd37-03b8-0d82-4678e72f46e8', 'Contacts', 1, '2007-08-30 07:41:44');
INSERT INTO `products_relation` VALUES ('7af6dec9-15a2-f37f-a5ad-467945679bf3', 'dceaf769-3f1a-e605-2df3-4678f3dbd10b', '67ef6d1c-cd37-03b8-0d82-4678e72f46e8', 'Contacts', 1, '2007-08-30 07:41:44');
INSERT INTO `products_relation` VALUES ('a0e28ae8-d3bc-9883-dad3-46d5672b047e', '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', '7449dc44-5cfa-cec1-9a86-46d566c72c6e', 'Contacts', 0, '2007-08-29 12:31:36');
INSERT INTO `products_relation` VALUES ('dff15e5a-0223-f097-65b4-46d7c925f3dc', 'ccc6aadc-4f3c-33b3-7fad-46d7c97e3ec4', '80f6ca47-d6b2-401e-9135-46d7c9d84a0f', 'Contacts', 0, '2007-08-31 07:56:35');

-- --------------------------------------------------------

-- 
-- Структура на таблица `project`
-- 

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
INSERT INTO `project_relation` VALUES ('a4edd575-bd27-9777-0c7c-45ab8df5e775', 'bf06ff96-299f-9e51-2a8f-45ab8caafa90', 'af1043aa-69c5-a0ed-61ff-45ab42c669a3', 'Accounts', 1, '2007-08-30 08:17:15');

-- --------------------------------------------------------

-- 
-- Структура на таблица `project_task`
-- 

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

INSERT INTO `quotes` VALUES ('8744347e-fd60-6b8e-d9a1-4666bd16fcb4', 'Субект', 'QTE10000', 'QTE', '10000', NULL, NULL, NULL, 'Format Vision', '-99', 'Cash', 'Net 15', 'CIF', 'Draft', NULL, '2007-06-29', '1', 'Петър Петров', '1ae804e8-06a5-ed75-94d3-45d194878ef8', 'Бул. България №221', NULL, '4400', NULL, NULL, NULL, 0, 1, '2007-06-06 13:58:16', '2007-08-31 07:07:40', '1');
INSERT INTO `quotes` VALUES ('32efa8ec-e7c3-543b-ddb4-468b79379fb4', 'Оферта', 'QTE10001', 'QTE', '10001', NULL, NULL, NULL, 'Артком', '-99', NULL, NULL, NULL, 'Draft', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2007-07-04 10:40:13', '2007-08-31 07:07:40', '1');

-- --------------------------------------------------------

-- 
-- Структура на таблица `quotes_documents`
-- 

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
INSERT INTO `ratefilm` VALUES ('319a1633-aa9f-6b4e-df98-469628a1c043', '2007-07-12 13:11:04', '2007-08-30 07:51:19', '1', '1', '1', 'ФИЛМ 35х50', 3.75, 'GTO', 35, 50, NULL, 0);
INSERT INTO `ratefilm` VALUES ('7e06052d-2e00-981e-a279-46d676109bb1', '2007-08-30 07:50:42', '2007-08-30 07:50:42', '1', '1', '1', 'ФИЛМ 50х70', 7.5, 'Shi', 50, 70, NULL, 0);

-- --------------------------------------------------------

-- 
-- Структура на таблица `rateplate`
-- 

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

INSERT INTO `rateplate` VALUES ('a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', '2007-07-12 13:52:57', '2007-08-30 07:54:00', '1', '1', '1', 'CTP 35x50x10', 7.5, 10, 'GTO', 35, 50, NULL, 0);
INSERT INTO `rateplate` VALUES ('3f7e93cd-3491-675f-3186-46d56ac29df0', '2007-08-29 12:47:28', '2007-08-30 07:53:39', '1', '1', '1', 'CTP 50х70х10', 15, 10, 'Shi', 50, 70, NULL, 0);
INSERT INTO `rateplate` VALUES ('e5fe5458-fe8d-bdc1-d227-46d6b9dd62e7', '2007-08-30 12:35:39', '2007-08-30 12:37:57', '1', '1', '1', 'CTP 50х70х10 A', 17, 10, 'Shi', 50, 70, NULL, 0);

-- --------------------------------------------------------

-- 
-- Структура на таблица `relationships`
-- 

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

INSERT INTO `supplylines` VALUES ('cbedcbc2-61cd-a8f6-606d-46531b240628', 'ca5f7364-bc69-fa1c-aa4d-46531b96bfe9', 'SPL10000', '2007-05-31', NULL, 'In Progress', NULL, NULL, 'Chantellor 100', '1', NULL, 0, '2007-05-22 16:35:39', '2007-08-30 07:43:41', '1', '5.00', '0.5', '10');

-- --------------------------------------------------------

-- 
-- Структура на таблица `tasks`
-- 

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

INSERT INTO `tasks` VALUES ('4f19c87b-f578-7544-95ba-45e80e218576', '2007-03-02 11:47:30', '2007-08-30 08:17:14', '1', '1', '1', 'Test Task', 'Completed', 'off', '2007-03-03', '10:00:00', 'off', NULL, NULL, NULL, NULL, NULL, 'High', NULL, 1);
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
INSERT INTO `tasks` VALUES ('e4a32ca1-e258-66f3-bec7-46cec7c0744a', '2007-08-24 11:54:49', '2007-08-30 11:53:46', '1', '1', '1', 'ояао', 'Not Started', 'off', NULL, NULL, 'off', NULL, NULL, NULL, NULL, NULL, 'High', NULL, 0);

-- --------------------------------------------------------

-- 
-- Структура на таблица `tracker`
-- 

CREATE TABLE `tracker` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` varchar(36) default NULL,
  `module_name` varchar(25) default NULL,
  `item_id` varchar(36) default NULL,
  `item_summary` varchar(255) default NULL,
  `date_modified` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=4503 ;

-- 
-- Дъмп (схема) на данните в таблицата `tracker`
-- 

INSERT INTO `tracker` VALUES (26, '1', 'ProductComponents', '7aca0f09-6eb9-3564-1d83-459e69bba094', 'comp3', '2007-01-08 14:02:16');
INSERT INTO `tracker` VALUES (1916, '177bd6bb-665d-cc61-4d82-45ab422290d3', 'Employees', '177bd6bb-665d-cc61-4d82-45ab422290d3', 'Demo User', '2007-03-02 14:42:35');
INSERT INTO `tracker` VALUES (4459, '1', 'ProductComponents', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'Корица - Книга Компанията на паяците', '2007-08-31 07:04:32');
INSERT INTO `tracker` VALUES (4460, '1', 'ComponentEstimate', '9281959b-7f35-8782-9dd0-46d7bd0cb02b', 'Калкулация-Корица - Книга Компанията на паяците', '2007-08-31 07:04:55');
INSERT INTO `tracker` VALUES (4482, '1', 'Products', '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците', '2007-08-31 12:08:45');
INSERT INTO `tracker` VALUES (4465, '1', 'Operations', '2a31ebad-52ef-a8c0-dda8-46b0b9a4cb4a', 'Опаковане', '2007-08-31 08:05:20');
INSERT INTO `tracker` VALUES (4457, '1', 'ComponentEstimate', '167fba60-58a0-7a15-0346-46d7badcfd25', 'Калкулация-Тяло2 - Компанията на паяците', '2007-08-31 06:52:30');
INSERT INTO `tracker` VALUES (4466, '1', 'Operations', '273450b1-677f-fe2a-7b99-46d7cb1bdf30', 'Рязане', '2007-08-31 08:06:02');
INSERT INTO `tracker` VALUES (4497, '1', 'ProductComponents', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', 'Тяло - Книга Компанията на паяците', '2007-08-31 12:40:25');
INSERT INTO `tracker` VALUES (4502, '1', 'ProductComponents', 'b2b4f119-b162-e477-9f78-46d7cac9f270', 'Листовки ДЗИ-1', '2007-08-31 12:44:29');
INSERT INTO `tracker` VALUES (4467, '1', 'Products', 'ccc6aadc-4f3c-33b3-7fad-46d7c97e3ec4', 'Листовки ДЗИ', '2007-08-31 08:06:17');

-- --------------------------------------------------------

-- 
-- Структура на таблица `upgrade_history`
-- 

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
INSERT INTO `user_preferences` VALUES ('a5787cfa-bc08-3aeb-93dd-46baf024f13c', 'Paperwaste2_PAPERWASTE', 0, '2007-08-09 10:44:55', '2007-08-29 12:49:26', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czo0OiJuYW1lIjtzOjk6InNvcnRPcmRlciI7czozOiJBU0MiO319');
INSERT INTO `user_preferences` VALUES ('425a9337-e1ae-f46c-5c27-46bc612c06bf', 'Rateplate2_RATEPLATE', 0, '2007-08-10 13:02:50', '2007-08-10 13:02:50', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0=');
INSERT INTO `user_preferences` VALUES ('8702663a-82e3-cd1d-538b-46bc6dd143bd', 'Ratefilm2_RATEFILM', 0, '2007-08-10 13:52:45', '2007-08-10 13:52:45', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0=');
INSERT INTO `user_preferences` VALUES ('c6928202-4091-e9e5-59b9-46bac9f0ad56', 'Prices2_PRICE', 0, '2007-08-09 08:00:13', '2007-08-09 08:00:13', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0=');
INSERT INTO `user_preferences` VALUES ('9cc0d457-ed62-f5c6-84b2-46b98a8ef57c', 'Presspricelist2_PRESSPRICELIST', 0, '2007-08-08 09:19:34', '2007-08-30 08:14:51', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxNzoicHJlc3NtYWNoaW5lX25hbWUiO3M6OToic29ydE9yZGVyIjtzOjM6IkFTQyI7fX0=');
INSERT INTO `user_preferences` VALUES ('9ffa1311-c34f-8b48-88d3-46b864559b1a', 'ProductOperations2_PRODUCTOPERATION', 0, '2007-08-07 12:24:09', '2007-08-07 12:24:09', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0=');
INSERT INTO `user_preferences` VALUES ('bbd2cda4-3cdb-33a6-54f3-46b84b3d4391', 'Home2_MEETING', 0, '2007-08-07 10:38:47', '2007-08-07 10:38:47', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0=');
INSERT INTO `user_preferences` VALUES ('bc2a2f15-0e39-ab88-459d-46b84beff7e1', 'Home2_LEAD', 0, '2007-08-07 10:38:47', '2007-08-07 10:38:47', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0=');
INSERT INTO `user_preferences` VALUES ('bddb3603-eee4-7bf1-4cf8-46b84b508451', 'Home2_CASE', 0, '2007-08-07 10:38:47', '2007-08-07 10:38:47', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0=');
INSERT INTO `user_preferences` VALUES ('be45f44e-fe19-062a-b7fd-46b84bad862f', 'Home2_OPPORTUNITY', 0, '2007-08-07 10:38:47', '2007-08-07 10:38:47', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMToiZGF0ZV9jbG9zZWQiO3M6OToic29ydE9yZGVyIjtzOjM6IkFTQyI7fX0=');
INSERT INTO `user_preferences` VALUES ('bea47352-0895-4a0b-f9cb-46b84b14c34c', 'Home2_ACCOUNT', 0, '2007-08-07 10:38:47', '2007-08-07 10:38:47', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0=');
INSERT INTO `user_preferences` VALUES ('d0ba763e-fae4-0bb2-11b4-46b84b051377', 'ProductComponents2_PRODUCTCOMPONENTS', 0, '2007-08-07 10:39:05', '2007-08-07 10:39:05', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0=');
INSERT INTO `user_preferences` VALUES ('b954f260-889c-0c0d-42c4-46b84b172c48', 'Products2_PRODUCTS', 0, '2007-08-07 10:39:11', '2007-08-07 10:39:11', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0=');
INSERT INTO `user_preferences` VALUES ('eab7497e-d8f5-c2fb-9240-46b84b54a669', 'global', 0, '2007-08-07 10:38:46', '2007-08-30 15:34:09', '1', 'YToxOTp7czo4OiJ0aW1lem9uZSI7czoxMjoiRXVyb3BlL1NvZmlhIjtzOjI6InV0IjtpOjE7czoxMjoidXNlclByaXZHdWlkIjtzOjM2OiI5OWRiOTk2Mi1mYjc4LTlhNWUtMzUwZS00NmI4NGJiMzAxNWEiO3M6MjI6IkFDTFJvbGVzX1JPTEVfT1JERVJfQlkiO3M6NDoibmFtZSI7czoyOToiT3BlcmF0aW9uc19PUEVSQVRJT05fT1JERVJfQlkiO3M6NDoibmFtZSI7czoyMDoiUGFwZXJfUEFQRVJfT1JERVJfQlkiO3M6NToicG5hbWUiO3M6MjE6IlByaWNlc19QUklDRV9PUkRFUl9CWSI7czo0OiJuYW1lIjtzOjE5OiJVc2Vyc19VU0VSX09SREVSX0JZIjtzOjk6InVzZXJfbmFtZSI7czoyNjoiUmF0ZWZpbG1fUkFURUZJTE1fT1JERVJfQlkiO3M6NDoibmFtZSI7czoyMToiUXVvdGVzX1FVT1RFX09SREVSX0JZIjtzOjE4OiJkYXRlX21vZGlmaWVkIGRlc2MiO3M6Mjc6IlN1cHBsaWVyc19TVVBQTElFUl9PUkRFUl9CWSI7czo0OiJuYW1lIjtzOjI1OiJBY2NvdW50c19BQ0NPVU5UX09SREVSX0JZIjtzOjQ6Im5hbWUiO3M6MjU6IkNvbnRhY3RzX0NPTlRBQ1RfT1JERVJfQlkiO3M6Mzk6ImNvbnRhY3RzLmZpcnN0X25hbWUsIGNvbnRhY3RzLmxhc3RfbmFtZSI7czoxNjoiSW5rX0lOS19PUkRFUl9CWSI7czo0OiJuYW1lIjtzOjI4OiJSYXRlcGxhdGVfUkFURVBMQVRFX09SREVSX0JZIjtzOjQ6Im5hbWUiO3M6Mjc6IkRvY3VtZW50c19ET0NVTUVOVF9PUkRFUl9CWSI7czoxMzoiZG9jdW1lbnRfbmFtZSI7czoyMToiRW1haWxzX0VNQUlMX09SREVSX0JZIjtzOjI4OiJkYXRlX3NlbnQsIGRhdGVfZW50ZXJlZCBERVNDIjtzOjE5OiJUYXNrc19UQVNLX09SREVSX0JZIjtzOjIwOiJkYXRlX2R1ZSxzdGF0dXMgZGVzYyI7czozNDoiUHJlc3NtYWNoaW5lX1BSRVNTTUFDSElORV9PUkRFUl9CWSI7czo0OiJuYW1lIjt9');
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
INSERT INTO `user_preferences` VALUES ('df6cbad4-4226-ba02-75d7-46d56b2ed1be', 'Operations2_OPERATION', 0, '2007-08-29 12:51:36', '2007-08-29 12:51:36', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0=');
INSERT INTO `user_preferences` VALUES ('7dbd7958-3b43-b45a-c8d1-46d7b93b4f77', 'search', 0, '2007-08-31 06:48:58', '2007-08-31 06:48:58', '1', 'YToxOntzOjEyOiJnbG9iYWxTZWFyY2giO2E6Mjk6e3M6ODoiQWNjb3VudHMiO3M6NzoiQWNjb3VudCI7czo0OiJCdWdzIjtzOjM6IkJ1ZyI7czo1OiJDYWxscyI7czo0OiJDYWxsIjtzOjU6IkNhc2VzIjtzOjU6ImFDYXNlIjtzOjg6IkNvbnRhY3RzIjtzOjc6IkNvbnRhY3QiO3M6OToiRXN0aW1hdGVzIjtzOjg6IkVzdGltYXRlIjtzOjM6IkluayI7czozOiJJbmsiO3M6NjoiTGF5b3V0IjtzOjY6IkxheW91dCI7czo1OiJMZWFkcyI7czo0OiJMZWFkIjtzOjg6Ik1hY2hpbmVzIjtzOjc6Ik1hY2hpbmUiO3M6OToiTWF0ZXJpYWxzIjtzOjg6Ik1hdGVyaWFsIjtzOjEzOiJPcHBvcnR1bml0aWVzIjtzOjExOiJPcHBvcnR1bml0eSI7czo1OiJQYXBlciI7czo1OiJQYXBlciI7czoxMDoiUGFwZXJ3YXN0ZSI7czoxMDoiUGFwZXJ3YXN0ZSI7czo1OiJQcmVzcyI7czo1OiJQcmVzcyI7czoxMjoiUHJlc3NtYWNoaW5lIjtzOjEyOiJQcmVzc21hY2hpbmUiO3M6MTQ6IlByZXNzcHJpY2VsaXN0IjtzOjE0OiJQcmVzc3ByaWNlbGlzdCI7czo2OiJQcmljZXMiO3M6NToiUHJpY2UiO3M6ODoiUHJpbnRpbmciO3M6ODoiUHJpbnRpbmciO3M6MTE6IlByb2R1Y3RMb2dzIjtzOjEwOiJQcm9kdWN0TG9nIjtzOjE3OiJQcm9kdWN0T3BlcmF0aW9ucyI7czoxNjoiUHJvZHVjdE9wZXJhdGlvbiI7czo4OiJQcm9kdWN0cyI7czo4OiJQcm9kdWN0cyI7czoxNzoiUHJvZHVjdENvbXBvbmVudHMiO3M6MTc6IlByb2R1Y3RDb21wb25lbnRzIjtzOjc6IlByb2plY3QiO3M6NzoiUHJvamVjdCI7czoxMDoiT3BlcmF0aW9ucyI7czo5OiJPcGVyYXRpb24iO3M6MTE6IlByb2plY3RUYXNrIjtzOjExOiJQcm9qZWN0VGFzayI7czo4OiJSYXRlZmlsbSI7czo4OiJSYXRlZmlsbSI7czo5OiJSYXRlcGxhdGUiO3M6OToiUmF0ZXBsYXRlIjtzOjk6IlN1cHBsaWVycyI7czo4OiJTdXBwbGllciI7fX0=');
INSERT INTO `user_preferences` VALUES ('b45f480d-68e4-42e1-ac3a-46d67586e408', 'Pressmachine2_PRESSMACHINE', 0, '2007-08-30 07:45:51', '2007-08-30 07:45:51', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0=');
INSERT INTO `user_preferences` VALUES ('23507adf-71f2-d054-3599-46d675b9cae8', 'Estimates2_ESTIMATE', 0, '2007-08-30 07:46:12', '2007-08-30 07:46:12', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0=');

-- --------------------------------------------------------

-- 
-- Структура на таблица `users`
-- 

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
