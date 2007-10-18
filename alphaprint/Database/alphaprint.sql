-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Хост: localhost
-- Време на генериране:  октомври 2007 в 11:27
-- Версия на сървъра: 5.0.45
-- Версия на PHP: 5.2.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

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

INSERT INTO `accounts` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `assigned_user_id`, `created_by`, `name`, `parent_id`, `account_type`, `industry`, `annual_revenue`, `phone_fax`, `billing_address_street`, `billing_address_city`, `billing_address_state`, `billing_address_postalcode`, `billing_address_country`, `description`, `rating`, `phone_office`, `phone_alternate`, `email1`, `email2`, `website`, `ownership`, `employees`, `sic_code`, `ticker_symbol`, `shipping_address_street`, `shipping_address_city`, `shipping_address_state`, `shipping_address_postalcode`, `shipping_address_country`, `deleted`) VALUES 
('eb2e4078-4422-c298-5679-46d7c9e0919f', '2007-08-31 07:54:10', '2007-08-31 07:54:10', '1', '1', '1', 'Начо', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
('a4728179-5436-820e-3eaf-46d5667efb56', '2007-08-29 12:29:48', '2007-10-04 11:21:35', '1', '1', '1', 'Капитал', NULL, NULL, NULL, NULL, NULL, 'ул. Пенчо Славейков 23', 'София', 'София', '1000', 'България', NULL, NULL, NULL, NULL, NULL, NULL, 'http://', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
('81d77f74-8e3b-e5d2-2791-4709e9e64d96', '2007-10-08 08:24:15', '2007-10-08 08:24:15', '1', '1', '1', 'Интеграл', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '02 555555', NULL, NULL, NULL, 'http://', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);

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

INSERT INTO `accounts_audit` (`id`, `parent_id`, `date_created`, `created_by`, `field_name`, `data_type`, `before_value_string`, `after_value_string`, `before_value_text`, `after_value_text`) VALUES 
('6489953b-7f3f-52ce-ae46-45a7945c68d9', '745993fd-6032-8635-ce12-459e75c3c42e', '2007-01-12 14:00:19', '1', 'name', 'name', 'Account1', '', NULL, NULL),
('134ade74-ea26-3ad7-e2fc-45ab4323705d', '745993fd-6032-8635-ce12-459e75c3c42e', '2007-01-15 09:03:27', '177bd6bb-665d-cc61-4d82-45ab422290d3', 'assigned_user_id', 'assigned_user_name', '1', '177bd6bb-665d-cc61-4d82-45ab422290d3', NULL, NULL),
('cf09e380-658a-4aeb-aa10-45ab448c0fb2', '87eb4439-e063-d42d-85d2-45ab3f54ee80', '2007-01-15 09:09:07', '177bd6bb-665d-cc61-4d82-45ab422290d3', 'assigned_user_id', 'assigned_user_name', '1', '177bd6bb-665d-cc61-4d82-45ab422290d3', NULL, NULL),
('dcf9d8ed-6609-d019-75f0-45ab44286552', '41290ec9-0696-8e96-b333-45ab3fe75fc8', '2007-01-15 09:09:07', '177bd6bb-665d-cc61-4d82-45ab422290d3', 'assigned_user_id', 'assigned_user_name', '1', '177bd6bb-665d-cc61-4d82-45ab422290d3', NULL, NULL),
('e1e8ae4f-ec8c-7cf8-2f9f-45ab44fab64c', 'cc3d717f-3056-8e75-5d00-45ab3ffd89fa', '2007-01-15 09:09:07', '177bd6bb-665d-cc61-4d82-45ab422290d3', 'assigned_user_id', 'assigned_user_name', '1', '177bd6bb-665d-cc61-4d82-45ab422290d3', NULL, NULL),
('e6c1bfb0-58f0-9f5c-5b76-45ab443810c2', '68c2d0ec-5734-85e8-7f1b-45ab417af167', '2007-01-15 09:09:07', '177bd6bb-665d-cc61-4d82-45ab422290d3', 'assigned_user_id', 'assigned_user_name', '1', '177bd6bb-665d-cc61-4d82-45ab422290d3', NULL, NULL),
('eb8f34f7-6f20-a8b5-352e-45ab44550bda', '79f80fa8-f78b-0383-1800-45ab4108272a', '2007-01-15 09:09:07', '177bd6bb-665d-cc61-4d82-45ab422290d3', 'assigned_user_id', 'assigned_user_name', '1', '177bd6bb-665d-cc61-4d82-45ab422290d3', NULL, NULL),
('f05b4ea1-98fe-9b87-28be-45ab4423026d', 'b3702147-c886-ba77-abb3-45ab41ab1dc3', '2007-01-15 09:09:07', '177bd6bb-665d-cc61-4d82-45ab422290d3', 'assigned_user_id', 'assigned_user_name', '1', '177bd6bb-665d-cc61-4d82-45ab422290d3', NULL, NULL),
('11320593-bc48-0b55-fa29-45ab444b1705', 'eda6787a-dc2f-d683-59a9-45ab41cdba8d', '2007-01-15 09:09:08', '177bd6bb-665d-cc61-4d82-45ab422290d3', 'assigned_user_id', 'assigned_user_name', '1', '177bd6bb-665d-cc61-4d82-45ab422290d3', NULL, NULL),
('5ff2077f-1263-dadc-dcf6-45ab44005e99', '43b62b7b-6778-3c49-fefd-45ab41ceed27', '2007-01-15 09:09:08', '177bd6bb-665d-cc61-4d82-45ab422290d3', 'assigned_user_id', 'assigned_user_name', '1', '177bd6bb-665d-cc61-4d82-45ab422290d3', NULL, NULL),
('aefc0825-6259-414d-d298-45ab44b6eaca', '77060ccf-3bbb-3ef5-749d-45ab41a67f24', '2007-01-15 09:09:08', '177bd6bb-665d-cc61-4d82-45ab422290d3', 'assigned_user_id', 'assigned_user_name', '1', '177bd6bb-665d-cc61-4d82-45ab422290d3', NULL, NULL),
('fd48074a-0298-7736-8b67-45ab44e18e89', 'af1043aa-69c5-a0ed-61ff-45ab42c669a3', '2007-01-15 09:09:08', '177bd6bb-665d-cc61-4d82-45ab422290d3', 'assigned_user_id', 'assigned_user_name', '1', '177bd6bb-665d-cc61-4d82-45ab422290d3', NULL, NULL),
('5a0108c8-fcf5-7e2a-717a-45b8c9a1906b', '745993fd-6032-8635-ce12-459e75c3c42e', '2007-01-25 15:14:35', '1', 'parent_id', 'id', '', 'af1043aa-69c5-a0ed-61ff-45ab42c669a3', NULL, NULL);

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

INSERT INTO `accounts_contacts` (`id`, `contact_id`, `account_id`, `date_modified`, `deleted`) VALUES 
('dac3867f-09df-2fd7-c334-46d67c403073', '7449dc44-5cfa-cec1-9a86-46d566c72c6e', 'a4728179-5436-820e-3eaf-46d5667efb56', '2007-10-08 07:32:38', 0),
('58614bc1-e565-fbef-ee5d-4709ddd0788f', '80f6ca47-d6b2-401e-9135-46d7c9d84a0f', 'a4728179-5436-820e-3eaf-46d5667efb56', '2007-10-08 07:32:38', 0);

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

INSERT INTO `acl_actions` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `name`, `category`, `acltype`, `aclaccess`, `deleted`) VALUES 
('172d9f2b-9456-85b8-9151-458d3eebea53', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'access', 'Leads', 'module', 89, 0),
('17e40641-51d6-8117-ad98-458d3e6c5793', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'view', 'Leads', 'module', 90, 0),
('18b41bca-7701-0b5a-0e54-458d3ee9bae7', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'list', 'Leads', 'module', 90, 0),
('1968eedf-ca88-37e4-5895-458d3e46e1d6', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'edit', 'Leads', 'module', 90, 0),
('1a2f10b3-8f0f-0770-8537-458d3e97c617', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'delete', 'Leads', 'module', 90, 0),
('1ae25447-e891-e79a-c90d-458d3ed5fd74', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'import', 'Leads', 'module', 90, 0),
('1b960551-7ab1-8bd3-8141-458d3e780a72', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'export', 'Leads', 'module', 90, 0),
('3632f6dc-1bf9-9db0-2e60-458d3e0f8fe0', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'access', 'Contacts', 'module', 89, 0),
('36dabba9-44af-f993-7d24-458d3ea43de1', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'view', 'Contacts', 'module', 90, 0),
('3801a6f7-5a23-8d3b-5d2d-458d3e367df5', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'list', 'Contacts', 'module', 90, 0),
('38b03879-7f88-6705-acfb-458d3e090895', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'edit', 'Contacts', 'module', 90, 0),
('3956c37c-c6d9-8eae-442d-458d3e342306', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'delete', 'Contacts', 'module', 90, 0),
('3a020d56-8817-e5dd-081c-458d3ed9cf73', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'import', 'Contacts', 'module', 90, 0),
('3b6c88bc-d553-72c1-44ab-458d3eeee72a', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'export', 'Contacts', 'module', 90, 0),
('5645804c-d438-b730-90ab-458d3e9f9bf5', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'access', 'Accounts', 'module', 89, 0),
('56f57663-3b52-8a72-e6d0-458d3e1cabfb', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'view', 'Accounts', 'module', 90, 0),
('579fb85c-dd99-a16f-fdbd-458d3eca30a3', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'list', 'Accounts', 'module', 90, 0),
('584f4500-ae4f-6b8e-4a39-458d3e34a9d4', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'edit', 'Accounts', 'module', 90, 0),
('58f2f74e-a8a4-d414-0b22-458d3ef32b9a', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'delete', 'Accounts', 'module', 90, 0),
('59bff8b3-8fb3-16ea-cba2-458d3e111acc', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'import', 'Accounts', 'module', 90, 0),
('5a6ad064-d7ab-cd85-a402-458d3ed172b7', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'export', 'Accounts', 'module', 90, 0),
('72e8863e-98ea-3b7c-30f7-458d3e6eb084', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'access', 'Opportunities', 'module', 89, 0),
('739a8ee2-ee47-8adc-ced4-458d3ec29092', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'view', 'Opportunities', 'module', 90, 0),
('745e332a-f736-1844-a985-458d3e708a1e', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'list', 'Opportunities', 'module', 90, 0),
('752805f2-1b0b-bee3-bc14-458d3eff0b02', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'edit', 'Opportunities', 'module', 90, 0),
('75d62e6f-217d-2c7b-d8c8-458d3ef3637b', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'delete', 'Opportunities', 'module', 90, 0),
('76890bc6-0214-6b10-fded-458d3eced0ba', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'import', 'Opportunities', 'module', 90, 0),
('77321b9c-ce5d-4e71-7570-458d3e13d606', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'export', 'Opportunities', 'module', 90, 0),
('8d723634-5ca1-f5e1-65b5-458d3e2285d4', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'access', 'Cases', 'module', 89, 0),
('8e954f57-36b0-5124-2911-458d3ecb1d0e', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'view', 'Cases', 'module', 90, 0),
('8f6bae13-b8a8-235f-68d6-458d3e934e79', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'list', 'Cases', 'module', 90, 0),
('9018e02f-c318-90dd-3e1b-458d3e650223', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'edit', 'Cases', 'module', 90, 0),
('90c898de-dcad-01a9-b3f4-458d3ee6c6fb', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'delete', 'Cases', 'module', 90, 0),
('9172065e-56ba-9b1d-1709-458d3e22e3bf', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'import', 'Cases', 'module', 90, 0),
('922374e1-aaa6-32ad-d0f0-458d3e0e35ab', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'export', 'Cases', 'module', 90, 0),
('a6ca9907-e0d1-1390-7959-458d3ef3159e', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'access', 'Notes', 'module', 89, 0),
('a77b31fb-3754-1dd9-a480-458d3e3f330b', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'view', 'Notes', 'module', 90, 0),
('a825b7bb-fe38-eb75-9c19-458d3ec8336f', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'list', 'Notes', 'module', 90, 0),
('a8cee239-a322-0483-2ecd-458d3e0d27d9', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'edit', 'Notes', 'module', 90, 0),
('a987812e-5705-5141-8299-458d3e26ad14', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'delete', 'Notes', 'module', 90, 0),
('aa7d0a20-cab4-1d3e-2583-458d3eeb6bbe', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'import', 'Notes', 'module', 90, 0),
('ab2c886d-9f6c-85c2-8dbc-458d3ea5804c', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'export', 'Notes', 'module', 90, 0),
('b69d1f1c-2509-8979-a988-458d3e91c558', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'access', 'EmailTemplates', 'module', 89, 0),
('b847cfb9-2c5a-7aee-b1b4-458d3e139a17', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'view', 'EmailTemplates', 'module', 90, 0),
('b92fdad4-93f2-d3fb-32c2-458d3e638594', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'list', 'EmailTemplates', 'module', 90, 0),
('b9e34e8d-43b7-94b1-d3b1-458d3e59a80a', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'edit', 'EmailTemplates', 'module', 90, 0),
('ba9180e7-05cd-3778-cb7c-458d3ed6d02e', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'delete', 'EmailTemplates', 'module', 90, 0),
('bb42efee-1ed5-77d4-7b8e-458d3eb36c71', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'import', 'EmailTemplates', 'module', 90, 0),
('bc0d8f74-9081-8715-d39a-458d3e3a2aba', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'export', 'EmailTemplates', 'module', 90, 0),
('e0c638e9-28df-d981-949b-458d3e7596f0', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'access', 'Calls', 'module', 89, 0),
('e17314f0-d487-6383-22f6-458d3e0b40c3', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'view', 'Calls', 'module', 90, 0),
('e229c83a-e81a-ce95-5ff6-458d3e8e1778', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'list', 'Calls', 'module', 90, 0),
('e386c850-7dc0-e8b9-b505-458d3e7431ff', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'edit', 'Calls', 'module', 90, 0),
('e435d7c0-26ff-e647-ca5c-458d3e9adc48', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'delete', 'Calls', 'module', 90, 0),
('e4e84780-544e-2bae-1a2f-458d3e14d4a4', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'import', 'Calls', 'module', 90, 0),
('e59c4104-c84f-5082-8641-458d3ed88b28', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'export', 'Calls', 'module', 90, 0),
('1e690522-43bd-97a9-e9ab-458d3e998980', '2006-12-23 14:35:28', '2006-12-23 14:35:28', '1', NULL, 'access', 'Emails', 'module', 89, 0),
('2e370f87-7dd9-8d5f-d32d-458d3eededd0', '2006-12-23 14:35:28', '2006-12-23 14:35:28', '1', NULL, 'view', 'Emails', 'module', 90, 0),
('39a70865-8869-4caa-5c31-458d3ed3adc6', '2006-12-23 14:35:28', '2006-12-23 14:35:28', '1', NULL, 'list', 'Emails', 'module', 90, 0),
('45b40bd4-77ae-ffe5-654f-458d3ee3198f', '2006-12-23 14:35:28', '2006-12-23 14:35:28', '1', NULL, 'edit', 'Emails', 'module', 90, 0),
('52160401-5c4a-695b-02b4-458d3efa147f', '2006-12-23 14:35:28', '2006-12-23 14:35:28', '1', NULL, 'delete', 'Emails', 'module', 90, 0),
('5d2b0717-2646-78b4-bdc8-458d3e63e45e', '2006-12-23 14:35:28', '2006-12-23 14:35:28', '1', NULL, 'import', 'Emails', 'module', 90, 0),
('68e40f18-c684-f401-ff88-458d3ea18b0c', '2006-12-23 14:35:28', '2006-12-23 14:35:28', '1', NULL, 'export', 'Emails', 'module', 90, 0),
('15ff2d51-812e-bbbb-5bb0-458d3e208a07', '2006-12-23 14:35:28', '2006-12-23 14:35:28', '1', NULL, 'access', 'Meetings', 'module', 89, 0),
('17513dfb-3172-0222-2f42-458d3e309abf', '2006-12-23 14:35:28', '2006-12-23 14:35:28', '1', NULL, 'view', 'Meetings', 'module', 90, 0),
('18548709-2da4-ff18-5dba-458d3eb6c91d', '2006-12-23 14:35:28', '2006-12-23 14:35:28', '1', NULL, 'list', 'Meetings', 'module', 90, 0),
('19349a3b-12c3-36ab-228f-458d3e68f17b', '2006-12-23 14:35:28', '2006-12-23 14:35:28', '1', NULL, 'edit', 'Meetings', 'module', 90, 0),
('1a065aaa-baa5-f0b1-27fa-458d3e0f65a9', '2006-12-23 14:35:28', '2006-12-23 14:35:28', '1', NULL, 'delete', 'Meetings', 'module', 90, 0),
('1abd5b09-273f-20c9-c420-458d3ee96b88', '2006-12-23 14:35:28', '2006-12-23 14:35:28', '1', NULL, 'import', 'Meetings', 'module', 90, 0),
('1b71d335-b74a-3d7a-7643-458d3ef8b28e', '2006-12-23 14:35:28', '2006-12-23 14:35:28', '1', NULL, 'export', 'Meetings', 'module', 90, 0),
('35fcf53d-552d-2e0e-8e37-458d3ed593fa', '2006-12-23 14:35:28', '2006-12-23 14:35:28', '1', NULL, 'access', 'Tasks', 'module', 89, 0),
('36cb2c33-ff8c-88b8-d296-458d3e2b525c', '2006-12-23 14:35:28', '2006-12-23 14:35:28', '1', NULL, 'view', 'Tasks', 'module', 90, 0),
('3781c426-762a-3226-04ed-458d3e6a68e8', '2006-12-23 14:35:28', '2006-12-23 14:35:28', '1', NULL, 'list', 'Tasks', 'module', 90, 0),
('383604b0-1e6a-2830-70bd-458d3e5e2200', '2006-12-23 14:35:28', '2006-12-23 14:35:28', '1', NULL, 'edit', 'Tasks', 'module', 90, 0),
('38eb5dcc-ac3b-7b3d-08ae-458d3ebba7ae', '2006-12-23 14:35:28', '2006-12-23 14:35:28', '1', NULL, 'delete', 'Tasks', 'module', 90, 0),
('39999336-95e7-c42d-52b2-458d3ee802e5', '2006-12-23 14:35:28', '2006-12-23 14:35:28', '1', NULL, 'import', 'Tasks', 'module', 90, 0),
('3ab38bd7-851a-9364-ea81-458d3e59b38e', '2006-12-23 14:35:28', '2006-12-23 14:35:28', '1', NULL, 'export', 'Tasks', 'module', 90, 0),
('970032eb-adc2-b549-9947-458d3e967af5', '2006-12-23 14:35:28', '2006-12-23 14:35:28', '1', NULL, 'access', 'Bugs', 'module', 89, 0),
('97b82043-f508-fe6b-c328-458d3ecb8090', '2006-12-23 14:35:28', '2006-12-23 14:35:28', '1', NULL, 'view', 'Bugs', 'module', 90, 0),
('986a87ab-e91b-295e-a55c-458d3e7cc32b', '2006-12-23 14:35:28', '2006-12-23 14:35:28', '1', NULL, 'list', 'Bugs', 'module', 90, 0),
('9920a67a-d18b-ae93-a595-458d3ee7c1da', '2006-12-23 14:35:28', '2006-12-23 14:35:28', '1', NULL, 'edit', 'Bugs', 'module', 90, 0),
('99d99a60-5067-19b7-d3df-458d3e0dc9b1', '2006-12-23 14:35:28', '2006-12-23 14:35:28', '1', NULL, 'delete', 'Bugs', 'module', 90, 0),
('9a8f35da-d496-0229-8be0-458d3e05a6a3', '2006-12-23 14:35:28', '2006-12-23 14:35:28', '1', NULL, 'import', 'Bugs', 'module', 90, 0),
('9b63f6b0-b570-90e8-d1df-458d3ecf0b23', '2006-12-23 14:35:28', '2006-12-23 14:35:28', '1', NULL, 'export', 'Bugs', 'module', 90, 0),
('a94d0834-f048-dc60-1247-458d3ed9c886', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'access', 'Project', 'module', 89, 0),
('b4c1093b-7122-2047-131f-458d3edbf0c4', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'view', 'Project', 'module', 90, 0),
('c03a0e35-9460-c8d1-e078-458d3e351a66', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'list', 'Project', 'module', 90, 0),
('d9250172-8c48-a8bc-b9c9-458d3ecbb353', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'edit', 'Project', 'module', 90, 0),
('e51407c4-ef76-b4cc-7cf2-458d3e083c25', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'delete', 'Project', 'module', 90, 0),
('f02e0393-870c-e07f-743e-458d3e9ed2d3', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'import', 'Project', 'module', 90, 0),
('fb7e048c-4d98-8350-98b3-458d3e7e5abd', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'export', 'Project', 'module', 90, 0),
('2437395f-57a4-bde6-a884-458d3eae8ac3', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'access', 'ProjectTask', 'module', 89, 0),
('25ba085f-b454-4425-c63e-458d3ecba794', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'view', 'ProjectTask', 'module', 90, 0),
('26c67478-973e-0841-4f78-458d3e8b62fc', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'list', 'ProjectTask', 'module', 90, 0),
('278017cd-5f72-cf8f-3216-458d3e6cf8b5', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'edit', 'ProjectTask', 'module', 90, 0),
('28596c4f-ab19-4ef9-f076-458d3e9ede0f', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'delete', 'ProjectTask', 'module', 90, 0),
('29213c7a-6894-1bf3-4f1c-458d3eb9d241', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'import', 'ProjectTask', 'module', 90, 0),
('29dad5b3-9751-a02e-834a-458d3e5e2373', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'export', 'ProjectTask', 'module', 90, 0),
('482853d7-f46b-c414-ca95-458d3eb7c3ba', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'access', 'EmailMarketing', 'module', 89, 0),
('48dd020c-c320-7e43-c172-458d3ee6df7e', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'view', 'EmailMarketing', 'module', 90, 0),
('49a2182e-b8d2-3c02-216a-458d3e53f77c', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'list', 'EmailMarketing', 'module', 90, 0),
('4afd023c-aa91-35cc-7fcc-458d3e1dd56a', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'edit', 'EmailMarketing', 'module', 90, 0),
('4be58be6-f5f9-49b0-629f-458d3e94cd86', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'delete', 'EmailMarketing', 'module', 90, 0),
('4ca3e62c-8fae-fad2-ae27-458d3e0541b2', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'import', 'EmailMarketing', 'module', 90, 0),
('4d610b06-d463-2e82-2830-458d3e07f7fb', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'export', 'EmailMarketing', 'module', 90, 0),
('6495f431-f1c2-0ca7-e77e-458d3effdc95', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'access', 'Campaigns', 'module', 89, 0),
('654f7d47-82d6-a37d-af08-458d3e309238', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'view', 'Campaigns', 'module', 90, 0),
('6606fdcd-9ba0-bedb-721f-458d3e287c90', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'list', 'Campaigns', 'module', 90, 0),
('66b98e2f-d843-eecc-5dd4-458d3eeaaea1', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'edit', 'Campaigns', 'module', 90, 0),
('6776e281-4111-3401-570d-458d3e79a774', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'delete', 'Campaigns', 'module', 90, 0),
('688b456c-a0bd-e618-4adf-458d3e3da636', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'import', 'Campaigns', 'module', 90, 0),
('695805bd-1e94-3298-12f9-458d3e27a15d', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'export', 'Campaigns', 'module', 90, 0),
('80ed5e42-d002-a87d-2d8c-458d3e100583', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'access', 'ProspectLists', 'module', 89, 0),
('81b1b220-7eec-7f36-161a-458d3ed15638', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'view', 'ProspectLists', 'module', 90, 0),
('8266daf2-49a1-2d9d-c1e3-458d3ea6425c', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'list', 'ProspectLists', 'module', 90, 0),
('83686968-262f-5daa-5079-458d3e96844e', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'edit', 'ProspectLists', 'module', 90, 0),
('8463c977-464a-4ce4-bf6c-458d3ee4c232', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'delete', 'ProspectLists', 'module', 90, 0),
('851ab2ae-3157-eaa1-3722-458d3ea1effe', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'import', 'ProspectLists', 'module', 90, 0),
('85cf4259-f4f0-ef6b-e687-458d3e0e8e93', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'export', 'ProspectLists', 'module', 90, 0),
('911317a4-1592-10ba-eac5-458d3ebe2ce9', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'access', 'Prospects', 'module', 89, 0),
('91d0c893-4e86-1634-c14f-458d3e6ec812', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'view', 'Prospects', 'module', 90, 0),
('929a61a3-32be-347b-1513-458d3ef87395', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'list', 'Prospects', 'module', 90, 0),
('9354e5e3-22cd-7f0e-360a-458d3eaab1de', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'edit', 'Prospects', 'module', 90, 0),
('941e99f4-9914-51e5-a295-458d3ebecccc', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'delete', 'Prospects', 'module', 90, 0),
('94d6ac96-5797-a327-2f62-458d3e2785c1', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'import', 'Prospects', 'module', 90, 0),
('9594b5cf-49b7-c60e-684e-458d3e9592f6', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'export', 'Prospects', 'module', 90, 0),
('a7cd31ba-9f5f-e19a-07f9-458d3e3b420e', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'access', 'Documents', 'module', 89, 0),
('a8d068cd-c27c-0110-0838-458d3e1a6e98', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'view', 'Documents', 'module', 90, 0),
('a996aa69-f709-037a-eba3-458d3e5686f6', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'list', 'Documents', 'module', 90, 0),
('aa64de59-4288-b346-bb0f-458d3e06754f', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'edit', 'Documents', 'module', 90, 0),
('ab202bb0-8e1b-1efa-ed1f-458d3e6fcb13', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'delete', 'Documents', 'module', 90, 0),
('abdd825e-b1ea-f1f4-56cf-458d3e8dcdd9', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'import', 'Documents', 'module', 90, 0),
('ac963a87-f22e-1ddc-ddcc-458d3ef9c4e1', '2006-12-23 14:35:29', '2006-12-23 14:35:29', '1', NULL, 'export', 'Documents', 'module', 90, 0),
('bbdc4230-52af-b80d-eb34-458d408caebd', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'access', 'Products', 'module', 89, 0),
('bcc04137-0aab-09fa-065e-458d40032819', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'view', 'Products', 'module', 90, 0),
('bd80e49f-5e55-3ba3-5aaa-458d4025e3d8', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'list', 'Products', 'module', 90, 0),
('be583e25-56b8-ce9d-3f15-458d405f4f6c', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'edit', 'Products', 'module', 90, 0),
('bf5df4a3-e38a-55ca-1af5-458d40b0feb8', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'delete', 'Products', 'module', 90, 0),
('c066ceb2-7270-3e3f-5894-458d40c0edbd', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'import', 'Products', 'module', 90, 0),
('c13c3d7a-da83-7fa8-0bbe-458d40c538f7', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'export', 'Products', 'module', 90, 0),
('2e275407-f0e7-2cb5-b88d-459b83da5ec3', '2007-01-03 10:22:55', '2007-01-03 10:22:55', '1', '1', 'access', 'ProductComponents', 'module', 89, 0),
('2efacb8d-c13f-24d8-08f5-459b837e90c7', '2007-01-03 10:22:55', '2007-01-03 10:22:55', '1', '1', 'view', 'ProductComponents', 'module', 90, 0),
('2fc5c5b6-558a-ddd9-40bb-459b83e23898', '2007-01-03 10:22:55', '2007-01-03 10:22:55', '1', '1', 'list', 'ProductComponents', 'module', 90, 0),
('308a2662-4b72-feb8-7296-459b838afeec', '2007-01-03 10:22:55', '2007-01-03 10:22:55', '1', '1', 'edit', 'ProductComponents', 'module', 90, 0),
('314ab469-a71a-8931-c1e2-459b83e3ebbf', '2007-01-03 10:22:55', '2007-01-03 10:22:55', '1', '1', 'delete', 'ProductComponents', 'module', 90, 0),
('320fe327-f8ce-2421-af9b-459b83f5a66e', '2007-01-03 10:22:55', '2007-01-03 10:22:55', '1', '1', 'import', 'ProductComponents', 'module', 90, 0),
('32d599ca-eb5b-e94b-6905-459b835865be', '2007-01-03 10:22:55', '2007-01-03 10:22:55', '1', '1', 'export', 'ProductComponents', 'module', 90, 0),
('79e54b21-fcb2-9326-dccf-45a251f60d96', '2007-01-08 14:12:05', '2007-01-08 14:12:05', '1', '1', 'access', 'Paper', 'module', 89, 0),
('7a6978d1-f6ee-99bf-182d-45a2516f1237', '2007-01-08 14:12:05', '2007-01-08 14:12:05', '1', '1', 'view', 'Paper', 'module', 90, 0),
('7aeac260-51d5-c933-0fa2-45a251141961', '2007-01-08 14:12:05', '2007-01-08 14:12:05', '1', '1', 'list', 'Paper', 'module', 90, 0),
('7b669876-f521-bc9a-1b30-45a251e5ef71', '2007-01-08 14:12:05', '2007-01-08 14:12:05', '1', '1', 'edit', 'Paper', 'module', 90, 0),
('7beb8039-d0b6-1ba2-6aa6-45a2514359cc', '2007-01-08 14:12:05', '2007-01-08 14:12:05', '1', '1', 'delete', 'Paper', 'module', 90, 0),
('7c6d5ae8-3f2e-cfb7-83dd-45a251baa914', '2007-01-08 14:12:05', '2007-01-08 14:12:05', '1', '1', 'import', 'Paper', 'module', 90, 0),
('7d06b76d-97a4-ae5d-3e9e-45a2512e6d5c', '2007-01-08 14:12:05', '2007-01-08 14:12:05', '1', '1', 'export', 'Paper', 'module', 90, 0),
('e65b4a52-41f1-a65e-6b89-45e6e0329c62', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'access', 'ProductOperations', 'module', 89, 0),
('a908d5de-4a6e-efb3-99b4-45e6e0deaa22', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'view', 'ProductOperations', 'module', 90, 0),
('229863dd-bafb-9072-d6cd-45e6e0c4c20a', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'list', 'ProductOperations', 'module', 90, 0),
('272e05bc-e5b3-10f5-f566-45e6e16746e8', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'edit', 'ProductOperations', 'module', 90, 0),
('6091a16d-d552-fda8-077d-45e6e13d7ac9', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'delete', 'ProductOperations', 'module', 90, 0),
('644af00c-ac8a-9997-5a90-45e6e10ab7c5', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'import', 'ProductOperations', 'module', 90, 0),
('71ec2002-f0b1-77b0-d1d8-45e6e1fcda4c', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'export', 'ProductOperations', 'module', 90, 0),
('a82c1018-465b-3f3e-841b-45e6e3c383e7', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'access', 'Operations', 'module', 89, 0),
('a83b7a5a-3d07-1132-31f0-45e6e3cc9c32', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'view', 'Operations', 'module', 90, 0),
('a8450331-1f5e-4184-8457-45e6e3ea17a4', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'list', 'Operations', 'module', 90, 0),
('a84cadb4-ee93-6da6-fee3-45e6e3adb872', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'edit', 'Operations', 'module', 90, 0),
('a85422b1-f5ef-da72-a076-45e6e38a4401', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'delete', 'Operations', 'module', 90, 0),
('a863482f-5ece-0286-c5d3-45e6e3bd2f59', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'import', 'Operations', 'module', 90, 0),
('a86ad26e-5155-bb4e-47eb-45e6e32f2879', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'export', 'Operations', 'module', 90, 0),
('2f670768-0eaf-0ada-4cef-45e6e4e9efc4', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'access', 'Machines', 'module', 89, 0),
('2f75a03e-044e-5ce8-ac7c-45e6e44d37ec', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'view', 'Machines', 'module', 90, 0),
('2f7d71cc-4f50-cd37-8bcd-45e6e4fea4d6', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'list', 'Machines', 'module', 90, 0),
('2f851360-f3d7-2326-09ed-45e6e4d041ae', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'edit', 'Machines', 'module', 90, 0),
('2f8cb26b-b5d5-be65-6375-45e6e47624f3', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'delete', 'Machines', 'module', 90, 0),
('2f9445d3-85a5-6308-0947-45e6e4b01de8', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'import', 'Machines', 'module', 90, 0),
('2f9bea12-19c1-df6c-72d2-45e6e4016d6c', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'export', 'Machines', 'module', 90, 0),
('b065ca9f-faa3-8786-82a8-45e6e4045f3b', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'access', 'Quotes', 'module', 89, 0),
('b073ce50-ff7e-43e0-9041-45e6e4a86825', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'view', 'Quotes', 'module', 90, 0),
('b07b908e-4a70-f355-0969-45e6e45786d3', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'list', 'Quotes', 'module', 90, 0),
('b083f0be-508b-504d-4011-45e6e433107b', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'edit', 'Quotes', 'module', 90, 0),
('b08bb533-77d7-b011-a759-45e6e4ab64b3', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'delete', 'Quotes', 'module', 90, 0),
('b0936637-6624-f5c4-9134-45e6e47c4bbd', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'import', 'Quotes', 'module', 90, 0),
('b09b10c5-ab26-f920-9424-45e6e4975af3', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'export', 'Quotes', 'module', 90, 0),
('9f39dff4-a725-9552-c3a1-45e6e5086f39', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'access', 'Materials', 'module', 89, 0),
('9f47dde6-5f8c-b478-84a5-45e6e5a44f99', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'view', 'Materials', 'module', 90, 0),
('9f4faf1a-5b36-7ca3-1b5a-45e6e5d4ec51', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'list', 'Materials', 'module', 90, 0),
('9f57aace-3d04-d66d-4a1e-45e6e5d1ec0d', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'edit', 'Materials', 'module', 90, 0),
('9f5f9f56-5bec-e983-b0c6-45e6e5434234', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'delete', 'Materials', 'module', 90, 0),
('9f672cb0-fea1-4dbb-afaf-45e6e5e581f3', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'import', 'Materials', 'module', 90, 0),
('9f6eb5f3-e0ac-69db-2649-45e6e5cafa96', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'export', 'Materials', 'module', 90, 0),
('ddacc5b5-fdd8-1e24-d22d-45e6e520d8bb', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'access', 'Suppliers', 'module', 89, 0),
('ddbe7f58-dc19-e847-668c-45e6e55c6b3e', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'view', 'Suppliers', 'module', 90, 0),
('ddc626ed-9574-fb46-5105-45e6e54919fe', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'list', 'Suppliers', 'module', 90, 0),
('ddcde9dc-01f0-4918-f7d3-45e6e5cd1a85', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'edit', 'Suppliers', 'module', 90, 0),
('ddd568b5-c458-4b74-a94d-45e6e5fbb92d', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'delete', 'Suppliers', 'module', 90, 0),
('dddcd015-7720-913e-c526-45e6e5bf86a2', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'import', 'Suppliers', 'module', 90, 0),
('dde48780-5641-dbcb-0ba6-45e6e5037d07', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'export', 'Suppliers', 'module', 90, 0),
('61bb21a0-d3e6-541e-f289-45e6e66c36d2', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'access', 'Supplies', 'module', 89, 0),
('61ccf829-833c-bdbd-9b3e-45e6e61583ab', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'view', 'Supplies', 'module', 90, 0),
('61d4d985-c27c-7089-925d-45e6e6e70475', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'list', 'Supplies', 'module', 90, 0),
('61dc9061-cd2a-c942-2951-45e6e6653940', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'edit', 'Supplies', 'module', 90, 0),
('61e4581b-e1d8-08e4-3bda-45e6e659a2ef', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'delete', 'Supplies', 'module', 90, 0),
('61ec1cde-a8bd-315c-93ed-45e6e6152810', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'import', 'Supplies', 'module', 90, 0),
('61f3fd58-3243-5330-9efd-45e6e6ab0ef3', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'export', 'Supplies', 'module', 90, 0),
('55480d71-b8c4-448b-f923-45e6eb96d3e5', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'access', 'PurchaseOrders', 'module', 89, 0),
('5555d3ef-6e44-fe0d-d1c0-45e6eb1c7fb4', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'view', 'PurchaseOrders', 'module', 90, 0),
('555d9b57-8de9-da15-95be-45e6ebab13b1', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'list', 'PurchaseOrders', 'module', 90, 0),
('556b0512-797b-c4b3-0132-45e6ebd5ed58', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'edit', 'PurchaseOrders', 'module', 90, 0),
('5572c08c-3d3e-9f15-bce1-45e6eb1dffc4', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'delete', 'PurchaseOrders', 'module', 90, 0),
('557a7daf-e3b7-0583-4661-45e6eb89ae32', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'import', 'PurchaseOrders', 'module', 90, 0),
('55821e7b-a3f7-98db-9d84-45e6eb16accd', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'export', 'PurchaseOrders', 'module', 90, 0),
('488eded5-4728-36fc-dd31-45e6ec31b091', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'access', 'Prices', 'module', 89, 0),
('48a0a06d-650e-58de-8e8e-45e6eca5cd5d', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'view', 'Prices', 'module', 90, 0),
('48a88bc6-da6c-6219-9bc0-45e6ece9008b', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'list', 'Prices', 'module', 90, 0),
('48b055cc-d1bc-47f8-832d-45e6eceb8f5b', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'edit', 'Prices', 'module', 90, 0),
('48b81dc9-6561-c35a-21d8-45e6ec1e2b32', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'delete', 'Prices', 'module', 90, 0),
('48bfc409-e5c5-2437-ad43-45e6ec6adca2', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'import', 'Prices', 'module', 90, 0),
('48c775b1-bea2-208f-2d49-45e6ec7d6888', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'export', 'Prices', 'module', 90, 0),
('80f38044-ae80-7fd4-a236-463edce828d2', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'access', 'Estimates', 'module', 89, 0),
('81016b21-76c7-7213-da6f-463edc703476', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'view', 'Estimates', 'module', 90, 0),
('810916dd-57c4-8670-8787-463edcb01c0c', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'list', 'Estimates', 'module', 90, 0),
('81108223-aaa5-963e-f737-463edc2771c2', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'edit', 'Estimates', 'module', 90, 0),
('8117faae-e7ad-808d-ce28-463edc61be74', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'delete', 'Estimates', 'module', 90, 0),
('811f57e2-8c7b-57b7-9e5a-463edce98eeb', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'import', 'Estimates', 'module', 90, 0),
('8126c62f-9d86-0754-5150-463edcb356b2', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'export', 'Estimates', 'module', 90, 0),
('35c5b026-da42-51b1-03a8-463edc889f5c', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'access', 'Printing', 'module', 89, 0),
('35d98208-0fbf-7dfd-e897-463edc540e17', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'view', 'Printing', 'module', 90, 0),
('35e16233-121d-e83c-6d02-463edc452b62', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'list', 'Printing', 'module', 90, 0),
('35e9044a-11cc-9193-e03c-463edc7cc0c9', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'edit', 'Printing', 'module', 90, 0),
('35f0988c-3751-371e-3068-463edc224172', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'delete', 'Printing', 'module', 90, 0),
('35f8330b-eb05-04ca-bdf3-463edcc73a15', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'import', 'Printing', 'module', 90, 0),
('35ffe201-41a0-036c-3698-463edc0b61ba', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'export', 'Printing', 'module', 90, 0),
('89545bde-054b-963a-94a1-4709ce6ec389', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'view', 'Presspricelist', 'module', 90, 0),
('8963b051-b939-e852-a730-4709cec2be08', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'list', 'Presspricelist', 'module', 90, 0),
('89709632-ea68-d9ec-3f24-4709cea1ef99', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'edit', 'Presspricelist', 'module', 90, 0),
('897d679b-8753-3852-7e77-4709ceb1145c', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'delete', 'Presspricelist', 'module', 90, 0),
('898a217c-ef05-c17f-910c-4709ced21533', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'import', 'Presspricelist', 'module', 90, 0),
('8996f664-51f0-f8e3-ef48-4709cebbf751', '2006-12-23 14:42:20', '2006-12-23 14:42:20', '1', '1', 'export', 'Presspricelist', 'module', 90, 0),
('a4085a23-9020-3283-a921-4709d1930846', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'access', 'Paperwaste', 'module', 89, 0),
('a417f017-e4ec-6431-d4ea-4709d15cf4c6', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'view', 'Paperwaste', 'module', 90, 0),
('a424eb2d-be47-c8bc-343e-4709d11ff1b6', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'list', 'Paperwaste', 'module', 90, 0),
('a431bd64-b6ac-f524-1502-4709d1f791b8', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'edit', 'Paperwaste', 'module', 90, 0),
('a43ee71b-146a-06b8-3a51-4709d12a4bb2', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'delete', 'Paperwaste', 'module', 90, 0),
('a44be72a-640c-0b5a-2f54-4709d1027d32', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'import', 'Paperwaste', 'module', 90, 0),
('a4591e4e-a083-205e-aedc-4709d100eac7', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'export', 'Paperwaste', 'module', 90, 0),
('a4667ba5-7f20-1e41-d51c-4709d107e2ef', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'access', 'Presspricelist', 'module', 89, 0),
('5f5e2a2a-3775-95e7-2c7a-4709d29dfe18', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'access', 'Ratefilm', 'module', 89, 0),
('5f6d886a-84df-6ca6-0090-4709d2b1a8aa', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'view', 'Ratefilm', 'module', 90, 0),
('5f7aa57a-906e-80cd-b43b-4709d24281e7', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'list', 'Ratefilm', 'module', 90, 0),
('5f87ab1b-53f7-c06b-5c58-4709d27e9ff6', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'edit', 'Ratefilm', 'module', 90, 0),
('5f94c683-8523-7308-a6f7-4709d2ed57a6', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'delete', 'Ratefilm', 'module', 90, 0),
('5faa0ef3-5564-73c8-294b-4709d234d417', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'import', 'Ratefilm', 'module', 90, 0),
('5fb78069-28b2-856b-3d4f-4709d211e728', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'export', 'Ratefilm', 'module', 90, 0),
('16e39d8c-d92c-0db9-e592-4709d3abef0f', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'access', 'Rateplate', 'module', 89, 0),
('16f38753-f854-9822-d3bb-4709d3a6ee2f', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'view', 'Rateplate', 'module', 90, 0),
('1700cd58-fe10-cb1a-b5f4-4709d3903127', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'list', 'Rateplate', 'module', 90, 0),
('170e0d4a-1ce8-12ea-9406-4709d3e57b1d', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'edit', 'Rateplate', 'module', 90, 0),
('171b5357-42eb-c330-a448-4709d37cdfa8', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'delete', 'Rateplate', 'module', 90, 0),
('1731c6a5-fdd9-a2e2-be8a-4709d3fec84a', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'import', 'Rateplate', 'module', 90, 0),
('173f54ac-eb2e-ffd9-97f4-4709d38c5509', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'export', 'Rateplate', 'module', 90, 0),
('bebc4460-847c-4a89-f425-4709d36532e6', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'access', 'ComponentEstimate', 'module', 89, 0),
('bece820d-6dfb-dccd-ad53-4709d31f149c', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'view', 'ComponentEstimate', 'module', 90, 0),
('bedbfd6b-726d-1abf-bfcd-4709d36cd1d5', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'list', 'ComponentEstimate', 'module', 90, 0),
('bee943ac-805e-ca97-5025-4709d304f9fc', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'edit', 'ComponentEstimate', 'module', 90, 0),
('bef99f5a-5139-dfb8-0fec-4709d3bd54be', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'delete', 'ComponentEstimate', 'module', 90, 0),
('bf06f2cc-fd56-f065-eb4e-4709d376a71c', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'import', 'ComponentEstimate', 'module', 90, 0),
('bf144584-aaae-5050-83df-4709d373eb63', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'export', 'ComponentEstimate', 'module', 90, 0),
('8583ef63-23e2-064d-777c-4709d49c2d46', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'access', 'ProductEstimate', 'module', 89, 0),
('8593570e-d41e-0bb3-5cb0-4709d42a3577', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'view', 'ProductEstimate', 'module', 90, 0),
('85a0525e-599c-a766-99aa-4709d4b51fa0', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'list', 'ProductEstimate', 'module', 90, 0),
('85ae0781-fd61-fe39-ccb2-4709d41829a7', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'edit', 'ProductEstimate', 'module', 90, 0),
('85c86d34-9bff-8975-fa77-4709d4d8723c', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'delete', 'ProductEstimate', 'module', 90, 0),
('85d5bc71-9013-8668-90c0-4709d48ecebc', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'import', 'ProductEstimate', 'module', 90, 0),
('85e321f5-3173-10ef-e0be-4709d42fef26', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'export', 'ProductEstimate', 'module', 90, 0),
('5b8dcfb0-864d-da9a-8c6a-4709ff1e0ce7', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'access', 'Pressmachine', 'module', 89, 0),
('5b9f65a8-a3d6-b3a0-99bb-4709ffa3bcb2', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'view', 'Pressmachine', 'module', 90, 0),
('5bacba8e-947b-83aa-9a11-4709fff6f276', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'list', 'Pressmachine', 'module', 90, 0),
('5bb9e576-fae0-8f0f-2672-4709ff99663b', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'edit', 'Pressmachine', 'module', 90, 0),
('5bc6ecf5-b3c3-6271-bd34-4709ff3e35d6', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'delete', 'Pressmachine', 'module', 90, 0),
('5bd4062c-775a-fdf8-2604-4709ff6e2d2a', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'import', 'Pressmachine', 'module', 90, 0),
('5be141e6-37f7-427d-0c79-4709ffccffac', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'export', 'Pressmachine', 'module', 90, 0),
('487adae5-bb53-e6b1-6dbf-4709ff2813ec', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'access', 'Ink', 'module', 89, 0),
('488ceac0-bf2c-1438-1046-4709fff43653', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'view', 'Ink', 'module', 90, 0),
('489a2c5c-899b-f2ef-2ac9-4709ff59add6', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'list', 'Ink', 'module', 90, 0),
('48a73687-fad2-0256-4b7f-4709ff55a8ff', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'edit', 'Ink', 'module', 90, 0),
('48b4683e-c31a-99bf-6b50-4709fff1a8a8', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'delete', 'Ink', 'module', 90, 0),
('48c1a494-3102-9e90-7f8c-4709ff9f24c6', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'import', 'Ink', 'module', 90, 0),
('48cef3ee-1ed8-25c2-4c59-4709ff3fb51e', '2006-12-23 14:35:27', '2006-12-23 14:35:27', '1', NULL, 'export', 'Ink', 'module', 90, 0);

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

INSERT INTO `acl_roles` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `name`, `description`, `deleted`) VALUES 
('88497c94-a5ff-bd9f-d7b2-47131929bbfd', '2007-10-15 07:41:58', '2007-10-15 07:42:14', '1', '1', 'Demo', NULL, 0);

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

INSERT INTO `acl_roles_actions` (`id`, `role_id`, `action_id`, `access_override`, `date_modified`, `deleted`) VALUES 
('88948217-1b20-09d4-dff4-47131950aa21', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '5645804c-d438-b730-90ab-458d3e9f9bf5', 0, '2007-10-15 07:42:14', 0),
('88bf7e6f-b34b-f914-ce8d-47131954b570', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '58f2f74e-a8a4-d414-0b22-458d3ef32b9a', 0, '2007-10-15 07:42:14', 0),
('88e4a750-fd69-31a6-628b-471319e0f694', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '584f4500-ae4f-6b8e-4a39-458d3e34a9d4', 0, '2007-10-15 07:42:14', 0),
('89089039-7eb4-e54d-2b11-47131979bb1a', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '5a6ad064-d7ab-cd85-a402-458d3ed172b7', 0, '2007-10-15 07:42:14', 0),
('892bbe12-4b7f-bc3b-cac0-47131935f24b', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '59bff8b3-8fb3-16ea-cba2-458d3e111acc', 0, '2007-10-15 07:42:14', 0),
('894f50d3-2c08-1d94-9c79-471319b3786a', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '579fb85c-dd99-a16f-fdbd-458d3eca30a3', 0, '2007-10-15 07:42:14', 0),
('89730d58-4657-74c3-02d0-4713190aa31d', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '56f57663-3b52-8a72-e6d0-458d3e1cabfb', 0, '2007-10-15 07:42:14', 0),
('89974095-0f6e-2a1d-8506-4713199d9e91', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '970032eb-adc2-b549-9947-458d3e967af5', 0, '2007-10-15 07:42:14', 0),
('89bc6d8f-3a73-b94a-c511-4713194bee5b', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '99d99a60-5067-19b7-d3df-458d3e0dc9b1', 0, '2007-10-15 07:42:14', 0),
('89e1c6a5-418f-706d-c087-4713190608ef', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '9920a67a-d18b-ae93-a595-458d3ee7c1da', 0, '2007-10-15 07:42:14', 0),
('8a0840f9-4ae9-d56e-e11f-471319c9a5fb', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '9b63f6b0-b570-90e8-d1df-458d3ecf0b23', 0, '2007-10-15 07:42:14', 0),
('8a2f09f0-73f1-5b63-436b-471319bb774c', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '9a8f35da-d496-0229-8be0-458d3e05a6a3', 0, '2007-10-15 07:42:14', 0),
('8a55dc5e-6a1a-2261-f8ec-4713199a14dd', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '986a87ab-e91b-295e-a55c-458d3e7cc32b', 0, '2007-10-15 07:42:14', 0),
('8a7f2441-9757-f6fd-e573-47131956df82', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '97b82043-f508-fe6b-c328-458d3ecb8090', 0, '2007-10-15 07:42:14', 0),
('8aa8748e-36a5-26f8-3cb0-471319657281', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'e0c638e9-28df-d981-949b-458d3e7596f0', 0, '2007-10-15 07:42:14', 0),
('8ad1f462-379c-c0f5-97ef-471319df0ec9', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'e435d7c0-26ff-e647-ca5c-458d3e9adc48', 0, '2007-10-15 07:42:14', 0),
('8bb8e668-4992-7193-f876-47131972862d', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'e386c850-7dc0-e8b9-b505-458d3e7431ff', 0, '2007-10-15 07:42:14', 0),
('8be52a7c-38a3-89fe-613b-4713194defcd', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'e59c4104-c84f-5082-8641-458d3ed88b28', 0, '2007-10-15 07:42:14', 0),
('8c0f2d46-a8a2-a782-5718-47131915367b', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'e4e84780-544e-2bae-1a2f-458d3e14d4a4', 0, '2007-10-15 07:42:14', 0),
('8c39c494-0761-f143-f59e-471319f7e252', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'e229c83a-e81a-ce95-5ff6-458d3e8e1778', 0, '2007-10-15 07:42:14', 0),
('8c6409ad-3259-bd20-c3d5-471319a80be3', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'e17314f0-d487-6383-22f6-458d3e0b40c3', 0, '2007-10-15 07:42:14', 0),
('8c8d0fd4-eaaf-bb67-15a5-471319eced06', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '6495f431-f1c2-0ca7-e77e-458d3effdc95', 0, '2007-10-15 07:42:14', 0),
('8cb5e322-70af-7443-4d0b-47131965f749', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '6776e281-4111-3401-570d-458d3e79a774', 0, '2007-10-15 07:42:14', 0),
('8cfa72bd-11f1-5171-1eb5-47131949e6a5', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '66b98e2f-d843-eecc-5dd4-458d3eeaaea1', 0, '2007-10-15 07:42:14', 0),
('8d2ac209-95e6-028a-2a33-471319893cec', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '695805bd-1e94-3298-12f9-458d3e27a15d', 0, '2007-10-15 07:42:14', 0),
('8d73b93e-e036-5662-00e1-471319aea667', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '688b456c-a0bd-e618-4adf-458d3e3da636', 0, '2007-10-15 07:42:14', 0),
('8da0ecaf-7d54-384e-009e-4713194230e1', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '6606fdcd-9ba0-bedb-721f-458d3e287c90', 0, '2007-10-15 07:42:14', 0),
('8dcc0680-2c4b-59ea-0a8f-4713199e9da4', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '654f7d47-82d6-a37d-af08-458d3e309238', 0, '2007-10-15 07:42:14', 0),
('8df8931b-dd06-bf17-43c9-471319f08cd3', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '8d723634-5ca1-f5e1-65b5-458d3e2285d4', 0, '2007-10-15 07:42:14', 0),
('8e24ae2d-d6a7-dd85-574c-4713196bde8e', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '90c898de-dcad-01a9-b3f4-458d3ee6c6fb', 0, '2007-10-15 07:42:14', 0),
('8e605aab-cbbe-738c-e97c-47131921ecc6', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '9018e02f-c318-90dd-3e1b-458d3e650223', 0, '2007-10-15 07:42:14', 0),
('8e8d4699-4942-c2a6-ee08-47131941c26e', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '922374e1-aaa6-32ad-d0f0-458d3e0e35ab', 0, '2007-10-15 07:42:14', 0),
('8eba4dda-d859-c29a-8dde-471319a2d9ad', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '9172065e-56ba-9b1d-1709-458d3e22e3bf', 0, '2007-10-15 07:42:14', 0),
('8ee6554d-fd23-2fbb-5360-47131944e2fd', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '8f6bae13-b8a8-235f-68d6-458d3e934e79', 0, '2007-10-15 07:42:14', 0),
('8f13d299-e1a8-a4cd-3875-4713195fbfa1', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '8e954f57-36b0-5124-2911-458d3ecb1d0e', 0, '2007-10-15 07:42:14', 0),
('8f3e1c70-edae-9121-0a3a-47131903e2c9', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'bebc4460-847c-4a89-f425-4709d36532e6', 0, '2007-10-15 07:42:14', 0),
('905639aa-3acd-4be9-eeba-471319fde71a', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'bef99f5a-5139-dfb8-0fec-4709d3bd54be', 0, '2007-10-15 07:42:14', 0),
('9093d07b-70e2-50d5-3c4e-4713192ac742', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'bee943ac-805e-ca97-5025-4709d304f9fc', 0, '2007-10-15 07:42:14', 0),
('90c3d93b-ddfb-4fce-4b97-4713195371c9', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'bf144584-aaae-5050-83df-4709d373eb63', 0, '2007-10-15 07:42:14', 0),
('90f16d9a-5050-b600-53e3-471319e8416f', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'bf06f2cc-fd56-f065-eb4e-4709d376a71c', 0, '2007-10-15 07:42:14', 0),
('912891a6-5bb4-ab92-3b86-471319bd6e7f', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'bedbfd6b-726d-1abf-bfcd-4709d36cd1d5', 0, '2007-10-15 07:42:14', 0),
('91566b8e-42a3-e090-b923-47131955cf14', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'bece820d-6dfb-dccd-ad53-4709d31f149c', 0, '2007-10-15 07:42:14', 0),
('9181bc25-5307-1931-f939-471319250bcc', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '3632f6dc-1bf9-9db0-2e60-458d3e0f8fe0', 0, '2007-10-15 07:42:14', 0),
('91ac11f2-6d9e-4b73-6423-4713198f440a', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '3956c37c-c6d9-8eae-442d-458d3e342306', 0, '2007-10-15 07:42:14', 0),
('91ddb659-8324-060a-4776-471319e04061', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '38b03879-7f88-6705-acfb-458d3e090895', 0, '2007-10-15 07:42:14', 0),
('920ae0d2-564a-2b91-57ff-4713198260d1', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '3b6c88bc-d553-72c1-44ab-458d3eeee72a', 0, '2007-10-15 07:42:14', 0),
('92358d42-cabc-7a44-b02f-4713191925e8', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '3a020d56-8817-e5dd-081c-458d3ed9cf73', 0, '2007-10-15 07:42:14', 0),
('92603057-60d4-3c40-4cf2-471319af1d02', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '3801a6f7-5a23-8d3b-5d2d-458d3e367df5', 0, '2007-10-15 07:42:14', 0),
('928ac605-2ef9-7595-858f-4713191b3816', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '36dabba9-44af-f993-7d24-458d3ea43de1', 0, '2007-10-15 07:42:14', 0),
('92c39c1b-23ca-9d85-2b74-471319c1701f', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'a7cd31ba-9f5f-e19a-07f9-458d3e3b420e', 0, '2007-10-15 07:42:14', 0),
('92efdaec-64bf-013d-75bd-471319261a2f', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'ab202bb0-8e1b-1efa-ed1f-458d3e6fcb13', 0, '2007-10-15 07:42:14', 0),
('931c6637-2b93-21fa-816b-47131948bbb1', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'aa64de59-4288-b346-bb0f-458d3e06754f', 0, '2007-10-15 07:42:14', 0),
('934da7e4-7da4-a297-f290-4713190919d6', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'ac963a87-f22e-1ddc-ddcc-458d3ef9c4e1', 0, '2007-10-15 07:42:14', 0),
('937f92ba-be4f-cd7d-827e-471319b0c5b6', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'abdd825e-b1ea-f1f4-56cf-458d3e8dcdd9', 0, '2007-10-15 07:42:14', 0),
('93b507e3-7a69-3f9d-f97d-47131908b27a', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'a996aa69-f709-037a-eba3-458d3e5686f6', 0, '2007-10-15 07:42:14', 0),
('93e64f22-ec7d-8036-19de-4713197ba500', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'a8d068cd-c27c-0110-0838-458d3e1a6e98', 0, '2007-10-15 07:42:14', 0),
('9415aca2-42d7-7c4a-62cb-471319328dd0', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '482853d7-f46b-c414-ca95-458d3eb7c3ba', 0, '2007-10-15 07:42:14', 0),
('94496be3-0551-7a6f-616d-4713199f3c27', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '4be58be6-f5f9-49b0-629f-458d3e94cd86', 0, '2007-10-15 07:42:14', 0),
('947a1e42-8a0b-70ab-aa52-471319087fdf', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '4afd023c-aa91-35cc-7fcc-458d3e1dd56a', 0, '2007-10-15 07:42:14', 0),
('94aa2996-3168-5926-47f9-471319edb75f', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '4d610b06-d463-2e82-2830-458d3e07f7fb', 0, '2007-10-15 07:42:14', 0),
('94dab709-910e-36fe-24e9-47131965f092', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '4ca3e62c-8fae-fad2-ae27-458d3e0541b2', 0, '2007-10-15 07:42:14', 0),
('990281af-eeaa-fab9-0d94-471319103d30', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '49a2182e-b8d2-3c02-216a-458d3e53f77c', 0, '2007-10-15 07:42:14', 0),
('993a91f9-4af8-c57c-2b46-471319b996f7', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '48dd020c-c320-7e43-c172-458d3ee6df7e', 0, '2007-10-15 07:42:14', 0),
('99699c65-b50f-c78f-e6d5-47131971cf22', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '1e690522-43bd-97a9-e9ab-458d3e998980', 0, '2007-10-15 07:42:14', 0),
('99a90899-9107-90eb-27e5-4713191b7956', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '52160401-5c4a-695b-02b4-458d3efa147f', 0, '2007-10-15 07:42:14', 0),
('99e59aae-f469-e3d0-10d4-47131978f432', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '45b40bd4-77ae-ffe5-654f-458d3ee3198f', 0, '2007-10-15 07:42:14', 0),
('9a153d76-0c02-ba0b-a714-4713196f90d5', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '68e40f18-c684-f401-ff88-458d3ea18b0c', 0, '2007-10-15 07:42:14', 0),
('9a4673ea-c94e-6458-731a-471319f70a9b', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '5d2b0717-2646-78b4-bdc8-458d3e63e45e', 0, '2007-10-15 07:42:14', 0),
('9a75eb6e-4e7b-d61c-8e59-4713194d3922', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '39a70865-8869-4caa-5c31-458d3ed3adc6', 0, '2007-10-15 07:42:14', 0),
('9aa40c66-f394-b2a3-948d-4713191c2dee', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '2e370f87-7dd9-8d5f-d32d-458d3eededd0', 0, '2007-10-15 07:42:14', 0),
('9ad8f4bd-2bd6-0dd0-331f-4713195fc9ae', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'b69d1f1c-2509-8979-a988-458d3e91c558', 0, '2007-10-15 07:42:14', 0),
('9b15f60b-18f3-be28-4002-471319e47e5d', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'ba9180e7-05cd-3778-cb7c-458d3ed6d02e', 0, '2007-10-15 07:42:14', 0),
('9b4d14f5-30f3-0a0f-2153-471319d627b7', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'b9e34e8d-43b7-94b1-d3b1-458d3e59a80a', 0, '2007-10-15 07:42:14', 0),
('9b8302bc-ea44-efa8-8261-471319027249', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'bc0d8f74-9081-8715-d39a-458d3e3a2aba', 0, '2007-10-15 07:42:14', 0),
('9bb65e06-c1de-2995-daf9-471319bfd770', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'bb42efee-1ed5-77d4-7b8e-458d3eb36c71', 0, '2007-10-15 07:42:14', 0),
('9be93939-e39a-5bce-254e-471319c58445', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'b92fdad4-93f2-d3fb-32c2-458d3e638594', 0, '2007-10-15 07:42:14', 0),
('9c1c443b-85a9-0216-3b22-47131976ee2e', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'b847cfb9-2c5a-7aee-b1b4-458d3e139a17', 0, '2007-10-15 07:42:14', 0),
('9c54f315-99db-5e01-a79b-47131998cc48', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '80f38044-ae80-7fd4-a236-463edce828d2', -98, '2007-10-15 07:42:14', 0),
('9c87666b-e188-c915-3614-471319c24d67', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '8117faae-e7ad-808d-ce28-463edc61be74', 0, '2007-10-15 07:42:14', 0),
('9cb7f844-5019-7edc-72a1-4713194b5612', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '81108223-aaa5-963e-f737-463edc2771c2', 0, '2007-10-15 07:42:14', 0),
('9ecf8b0b-991f-3ea8-f0a7-4713196570ae', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '8126c62f-9d86-0754-5150-463edcb356b2', 0, '2007-10-15 07:42:14', 0),
('a29b2710-2d63-3c01-a945-471319c81975', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '811f57e2-8c7b-57b7-9e5a-463edce98eeb', 0, '2007-10-15 07:42:14', 0),
('a2e48bbe-f1cb-7dcb-0315-4713191afdbe', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '810916dd-57c4-8670-8787-463edcb01c0c', 0, '2007-10-15 07:42:14', 0),
('a31894ce-6d2f-1d74-5669-471319af810a', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '81016b21-76c7-7213-da6f-463edc703476', 0, '2007-10-15 07:42:14', 0),
('a397c9b4-d244-faf8-c600-471319501eef', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '487adae5-bb53-e6b1-6dbf-4709ff2813ec', 0, '2007-10-15 07:42:14', 0),
('a3d2b78f-69e9-cfa9-162a-47131923f7df', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '48b4683e-c31a-99bf-6b50-4709fff1a8a8', 0, '2007-10-15 07:42:14', 0),
('a407818b-fb6c-c814-39f1-4713199c6922', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '48a73687-fad2-0256-4b7f-4709ff55a8ff', 0, '2007-10-15 07:42:14', 0),
('a43d9116-7661-3431-fa40-471319863c92', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '48cef3ee-1ed8-25c2-4c59-4709ff3fb51e', 0, '2007-10-15 07:42:14', 0),
('a472839a-b94d-5ac3-72d5-47131969002e', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '48c1a494-3102-9e90-7f8c-4709ff9f24c6', 0, '2007-10-15 07:42:14', 0),
('a4a72ddd-9bea-bb2f-e431-471319e3e702', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '489a2c5c-899b-f2ef-2ac9-4709ff59add6', 0, '2007-10-15 07:42:14', 0),
('a4db03c7-3112-c892-057c-4713190b1cba', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '488ceac0-bf2c-1438-1046-4709fff43653', 0, '2007-10-15 07:42:14', 0),
('a50bd244-e3fc-e1a5-c7fa-471319a7a664', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '172d9f2b-9456-85b8-9151-458d3eebea53', 0, '2007-10-15 07:42:14', 0),
('a53cff64-101b-3c5d-b0a3-4713199ab9c2', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '1a2f10b3-8f0f-0770-8537-458d3e97c617', 0, '2007-10-15 07:42:14', 0),
('a56dc40a-0920-352b-90f9-4713194d7cf2', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '1968eedf-ca88-37e4-5895-458d3e46e1d6', 0, '2007-10-15 07:42:14', 0),
('a5a32286-925e-4c19-684d-471319f054dc', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '1b960551-7ab1-8bd3-8141-458d3e780a72', 0, '2007-10-15 07:42:14', 0),
('a5d5de0d-4546-e0e5-2692-47131901300d', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '1ae25447-e891-e79a-c90d-458d3ed5fd74', 0, '2007-10-15 07:42:14', 0),
('a606cc3d-405e-51ae-8379-471319d4fd3a', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '18b41bca-7701-0b5a-0e54-458d3ee9bae7', 0, '2007-10-15 07:42:14', 0),
('a638ac09-97b3-cac0-71b1-4713197b9b74', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '17e40641-51d6-8117-ad98-458d3e6c5793', 0, '2007-10-15 07:42:14', 0),
('a66ae8f3-27dd-859f-b010-4713194068ed', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '2f670768-0eaf-0ada-4cef-45e6e4e9efc4', -98, '2007-10-15 07:42:14', 0),
('a6a05977-2707-f3bc-73be-471319dff5e8', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '2f8cb26b-b5d5-be65-6375-45e6e47624f3', 0, '2007-10-15 07:42:14', 0),
('a6dffc42-4248-9079-3a28-471319a56752', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '2f851360-f3d7-2326-09ed-45e6e4d041ae', 0, '2007-10-15 07:42:14', 0),
('a7163c70-dbc1-89ea-db6a-471319dd26a9', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '2f9bea12-19c1-df6c-72d2-45e6e4016d6c', 0, '2007-10-15 07:42:14', 0),
('a74c4813-eb31-1336-c773-471319460aba', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '2f9445d3-85a5-6308-0947-45e6e4b01de8', 0, '2007-10-15 07:42:14', 0),
('a7813562-95ce-9b3a-ba69-471319e55efe', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '2f7d71cc-4f50-cd37-8bcd-45e6e4fea4d6', 0, '2007-10-15 07:42:14', 0),
('a7b61eb7-a7fd-0447-4b75-471319d008a4', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '2f75a03e-044e-5ce8-ac7c-45e6e44d37ec', 0, '2007-10-15 07:42:14', 0),
('a7ea88bc-cfda-443a-b5ce-4713191a92b2', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '9f39dff4-a725-9552-c3a1-45e6e5086f39', 0, '2007-10-15 07:42:14', 0),
('a81f0711-f9b0-d833-5d0e-47131953da02', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '9f5f9f56-5bec-e983-b0c6-45e6e5434234', 0, '2007-10-15 07:42:14', 0),
('a85368ac-61d6-ef32-9e3a-471319d90270', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '9f57aace-3d04-d66d-4a1e-45e6e5d1ec0d', 0, '2007-10-15 07:42:14', 0),
('a8885e67-e34f-8762-512d-47131925f2c3', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '9f6eb5f3-e0ac-69db-2649-45e6e5cafa96', 0, '2007-10-15 07:42:14', 0),
('a8bd7cec-ccaf-8c7b-bcaf-471319c8f4ad', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '9f672cb0-fea1-4dbb-afaf-45e6e5e581f3', 0, '2007-10-15 07:42:14', 0),
('a8f3f4b2-0ea3-c18f-0243-471319679074', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '9f4faf1a-5b36-7ca3-1b5a-45e6e5d4ec51', 0, '2007-10-15 07:42:14', 0),
('a928861b-31a0-dafc-9d54-471319211b35', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '9f47dde6-5f8c-b478-84a5-45e6e5a44f99', 0, '2007-10-15 07:42:14', 0),
('a95c1948-52ee-4399-efae-471319ee8d05', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '15ff2d51-812e-bbbb-5bb0-458d3e208a07', 0, '2007-10-15 07:42:14', 0),
('a992d084-0863-096c-e5df-4713198129fc', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '1a065aaa-baa5-f0b1-27fa-458d3e0f65a9', 0, '2007-10-15 07:42:14', 0),
('a9cb6c36-ca98-1006-6dba-471319f8949f', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '19349a3b-12c3-36ab-228f-458d3e68f17b', 0, '2007-10-15 07:42:14', 0),
('aa070f55-ee4f-4a9a-68c8-4713196d5ede', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '1b71d335-b74a-3d7a-7643-458d3ef8b28e', 0, '2007-10-15 07:42:14', 0),
('aa453b28-b236-0e51-8b3e-4713196337a6', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '1abd5b09-273f-20c9-c420-458d3ee96b88', 0, '2007-10-15 07:42:14', 0),
('aa7a6aab-f3c6-7918-8f3b-47131961df56', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '18548709-2da4-ff18-5dba-458d3eb6c91d', 0, '2007-10-15 07:42:14', 0),
('aaaf5929-4a7a-b10e-9d53-4713193220ea', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '17513dfb-3172-0222-2f42-458d3e309abf', 0, '2007-10-15 07:42:14', 0),
('aae64f5e-2402-c892-89f3-471319723225', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'a6ca9907-e0d1-1390-7959-458d3ef3159e', 0, '2007-10-15 07:42:14', 0),
('ab1e40cc-9a46-a54f-b5f7-471319c7f7a4', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'a987812e-5705-5141-8299-458d3e26ad14', 0, '2007-10-15 07:42:14', 0),
('ab576405-c538-96ee-83ed-47131992efc6', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'a8cee239-a322-0483-2ecd-458d3e0d27d9', 0, '2007-10-15 07:42:14', 0),
('ab8d77fd-263c-321e-18ed-471319af4fae', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'ab2c886d-9f6c-85c2-8dbc-458d3ea5804c', 0, '2007-10-15 07:42:14', 0),
('abc2d876-34cc-5e31-febd-47131913bed5', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'aa7d0a20-cab4-1d3e-2583-458d3eeb6bbe', 0, '2007-10-15 07:42:14', 0),
('ac022f3a-1ffd-0bfd-844b-471319481dba', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'a825b7bb-fe38-eb75-9c19-458d3ec8336f', 0, '2007-10-15 07:42:14', 0),
('b0031935-1600-4bef-4fb8-471319c0140d', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'a77b31fb-3754-1dd9-a480-458d3e3f330b', 0, '2007-10-15 07:42:14', 0),
('b03e9e8e-2c11-5a7f-02e0-4713193d1f97', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'a82c1018-465b-3f3e-841b-45e6e3c383e7', 0, '2007-10-15 07:42:14', 0),
('b07dd7e8-ce42-cc9e-9e75-471319cff0c0', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'a85422b1-f5ef-da72-a076-45e6e38a4401', 0, '2007-10-15 07:42:14', 0),
('b242452f-82bd-8a12-38d2-471319471fe2', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'a84cadb4-ee93-6da6-fee3-45e6e3adb872', 0, '2007-10-15 07:42:14', 0),
('b52ed718-2c9c-9ff9-8298-47131945ddcd', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'a86ad26e-5155-bb4e-47eb-45e6e32f2879', 0, '2007-10-15 07:42:14', 0),
('b5728679-8e72-3d26-5f80-4713194fba15', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'a863482f-5ece-0286-c5d3-45e6e3bd2f59', 0, '2007-10-15 07:42:14', 0),
('b5b9d369-9d57-7841-eb16-47131932b27c', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'a8450331-1f5e-4184-8457-45e6e3ea17a4', 0, '2007-10-15 07:42:14', 0),
('b86dbd4b-3f85-2f0b-9444-47131989122b', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'a83b7a5a-3d07-1132-31f0-45e6e3cc9c32', 0, '2007-10-15 07:42:14', 0),
('bb27c6ed-2295-dc46-1493-471319f230ff', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '72e8863e-98ea-3b7c-30f7-458d3e6eb084', 0, '2007-10-15 07:42:14', 0),
('be161019-b172-0619-b72c-471319c7e04c', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '75d62e6f-217d-2c7b-d8c8-458d3ef3637b', 0, '2007-10-15 07:42:14', 0),
('bebd1b16-11cd-ffca-4ef1-471319953fa7', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '752805f2-1b0b-bee3-bc14-458d3eff0b02', 0, '2007-10-15 07:42:14', 0),
('c1cedac9-e623-1b96-781f-471319568532', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '77321b9c-ce5d-4e71-7570-458d3e13d606', 0, '2007-10-15 07:42:14', 0),
('c21596fb-5434-df86-edd3-471319648201', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '76890bc6-0214-6b10-fded-458d3eced0ba', 0, '2007-10-15 07:42:14', 0),
('c24de5b9-6071-5393-35d0-471319cbb015', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '745e332a-f736-1844-a985-458d3e708a1e', 0, '2007-10-15 07:42:14', 0),
('c2851540-f887-f2ef-445d-47131916d651', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '739a8ee2-ee47-8adc-ced4-458d3ec29092', 0, '2007-10-15 07:42:14', 0),
('c2bd382e-963f-3267-10b6-4713195fcec2', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '79e54b21-fcb2-9326-dccf-45a251f60d96', 0, '2007-10-15 07:42:14', 0),
('c2f5d730-0740-f11f-b2f6-4713192d233c', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '7beb8039-d0b6-1ba2-6aa6-45a2514359cc', 0, '2007-10-15 07:42:14', 0),
('c330ef67-2fae-4306-be09-471319d9a0f7', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '7b669876-f521-bc9a-1b30-45a251e5ef71', 0, '2007-10-15 07:42:14', 0),
('c36c1ad0-0395-c950-6338-4713190d6c7d', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '7d06b76d-97a4-ae5d-3e9e-45a2512e6d5c', 0, '2007-10-15 07:42:14', 0),
('c3a7a4fe-8261-9281-cf15-471319728ea5', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '7c6d5ae8-3f2e-cfb7-83dd-45a251baa914', 0, '2007-10-15 07:42:14', 0),
('c3e32253-6aff-7424-a272-471319712923', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '7aeac260-51d5-c933-0fa2-45a251141961', 0, '2007-10-15 07:42:14', 0),
('c41d3bc1-9218-8cbf-b20c-471319c1e8fe', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '7a6978d1-f6ee-99bf-182d-45a2516f1237', 0, '2007-10-15 07:42:14', 0),
('c455a188-04ea-e4be-2fbc-4713196cebc6', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'a4085a23-9020-3283-a921-4709d1930846', 0, '2007-10-15 07:42:14', 0),
('c48e4efb-1542-76af-698d-471319bc8c7e', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'a43ee71b-146a-06b8-3a51-4709d12a4bb2', 0, '2007-10-15 07:42:14', 0),
('c4ca6701-6681-14f1-c86f-471319aa5fa4', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'a431bd64-b6ac-f524-1502-4709d1f791b8', 0, '2007-10-15 07:42:14', 0),
('c503e7e9-3750-b08b-eeae-471319079c60', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'a4591e4e-a083-205e-aedc-4709d100eac7', 0, '2007-10-15 07:42:14', 0),
('c53ccd78-f556-d8b5-89fc-4713197d9399', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'a44be72a-640c-0b5a-2f54-4709d1027d32', 0, '2007-10-15 07:42:14', 0),
('c57550f2-af94-9485-b1d1-4713198bbb30', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'a424eb2d-be47-c8bc-343e-4709d11ff1b6', 0, '2007-10-15 07:42:14', 0),
('c5b220b6-5269-8a50-39cc-471319d86eab', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'a417f017-e4ec-6431-d4ea-4709d15cf4c6', 0, '2007-10-15 07:42:14', 0),
('c6cc7197-fb9a-22f5-e702-471319e8f81a', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '5b8dcfb0-864d-da9a-8c6a-4709ff1e0ce7', 0, '2007-10-15 07:42:14', 0),
('c710ebfe-6914-fe72-ec3e-471319eac95b', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '5bc6ecf5-b3c3-6271-bd34-4709ff3e35d6', 0, '2007-10-15 07:42:14', 0),
('c75e6dcf-d8e8-ed64-544a-471319d4042a', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '5bb9e576-fae0-8f0f-2672-4709ff99663b', 0, '2007-10-15 07:42:14', 0),
('c7a7144b-0c5c-ee91-832c-471319c6bfd2', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '5be141e6-37f7-427d-0c79-4709ffccffac', 0, '2007-10-15 07:42:14', 0),
('c7f254f8-4a41-1118-0eb8-4713199bfdc8', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '5bd4062c-775a-fdf8-2604-4709ff6e2d2a', 0, '2007-10-15 07:42:14', 0),
('c84a150b-dcb5-a6f5-0e10-471319144a8d', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '5bacba8e-947b-83aa-9a11-4709fff6f276', 0, '2007-10-15 07:42:14', 0),
('c8a42a6a-2214-c586-a773-471319d0ebc8', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '5b9f65a8-a3d6-b3a0-99bb-4709ffa3bcb2', 0, '2007-10-15 07:42:14', 0),
('c8facc2d-baf8-e187-aea4-47131956e7ef', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'a4667ba5-7f20-1e41-d51c-4709d107e2ef', 0, '2007-10-15 07:42:14', 0),
('c946ea23-2f0e-631e-9973-471319ddba1d', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '897d679b-8753-3852-7e77-4709ceb1145c', 0, '2007-10-15 07:42:14', 0),
('c99b82b6-91e2-fda0-57f1-471319c9d233', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '89709632-ea68-d9ec-3f24-4709cea1ef99', 0, '2007-10-15 07:42:14', 0),
('ca01f77f-3b74-188b-747b-47131995f71c', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '8996f664-51f0-f8e3-ef48-4709cebbf751', 0, '2007-10-15 07:42:14', 0),
('ca4a7d2f-e6d0-60d1-e979-471319178297', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '898a217c-ef05-c17f-910c-4709ced21533', 0, '2007-10-15 07:42:14', 0),
('ca8e969e-81d5-4a7a-cc41-471319361019', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '8963b051-b939-e852-a730-4709cec2be08', 0, '2007-10-15 07:42:14', 0),
('cacca47b-e8de-def0-1327-471319152242', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '89545bde-054b-963a-94a1-4709ce6ec389', 0, '2007-10-15 07:42:14', 0),
('cb0ac223-171e-5cdc-95db-471319fb9eea', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '488eded5-4728-36fc-dd31-45e6ec31b091', 0, '2007-10-15 07:42:14', 0),
('cb571c75-0492-164a-25d1-471319f7ff06', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '48b81dc9-6561-c35a-21d8-45e6ec1e2b32', 0, '2007-10-15 07:42:14', 0),
('cb9768b7-3c3e-1aa5-c63f-471319c67dbb', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '48b055cc-d1bc-47f8-832d-45e6eceb8f5b', 0, '2007-10-15 07:42:14', 0),
('cc3fef77-925a-7267-e9df-4713193c9c94', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '48c775b1-bea2-208f-2d49-45e6ec7d6888', 0, '2007-10-15 07:42:14', 0),
('cc9a1505-df86-391f-b077-4713199a8321', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '48bfc409-e5c5-2437-ad43-45e6ec6adca2', 0, '2007-10-15 07:42:14', 0),
('ccfaaf0c-2152-a8c0-304d-471319388ccc', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '48a88bc6-da6c-6219-9bc0-45e6ece9008b', 0, '2007-10-15 07:42:14', 0),
('cd599497-97cc-4ff3-fb93-47131936948d', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '48a0a06d-650e-58de-8e8e-45e6eca5cd5d', 0, '2007-10-15 07:42:14', 0),
('cdaab7dc-e95a-6193-dd03-471319af9d33', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '35c5b026-da42-51b1-03a8-463edc889f5c', -98, '2007-10-15 07:42:14', 0),
('cded67ed-6987-4f1b-ed5d-4713192be537', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '35f0988c-3751-371e-3068-463edc224172', 0, '2007-10-15 07:42:14', 0),
('ce2b5b88-2d23-2be3-676e-471319d9f2ed', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '35e9044a-11cc-9193-e03c-463edc7cc0c9', 0, '2007-10-15 07:42:14', 0),
('ce70336f-59a7-b18c-2288-471319b4f4fe', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '35ffe201-41a0-036c-3698-463edc0b61ba', 0, '2007-10-15 07:42:14', 0),
('ceaedca6-7439-1605-aff7-4713192b6c8e', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '35f8330b-eb05-04ca-bdf3-463edcc73a15', 0, '2007-10-15 07:42:14', 0),
('cf64792c-d5df-5f15-0e38-471319fad8b4', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '35e16233-121d-e83c-6d02-463edc452b62', 0, '2007-10-15 07:42:14', 0),
('cfa4053f-0afc-b1e2-608d-47131967134c', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '35d98208-0fbf-7dfd-e897-463edc540e17', 0, '2007-10-15 07:42:14', 0),
('cfe17103-095b-9d12-1ef1-471319cf3b61', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '2e275407-f0e7-2cb5-b88d-459b83da5ec3', 0, '2007-10-15 07:42:14', 0),
('d02328cc-f75d-2b79-c809-4713198edd42', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '314ab469-a71a-8931-c1e2-459b83e3ebbf', 0, '2007-10-15 07:42:14', 0),
('d05f46f1-e8f7-07f2-1c69-4713197e7122', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '308a2662-4b72-feb8-7296-459b838afeec', 0, '2007-10-15 07:42:14', 0),
('d09b4412-d4a6-6a6c-b33b-4713191f78a0', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '32d599ca-eb5b-e94b-6905-459b835865be', 0, '2007-10-15 07:42:14', 0),
('d0d77df8-6d53-a26e-9587-471319c0852c', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '320fe327-f8ce-2421-af9b-459b83f5a66e', 0, '2007-10-15 07:42:14', 0),
('d1139a1a-a3b5-a9f6-c58c-471319f76c23', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '2fc5c5b6-558a-ddd9-40bb-459b83e23898', 0, '2007-10-15 07:42:14', 0),
('d1526acb-b6fe-99c8-b171-471319fde570', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '2efacb8d-c13f-24d8-08f5-459b837e90c7', 0, '2007-10-15 07:42:14', 0),
('d192847d-da95-8cf0-42cf-47131906326f', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '8583ef63-23e2-064d-777c-4709d49c2d46', 0, '2007-10-15 07:42:14', 0),
('d1d17703-ff19-ab6a-1cad-471319bf56ce', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '85c86d34-9bff-8975-fa77-4709d4d8723c', 0, '2007-10-15 07:42:14', 0),
('d2104d7c-d069-40d4-6d41-471319874409', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '85ae0781-fd61-fe39-ccb2-4709d41829a7', 0, '2007-10-15 07:42:14', 0),
('d2579702-85de-f37c-b4f8-47131913d891', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '85e321f5-3173-10ef-e0be-4709d42fef26', 0, '2007-10-15 07:42:14', 0),
('d2b678a5-7737-7e2c-34b1-471319488ff7', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '85d5bc71-9013-8668-90c0-4709d48ecebc', 0, '2007-10-15 07:42:14', 0),
('d3097bc0-d3c0-8105-b283-471319397c7d', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '85a0525e-599c-a766-99aa-4709d4b51fa0', 0, '2007-10-15 07:42:14', 0),
('d34946c5-12bc-0739-8073-471319735f7c', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '8593570e-d41e-0bb3-5cb0-4709d42a3577', 0, '2007-10-15 07:42:14', 0),
('d38b2960-96f5-d8bf-b64d-471319232583', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'e65b4a52-41f1-a65e-6b89-45e6e0329c62', 0, '2007-10-15 07:42:14', 0),
('d3d6af27-d9f9-8ecb-14b8-4713195cc560', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '6091a16d-d552-fda8-077d-45e6e13d7ac9', 0, '2007-10-15 07:42:14', 0),
('d433cb19-7e56-ffe1-002e-47131930577c', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '272e05bc-e5b3-10f5-f566-45e6e16746e8', 0, '2007-10-15 07:42:14', 0),
('d48e6621-e1a7-6b39-97dc-4713191ee37f', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '71ec2002-f0b1-77b0-d1d8-45e6e1fcda4c', 0, '2007-10-15 07:42:14', 0),
('d68d4225-de74-62d1-46ce-471319cc1f75', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '644af00c-ac8a-9997-5a90-45e6e10ab7c5', 0, '2007-10-15 07:42:14', 0),
('dc3e5d1a-22bb-0f8f-d844-4713192c45cf', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '229863dd-bafb-9072-d6cd-45e6e0c4c20a', 0, '2007-10-15 07:42:14', 0),
('dff108db-1c13-fe1b-374c-471319132b0d', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'a908d5de-4a6e-efb3-99b4-45e6e0deaa22', 0, '2007-10-15 07:42:14', 0),
('e03cfb6e-26ae-a744-5004-471319e683a1', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'bbdc4230-52af-b80d-eb34-458d408caebd', 0, '2007-10-15 07:42:14', 0),
('e087a28c-06f7-1f42-6387-471319385852', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'bf5df4a3-e38a-55ca-1af5-458d40b0feb8', 0, '2007-10-15 07:42:14', 0),
('e125f4ac-5d3d-1fdf-5513-471319d3de55', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'be583e25-56b8-ce9d-3f15-458d405f4f6c', 0, '2007-10-15 07:42:14', 0),
('e16bd490-56e6-0fe0-9bd3-4713193c7e51', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'c13c3d7a-da83-7fa8-0bbe-458d40c538f7', 0, '2007-10-15 07:42:14', 0),
('e1ad3840-8b6b-cd8f-e5be-4713198b04d5', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'c066ceb2-7270-3e3f-5894-458d40c0edbd', 0, '2007-10-15 07:42:14', 0),
('e1f027dd-50fa-93aa-3d25-4713193f87ed', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'bd80e49f-5e55-3ba3-5aaa-458d4025e3d8', 0, '2007-10-15 07:42:14', 0),
('e232d033-62f0-1f57-2ed5-471319a9f987', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'bcc04137-0aab-09fa-065e-458d40032819', 0, '2007-10-15 07:42:14', 0),
('e2769cb3-ac19-baad-45f1-47131915c1c3', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'a94d0834-f048-dc60-1247-458d3ed9c886', 0, '2007-10-15 07:42:14', 0),
('e2bb3cc2-ccdf-7a63-de5d-471319e7ac9b', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'e51407c4-ef76-b4cc-7cf2-458d3e083c25', 0, '2007-10-15 07:42:14', 0),
('e2fd7c9b-606f-68e2-18e5-4713199e4739', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'd9250172-8c48-a8bc-b9c9-458d3ecbb353', 0, '2007-10-15 07:42:14', 0),
('e348c930-dcdc-593d-f46a-471319e30ed6', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'fb7e048c-4d98-8350-98b3-458d3e7e5abd', 0, '2007-10-15 07:42:14', 0),
('e397fe05-c96e-7db7-750d-4713196a2afd', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'f02e0393-870c-e07f-743e-458d3e9ed2d3', 0, '2007-10-15 07:42:14', 0),
('e3e4982f-48f5-d583-300e-47131989d405', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'c03a0e35-9460-c8d1-e078-458d3e351a66', 0, '2007-10-15 07:42:14', 0),
('e42ba7a9-c890-1187-df12-4713198fe084', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'b4c1093b-7122-2047-131f-458d3edbf0c4', 0, '2007-10-15 07:42:14', 0),
('e4763d39-ad3a-278a-663b-47131963fa8d', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '2437395f-57a4-bde6-a884-458d3eae8ac3', 0, '2007-10-15 07:42:14', 0),
('e4bb2eaa-8fd2-ec4b-976c-47131989c4ed', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '28596c4f-ab19-4ef9-f076-458d3e9ede0f', 0, '2007-10-15 07:42:14', 0),
('e5002b4d-2d53-de72-f455-4713199fa2d1', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '278017cd-5f72-cf8f-3216-458d3e6cf8b5', 0, '2007-10-15 07:42:14', 0),
('e54a5b8e-0875-7e3c-1995-471319eb6870', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '29dad5b3-9751-a02e-834a-458d3e5e2373', 0, '2007-10-15 07:42:14', 0),
('e593c249-913c-de59-68a9-471319074020', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '29213c7a-6894-1bf3-4f1c-458d3eb9d241', 0, '2007-10-15 07:42:14', 0),
('e5d840f4-9654-2f08-28ff-4713194a90c4', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '26c67478-973e-0841-4f78-458d3e8b62fc', 0, '2007-10-15 07:42:14', 0),
('e627848c-ec05-5026-01b4-4713195f47a5', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '25ba085f-b454-4425-c63e-458d3ecba794', 0, '2007-10-15 07:42:14', 0),
('e66ea471-28ab-2519-a6dc-471319d0db3f', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '80ed5e42-d002-a87d-2d8c-458d3e100583', 0, '2007-10-15 07:42:14', 0),
('e6b545bb-657c-fd8c-17ff-47131933dec1', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '8463c977-464a-4ce4-bf6c-458d3ee4c232', 0, '2007-10-15 07:42:14', 0),
('e6fa0a32-db66-5a8d-a8cc-4713191312db', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '83686968-262f-5daa-5079-458d3e96844e', 0, '2007-10-15 07:42:14', 0),
('e7419974-6cfb-4db8-d965-4713196c3c84', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '85cf4259-f4f0-ef6b-e687-458d3e0e8e93', 0, '2007-10-15 07:42:14', 0),
('e7897a6d-d7b1-6d8e-163f-471319d50237', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '851ab2ae-3157-eaa1-3722-458d3ea1effe', 0, '2007-10-15 07:42:14', 0),
('e7ce06ea-0ca8-0eb5-fce0-4713198b2d0b', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '8266daf2-49a1-2d9d-c1e3-458d3ea6425c', 0, '2007-10-15 07:42:14', 0),
('e8180a58-b590-4cdc-f108-471319cc7e9f', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '81b1b220-7eec-7f36-161a-458d3ed15638', 0, '2007-10-15 07:42:14', 0),
('e85fb4da-e5ca-659c-d1e2-471319ec3d05', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '911317a4-1592-10ba-eac5-458d3ebe2ce9', 0, '2007-10-15 07:42:14', 0),
('e8ad3e20-437b-6dc5-2fdb-471319471a85', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '941e99f4-9914-51e5-a295-458d3ebecccc', 0, '2007-10-15 07:42:14', 0),
('ea733ea3-2921-bbd4-a2b2-471319c1540a', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '9354e5e3-22cd-7f0e-360a-458d3eaab1de', 0, '2007-10-15 07:42:14', 0),
('eabaa30a-c68b-6a66-e16c-471319c3136b', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '9594b5cf-49b7-c60e-684e-458d3e9592f6', 0, '2007-10-15 07:42:14', 0),
('eb01fae1-cbbf-9735-203c-471319d549f8', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '94d6ac96-5797-a327-2f62-458d3e2785c1', 0, '2007-10-15 07:42:14', 0),
('eb4b0090-d9a9-78a6-d132-47131932b16c', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '929a61a3-32be-347b-1513-458d3ef87395', 0, '2007-10-15 07:42:14', 0),
('eb92a8b8-a81f-af3f-b0f2-471319976087', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '91d0c893-4e86-1634-c14f-458d3e6ec812', 0, '2007-10-15 07:42:14', 0),
('ebd9d1f2-86e9-2287-e100-4713192a5a57', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '55480d71-b8c4-448b-f923-45e6eb96d3e5', 0, '2007-10-15 07:42:14', 0),
('ec209b9d-395e-dca1-2310-4713193e19cf', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '5572c08c-3d3e-9f15-bce1-45e6eb1dffc4', 0, '2007-10-15 07:42:14', 0),
('ec653373-59ee-44f6-e044-471319e55295', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '556b0512-797b-c4b3-0132-45e6ebd5ed58', 0, '2007-10-15 07:42:14', 0),
('ecab416d-e5cb-e3d7-2469-471319f064dc', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '55821e7b-a3f7-98db-9d84-45e6eb16accd', 0, '2007-10-15 07:42:14', 0),
('ecf0d132-2ade-acf3-acc2-4713198e2b20', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '557a7daf-e3b7-0583-4661-45e6eb89ae32', 0, '2007-10-15 07:42:14', 0),
('ed353ec5-ff41-c3e0-f317-471319d5db8d', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '555d9b57-8de9-da15-95be-45e6ebab13b1', 0, '2007-10-15 07:42:14', 0),
('ed794702-5e9d-275c-b5a5-4713196d4af7', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '5555d3ef-6e44-fe0d-d1c0-45e6eb1c7fb4', 0, '2007-10-15 07:42:14', 0),
('edbf7dcb-03eb-b568-7827-47131998975f', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'b065ca9f-faa3-8786-82a8-45e6e4045f3b', 0, '2007-10-15 07:42:14', 0),
('ee06c59d-2686-85b1-08c9-471319cd34a7', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'b08bb533-77d7-b011-a759-45e6e4ab64b3', 0, '2007-10-15 07:42:14', 0),
('ee4fd291-389c-b12d-3304-4713195309a3', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'b083f0be-508b-504d-4011-45e6e433107b', 0, '2007-10-15 07:42:14', 0),
('ee98e44c-43a0-1fd6-330d-471319d494f0', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'b09b10c5-ab26-f920-9424-45e6e4975af3', 0, '2007-10-15 07:42:14', 0),
('eee2aea2-e479-9a47-5c15-4713191f9f2f', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'b0936637-6624-f5c4-9134-45e6e47c4bbd', 0, '2007-10-15 07:42:14', 0),
('ef2e0117-a029-1c28-b99e-4713197fc909', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'b07b908e-4a70-f355-0969-45e6e45786d3', 0, '2007-10-15 07:42:14', 0),
('ef7bafa5-acb0-dfe5-a8f2-471319d7f76f', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'b073ce50-ff7e-43e0-9041-45e6e4a86825', 0, '2007-10-15 07:42:14', 0),
('efc67608-2e54-26f3-6541-4713195d3b0f', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '5f5e2a2a-3775-95e7-2c7a-4709d29dfe18', 0, '2007-10-15 07:42:14', 0),
('f00d7911-511d-546e-6e7a-471319a22b64', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '5f94c683-8523-7308-a6f7-4709d2ed57a6', 0, '2007-10-15 07:42:14', 0),
('f054df52-8d3b-cc17-01df-4713196ad47e', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '5f87ab1b-53f7-c06b-5c58-4709d27e9ff6', 0, '2007-10-15 07:42:14', 0),
('f09bc264-6730-db59-f290-471319a01d96', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '5fb78069-28b2-856b-3d4f-4709d211e728', 0, '2007-10-15 07:42:14', 0),
('f0e341a2-4303-6746-1a1b-471319facb17', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '5faa0ef3-5564-73c8-294b-4709d234d417', 0, '2007-10-15 07:42:14', 0),
('f12d9835-d14f-7dad-80a4-47131967478e', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '5f7aa57a-906e-80cd-b43b-4709d24281e7', 0, '2007-10-15 07:42:14', 0),
('f1771dc9-162b-36a6-7f7c-471319ed2166', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '5f6d886a-84df-6ca6-0090-4709d2b1a8aa', 0, '2007-10-15 07:42:14', 0),
('f1be599f-c4ae-e7ce-f329-4713194b1f56', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '16e39d8c-d92c-0db9-e592-4709d3abef0f', 0, '2007-10-15 07:42:14', 0),
('f203e378-d94c-a988-9166-471319c9f1e4', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '171b5357-42eb-c330-a448-4709d37cdfa8', 0, '2007-10-15 07:42:14', 0),
('f24903ec-d219-852c-3f41-4713196082ca', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '170e0d4a-1ce8-12ea-9406-4709d3e57b1d', 0, '2007-10-15 07:42:14', 0),
('f29529c2-8519-26d8-4cbb-47131919645d', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '173f54ac-eb2e-ffd9-97f4-4709d38c5509', 0, '2007-10-15 07:42:14', 0),
('f2df8cef-ec2b-18bb-3035-47131929fbf7', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '1731c6a5-fdd9-a2e2-be8a-4709d3fec84a', 0, '2007-10-15 07:42:14', 0),
('f32f511d-e6cd-b6b0-9853-471319e22733', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '1700cd58-fe10-cb1a-b5f4-4709d3903127', 0, '2007-10-15 07:42:14', 0),
('f37e5ed8-a87c-d2c0-a79d-471319abcc59', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '16f38753-f854-9822-d3bb-4709d3a6ee2f', 0, '2007-10-15 07:42:14', 0),
('f3ccd22d-d26b-1dd6-af23-471319568922', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'ddacc5b5-fdd8-1e24-d22d-45e6e520d8bb', 0, '2007-10-15 07:42:14', 0),
('f41bf75f-7fc2-c261-0ee4-471319a7abbf', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'ddd568b5-c458-4b74-a94d-45e6e5fbb92d', 0, '2007-10-15 07:42:14', 0),
('45300682-3b01-e873-0ca7-47131998e9a6', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'ddcde9dc-01f0-4918-f7d3-45e6e5cd1a85', 0, '2007-10-15 07:42:14', 0),
('92000bce-09ef-d644-f01b-471319a69acc', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'dde48780-5641-dbcb-0ba6-45e6e5037d07', 0, '2007-10-15 07:42:14', 0),
('e8d007e0-a0d7-ece3-3fc8-4713193f0cdb', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'dddcd015-7720-913e-c526-45e6e5bf86a2', 0, '2007-10-15 07:42:14', 0),
('1d9702d9-07d0-f91d-e0ce-47131998346d', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'ddc626ed-9574-fb46-5105-45e6e54919fe', 0, '2007-10-15 07:42:14', 0),
('22650113-9efc-b72d-3fe1-4713194b584c', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'ddbe7f58-dc19-e847-668c-45e6e55c6b3e', 0, '2007-10-15 07:42:14', 0),
('27a008d4-59ab-cb7d-e5b4-47131997439c', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '61bb21a0-d3e6-541e-f289-45e6e66c36d2', 0, '2007-10-15 07:42:14', 0),
('2c71039e-7ad4-b87a-8a28-471319048f5f', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '61e4581b-e1d8-08e4-3bda-45e6e659a2ef', 0, '2007-10-15 07:42:14', 0),
('31980e79-bfa3-5809-a1ab-471319cc790d', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '61dc9061-cd2a-c942-2951-45e6e6653940', 0, '2007-10-15 07:42:14', 0),
('374001a9-5f61-ea2a-6118-47131943a59e', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '61f3fd58-3243-5330-9efd-45e6e6ab0ef3', 0, '2007-10-15 07:42:14', 0),
('3c230925-d4a8-4ca6-1d9d-47131979622c', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '61ec1cde-a8bd-315c-93ed-45e6e6152810', 0, '2007-10-15 07:42:14', 0),
('414703b7-4e72-b067-8ab2-4713194cdb80', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '61d4d985-c27c-7089-925d-45e6e6e70475', 0, '2007-10-15 07:42:14', 0),
('45f70935-1611-88c9-4fcd-471319e241bd', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '61ccf829-833c-bdbd-9b3e-45e6e61583ab', 0, '2007-10-15 07:42:14', 0),
('4b910ab1-13f0-bd0e-65e9-471319d4ff5f', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '35fcf53d-552d-2e0e-8e37-458d3ed593fa', 0, '2007-10-15 07:42:14', 0),
('506a0309-3d20-4a3b-9991-47131918f391', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '38eb5dcc-ac3b-7b3d-08ae-458d3ebba7ae', 0, '2007-10-15 07:42:14', 0),
('83c30ba4-1cc6-8b0b-1c0e-471319c79633', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '383604b0-1e6a-2830-70bd-458d3e5e2200', 0, '2007-10-15 07:42:14', 0),
('b02e0c29-e164-812b-f0b6-471319561f7d', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '3ab38bd7-851a-9364-ea81-458d3e59b38e', 0, '2007-10-15 07:42:14', 0),
('140e0635-8a80-70c6-26cd-4713197e912a', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '39999336-95e7-c42d-52b2-458d3ee802e5', 0, '2007-10-15 07:42:14', 0),
('15293c99-729f-f56b-0820-471319e0541c', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '3781c426-762a-3226-04ed-458d3e6a68e8', 0, '2007-10-15 07:42:14', 0),
('158b703f-259b-4c73-2478-4713198f5d55', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '36cb2c33-ff8c-88b8-d296-458d3e2b525c', 0, '2007-10-15 07:42:14', 0);

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

INSERT INTO `acl_roles_users` (`id`, `role_id`, `user_id`, `date_modified`, `deleted`) VALUES 
('bcfaea08-55c3-7e74-8bf0-471319614d10', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '177bd6bb-665d-cc61-4d82-45ab422290d3', '2007-10-15 07:42:36', 0),
('bd3a2b5d-6fb2-eed5-ca00-47131912dc5c', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '141f1064-8e78-f58f-ee5f-46f37e56bb1a', '2007-10-15 07:42:36', 0),
('bd746807-d6e0-3da6-68ed-47131930aec1', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'db72618d-35da-19ad-1b67-46f37f819f41', '2007-10-15 07:42:36', 0),
('bdbcd4fa-6eab-b058-da53-4713199675c4', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', '726c1497-7af4-510a-d56e-46f37dc5a170', '2007-10-15 07:42:36', 0),
('c09fc5e7-7414-260b-27eb-47131921650d', '88497c94-a5ff-bd9f-d7b2-47131929bbfd', 'd7b7db22-0179-aa25-3a55-46f37f9d8175', '2007-10-15 07:42:36', 0);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

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

INSERT INTO `cases_audit` (`id`, `parent_id`, `date_created`, `created_by`, `field_name`, `data_type`, `before_value_string`, `after_value_string`, `before_value_text`, `after_value_text`) VALUES 
('b8995be2-07b4-4860-ac82-45e82435ace4', 'f0964e45-959b-f017-df08-45e7febc87f9', '2007-03-02 13:19:30', '1', 'status', 'enum', 'New', 'Closed', NULL, NULL);

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
-- Структура на таблица `childformat`
-- 

CREATE TABLE `childformat` (
  `id` varchar(36) NOT NULL default '',
  `parent_id` varchar(36) NOT NULL,
  `date_entered` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `assigned_user_id` varchar(36) default NULL,
  `modified_user_id` varchar(36) default NULL,
  `created_by` varchar(36) default NULL,
  `name` varchar(50) NOT NULL default '',
  `x` float NOT NULL,
  `y` float NOT NULL,
  `description` text,
  `deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 PACK_KEYS=0;

-- 
-- Дъмп (схема) на данните в таблицата `childformat`
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

INSERT INTO `companyinfo` (`logo`, `country`, `city`, `state`, `street`, `phone`, `fax`, `web`, `email`) VALUES 
('', 'България', 'София', 'София', 'ул. Граф Игнатиев 15', '+359029586543', '+359029586543', '', '');

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
  `status` varchar(255) NOT NULL default '',
  `press_rate_a_name` varchar(50) default NULL,
  `press_rate_b_name` varchar(50) default NULL,
  `press_rate_a_id` varchar(36) default NULL,
  `press_rate_b_id` varchar(36) default NULL,
  `press_rate_a_machine` varchar(36) default NULL,
  `press_rate_b_machine` varchar(36) default NULL,
  `press_rate_a_inks` int(11) default NULL,
  `press_rate_b_inks` int(11) default NULL,
  `press_paperwaste_rate_id` varchar(36) default NULL,
  `press_paperwaste_rate_name` varchar(50) default NULL,
  `press_paperwaste_rate_machine` varchar(36) default NULL,
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

INSERT INTO `componentestimate` (`id`, `product_id`, `product_name`, `component_id`, `component_name`, `total_paper`, `total_prepress`, `total_press`, `total_operations`, `paper_singleprice`, `status`, `press_rate_a_name`, `press_rate_b_name`, `press_rate_a_id`, `press_rate_b_id`, `press_rate_a_machine`, `press_rate_b_machine`, `press_rate_a_inks`, `press_rate_b_inks`, `press_paperwaste_rate_id`, `press_paperwaste_rate_name`, `press_paperwaste_rate_machine`, `date_entered`, `date_modified`, `assigned_user_id`, `modified_user_id`, `created_by`, `name`, `description`, `deleted`) VALUES 
('eb17bd05-2a30-2e2d-d464-4703a7c2c23f', '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', 'Тяло - Книга Компанията на паяците', 0, 120, 800, 260, 0.1, 'uptodate', '1 x Shinohara', '1 x Shinohara', 'e4965bbc-bf4b-fde5-f796-46d67bca30ce', 'e4965bbc-bf4b-fde5-f796-46d67bca30ce', 'aa750713-245a-38cc-b436-4688fc384385', 'aa750713-245a-38cc-b436-4688fc384385', 1, 1, NULL, NULL, NULL, '2007-10-03 14:31:59', '2007-10-03 14:34:18', '1', '1', '1', 'Калкулация-Тяло - Книга Компанията на паяците', NULL, 1),
('bb4eda4b-3fc9-5752-55c2-4703a7faee33', '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'Корица - Книга Компанията на паяците', 97, 15, 150, 20, 0.4, 'uptodate', '3 х GTO', '1 х GTO', '4ee288eb-8342-bc46-ce5c-46d67a86f455', 'd90538b5-a7f8-95ef-85c8-46d67a3a1c7e', '7709512d-3380-6f6e-a4c0-4688c89520cf', '7709512d-3380-6f6e-a4c0-4688c89520cf', 3, 1, 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 'Печат - GTO', '7709512d-3380-6f6e-a4c0-4688c89520cf', '2007-10-03 14:31:59', '2007-10-03 14:34:24', '1', '1', '1', 'Калкулация-Корица - Книга Компанията на паяците', NULL, 1),
('f0a70b5e-abcc-64f1-3909-4703a53e6d19', '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', 'Тяло - Книга Компанията на паяците', 0, 120, 800, 260, 0.1, 'uptodate', '1 x Shinohara', '1 x Shinohara', 'e4965bbc-bf4b-fde5-f796-46d67bca30ce', 'e4965bbc-bf4b-fde5-f796-46d67bca30ce', 'aa750713-245a-38cc-b436-4688fc384385', 'aa750713-245a-38cc-b436-4688fc384385', 1, 1, NULL, NULL, NULL, '2007-10-03 14:22:01', '2007-10-03 14:30:01', '1', '1', '1', 'Калкулация-Тяло - Книга Компанията на паяците', NULL, 1),
('c91f9294-76a3-ca37-04e4-4703a52d0cd7', '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'Корица - Книга Компанията на паяците', 97, 15, 150, 20, 0.4, 'uptodate', '3 х GTO', '1 х GTO', '4ee288eb-8342-bc46-ce5c-46d67a86f455', 'd90538b5-a7f8-95ef-85c8-46d67a3a1c7e', '7709512d-3380-6f6e-a4c0-4688c89520cf', '7709512d-3380-6f6e-a4c0-4688c89520cf', 3, 1, 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 'Печат - GTO', '7709512d-3380-6f6e-a4c0-4688c89520cf', '2007-10-03 14:22:00', '2007-10-03 14:30:10', '1', '1', '1', 'Калкулация-Корица - Книга Компанията на паяците', NULL, 1),
('68bf08a4-a3cd-b058-83c2-4703a3de1cf7', '', '', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', 'Тяло - Книга Компанията на паяците', 0, 120, 800, 260, 0.1, 'uptodate', '1 x Shinohara', '1 x Shinohara', 'e4965bbc-bf4b-fde5-f796-46d67bca30ce', 'e4965bbc-bf4b-fde5-f796-46d67bca30ce', 'aa750713-245a-38cc-b436-4688fc384385', 'aa750713-245a-38cc-b436-4688fc384385', 1, 1, NULL, NULL, NULL, '2007-10-03 14:14:53', '2007-10-03 14:21:43', '1', '1', '1', 'Калкулация-Тяло - Книга Компанията на паяците', NULL, 1),
('c4a87ea8-3165-5e58-8f01-4703a3116218', '', '', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'Корица - Книга Компанията на паяците', 97, 15, 150, 20, 0.4, 'uptodate', '3 х GTO', '1 х GTO', '4ee288eb-8342-bc46-ce5c-46d67a86f455', 'd90538b5-a7f8-95ef-85c8-46d67a3a1c7e', '7709512d-3380-6f6e-a4c0-4688c89520cf', '7709512d-3380-6f6e-a4c0-4688c89520cf', 3, 1, 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 'Печат - GTO', '7709512d-3380-6f6e-a4c0-4688c89520cf', '2007-10-03 14:14:45', '2007-10-03 14:21:31', '1', '1', '1', 'Калкулация-Корица - Книга Компанията на паяците', NULL, 1),
('5fe17b7a-5d08-9d76-a1cd-47039f96c4c0', '', '', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', 'Тяло - Книга Компанията на паяците', 0, 120, 800, 260, 0.1, 'uptodate', '1 x Shinohara', '1 x Shinohara', 'e4965bbc-bf4b-fde5-f796-46d67bca30ce', 'e4965bbc-bf4b-fde5-f796-46d67bca30ce', 'aa750713-245a-38cc-b436-4688fc384385', 'aa750713-245a-38cc-b436-4688fc384385', 1, 1, NULL, NULL, NULL, '2007-10-03 13:56:03', '2007-10-03 14:08:52', '1', '1', '1', 'Калкулация-Тяло - Книга Компанията на паяците', NULL, 1),
('2bdeccd9-2205-677d-f713-47039f8f786a', '', '', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'Корица - Книга Компанията на паяците', 97, 15, 150, 20, 0.4, 'uptodate', '3 х GTO', '1 х GTO', '4ee288eb-8342-bc46-ce5c-46d67a86f455', 'd90538b5-a7f8-95ef-85c8-46d67a3a1c7e', '7709512d-3380-6f6e-a4c0-4688c89520cf', '7709512d-3380-6f6e-a4c0-4688c89520cf', 3, 1, 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 'Печат - GTO', '7709512d-3380-6f6e-a4c0-4688c89520cf', '2007-10-03 13:56:03', '2007-10-03 14:08:41', '1', '1', '1', 'Калкулация-Корица - Книга Компанията на паяците', NULL, 1),
('593c5cf1-ab46-0d49-1ea1-47039d345892', '', '', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', 'Тяло - Книга Компанията на паяците', 0, 120, 800, 260, 0.1, 'uptodate', '1 x Shinohara', '1 x Shinohara', 'e4965bbc-bf4b-fde5-f796-46d67bca30ce', 'e4965bbc-bf4b-fde5-f796-46d67bca30ce', 'aa750713-245a-38cc-b436-4688fc384385', 'aa750713-245a-38cc-b436-4688fc384385', 1, 1, NULL, NULL, NULL, '2007-10-03 13:48:30', '2007-10-03 13:54:56', '1', '1', '1', 'Калкулация-Тяло - Книга Компанията на паяците', NULL, 1),
('f32b1191-3ba9-9577-3d4f-47039d70a934', '', '', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'Корица - Книга Компанията на паяците', 97, 15, 150, 20, 0.4, 'uptodate', '3 х GTO', '1 х GTO', '4ee288eb-8342-bc46-ce5c-46d67a86f455', 'd90538b5-a7f8-95ef-85c8-46d67a3a1c7e', '7709512d-3380-6f6e-a4c0-4688c89520cf', '7709512d-3380-6f6e-a4c0-4688c89520cf', 3, 1, 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 'Печат - GTO', '7709512d-3380-6f6e-a4c0-4688c89520cf', '2007-10-03 13:48:29', '2007-10-03 13:55:21', '1', '1', '1', 'Калкулация-Корица - Книга Компанията на паяците', NULL, 1),
('43afedfc-20e9-b662-57a4-46f8e954e1fe', '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', 'Калкулация-Тяло - Книга Компанията на паяците', 262, 120, 1600, 260, 0.1, 'uptodate', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2007-09-25 10:57:04', '2007-10-03 13:48:08', '1', '1', '1', 'Калкулация-Тяло - Книга Компанията на паяците', NULL, 1),
('6cd9d14b-a96f-8a8b-b6ba-470395155a71', '', '', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'Корица - Книга Компанията на паяците', 97, 15, 150, 20, 0.4, 'uptodate', '3 х GTO', '1 х GTO', '4ee288eb-8342-bc46-ce5c-46d67a86f455', 'd90538b5-a7f8-95ef-85c8-46d67a3a1c7e', '7709512d-3380-6f6e-a4c0-4688c89520cf', '7709512d-3380-6f6e-a4c0-4688c89520cf', 3, 1, 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 'Печат - GTO', '7709512d-3380-6f6e-a4c0-4688c89520cf', '2007-10-03 13:12:22', '2007-10-03 13:48:08', NULL, '1', '1', 'Калкулация-Корица - Книга Компанията на паяците', NULL, 1),
('ab4f8ed9-7b6a-5451-6668-46fcaf05b2df', '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'Калкулация-Корица - Книга Компанията на паяците', 105, 15, 150, 20, 0.4, 'uptodate', '3 х GTO', '1 х GTO', '4ee288eb-8342-bc46-ce5c-46d67a86f455', 'd90538b5-a7f8-95ef-85c8-46d67a3a1c7e', '7709512d-3380-6f6e-a4c0-4688c89520cf', '7709512d-3380-6f6e-a4c0-4688c89520cf', 3, 1, '6c6efb1c-bee8-732b-d475-46fba9ed9cc4', 'Печат2 - GTO', '7709512d-3380-6f6e-a4c0-4688c89520cf', '2007-09-28 07:36:48', '2007-09-28 14:42:57', '1', '1', '1', 'Калкулация-Корица - Книга Компанията на паяците', NULL, 1),
('71442505-ecd8-f603-5681-4703a85a1030', '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'Корица - Книга Компанията на паяците', 97, 15, 150, 20, 0.4, 'uptodate', '3 х GTO', '1 х GTO', '4ee288eb-8342-bc46-ce5c-46d67a86f455', 'd90538b5-a7f8-95ef-85c8-46d67a3a1c7e', '7709512d-3380-6f6e-a4c0-4688c89520cf', '7709512d-3380-6f6e-a4c0-4688c89520cf', 3, 1, 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 'Печат - GTO', '7709512d-3380-6f6e-a4c0-4688c89520cf', '2007-10-03 14:34:57', '2007-10-03 14:45:16', '1', '1', '1', 'Калкулация-Корица - Книга Компанията на паяците', NULL, 1),
('a0c3d473-76c4-b8e9-1506-4703a8e80d34', '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', 'Калкулация-Тяло - Книга Компанията на паяците', 262, 120, 800, 260, 0.1, 'uptodate', '1 x Shinohara', '1 x Shinohara', 'e4965bbc-bf4b-fde5-f796-46d67bca30ce', 'e4965bbc-bf4b-fde5-f796-46d67bca30ce', 'aa750713-245a-38cc-b436-4688fc384385', 'aa750713-245a-38cc-b436-4688fc384385', 1, 1, 'b5f04e5d-0678-fe92-9ff8-46d572708e89', 'Печат - Shinohara', 'aa750713-245a-38cc-b436-4688fc384385', '2007-10-03 14:34:57', '2007-10-03 14:45:05', '1', '1', '1', 'Калкулация-Тяло - Книга Компанията на паяците', NULL, 1),
('b4948a27-c461-5502-cbab-4703ab3072f8', '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'Калкулация-Корица - Книга Компанията на паяците', 74, 15, 60, 31.25, 0.4, 'uptodate', '4 х GTO', NULL, '983f483d-8af1-9472-601a-468d07c0aed0', NULL, '7709512d-3380-6f6e-a4c0-4688c89520cf', NULL, 4, NULL, 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 'Печат - GTO', '7709512d-3380-6f6e-a4c0-4688c89520cf', '2007-10-03 14:45:44', '2007-10-08 08:14:32', '1', '1', '1', 'Калкулация-Корица - Книга Компанията на паяците', NULL, 0),
('e4c27e8a-fe9d-2145-9b97-4703ab2b5502', '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', 'Калкулация-Тяло - Книга Компанията на паяците', 262, 120, 640, 260, 0.1, 'uptodate', '1 x Shinohara 3', '1 x Shinohara 3', 'dace9bea-eefd-f2c6-939b-4705fec8ab1e', 'dace9bea-eefd-f2c6-939b-4705fec8ab1e', 'aa750713-245a-38cc-b436-4688fc384385', 'aa750713-245a-38cc-b436-4688fc384385', 1, 1, 'b5f04e5d-0678-fe92-9ff8-46d572708e89', 'Печат - Shinohara', 'aa750713-245a-38cc-b436-4688fc384385', '2007-10-03 14:45:44', '2007-10-05 09:09:19', '1', '1', '1', 'Калкулация-Тяло - Книга Компанията на паяците', NULL, 0),
('4f199f35-3290-028b-9850-4705f885c74d', '41d748cf-adf4-69a7-60b8-4705f3c38a79', 'Листовки ДЗИ', 'e7840f84-fe38-1b71-4ce4-4705f47ed801', 'Калкулация-Листовки ДЗИ-1', 427, 45, 365, 80, 0.16, 'uptodate', '3 x Shinohara', '3 x Shinohara', 'b8aed1f4-281a-1119-244b-46d67cadae88', 'b8aed1f4-281a-1119-244b-46d67cadae88', 'aa750713-245a-38cc-b436-4688fc384385', 'aa750713-245a-38cc-b436-4688fc384385', 3, 3, 'b5f04e5d-0678-fe92-9ff8-46d572708e89', 'Печат - Shinohara', 'aa750713-245a-38cc-b436-4688fc384385', '2007-10-05 08:41:55', '2007-10-05 10:59:43', '1', '1', '1', 'Калкулация-Листовки ДЗИ-1', NULL, 1),
('74debb76-d31b-cc48-ab4f-4706150933e8', '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците', '40757223-4089-a067-db22-470614470ba6', 'Книга Компанията на паяците-3', 17, 15, 50, 20, 0.1, 'uptodate', '1 х GTO', '1 х GTO', 'd90538b5-a7f8-95ef-85c8-46d67a3a1c7e', 'd90538b5-a7f8-95ef-85c8-46d67a3a1c7e', '7709512d-3380-6f6e-a4c0-4688c89520cf', '7709512d-3380-6f6e-a4c0-4688c89520cf', 1, 1, 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 'Печат - GTO', '7709512d-3380-6f6e-a4c0-4688c89520cf', '2007-10-05 10:43:05', '2007-10-05 10:43:05', '1', '1', '1', 'Калкулация-Книга Компанията на паяците-3', NULL, 0),
('3224b0e9-4326-b0ca-7ce9-470619e5d00d', '41d748cf-adf4-69a7-60b8-4705f3c38a79', 'Листовки ДЗИ', 'e7840f84-fe38-1b71-4ce4-4705f47ed801', 'Листовки ДЗИ-1', 427, 45, 365, 80, 0.16, 'uptodate', '3 x Shinohara', '3 x Shinohara', 'b8aed1f4-281a-1119-244b-46d67cadae88', 'b8aed1f4-281a-1119-244b-46d67cadae88', 'aa750713-245a-38cc-b436-4688fc384385', 'aa750713-245a-38cc-b436-4688fc384385', 3, 3, 'b5f04e5d-0678-fe92-9ff8-46d572708e89', 'Печат - Shinohara', 'aa750713-245a-38cc-b436-4688fc384385', '2007-10-05 11:00:05', '2007-10-05 11:00:05', '1', '1', '1', 'Калкулация-Листовки ДЗИ-1', NULL, 0),
('9ca50715-d5f9-86a6-7948-47131459a5e0', '8e2b6aa8-2783-1ceb-2b1b-4709e9a8b951', 'Стикери "LAVAZZA"', 'dc72a139-71cc-4680-0e8b-4709ea86b5fd', 'Стикери "LAVAZZA"-1', 90, 90, 180, 0.9, 0.33, 'uptodate', '4 х GTO', NULL, '983f483d-8af1-9472-601a-468d07c0aed0', NULL, '7709512d-3380-6f6e-a4c0-4688c89520cf', NULL, 4, NULL, 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 'Печат - GTO', '7709512d-3380-6f6e-a4c0-4688c89520cf', '2007-10-15 07:18:25', '2007-10-15 07:18:25', 'db72618d-35da-19ad-1b67-46f37f819f41', 'db72618d-35da-19ad-1b67-46f37f819f41', 'db72618d-35da-19ad-1b67-46f37f819f41', 'Калкулация-Стикери "LAVAZZA"-1', NULL, 0);

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

INSERT INTO `componentink` (`id`, `component_id`, `color_id`, `side`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`) VALUES 
('c866136a-de42-abba-49b8-4705fda950fc', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-10-05 09:00:38', '2007-10-05 09:00:38', NULL, '1', NULL, 0),
('c2bf92e1-132b-fbf0-cbaa-4705fd6e3588', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-10-05 09:00:38', '2007-10-05 09:00:38', NULL, '1', NULL, 0),
('c0afefc4-8871-5edc-0df8-4705fd82c253', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-10-05 09:00:38', '2007-10-05 09:00:38', NULL, '1', NULL, 0),
('be9152ac-2dd2-b808-8aaa-4705fd6970fb', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-10-05 09:00:38', '2007-10-05 09:00:38', NULL, '1', NULL, 0),
('1cd76eca-c3ef-860f-5635-4705fc60b9d3', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-10-05 08:59:31', '2007-10-05 09:00:38', NULL, '1', NULL, 1),
('1a850d82-6021-7034-40a8-4705fca607b6', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-10-05 08:59:31', '2007-10-05 09:00:38', NULL, '1', NULL, 1),
('15b20756-6fb5-abf9-2a2d-4705fc5bc355', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-10-05 08:59:31', '2007-10-05 09:00:38', NULL, '1', NULL, 1),
('1387a6ec-17a4-d644-b8f5-4705fc3a4e97', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-10-05 08:59:31', '2007-10-05 09:00:38', NULL, '1', NULL, 1),
('e3543b1a-2f35-3dfc-e99c-4705fcc23ecb', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-10-05 08:56:22', '2007-10-05 08:59:31', NULL, '1', NULL, 1),
('e12a8e04-0f1e-0da8-4f75-4705fc836b99', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-10-05 08:56:22', '2007-10-05 08:59:31', NULL, '1', NULL, 1),
('dbed296e-a4d3-5439-64b7-4705fced7733', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-10-05 08:56:22', '2007-10-05 08:59:31', NULL, '1', NULL, 1),
('d65d3682-f640-d6d7-c747-4705fc5aab69', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-10-05 08:56:22', '2007-10-05 08:59:31', NULL, '1', NULL, 1),
('7c65495d-511c-a1d8-8c7a-4704e284e9bb', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-10-04 12:56:13', '2007-10-05 08:56:22', NULL, '1', NULL, 1),
('7a3fb8f0-0904-4264-74c1-4704e20304d7', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-10-04 12:56:13', '2007-10-05 08:56:22', NULL, '1', NULL, 1),
('78118f03-090d-01d5-8b3b-4704e2b39f66', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-10-04 12:56:13', '2007-10-05 08:56:22', NULL, '1', NULL, 1),
('75f21c94-e80a-50db-e075-4704e21d4bf4', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-10-04 12:56:13', '2007-10-05 08:56:22', NULL, '1', NULL, 1),
('d8d307ee-ca5b-41d0-c224-4704e247a295', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-10-04 12:55:02', '2007-10-04 12:56:13', NULL, '1', NULL, 1),
('b6fd0d09-f463-896c-838e-4704e2b8b03a', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-10-04 12:55:02', '2007-10-04 12:56:13', NULL, '1', NULL, 1),
('6a6c034e-f56f-4c7c-f803-4704e200d8cc', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-10-04 12:55:02', '2007-10-04 12:56:13', NULL, '1', NULL, 1),
('47b60727-8b43-c5e3-3d60-4704e206c446', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-10-04 12:55:02', '2007-10-04 12:56:13', NULL, '1', NULL, 1),
('1f100ec9-f93b-006c-1b9e-46fbb1b0bfbc', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-09-27 13:32:55', '2007-10-04 12:55:01', NULL, '1', NULL, 1),
('ef4a4b96-f09f-a005-a652-46fbb1bceaa7', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-27 13:32:54', '2007-10-04 12:55:02', NULL, '1', NULL, 1),
('ed1e3bc6-c361-19cb-ffe4-46fbb1e54615', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-27 13:32:54', '2007-10-04 12:55:01', NULL, '1', NULL, 1),
('e7808710-b778-d72d-dd51-46fbb16650bb', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-27 13:32:54', '2007-10-04 12:55:01', NULL, '1', NULL, 1),
('1850363e-d684-0aab-58ef-46fbb0165a9d', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-09-27 13:32:01', '2007-09-27 13:32:54', NULL, '1', NULL, 1),
('1624e904-480f-8c02-dfe8-46fbb0cdd1e0', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-09-27 13:32:01', '2007-09-27 13:32:54', NULL, '1', NULL, 1),
('13f35e4c-2e40-afc6-b5eb-46fbb0aec089', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-09-27 13:32:01', '2007-09-27 13:32:54', NULL, '1', NULL, 1),
('ee8a0942-7158-5ede-83a2-46fbb06b017e', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-27 13:32:01', '2007-09-27 13:32:54', NULL, '1', NULL, 1),
('66670aa1-c8f8-b429-d2cb-46fbb0c23a2b', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-27 13:32:01', '2007-09-27 13:32:54', NULL, '1', NULL, 1),
('430b054c-b50e-6e32-e346-46fbb0904118', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-27 13:32:01', '2007-09-27 13:32:54', NULL, '1', NULL, 1),
('abe23b78-7ab8-b78d-a3db-46fbadea2878', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-27 13:17:45', '2007-09-27 13:32:01', NULL, '1', NULL, 1),
('a9ab90cd-4ecc-6ebf-99ef-46fbadb841b1', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-27 13:17:45', '2007-09-27 13:32:01', NULL, '1', NULL, 1),
('a7806234-dcdf-ad4a-1ff4-46fbada19b4f', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-27 13:17:45', '2007-09-27 13:32:00', NULL, '1', NULL, 1),
('42470d78-5b4b-68dc-156d-46f8e80f83f0', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-09-25 10:53:36', '2007-09-25 10:53:36', NULL, '1', NULL, 0),
('f37d8c1d-cdb0-76f6-6c8a-46f8e826e200', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-25 10:53:35', '2007-09-25 10:53:35', NULL, '1', NULL, 0),
('2c5e4549-9080-46cb-1d79-46f8e83029ed', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-09-25 10:51:06', '2007-09-25 10:53:35', NULL, '1', NULL, 1),
('269fb072-d5e5-8dec-616f-46f8e82b69af', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-25 10:51:06', '2007-09-25 10:53:35', NULL, '1', NULL, 1),
('5d15c4e4-f6fa-de3c-0d7a-46f7a174ade1', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-09-24 11:36:51', '2007-09-25 10:51:06', NULL, '1', NULL, 1),
('5842c89b-6317-97ff-6817-46f7a14894b2', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-24 11:36:51', '2007-09-25 10:51:06', NULL, '1', NULL, 1),
('6deb2d01-4912-9d6c-c46d-46f3cfa99726', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-09-21 14:03:14', '2007-09-24 11:36:51', NULL, '1', NULL, 1),
('692ef20e-9d2a-100d-e29d-46f3cf7132a5', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-21 14:03:14', '2007-09-24 11:36:51', NULL, '1', NULL, 1),
('8d12619c-bd82-62b7-8c86-46f11ca1ce3e', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-09-19 12:55:45', '2007-09-21 14:03:14', NULL, '1', NULL, 1),
('885d06d0-2981-bac5-e588-46f11cd6ca48', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-19 12:55:45', '2007-09-21 14:03:14', NULL, '1', NULL, 1),
('58e7d160-ceba-eb18-ba2a-46f10eb86c16', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-09-19 11:54:56', '2007-09-19 12:55:45', NULL, '1', NULL, 1),
('54224466-450c-b309-8265-46f10e6b3725', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-19 11:54:56', '2007-09-19 12:55:45', NULL, '1', NULL, 1),
('3549e831-44d1-ff6c-fbb7-46efbb54c23d', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-09-18 11:52:27', '2007-09-19 11:54:56', NULL, '1', NULL, 1),
('30618717-73f1-9382-a0fc-46efbb6b04dd', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-18 11:52:27', '2007-09-19 11:54:56', NULL, '1', NULL, 1),
('7f79a626-45f6-93ad-d068-46ef881ca39d', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-18 08:10:59', '2007-09-27 13:17:45', NULL, '1', NULL, 1),
('7d384ee6-a8ac-1f01-603b-46ef8873ced2', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-18 08:10:59', '2007-09-27 13:17:45', NULL, '1', NULL, 1),
('794c30af-0d9e-cfbc-6568-46ef88ae3f21', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-18 08:10:59', '2007-09-27 13:17:45', NULL, '1', NULL, 1),
('d36b670a-3f09-52b2-5ba2-46ee9664294b', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-17 15:01:48', '2007-09-18 08:10:59', NULL, '1', NULL, 1),
('cc558608-daa3-ef99-abda-46ee96cebd76', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-17 15:01:48', '2007-09-18 08:10:59', NULL, '1', NULL, 1),
('c4d43190-7cd1-25fe-cf33-46ee96b1cef6', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-17 15:01:48', '2007-09-18 08:10:59', NULL, '1', NULL, 1),
('a7071161-2939-abda-1fa6-46ee8ce58819', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-17 14:16:40', '2007-09-17 15:01:48', NULL, '1', NULL, 1),
('a4ea2876-ec28-e5c6-385a-46ee8c9fecb6', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-17 14:16:40', '2007-09-17 15:01:48', NULL, '1', NULL, 1),
('a2d6a89d-6b6e-0741-5db8-46ee8ce231a6', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-17 14:16:40', '2007-09-17 15:01:48', NULL, '1', NULL, 1),
('56aa35df-eb0f-8eb1-48c5-46ee88f89e2b', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-17 14:02:02', '2007-09-17 14:16:40', NULL, '1', NULL, 1),
('4f3e00a9-b5a9-977e-960d-46ee886b1666', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-17 14:02:02', '2007-09-17 14:16:40', NULL, '1', NULL, 1),
('481052dc-f047-fce1-c855-46ee88b58896', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-17 14:02:02', '2007-09-17 14:16:40', NULL, '1', NULL, 1),
('76920622-9b16-d184-41de-46ee88d7cc2d', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-17 13:58:29', '2007-09-17 14:02:02', NULL, '1', NULL, 1),
('551f071a-fc78-e933-70df-46ee884c199a', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-17 13:58:29', '2007-09-17 14:02:02', NULL, '1', NULL, 1),
('351a0bc2-718b-711a-ec57-46ee88cbefc4', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-17 13:58:29', '2007-09-17 14:02:02', NULL, '1', NULL, 1),
('a54d0747-034f-cea6-4146-46ee878addea', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-17 13:58:05', '2007-09-17 13:58:29', NULL, '1', NULL, 1),
('674302aa-4b7d-a926-dac4-46ee87145320', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-17 13:58:05', '2007-09-17 13:58:29', NULL, '1', NULL, 1),
('47ae0343-69c3-edc0-c86c-46ee8728f396', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-17 13:58:05', '2007-09-17 13:58:28', NULL, '1', NULL, 1),
('77e97ce6-6041-2610-1079-46ee87c5db2f', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-17 13:56:05', '2007-09-17 13:58:05', NULL, '1', NULL, 1),
('75c6bb6e-1d03-d87b-d5dc-46ee87152830', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-17 13:56:05', '2007-09-17 13:58:05', NULL, '1', NULL, 1),
('6d98e79f-0496-1c25-cd8c-46ee87f48afc', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-17 13:56:05', '2007-09-17 13:58:04', NULL, '1', NULL, 1),
('bb9fb2c2-61d5-9a81-b264-46ee869023ce', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-17 13:53:55', '2007-09-17 13:56:05', NULL, '1', NULL, 1),
('b6004f12-aa74-696e-2aa2-46ee86de0aac', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-17 13:53:55', '2007-09-17 13:56:05', NULL, '1', NULL, 1),
('b033ac48-534c-de06-a80b-46ee86312279', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-17 13:53:55', '2007-09-17 13:56:05', NULL, '1', NULL, 1),
('41820235-7151-3dc1-1d08-46ee86857cea', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-17 13:51:16', '2007-09-17 13:53:55', NULL, '1', NULL, 1),
('3f66110d-1e2b-e84a-5b85-46ee868c021e', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-17 13:51:16', '2007-09-17 13:53:55', NULL, '1', NULL, 1),
('3986e002-ec34-16ab-53f4-46ee86ec34d0', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-17 13:51:16', '2007-09-17 13:53:55', NULL, '1', NULL, 1),
('4d6d2c86-f809-4d48-fc9a-46ee6252e1d8', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-17 11:17:22', '2007-09-17 13:51:16', NULL, '1', NULL, 1),
('4baf6fb0-36b6-1a9f-9158-46ee6290647f', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-17 11:17:22', '2007-09-17 13:51:16', NULL, '1', NULL, 1),
('49ee1979-2f67-1739-d2fb-46ee626d9fa5', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-17 11:17:22', '2007-09-17 13:51:16', NULL, '1', NULL, 1),
('e743165b-4890-8cdd-356d-46ee60060998', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-17 11:10:30', '2007-09-17 11:17:22', NULL, '1', NULL, 1),
('e5775c56-be73-0ef9-76c8-46ee6098cd5c', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-17 11:10:30', '2007-09-17 11:17:22', NULL, '1', NULL, 1),
('e3ab18f6-05d1-e1b9-10b5-46ee606a2877', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-17 11:10:30', '2007-09-17 11:17:22', NULL, '1', NULL, 1),
('1f077642-41f2-3819-076d-46ee60e97738', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-17 11:08:35', '2007-09-17 11:10:30', NULL, '1', NULL, 1),
('1d3a2916-bbe7-0324-61ba-46ee60a4e787', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-17 11:08:35', '2007-09-17 11:10:30', NULL, '1', NULL, 1),
('1b5dfae9-6168-c2a7-a03e-46ee6087d655', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-17 11:08:35', '2007-09-17 11:10:30', NULL, '1', NULL, 1),
('23c4ba7a-2aa9-ff6a-df08-46ee3ef8e2fc', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-17 08:44:17', '2007-09-17 11:08:35', NULL, '1', NULL, 1),
('21ed73f7-8f54-0ba9-48a1-46ee3e6fbe3f', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-17 08:44:17', '2007-09-17 11:08:35', NULL, '1', NULL, 1),
('20190d49-3d2e-7e10-e22c-46ee3ed84c98', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-17 08:44:17', '2007-09-17 11:08:35', NULL, '1', NULL, 1),
('71d87380-c2af-7bce-3b26-46ee3d03cce3', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-17 08:41:55', '2007-09-17 08:44:17', NULL, '1', NULL, 1),
('7011d3b0-1094-de75-2dd2-46ee3da7e613', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-17 08:41:55', '2007-09-17 08:44:17', NULL, '1', NULL, 1),
('6e19d553-5453-cb3f-5769-46ee3d63ab62', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-17 08:41:55', '2007-09-17 08:44:17', NULL, '1', NULL, 1),
('62d2bf98-131d-a426-a9db-46ee3d802de3', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-17 08:39:44', '2007-09-17 08:41:55', NULL, '1', NULL, 1),
('6111104d-394b-b2ab-2430-46ee3db2645f', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-17 08:39:44', '2007-09-17 08:41:55', NULL, '1', NULL, 1),
('5f412754-1f6f-1b5c-837d-46ee3dc89adf', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-17 08:39:44', '2007-09-17 08:41:55', NULL, '1', NULL, 1),
('d595ba75-e397-296b-5987-46ee3ddf4342', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-17 08:38:31', '2007-09-17 08:39:44', NULL, '1', NULL, 1),
('d3d83fa3-9e35-9d89-5b1c-46ee3d60af80', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-17 08:38:31', '2007-09-17 08:39:44', NULL, '1', NULL, 1),
('d2109681-1a8f-63c9-5272-46ee3d9eaca9', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-17 08:38:31', '2007-09-17 08:39:44', NULL, '1', NULL, 1),
('34590fdd-b0d6-98d5-ed38-46ee3cd65dc0', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-17 08:37:46', '2007-09-17 08:38:31', NULL, '1', NULL, 1),
('15aa085c-db36-440a-e142-46ee3c7c80aa', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-17 08:37:46', '2007-09-17 08:38:31', NULL, '1', NULL, 1),
('f39ff2b1-bd32-ca00-2b08-46ee3c5a5285', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-17 08:37:46', '2007-09-17 08:38:31', NULL, '1', NULL, 1),
('7bea36cd-3344-14fd-6c9e-46ee3c8766e6', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-17 08:36:14', '2007-09-17 08:37:45', NULL, '1', NULL, 1),
('7a025652-154d-54d7-1e3d-46ee3c3d0476', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-17 08:36:14', '2007-09-17 08:37:45', NULL, '1', NULL, 1),
('77f0c44e-c4e8-39b6-2d9d-46ee3c0c449d', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-17 08:36:14', '2007-09-17 08:37:45', NULL, '1', NULL, 1),
('4be78b29-0ba4-e85b-d97d-46ee37766c85', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-17 08:15:39', '2007-09-17 08:36:14', NULL, '1', NULL, 1),
('4a16cb01-9c48-c378-4a37-46ee371c7980', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-17 08:15:39', '2007-09-17 08:36:14', NULL, '1', NULL, 1),
('4746f3d7-9ddb-a215-c71a-46ee37b841c9', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-17 08:15:39', '2007-09-17 08:36:14', NULL, '1', NULL, 1),
('4d79b276-6e39-d045-fdd6-46ee34721377', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-17 08:00:55', '2007-09-17 08:15:39', NULL, '1', NULL, 1),
('4b99c8d9-967b-190c-5863-46ee34747b80', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-17 08:00:55', '2007-09-17 08:15:39', NULL, '1', NULL, 1),
('498fd330-102b-6d0f-a386-46ee349bd3fc', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-17 08:00:55', '2007-09-17 08:15:39', NULL, '1', NULL, 1),
('622340aa-3726-ea11-6dfb-46ee327e676b', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-17 07:53:50', '2007-09-17 08:00:55', NULL, '1', NULL, 1),
('5ff56795-1078-a297-3474-46ee329dbe4f', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-17 07:53:50', '2007-09-17 08:00:55', NULL, '1', NULL, 1),
('5dd18a20-901d-7906-0cfd-46ee3255242e', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-17 07:53:50', '2007-09-17 08:00:55', NULL, '1', NULL, 1),
('c7eb0504-8ac8-5cfb-6dbb-46ee31910ca2', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-17 07:48:36', '2007-09-17 07:53:50', NULL, '1', NULL, 1),
('a98406a3-0f48-209c-372d-46ee3127880c', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-17 07:48:36', '2007-09-17 07:53:50', NULL, '1', NULL, 1),
('8af800d1-e94a-f389-74da-46ee311e2784', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-17 07:48:36', '2007-09-17 07:53:50', NULL, '1', NULL, 1),
('739dfc33-4f1e-294d-9879-46ee30ca8de5', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-17 07:44:06', '2007-09-17 07:48:36', NULL, '1', NULL, 1),
('717d00c7-207b-4c31-5870-46ee30d836e2', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-17 07:44:06', '2007-09-17 07:48:36', NULL, '1', NULL, 1),
('6f5d5d31-70f7-d738-eca7-46ee30d83d0e', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-17 07:44:06', '2007-09-17 07:48:35', NULL, '1', NULL, 1),
('5d7184d1-4eee-086a-25d1-46ee304f5857', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-17 07:43:26', '2007-09-17 07:44:06', NULL, '1', NULL, 1),
('5ba19fa4-2240-8962-0e64-46ee30765e44', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-17 07:43:26', '2007-09-17 07:44:06', NULL, '1', NULL, 1),
('59ceb949-9673-f815-9559-46ee307822d1', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-17 07:43:26', '2007-09-17 07:44:06', NULL, '1', NULL, 1),
('4a4539f9-5dd7-21b7-fc75-46ee2df6f376', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-17 07:32:25', '2007-09-17 07:43:26', NULL, '1', NULL, 1),
('486f75f1-88de-2c2a-9e08-46ee2d3e64cb', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-17 07:32:25', '2007-09-17 07:43:26', NULL, '1', NULL, 1),
('46971af8-515d-d87e-0d6c-46ee2d9c27f8', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-17 07:32:25', '2007-09-17 07:43:26', NULL, '1', NULL, 1),
('3b010667-d818-eeb8-1f40-46ee2b64e730', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-17 07:24:25', '2007-09-17 07:32:25', NULL, '1', NULL, 1),
('3920fdfa-cfb0-112d-4fb6-46ee2b2d79b9', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-17 07:24:25', '2007-09-17 07:32:25', NULL, '1', NULL, 1),
('373ae388-264f-61ce-29c8-46ee2b596da9', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-17 07:24:25', '2007-09-17 07:32:25', NULL, '1', NULL, 1),
('a87fc780-bd93-71f4-ec2d-46ee2b4c5bbf', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-17 07:23:17', '2007-09-17 07:24:25', NULL, '1', NULL, 1),
('a6a80278-5129-af3f-9b04-46ee2bb0f7b3', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-17 07:23:17', '2007-09-17 07:24:25', NULL, '1', NULL, 1),
('a4d9b98a-daa5-da18-7340-46ee2bf7f1ac', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-17 07:23:17', '2007-09-17 07:24:25', NULL, '1', NULL, 1),
('26626c9b-1968-0d15-81f2-46ee2a757eb6', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-17 07:21:14', '2007-09-17 07:23:17', NULL, '1', NULL, 1),
('24612626-3c99-05ee-620e-46ee2ad7fc4c', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-17 07:21:14', '2007-09-17 07:23:17', NULL, '1', NULL, 1),
('2272cefe-da4f-a39c-8fe9-46ee2a323d1d', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-17 07:21:14', '2007-09-17 07:23:17', NULL, '1', NULL, 1),
('8efcbff1-c43e-cdf1-a835-46ebf8fcbe0b', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-15 15:23:39', '2007-09-17 07:21:14', NULL, '1', NULL, 1),
('8cbb71b0-cf25-95cb-4a86-46ebf8cc2776', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-15 15:23:39', '2007-09-17 07:21:14', NULL, '1', NULL, 1),
('8a9a7504-212d-bd76-c474-46ebf8255c3e', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-15 15:23:39', '2007-09-17 07:21:14', NULL, '1', NULL, 1),
('89a73459-0b94-c8a5-016c-46ebf8014eb0', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-15 15:23:01', '2007-09-15 15:23:39', NULL, '1', NULL, 1),
('8770d66d-c86d-00ff-7f81-46ebf869a6b8', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-15 15:23:01', '2007-09-15 15:23:39', NULL, '1', NULL, 1),
('854a7181-73a0-b019-4b31-46ebf8d245ea', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-15 15:23:01', '2007-09-15 15:23:39', NULL, '1', NULL, 1),
('7162004e-1cdc-bf62-f623-46ebf706cf1d', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-15 15:17:25', '2007-09-15 15:23:01', NULL, '1', NULL, 1),
('6f85e1d2-083f-cee1-37cb-46ebf7534557', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-15 15:17:25', '2007-09-15 15:23:01', NULL, '1', NULL, 1),
('6d703f1e-547b-8c2a-f958-46ebf7ecc03c', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-15 15:17:25', '2007-09-15 15:23:01', NULL, '1', NULL, 1),
('77a36ea4-13a1-f09c-09ab-46ebf7b80a7e', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-15 15:17:19', '2007-09-15 15:17:25', NULL, '1', NULL, 1),
('7528d679-faf8-d8ed-c3ae-46ebf77c4da2', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-15 15:17:19', '2007-09-15 15:17:25', NULL, '1', NULL, 1),
('70fccdee-8be1-8108-1be1-46ebf75b9e38', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-15 15:17:19', '2007-09-15 15:17:25', NULL, '1', NULL, 1),
('c75fd652-d6f5-82ed-0322-46ebf7e3afa6', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-15 15:16:38', '2007-09-15 15:17:19', NULL, '1', NULL, 1),
('c5868d74-36d5-f612-4999-46ebf7dc906f', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-15 15:16:38', '2007-09-15 15:17:19', NULL, '1', NULL, 1),
('c395a3ba-aaf1-4162-d3b7-46ebf74c0b42', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-15 15:16:38', '2007-09-15 15:17:19', NULL, '1', NULL, 1),
('122282e2-0ce2-061b-fe4f-46ebf7933ad0', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-15 15:16:23', '2007-09-15 15:16:38', NULL, '1', NULL, 1),
('1029c216-ab49-23ed-d7d6-46ebf775f5f9', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-15 15:16:23', '2007-09-15 15:16:38', NULL, '1', NULL, 1),
('df610f34-442e-1e0d-6a50-46ebf7aad294', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-15 15:16:23', '2007-09-15 15:16:38', NULL, '1', NULL, 1),
('367b97f1-3b84-7b27-2f64-46ebf774e927', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-15 15:16:15', '2007-09-15 15:16:23', NULL, '1', NULL, 1),
('346f25c0-9cc3-19d4-a989-46ebf7370ef5', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-15 15:16:15', '2007-09-15 15:16:23', NULL, '1', NULL, 1),
('325c212f-609c-fa91-7be0-46ebf7e72a98', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-15 15:16:15', '2007-09-15 15:16:23', NULL, '1', NULL, 1),
('22013ce4-2a93-70e0-92d9-46ebf69cfa24', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-15 15:14:48', '2007-09-15 15:16:15', NULL, '1', NULL, 1),
('1fe57779-1033-d97d-f937-46ebf6909bf1', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-15 15:14:48', '2007-09-15 15:16:15', NULL, '1', NULL, 1),
('1b220601-3d97-55d0-159d-46ebf6c5b3f4', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-15 15:14:48', '2007-09-15 15:16:15', NULL, '1', NULL, 1),
('97974749-ed84-51f4-8451-46ebf65fcddc', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-15 15:14:26', '2007-09-15 15:14:48', NULL, '1', NULL, 1),
('95bf7e28-80ae-8214-0ded-46ebf6e05803', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-15 15:14:26', '2007-09-15 15:14:48', NULL, '1', NULL, 1),
('939a1c9b-5857-6f49-9365-46ebf661dd6b', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-15 15:14:26', '2007-09-15 15:14:48', NULL, '1', NULL, 1),
('dc7401c6-e411-20dd-5056-46ebf63714c1', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-15 15:11:34', '2007-09-15 15:14:26', NULL, '1', NULL, 1),
('da94817c-1af6-3f62-d8b4-46ebf67c221d', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-15 15:11:34', '2007-09-15 15:14:26', NULL, '1', NULL, 1),
('d6b557ac-2bd6-1d41-4c7e-46ebf6def2a3', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-15 15:11:34', '2007-09-15 15:14:26', NULL, '1', NULL, 1),
('6964cafc-de92-c6b4-7e4d-46ebf584a500', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-15 15:09:25', '2007-09-15 15:11:34', NULL, '1', NULL, 1),
('67440f84-d04d-c3a4-1272-46ebf5b72470', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-15 15:09:25', '2007-09-15 15:11:34', NULL, '1', NULL, 1),
('5f36e377-4494-5859-c914-46ebf5f99033', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-15 15:09:25', '2007-09-15 15:11:34', NULL, '1', NULL, 1),
('9c6b3baa-24ae-b495-1d68-46ebf4510394', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-15 15:05:44', '2007-09-15 15:09:25', NULL, '1', NULL, 1),
('9a4a2d3a-f7ca-f06b-284d-46ebf449cf3b', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-15 15:05:44', '2007-09-15 15:09:25', NULL, '1', NULL, 1),
('936a5dff-0e21-24f0-6bd2-46ebf430eebf', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-15 15:05:44', '2007-09-15 15:09:25', NULL, '1', NULL, 1),
('52cf7f85-b342-5a13-27e6-46ebb379b8fd', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-15 10:27:26', '2007-09-15 15:05:44', NULL, '1', NULL, 1),
('50a47cf9-0202-55c5-22da-46ebb3da3e5d', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-15 10:27:26', '2007-09-15 15:05:44', NULL, '1', NULL, 1),
('4dfafc16-da76-5a3c-8aa7-46ebb34fe89e', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-15 10:27:26', '2007-09-15 15:05:44', NULL, '1', NULL, 1),
('4bd87449-ae5b-93a6-bd2e-46ebb390f80e', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-15 10:27:26', '2007-09-15 15:05:44', NULL, '1', NULL, 1),
('5da2fd42-13a1-8f86-6ac6-46ebb305e5d6', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-15 10:26:51', '2007-09-15 10:27:26', NULL, '1', NULL, 1),
('5b7fe9fa-2282-4f42-76ab-46ebb371df05', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-15 10:26:51', '2007-09-15 10:27:26', NULL, '1', NULL, 1),
('59622779-f1b0-35ba-a2c0-46ebb3f52736', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-15 10:26:51', '2007-09-15 10:27:26', NULL, '1', NULL, 1),
('5739dc11-4c10-ec3c-9b6a-46ebb3043e6c', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-15 10:26:51', '2007-09-15 10:27:26', NULL, '1', NULL, 1),
('6a21c72b-93cb-10c3-9bef-46ebb3ae043b', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-15 10:26:22', '2007-09-15 10:26:51', NULL, '1', NULL, 1),
('67dc5ea9-2bb3-0e7b-3734-46ebb36799b3', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-15 10:26:22', '2007-09-15 10:26:51', NULL, '1', NULL, 1),
('65b1ab7d-8256-6e9f-f29c-46ebb3b3d0ba', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-15 10:26:22', '2007-09-15 10:26:51', NULL, '1', NULL, 1),
('6377ad30-bab3-4311-def6-46ebb30995dd', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-15 10:26:22', '2007-09-15 10:26:51', NULL, '1', NULL, 1),
('8a210ff1-aa5c-6144-e1ca-46ebb3accbc5', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-15 10:25:51', '2007-09-15 10:26:22', NULL, '1', NULL, 1),
('685e0840-b928-9697-7bf8-46ebb32f3a6c', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-15 10:25:51', '2007-09-15 10:26:22', NULL, '1', NULL, 1),
('462f0f8e-e1b0-eb5f-1ae1-46ebb303b11f', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-15 10:25:51', '2007-09-15 10:26:22', NULL, '1', NULL, 1),
('24370f1c-facd-9ea1-406d-46ebb358a925', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-15 10:25:51', '2007-09-15 10:26:22', NULL, '1', NULL, 1),
('a55e891b-fe18-91a9-727a-46ebaf71137a', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-15 10:08:25', '2007-09-15 10:25:51', NULL, '1', NULL, 1),
('a33fa725-af3d-a79f-b09a-46ebaf855a74', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-15 10:08:25', '2007-09-15 10:25:51', NULL, '1', NULL, 1),
('a123788f-ba47-8ba7-99bc-46ebaf859ae5', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-15 10:08:25', '2007-09-15 10:25:50', NULL, '1', NULL, 1),
('9ef26c91-03e4-eab5-425f-46ebaf6e224e', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-15 10:08:25', '2007-09-15 10:25:50', NULL, '1', NULL, 1),
('decda3e4-3a30-270b-a576-46ebae40c8ae', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-15 10:07:57', '2007-09-15 10:08:25', NULL, '1', NULL, 1),
('db523d71-b752-4a44-c124-46ebae1b3b63', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-15 10:07:57', '2007-09-15 10:08:25', NULL, '1', NULL, 1),
('d8f112a7-4d86-de37-d808-46ebae3887e0', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-15 10:07:57', '2007-09-15 10:08:25', NULL, '1', NULL, 1),
('d6c42a49-fdf4-5062-ebb8-46ebae2cea89', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-15 10:07:57', '2007-09-15 10:08:25', NULL, '1', NULL, 1),
('ec484a57-23d0-df7d-5626-46ebae90a11b', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-15 10:07:24', '2007-09-15 10:07:57', NULL, '1', NULL, 1),
('ea28fc3e-4ecf-a8ec-e589-46ebaedb1cd2', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-15 10:07:24', '2007-09-15 10:07:57', NULL, '1', NULL, 1),
('e800f145-bb87-5032-c3d5-46ebae0b304c', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-15 10:07:24', '2007-09-15 10:07:57', NULL, '1', NULL, 1),
('e5938cb7-1365-55da-ffd6-46ebaedd8815', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-15 10:07:24', '2007-09-15 10:07:57', NULL, '1', NULL, 1),
('f4229f8b-2665-4aec-bbc2-46ebaea95c94', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-15 10:06:49', '2007-09-15 10:07:24', NULL, '1', NULL, 1),
('f202ff9f-33a7-52c8-a4c9-46ebae931a84', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-15 10:06:49', '2007-09-15 10:07:24', NULL, '1', NULL, 1),
('ef9b4f1c-f133-cab0-6c71-46ebae0a19df', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-15 10:06:48', '2007-09-15 10:07:24', NULL, '1', NULL, 1),
('ed758a55-c15f-5f67-13b5-46ebae359cf1', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-15 10:06:48', '2007-09-15 10:07:24', NULL, '1', NULL, 1),
('4a714d1b-a9e4-1396-6ac1-46ebae32b4c4', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-15 10:04:14', '2007-09-15 10:06:48', NULL, '1', NULL, 1),
('48729344-8f20-517d-c24c-46ebae7bc591', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-15 10:04:14', '2007-09-15 10:06:48', NULL, '1', NULL, 1),
('468b2b79-49e2-c322-4bb6-46ebae28314e', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-15 10:04:14', '2007-09-15 10:06:48', NULL, '1', NULL, 1),
('447e905a-14b3-70de-4484-46ebae385557', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-15 10:04:14', '2007-09-15 10:06:48', NULL, '1', NULL, 1),
('5a76acf6-c23f-e6a5-78a9-46ebad3eb671', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-15 10:00:07', '2007-09-15 10:04:14', NULL, '1', NULL, 1),
('58953d1c-11d6-de0f-d8a2-46ebadfb1847', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-15 10:00:07', '2007-09-15 10:04:14', NULL, '1', NULL, 1),
('56734d50-d010-5ceb-97de-46ebad4922eb', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-15 10:00:07', '2007-09-15 10:04:14', NULL, '1', NULL, 1),
('54843eda-69df-bb9e-cdc4-46ebad0fd829', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-15 10:00:07', '2007-09-15 10:04:14', NULL, '1', NULL, 1),
('b9c804a0-3cce-e940-c213-46ebaca97c64', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-15 09:59:23', '2007-09-15 10:00:07', NULL, '1', NULL, 1),
('97a30345-026b-8858-111d-46ebac70a37d', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-15 09:59:23', '2007-09-15 10:00:07', NULL, '1', NULL, 1),
('72ac05c9-e684-c995-4942-46ebac9aa220', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-15 09:59:23', '2007-09-15 10:00:07', NULL, '1', NULL, 1),
('4fc90fc1-c8e7-db57-8be8-46ebac464cea', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-15 09:59:23', '2007-09-15 10:00:07', NULL, '1', NULL, 1),
('e918e997-cd4b-48b2-597e-46ebacfeb4be', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-15 09:58:57', '2007-09-15 09:59:23', NULL, '1', NULL, 1),
('e6e785dd-498d-844f-abda-46ebac9375af', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-15 09:58:57', '2007-09-15 09:59:23', NULL, '1', NULL, 1),
('e4ac7808-1faf-0859-8159-46ebacd9cad4', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-15 09:58:57', '2007-09-15 09:59:23', NULL, '1', NULL, 1),
('e2676c3f-09d1-f612-8cd6-46ebac725a53', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-15 09:58:57', '2007-09-15 09:59:22', NULL, '1', NULL, 1),
('11d355c9-e9a6-73bf-cc23-46ebace79e68', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-15 09:58:38', '2007-09-15 09:58:57', NULL, '1', NULL, 1),
('fadb04e8-7ad2-4d9f-0ab4-46ebac2c25ce', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-15 09:58:38', '2007-09-15 09:58:57', NULL, '1', NULL, 1),
('d536098f-f9e2-b71f-fd94-46ebaceb29ec', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-15 09:58:38', '2007-09-15 09:58:57', NULL, '1', NULL, 1),
('b31508bb-4aec-cffb-6598-46ebac9a3eb2', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-15 09:58:38', '2007-09-15 09:58:57', NULL, '1', NULL, 1),
('c5d6bf19-a27e-7e32-4fb4-46ebabb0efc8', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-15 09:54:52', '2007-09-15 09:58:38', NULL, '1', NULL, 1),
('c3a1b4e0-b63e-6b65-f69a-46ebab49d483', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-15 09:54:52', '2007-09-15 09:58:38', NULL, '1', NULL, 1),
('c18339c2-e0ec-0c7d-e0f6-46ebabdf2ebb', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-15 09:54:52', '2007-09-15 09:58:38', NULL, '1', NULL, 1),
('bf5cdc64-8fb2-66aa-797d-46ebab91a9da', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-15 09:54:52', '2007-09-15 09:58:38', NULL, '1', NULL, 1),
('a8bcda4f-ead6-0b61-6ddd-46ebabf2737c', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-15 09:54:07', '2007-09-15 09:54:52', NULL, '1', NULL, 1),
('a694420a-9a89-0721-7cb7-46ebab88d9a9', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-15 09:54:07', '2007-09-15 09:54:52', NULL, '1', NULL, 1),
('a46abafb-3428-1dbe-c7c1-46ebab018ff7', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-15 09:54:07', '2007-09-15 09:54:52', NULL, '1', NULL, 1),
('a245c03a-8a89-7430-593b-46ebab39270b', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-15 09:54:07', '2007-09-15 09:54:52', NULL, '1', NULL, 1),
('44b07ff3-b205-1d7f-e603-46ebab5a91a4', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-15 09:52:24', '2007-09-15 09:54:07', NULL, '1', NULL, 1),
('424e3358-cafc-5052-a650-46ebab6f313d', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-15 09:52:24', '2007-09-15 09:54:07', NULL, '1', NULL, 1),
('3fef39a1-223e-4c09-ddea-46ebab38232d', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-15 09:52:24', '2007-09-15 09:54:07', NULL, '1', NULL, 1),
('3d879f6b-2ec8-f345-52ef-46ebaba93c80', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-15 09:52:24', '2007-09-15 09:54:07', NULL, '1', NULL, 1),
('a4a79fa1-a11c-f48a-b07b-46ebab51cf6c', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-15 09:52:02', '2007-09-15 09:52:24', NULL, '1', NULL, 1),
('a281c45b-73d5-5b43-71ed-46ebab628cab', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-15 09:52:02', '2007-09-15 09:52:24', NULL, '1', NULL, 1),
('a057f2ba-6f1e-096e-6997-46ebab63a173', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-15 09:52:02', '2007-09-15 09:52:24', NULL, '1', NULL, 1),
('9e33af8b-36c9-0f3f-cee3-46ebab63cb5a', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-15 09:52:02', '2007-09-15 09:52:24', NULL, '1', NULL, 1),
('db4b438c-1f33-717d-6c95-46ebaab1cc46', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-15 09:48:50', '2007-09-15 09:52:02', NULL, '1', NULL, 1),
('d9748002-963e-d635-84b8-46ebaa3f5d59', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-15 09:48:50', '2007-09-15 09:52:02', NULL, '1', NULL, 1),
('d7a0a629-648b-2e32-7ba1-46ebaa55891f', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-15 09:48:50', '2007-09-15 09:52:02', NULL, '1', NULL, 1),
('d5c22f94-5dad-31b9-5b2c-46ebaac86849', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-15 09:48:50', '2007-09-15 09:52:02', NULL, '1', NULL, 1),
('b7d49f8c-45dc-3323-5fee-46ebaad3561b', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-15 09:48:00', '2007-09-15 09:48:50', NULL, '1', NULL, 1),
('b5f5f2b2-205a-5bcb-0422-46ebaa746580', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-15 09:48:00', '2007-09-15 09:48:50', NULL, '1', NULL, 1),
('b4249a88-f72c-7525-c175-46ebaa143b78', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-15 09:48:00', '2007-09-15 09:48:50', NULL, '1', NULL, 1),
('b240aff2-d924-1d44-5884-46ebaa4f1ef3', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-15 09:48:00', '2007-09-15 09:48:50', NULL, '1', NULL, 1),
('6d4cad36-5f87-10ef-1a83-46ebaa4f86a1', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-15 09:47:05', '2007-09-15 09:48:00', NULL, '1', NULL, 1),
('6b751a68-7e6c-98cf-a52f-46ebaae44d50', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-15 09:47:05', '2007-09-15 09:48:00', NULL, '1', NULL, 1),
('6996a595-ed71-a7ec-0211-46ebaa1357e5', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-15 09:47:05', '2007-09-15 09:48:00', NULL, '1', NULL, 1),
('67b9f971-29ae-8109-f1f1-46ebaae065e4', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-15 09:47:05', '2007-09-15 09:48:00', NULL, '1', NULL, 1),
('257880f4-a965-c273-bcd7-46eba9cc8fa7', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-15 09:45:39', '2007-09-15 09:47:05', NULL, '1', NULL, 1),
('23a2de6f-7012-b435-5eb9-46eba96c4ba9', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-15 09:45:39', '2007-09-15 09:47:05', NULL, '1', NULL, 1),
('21a5b649-a91d-1396-14e5-46eba93b8ce1', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-15 09:45:39', '2007-09-15 09:47:05', NULL, '1', NULL, 1),
('1fc83733-ded3-ec64-27b4-46eba9b0b58b', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-15 09:45:39', '2007-09-15 09:47:05', NULL, '1', NULL, 1),
('879a1b93-ebff-251a-3434-46eba9937ed5', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-15 09:45:16', '2007-09-15 09:45:39', NULL, '1', NULL, 1),
('85c4b68b-3413-ee9e-567d-46eba9381e53', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-15 09:45:16', '2007-09-15 09:45:39', NULL, '1', NULL, 1),
('83f1c6fa-3394-d027-5095-46eba96ef920', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-15 09:45:16', '2007-09-15 09:45:39', NULL, '1', NULL, 1),
('81f154c9-3adc-3935-a98e-46eba9c9549d', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-15 09:45:16', '2007-09-15 09:45:39', NULL, '1', NULL, 1),
('40ffe589-bfaf-7564-851a-46eba93c700b', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-15 09:45:04', '2007-09-15 09:45:16', NULL, '1', NULL, 1),
('3f23093a-9854-8b43-3d00-46eba9734448', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-15 09:45:04', '2007-09-15 09:45:16', NULL, '1', NULL, 1),
('3d4dab7f-dda9-739a-e283-46eba9163d1c', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-15 09:45:04', '2007-09-15 09:45:16', NULL, '1', NULL, 1),
('3b6c4460-5b44-e1c5-76bc-46eba92ecaa8', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-15 09:45:04', '2007-09-15 09:45:16', NULL, '1', NULL, 1),
('8f20c523-70f6-5472-20c7-46eba99821e4', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-15 09:44:40', '2007-09-15 09:45:04', NULL, '1', NULL, 1);
INSERT INTO `componentink` (`id`, `component_id`, `color_id`, `side`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`) VALUES 
('8d47c9ee-fc51-be99-d969-46eba9d543a2', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-15 09:44:40', '2007-09-15 09:45:04', NULL, '1', NULL, 1),
('8b6eb9f5-40ea-5b71-7103-46eba915129e', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-15 09:44:40', '2007-09-15 09:45:04', NULL, '1', NULL, 1),
('897b33b5-bd20-3b30-9f5b-46eba9aeeb56', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-15 09:44:40', '2007-09-15 09:45:04', NULL, '1', NULL, 1),
('34c0f7ca-63dc-6b89-ba22-46eba868fca2', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-15 09:41:58', '2007-09-15 09:44:40', NULL, '1', NULL, 1),
('32bafa3f-2670-fb5d-e5af-46eba8e4e110', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-15 09:41:58', '2007-09-15 09:44:40', NULL, '1', NULL, 1),
('30ebf6f4-562e-69de-64eb-46eba80a569c', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-15 09:41:58', '2007-09-15 09:44:40', NULL, '1', NULL, 1),
('2f0b68ed-d9b2-5955-38c7-46eba8004d93', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-15 09:41:58', '2007-09-15 09:44:40', NULL, '1', NULL, 1),
('24946343-0d0a-933c-b6f3-46eba7d8a373', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-15 09:38:02', '2007-09-15 09:41:58', NULL, '1', NULL, 1),
('22b4d953-70ea-8485-9185-46eba70fa77a', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-15 09:38:02', '2007-09-15 09:41:58', NULL, '1', NULL, 1),
('20d4807f-d7ce-aced-0662-46eba7116d0a', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-15 09:38:02', '2007-09-15 09:41:58', NULL, '1', NULL, 1),
('1efd9614-5744-e314-9e4c-46eba79bf9e6', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-15 09:38:02', '2007-09-15 09:41:58', NULL, '1', NULL, 1),
('2ffa356f-0b86-0c59-f895-46eba409a59f', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-15 09:23:16', '2007-09-15 09:38:02', NULL, '1', NULL, 1),
('2e24ea08-e0a5-189c-dd9e-46eba4c52444', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-15 09:23:16', '2007-09-15 09:38:02', NULL, '1', NULL, 1),
('2c547a27-97d3-0574-b9bc-46eba42a3b4e', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-15 09:23:16', '2007-09-15 09:38:02', NULL, '1', NULL, 1),
('2a7f4da8-3be6-7f40-7267-46eba46b1716', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-15 09:23:16', '2007-09-15 09:38:02', NULL, '1', NULL, 1),
('30b01c4b-7be5-0d44-dae9-46eba3dc46e4', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-15 09:20:49', '2007-09-15 09:23:16', NULL, '1', NULL, 1),
('2eaf2a9a-87f7-72a6-c46f-46eba3a44f73', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-15 09:20:49', '2007-09-15 09:23:16', NULL, '1', NULL, 1),
('2cdd5df4-4118-b9a0-873e-46eba34ccb54', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-15 09:20:49', '2007-09-15 09:23:16', NULL, '1', NULL, 1),
('2b031290-10fd-dbca-eb36-46eba3d2985e', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-15 09:20:49', '2007-09-15 09:23:16', NULL, '1', NULL, 1),
('819296fe-c360-22ab-0724-46eba3c0fa0c', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-15 09:20:36', '2007-09-15 09:20:49', NULL, '1', NULL, 1),
('7f909bf3-d42f-2e25-570b-46eba3b70d69', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-15 09:20:36', '2007-09-15 09:20:49', NULL, '1', NULL, 1),
('7d849cfd-1413-7533-baad-46eba38f706b', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-15 09:20:36', '2007-09-15 09:20:49', NULL, '1', NULL, 1),
('7bab4941-c5c1-1c3b-ec6d-46eba3074b68', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-15 09:20:36', '2007-09-15 09:20:49', NULL, '1', NULL, 1),
('932ee842-01ce-08ef-b715-46eba2203d1b', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-15 09:16:45', '2007-09-15 09:20:36', NULL, '1', NULL, 1),
('9109d8db-8c82-314a-921e-46eba288b1bd', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-15 09:16:45', '2007-09-15 09:20:36', NULL, '1', NULL, 1),
('8c19a30a-e2b8-c9b1-732a-46eba2129ce8', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-15 09:16:45', '2007-09-15 09:20:36', NULL, '1', NULL, 1),
('8a37401a-53fc-8271-0f28-46eba26d3150', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-15 09:16:45', '2007-09-15 09:20:36', NULL, '1', NULL, 1),
('371c23ef-c250-b8bb-d55c-46eba26ed8e7', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-15 09:16:44', '2007-09-15 09:16:45', NULL, '1', NULL, 1),
('34f6a93e-bff1-9ad9-0c9f-46eba209c289', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-15 09:16:44', '2007-09-15 09:16:45', NULL, '1', NULL, 1),
('32f2ad86-c24b-0eff-13de-46eba20ebba4', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-15 09:16:44', '2007-09-15 09:16:45', NULL, '1', NULL, 1),
('30a15a82-baa3-4843-4607-46eba26aacdc', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-15 09:16:44', '2007-09-15 09:16:45', NULL, '1', NULL, 1),
('1a2b55b9-7872-9c77-644c-46eba2bc9043', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-15 09:16:25', '2007-09-15 09:16:44', NULL, '1', NULL, 1),
('17e47c9e-2a73-b4c3-b6eb-46eba24d6081', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-15 09:16:25', '2007-09-15 09:16:44', NULL, '1', NULL, 1),
('157b3646-fa65-6822-774c-46eba2ddd693', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-15 09:16:25', '2007-09-15 09:16:44', NULL, '1', NULL, 1),
('132ff5fa-f271-a05c-98d0-46eba29f1e95', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-15 09:16:25', '2007-09-15 09:16:44', NULL, '1', NULL, 1),
('b336b17c-b17f-f640-cb27-46eba23487f4', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-15 09:13:02', '2007-09-15 09:16:25', NULL, '1', NULL, 1),
('b13a91c1-6ae8-d5cd-c99b-46eba2d54411', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-15 09:13:02', '2007-09-15 09:16:25', NULL, '1', NULL, 1),
('af58fb7c-0577-2337-4249-46eba2d13123', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-15 09:13:02', '2007-09-15 09:16:25', NULL, '1', NULL, 1),
('a70894fa-6477-d334-1b7a-46eba22bce35', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-15 09:13:02', '2007-09-15 09:16:25', NULL, '1', NULL, 1),
('5c26d5e3-68fb-218b-af93-46eba1ba3381', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-15 09:10:57', '2007-09-15 09:13:02', NULL, '1', NULL, 1),
('5a38be77-5253-b957-8bf5-46eba13ea4a0', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-15 09:10:57', '2007-09-15 09:13:02', NULL, '1', NULL, 1),
('584d91d6-6abd-738e-4ff9-46eba19daabf', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-15 09:10:57', '2007-09-15 09:13:02', NULL, '1', NULL, 1),
('565d0641-5795-a386-270d-46eba16b7fb5', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-15 09:10:57', '2007-09-15 09:13:02', NULL, '1', NULL, 1),
('cf3ae1d0-fbe5-3386-5fe0-46eba13e8b26', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-15 09:10:36', '2007-09-15 09:10:57', NULL, '1', NULL, 1),
('cd4c77db-3585-e088-aab9-46eba1c752f4', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-15 09:10:36', '2007-09-15 09:10:57', NULL, '1', NULL, 1),
('cb70fdfe-8a4b-f4a7-4174-46eba17a8101', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-15 09:10:36', '2007-09-15 09:10:57', NULL, '1', NULL, 1),
('c986b1bf-5e0a-2a55-d032-46eba18fb306', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-15 09:10:36', '2007-09-15 09:10:57', NULL, '1', NULL, 1),
('1dc4e278-ad54-3e5c-c221-46eba0ad76ae', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-15 09:05:53', '2007-09-15 09:10:36', NULL, '1', NULL, 1),
('1bbb07e0-e52b-7a13-b6f7-46eba08cf42e', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-15 09:05:53', '2007-09-15 09:10:36', NULL, '1', NULL, 1),
('16b700b8-9f51-dfa3-02ab-46eba0b3e6df', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-15 09:05:53', '2007-09-15 09:10:36', NULL, '1', NULL, 1),
('14cc1d3b-4097-e246-56db-46eba0857b63', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-15 09:05:53', '2007-09-15 09:10:36', NULL, '1', NULL, 1),
('5e6c96f9-33ac-7d9c-5056-46eb9f156ec3', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-15 09:02:21', '2007-09-15 09:05:53', NULL, '1', NULL, 1),
('5c7442b4-7c6a-8e73-8b00-46eb9f3e3ec0', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-15 09:02:21', '2007-09-15 09:05:53', NULL, '1', NULL, 1),
('56470c3c-7001-2ecc-4a9b-46eb9f131ce2', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-15 09:02:21', '2007-09-15 09:05:53', NULL, '1', NULL, 1),
('5456fe8a-5866-dc47-1fed-46eb9fdfa2a1', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-15 09:02:21', '2007-09-15 09:05:53', NULL, '1', NULL, 1),
('cff8e9a2-f142-6470-3712-46ea9c2cf353', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-14 14:37:43', '2007-09-15 09:02:21', NULL, '1', NULL, 1),
('cdb83bf5-363b-de65-5d3c-46ea9c68b029', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-14 14:37:43', '2007-09-15 09:02:21', NULL, '1', NULL, 1),
('cb76af65-70e7-1204-86b2-46ea9ce1363d', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-14 14:37:43', '2007-09-15 09:02:21', NULL, '1', NULL, 1),
('c90d45ed-4d52-e94b-9a2c-46ea9cea71b0', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-14 14:37:43', '2007-09-15 09:02:21', NULL, '1', NULL, 1),
('59c77a70-12a8-d33c-fb6a-46ea9caf82e0', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-14 14:37:38', '2007-09-14 14:37:43', NULL, '1', NULL, 1),
('57f514c9-4eb9-de76-b88e-46ea9cbfc536', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-14 14:37:38', '2007-09-14 14:37:43', NULL, '1', NULL, 1),
('56212d4c-3ba2-ef98-1c7e-46ea9c8c5beb', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-14 14:37:38', '2007-09-14 14:37:43', NULL, '1', NULL, 1),
('5450438c-4a0b-5463-d30c-46ea9c927586', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-14 14:37:38', '2007-09-14 14:37:43', NULL, '1', NULL, 1),
('ea5993f9-8744-bfbc-3cdd-46ea9b504ca9', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-14 14:31:49', '2007-09-14 14:37:38', NULL, '1', NULL, 1),
('e359fb4e-6eae-027c-0d2f-46ea9b08e036', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-14 14:31:49', '2007-09-14 14:37:38', NULL, '1', NULL, 1),
('dd495fe1-31a1-3eca-fb7e-46ea9bf03b0b', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-14 14:31:49', '2007-09-14 14:37:38', NULL, '1', NULL, 1),
('d0014dc6-2288-3d83-7eb8-46ea9b855ea6', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-14 14:31:49', '2007-09-14 14:37:38', NULL, '1', NULL, 1),
('9250d408-9736-5d9c-5e30-46ea9672dc27', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-14 14:12:05', '2007-09-14 14:31:49', NULL, '1', NULL, 1),
('9073c857-19aa-b750-5200-46ea967519a0', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-14 14:12:05', '2007-09-14 14:31:49', NULL, '1', NULL, 1),
('8e63df32-486f-a0d0-a43d-46ea96ebf5d9', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-14 14:12:05', '2007-09-14 14:31:49', NULL, '1', NULL, 1),
('8c8640b4-eccb-63e6-a3aa-46ea96d22e78', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-14 14:12:05', '2007-09-14 14:31:49', NULL, '1', NULL, 1),
('db0c88d1-c130-1402-afa5-46ea953bf3c4', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-14 14:06:46', '2007-09-14 14:12:05', NULL, '1', NULL, 1),
('d928f6f4-484f-beee-e23a-46ea95f6919b', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-14 14:06:46', '2007-09-14 14:12:05', NULL, '1', NULL, 1),
('d721f99a-8af3-1518-d8b1-46ea956785c1', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-14 14:06:46', '2007-09-14 14:12:05', NULL, '1', NULL, 1),
('d539d0ac-4048-70e8-28b2-46ea959644a0', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-14 14:06:46', '2007-09-14 14:12:05', NULL, '1', NULL, 1),
('90e54b3f-dfc0-74c0-09dc-46ea952188ea', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-14 14:06:33', '2007-09-14 14:06:46', NULL, '1', NULL, 1),
('8ec786dd-456d-5557-caed-46ea95ab2ea0', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-14 14:06:33', '2007-09-14 14:06:46', NULL, '1', NULL, 1),
('8cc7d2c2-590c-4430-b879-46ea95ca10ad', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-14 14:06:33', '2007-09-14 14:06:46', NULL, '1', NULL, 1),
('8ac55254-b9fb-3096-961a-46ea957d291c', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-14 14:06:33', '2007-09-14 14:06:46', NULL, '1', NULL, 1),
('9bfb58cc-bd09-9f57-47f6-46ea94743403', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-14 14:03:54', '2007-09-14 14:06:33', NULL, '1', NULL, 1),
('9a1d73d0-cc60-50b6-c7e4-46ea94d0b181', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-14 14:03:54', '2007-09-14 14:06:33', NULL, '1', NULL, 1),
('983b5678-d051-08e7-5081-46ea94409052', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-14 14:03:54', '2007-09-14 14:06:33', NULL, '1', NULL, 1),
('965e016d-62c6-f022-94ac-46ea9485ef73', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-14 14:03:54', '2007-09-14 14:06:33', NULL, '1', NULL, 1),
('d4f7515f-d812-588a-94c0-46ea9451a6a0', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-14 14:02:22', '2007-09-14 14:03:54', NULL, '1', NULL, 1),
('d30adeb4-2aa6-8b1d-0557-46ea948c98de', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-14 14:02:22', '2007-09-14 14:03:54', NULL, '1', NULL, 1),
('d10e06b1-d2ef-3501-e7c9-46ea949b95f7', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-14 14:02:22', '2007-09-14 14:03:54', NULL, '1', NULL, 1),
('cf31c2b7-5c4e-250f-1133-46ea943c9fc9', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-14 14:02:22', '2007-09-14 14:03:54', NULL, '1', NULL, 1),
('3711d1f1-e3f9-f1c3-4deb-46ea944bbda5', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-14 14:01:00', '2007-09-14 14:02:22', NULL, '1', NULL, 1),
('35401e93-2d23-2885-bbd7-46ea94e7665b', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-14 14:01:00', '2007-09-14 14:02:22', NULL, '1', NULL, 1),
('33637ce7-a4fa-f8b5-3ef1-46ea942c2edf', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-14 14:01:00', '2007-09-14 14:02:22', NULL, '1', NULL, 1),
('318db0a9-b464-a975-a612-46ea946f1d8a', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-14 14:01:00', '2007-09-14 14:02:22', NULL, '1', NULL, 1),
('3540faa2-daeb-4cb3-a893-46ea93557188', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-14 13:57:08', '2007-09-14 14:01:00', NULL, '1', NULL, 1),
('333edce5-fd0d-1a13-8af8-46ea93caba45', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-14 13:57:08', '2007-09-14 14:01:00', NULL, '1', NULL, 1),
('316b31df-e086-36dc-7d21-46ea935506bc', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-14 13:57:08', '2007-09-14 14:01:00', NULL, '1', NULL, 1),
('2f870869-a26a-17eb-3a96-46ea938c14ec', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-14 13:57:08', '2007-09-14 14:01:00', NULL, '1', NULL, 1),
('6e4ed20c-dcf3-c98c-0e4d-46ea925ca26d', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-14 13:55:14', '2007-09-14 13:57:08', NULL, '1', NULL, 1),
('6c7b4410-652c-df49-c0f3-46ea92083d52', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-14 13:55:14', '2007-09-14 13:57:08', NULL, '1', NULL, 1),
('6aa124b9-346f-441f-c5cd-46ea9265051f', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-14 13:55:14', '2007-09-14 13:57:08', NULL, '1', NULL, 1),
('65c4bf6c-bbf5-2402-476d-46ea922e46dc', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-14 13:55:14', '2007-09-14 13:57:08', NULL, '1', NULL, 1),
('ae14f29a-9cb3-951a-a5a7-46ea923ef2d6', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-14 13:52:50', '2007-09-14 13:55:14', NULL, '1', NULL, 1),
('ac3e9efa-c8f9-d71a-adb7-46ea926f7c1f', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-14 13:52:50', '2007-09-14 13:55:14', NULL, '1', NULL, 1),
('aa401ccd-3234-c2eb-7ba2-46ea92e35e45', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-14 13:52:50', '2007-09-14 13:55:14', NULL, '1', NULL, 1),
('a85f2965-ca87-8511-2f8c-46ea923867f3', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-14 13:52:50', '2007-09-14 13:55:14', NULL, '1', NULL, 1),
('2169ae03-4822-8b8b-98e7-46ea916e94f4', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-14 13:48:37', '2007-09-14 13:52:50', NULL, '1', NULL, 1),
('1f8418e9-d569-83b3-058f-46ea91665009', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-14 13:48:37', '2007-09-14 13:52:50', NULL, '1', NULL, 1),
('1d868b83-a1f5-61d2-50f0-46ea91461d06', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-14 13:48:37', '2007-09-14 13:52:50', NULL, '1', NULL, 1),
('1b8f7a4f-1904-7a49-73df-46ea9180a8a7', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-14 13:48:37', '2007-09-14 13:52:50', NULL, '1', NULL, 1),
('a154316b-a561-0a37-d26e-46ea8f57c4fa', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-14 13:40:01', '2007-09-14 13:48:37', NULL, '1', NULL, 1),
('9b77a57e-96b2-13d9-f3d4-46ea8f1b1ca6', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-14 13:40:01', '2007-09-14 13:48:37', NULL, '1', NULL, 1),
('95967e74-5d4a-db50-b5ca-46ea8f5296ba', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-14 13:40:01', '2007-09-14 13:48:37', NULL, '1', NULL, 1),
('8b0e80b5-f2f3-065a-b723-46ea8f13fa62', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-14 13:40:01', '2007-09-14 13:48:37', NULL, '1', NULL, 1),
('4dec7086-a58d-e535-e3d0-46ea8efe794b', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-14 13:36:19', '2007-09-14 13:40:01', NULL, '1', NULL, 1),
('44adc99f-6249-0dbc-0091-46ea8e465a96', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-14 13:36:19', '2007-09-14 13:40:01', NULL, '1', NULL, 1),
('3650b4cc-4df4-e1ea-bdcc-46ea8e6a642b', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-14 13:36:19', '2007-09-14 13:40:01', NULL, '1', NULL, 1),
('2f5a9922-f1e5-24a7-5ba2-46ea8e39ab19', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-14 13:36:19', '2007-09-14 13:40:01', NULL, '1', NULL, 1),
('78a6189a-da13-78b0-fb60-46e95ca3b650', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-13 15:49:53', '2007-09-14 13:36:19', NULL, '1', NULL, 1),
('5bde760d-6f99-7ae9-ccae-46e95cca5ed8', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-13 15:49:53', '2007-09-14 13:36:19', NULL, '1', NULL, 1),
('3f217e58-18ba-2aee-947c-46e95c92f725', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-13 15:49:53', '2007-09-14 13:36:19', NULL, '1', NULL, 1),
('226f9e35-54d1-34d9-c80b-46e95c8dfa85', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-13 15:49:53', '2007-09-14 13:36:19', NULL, '1', NULL, 1),
('66b6a71f-16eb-e38e-b869-46e93d5bb9f8', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-13 13:38:33', '2007-09-13 15:49:53', NULL, '1', NULL, 1),
('465839ab-2201-7f15-32df-46e93d5ef550', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-13 13:38:33', '2007-09-13 15:49:52', NULL, '1', NULL, 1),
('2951f735-ff91-c11a-e5f5-46e93dd4678b', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-13 13:38:33', '2007-09-13 15:49:52', NULL, '1', NULL, 1),
('c7130383-f400-294a-ac53-46e93debb62f', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-13 13:38:33', '2007-09-13 15:49:53', NULL, '1', NULL, 1),
('cfde08a1-e397-e966-5600-46e93dd5f6bb', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-13 13:37:34', '2007-09-13 13:38:32', NULL, '1', NULL, 1),
('ee5f4e54-fabf-74f4-c1ff-46e93d14936f', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-13 13:37:33', '2007-09-13 13:38:32', NULL, '1', NULL, 1),
('d67a4b54-329d-94ac-6cce-46e93d4a7310', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-13 13:37:33', '2007-09-13 13:38:32', NULL, '1', NULL, 1),
('c4069108-79ae-bb8b-e9f8-46e93d1ecb0d', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-13 13:37:33', '2007-09-13 13:38:32', NULL, '1', NULL, 1),
('ed65df34-ac6e-7985-e03e-46e93dc00700', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-13 13:37:08', '2007-09-13 13:37:33', NULL, '1', NULL, 1),
('dbcef176-f1ad-c57c-3e65-46e93d7ab9ed', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-13 13:37:08', '2007-09-13 13:37:33', NULL, '1', NULL, 1),
('ca2f2894-92b5-e327-3aa0-46e93df91ee2', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-13 13:37:08', '2007-09-13 13:37:33', NULL, '1', NULL, 1),
('b5d25e49-8394-934b-90d9-46e93d7aa387', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-13 13:37:08', '2007-09-13 13:37:33', NULL, '1', NULL, 1),
('8b29a389-37e0-e469-83bd-46e93c5c2ada', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-13 13:36:21', '2007-09-13 13:37:08', NULL, '1', NULL, 1),
('78cf166b-3f53-2b42-868a-46e93ce94e30', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-13 13:36:21', '2007-09-13 13:37:08', NULL, '1', NULL, 1),
('64cc687e-1dd4-f02c-e8a3-46e93c428871', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-13 13:36:21', '2007-09-13 13:37:08', NULL, '1', NULL, 1),
('52988e27-1d88-64ea-65ba-46e93c3aef7e', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-13 13:36:21', '2007-09-13 13:37:08', NULL, '1', NULL, 1),
('46862db0-70d6-af71-dc11-46e93ce52703', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-13 13:36:09', '2007-09-13 13:36:21', NULL, '1', NULL, 1),
('3539817f-7abc-510d-0568-46e93c4f3b05', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-13 13:36:09', '2007-09-13 13:36:21', NULL, '1', NULL, 1),
('23e254ed-5ea4-0b69-a020-46e93c558d6c', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-13 13:36:09', '2007-09-13 13:36:21', NULL, '1', NULL, 1),
('129697e2-1b85-779d-1e8c-46e93c5d1969', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-13 13:36:09', '2007-09-13 13:36:21', NULL, '1', NULL, 1),
('74feb1cf-bc1d-11a4-d66e-46e93c6e14aa', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-13 13:36:05', '2007-09-13 13:36:09', NULL, '1', NULL, 1),
('620af4fa-eff6-7f6c-55a4-46e93cd74826', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-13 13:36:05', '2007-09-13 13:36:08', NULL, '1', NULL, 1),
('4fe9ff73-87fa-b17b-9d8e-46e93c08a2fe', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-13 13:36:05', '2007-09-13 13:36:08', NULL, '1', NULL, 1),
('3e3bbaa3-c8bf-a047-5732-46e93c4bf3c6', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-13 13:36:05', '2007-09-13 13:36:08', NULL, '1', NULL, 1),
('1a1ea794-3cf8-0e13-b81c-46e93b7cc9f4', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-13 13:32:45', '2007-09-13 13:36:05', NULL, '1', NULL, 1),
('17ea9e61-1706-c9e9-c9be-46e93b69b1c9', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-13 13:32:45', '2007-09-13 13:36:05', NULL, '1', NULL, 1),
('15d3c8f7-71d4-a757-ceb0-46e93b1b01c0', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-13 13:32:45', '2007-09-13 13:36:05', NULL, '1', NULL, 1),
('13a73e4d-05a5-8f72-bfdc-46e93b861a67', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-13 13:32:45', '2007-09-13 13:36:05', NULL, '1', NULL, 1),
('c310e4d8-f606-f237-017d-46e93be12737', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-13 13:31:59', '2007-09-13 13:32:45', NULL, '1', NULL, 1),
('c0e97850-4db4-3e08-6c21-46e93b58562a', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-13 13:31:59', '2007-09-13 13:32:45', NULL, '1', NULL, 1),
('becb8987-6861-b604-bed6-46e93b147564', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-13 13:31:59', '2007-09-13 13:32:45', NULL, '1', NULL, 1),
('bc8119c8-6945-63a9-d33b-46e93bde7a34', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-13 13:31:59', '2007-09-13 13:32:45', NULL, '1', NULL, 1),
('15f83e86-b57d-6142-2d75-46e93a1800fa', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-13 13:28:08', '2007-09-13 13:31:59', NULL, '1', NULL, 1),
('13cd63db-d125-a749-8a0b-46e93ac1ae4d', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-13 13:28:08', '2007-09-13 13:31:59', NULL, '1', NULL, 1),
('119d7fa2-c29d-f77e-b6f9-46e93a2d9e8c', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-13 13:28:08', '2007-09-13 13:31:59', NULL, '1', NULL, 1),
('f7a20031-97c0-10b7-6ac8-46e93a4a5e20', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-13 13:28:08', '2007-09-13 13:31:59', NULL, '1', NULL, 1),
('cda413f8-6b8c-bbdd-0572-46e93a597d72', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-13 13:27:33', '2007-09-13 13:28:08', NULL, '1', NULL, 1),
('cb7e1158-cca1-17c4-5cbf-46e93a3b664e', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-13 13:27:33', '2007-09-13 13:28:08', NULL, '1', NULL, 1),
('c8f4bcf8-ca53-14db-5df7-46e93a30a8ee', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-13 13:27:33', '2007-09-13 13:28:08', NULL, '1', NULL, 1),
('c6d5dd97-9c06-bb51-358b-46e93a65aebd', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-13 13:27:33', '2007-09-13 13:28:08', NULL, '1', NULL, 1),
('7bfe03c1-8557-f3fd-8696-46e9370283ea', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-13 13:14:49', '2007-09-13 13:27:33', NULL, '1', NULL, 1),
('581f0533-5608-d5bb-ada7-46e937d608ad', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-13 13:14:49', '2007-09-13 13:27:33', NULL, '1', NULL, 1),
('2fd2060f-909d-90ab-6bc0-46e937549d8f', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-13 13:14:49', '2007-09-13 13:27:33', NULL, '1', NULL, 1),
('cd800e42-435a-312b-0b5d-46e9371cb1fb', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-13 13:14:49', '2007-09-13 13:27:33', NULL, '1', NULL, 1),
('8f096401-31d8-2c38-4b42-46e937f42516', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-13 13:13:40', '2007-09-13 13:14:49', NULL, '1', NULL, 1),
('82dd58e7-5192-38fc-14b8-46e937f7638a', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-13 13:13:40', '2007-09-13 13:14:48', NULL, '1', NULL, 1),
('73f7dd90-9472-0ae0-7085-46e9375abd43', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-13 13:13:40', '2007-09-13 13:14:48', NULL, '1', NULL, 1),
('627da177-0005-85e8-451e-46e937e4178e', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-13 13:13:40', '2007-09-13 13:14:48', NULL, '1', NULL, 1),
('1fc4b688-cc8b-c316-7fbd-46e937354269', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-13 13:11:49', '2007-09-13 13:13:40', NULL, '1', NULL, 1),
('1d8ac34d-a34e-b584-5c19-46e937d52aa0', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-13 13:11:49', '2007-09-13 13:13:40', NULL, '1', NULL, 1),
('156e3438-61ca-23d6-4881-46e9378f0461', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-13 13:11:49', '2007-09-13 13:13:40', NULL, '1', NULL, 1),
('134ff904-4bb4-3f61-4f00-46e937733b78', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-13 13:11:49', '2007-09-13 13:13:40', NULL, '1', NULL, 1),
('bb7582e6-76a7-72db-2e27-46e9369b6896', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-13 13:10:53', '2007-09-13 13:11:49', NULL, '1', NULL, 1),
('b6f87460-0fec-0ce0-a15b-46e936230e1f', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-13 13:10:53', '2007-09-13 13:11:49', NULL, '1', NULL, 1),
('b4998049-9ac8-d87a-656f-46e936e7b632', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-13 13:10:53', '2007-09-13 13:11:49', NULL, '1', NULL, 1),
('b0981cc7-0a55-3f5d-21a5-46e9367f1175', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-13 13:10:53', '2007-09-13 13:11:49', NULL, '1', NULL, 1),
('de77712b-dace-00c5-a732-46e936c47a36', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-13 13:10:16', '2007-09-13 13:10:53', NULL, '1', NULL, 1),
('dc5d620a-c008-5cab-28ea-46e9365e48bc', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-13 13:10:16', '2007-09-13 13:10:53', NULL, '1', NULL, 1),
('da40201f-5bf5-ee44-b46b-46e93682931b', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-13 13:10:16', '2007-09-13 13:10:53', NULL, '1', NULL, 1),
('d7a68ee7-816e-eb66-875b-46e936b4737e', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-13 13:10:16', '2007-09-13 13:10:53', NULL, '1', NULL, 1),
('ea996b94-fbd8-9bd2-f437-46e8e2e0162a', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-13 07:11:35', '2007-09-13 13:10:16', NULL, '1', NULL, 1),
('e876a9f8-0525-0a91-2109-46e8e29fe67b', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-13 07:11:35', '2007-09-13 13:10:16', NULL, '1', NULL, 1),
('e65d4bca-215a-2039-5962-46e8e27cf4ac', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-13 07:11:35', '2007-09-13 13:10:16', NULL, '1', NULL, 1),
('e43cf0d9-68fb-15f0-1092-46e8e2fc86c5', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-13 07:11:35', '2007-09-13 13:10:16', NULL, '1', NULL, 1),
('464b73b8-c673-0986-6d55-46e8e144a847', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-13 07:06:24', '2007-09-13 07:11:35', NULL, '1', NULL, 1),
('442346ba-1f93-ded9-bb6c-46e8e1f693e3', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-09-13 07:06:24', '2007-09-13 07:11:35', NULL, '1', NULL, 1),
('41fce281-9e0f-826c-e763-46e8e1c6630f', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-09-13 07:06:24', '2007-09-13 07:11:35', NULL, '1', NULL, 1),
('3f745650-995e-7f3c-8432-46e8e102b3fb', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-09-13 07:06:24', '2007-09-13 07:11:35', NULL, '1', NULL, 1),
('bbcb8e94-e247-613a-1169-46e7f222a799', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-09-12 14:06:14', '2007-09-18 11:52:27', NULL, '1', NULL, 1),
('b57eb3ea-6d22-aa38-8e9b-46e7f284b6c7', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-12 14:06:14', '2007-09-18 11:52:27', NULL, '1', NULL, 1),
('c37c80c7-eb00-5920-ee3c-46e5594b8e17', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-09-10 14:47:38', '2007-09-12 14:06:14', NULL, '1', NULL, 1),
('b87c1307-7422-b1dd-9ccb-46e55918685d', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-09-10 14:47:38', '2007-09-12 14:06:14', NULL, '1', NULL, 1),
('6f680635-0b17-0b10-a764-46d803475f33', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-31 12:02:18', '2007-09-10 14:47:38', NULL, '1', NULL, 1),
('64569559-cd2d-3d1e-0899-46d803109f13', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-31 12:02:18', '2007-09-10 14:47:38', NULL, '1', NULL, 1),
('cf83d45b-cbe5-5ba2-4d50-46d6de3fb0e2', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-30 15:13:43', '2007-08-31 12:02:18', NULL, '1', NULL, 1),
('ca7e0c35-fa9a-c80f-7735-46d6dee192d5', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-30 15:13:43', '2007-08-31 12:02:18', NULL, '1', NULL, 1),
('1e255211-b180-f0ba-a850-46d6d8b65460', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-30 14:49:25', '2007-09-13 07:06:24', NULL, '1', NULL, 1),
('1972c957-f59f-691b-62fe-46d6d89d9008', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-30 14:49:25', '2007-09-13 07:06:24', NULL, '1', NULL, 1),
('173dcec1-7b87-76ff-2658-46d6d8e083b6', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-30 14:49:25', '2007-09-13 07:06:24', NULL, '1', NULL, 1),
('1500b94b-7d04-9e0b-62fc-46d6d8f77a5f', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-30 14:49:25', '2007-09-13 07:06:24', NULL, '1', NULL, 1),
('1c13cd58-44ef-0d49-c497-46d6be4bf4d6', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-30 12:57:58', '2007-08-30 14:49:25', NULL, '1', NULL, 1),
('19de54af-680a-a04c-74e6-46d6be784b3b', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-30 12:57:58', '2007-08-30 14:49:25', NULL, '1', NULL, 1),
('17936d57-a85b-940e-8e98-46d6bed3ba6f', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-30 12:57:58', '2007-08-30 14:49:25', NULL, '1', NULL, 1),
('1578fa99-92d9-ed8f-64d5-46d6bebcb55c', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-30 12:57:58', '2007-08-30 14:49:25', NULL, '1', NULL, 1),
('1a751175-f87d-1804-1437-46d6bbc54545', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-30 12:44:06', '2007-08-30 15:13:43', NULL, '1', NULL, 1),
('15b75327-d243-8144-21cf-46d6bbb0860b', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-30 12:44:06', '2007-08-30 15:13:43', NULL, '1', NULL, 1),
('555fa8fc-2256-1bed-6ad7-46d6ba49e114', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-30 12:38:43', '2007-08-30 12:44:06', NULL, '1', NULL, 1),
('50cb95c6-6d65-4967-8585-46d6ba693c29', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-30 12:38:43', '2007-08-30 12:44:06', NULL, '1', NULL, 1),
('a8cf2e28-89a9-272a-3651-46d6b9116d6b', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-30 12:36:47', '2007-08-30 12:38:43', NULL, '1', NULL, 1),
('a4120461-d0d6-5663-debd-46d6b98addf3', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-30 12:36:47', '2007-08-30 12:38:43', NULL, '1', NULL, 1),
('abdd2316-2e10-4f0a-87c5-46d6aaaccb52', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-30 11:30:23', '2007-08-30 12:36:47', NULL, '1', NULL, 1),
('a732a38d-f8f9-ea70-d88e-46d6aa9cc0bb', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-30 11:30:23', '2007-08-30 12:36:47', NULL, '1', NULL, 1),
('b8bd021b-d5c5-bfbb-67f9-46d6a969bc3d', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-30 11:25:08', '2007-08-30 11:30:23', NULL, '1', NULL, 1),
('b6a6f424-53c4-6493-9aba-46d6a93b7561', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-30 11:25:08', '2007-08-30 11:30:23', NULL, '1', NULL, 1),
('b48b0666-16d7-05fe-1442-46d6a981112f', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-30 11:25:08', '2007-08-30 11:30:23', NULL, '1', NULL, 1),
('b04620ea-b536-66bb-c2de-46d6a9b380ec', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-30 11:25:08', '2007-08-30 11:30:23', NULL, '1', NULL, 1),
('4b9280a7-ce13-e583-984a-46cacef1c4da', '629da741-d120-307b-0f49-46c94438e8c8', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-21 11:38:46', '2007-08-21 11:38:46', NULL, '1', NULL, 0),
('4da8081a-d9e4-94b0-ba86-46cacecd6957', '629da741-d120-307b-0f49-46c94438e8c8', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-21 11:38:46', '2007-08-21 11:38:46', NULL, '1', NULL, 0),
('4fbf246b-dad3-f303-fcc2-46cacee6ecea', '629da741-d120-307b-0f49-46c94438e8c8', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-21 11:38:46', '2007-08-21 11:38:46', NULL, '1', NULL, 0),
('51d8ee2a-cbfe-4883-7d49-46cace490ebe', '629da741-d120-307b-0f49-46c94438e8c8', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-21 11:38:46', '2007-08-21 11:38:46', NULL, '1', NULL, 0),
('566167a3-312d-7d26-12ec-46cace3ad474', '629da741-d120-307b-0f49-46c94438e8c8', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-21 11:38:46', '2007-08-21 11:38:46', NULL, '1', NULL, 0),
('587c20bc-fd40-ec28-b8d7-46cace5a564a', '629da741-d120-307b-0f49-46c94438e8c8', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-21 11:38:46', '2007-08-21 11:38:46', NULL, '1', NULL, 0),
('5aaa15c7-6cd1-9d2a-99a4-46cace68020b', '629da741-d120-307b-0f49-46c94438e8c8', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-21 11:38:46', '2007-08-21 11:38:46', NULL, '1', NULL, 0),
('5d24b12b-cb47-c3e0-5a46-46cacee5ebf1', '629da741-d120-307b-0f49-46c94438e8c8', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-21 11:38:46', '2007-08-21 11:38:46', NULL, '1', NULL, 0),
('995e866c-d44a-4127-3585-46d69ea1385d', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-30 10:41:22', '2007-08-30 12:57:58', NULL, '1', NULL, 1),
('972e2b2a-3314-2c74-b092-46d69eb085a9', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-30 10:41:22', '2007-08-30 12:57:58', NULL, '1', NULL, 1),
('907c3078-5577-24fd-4983-46d69e42ade1', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-30 10:41:22', '2007-08-30 12:57:58', NULL, '1', NULL, 1),
('8e2cef60-cb8a-179a-3cec-46d69e18c8e2', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-30 10:41:22', '2007-08-30 12:57:58', NULL, '1', NULL, 1),
('98d11bbc-d08f-8eba-fec1-46d69ecfe873', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-30 10:40:38', '2007-08-30 10:41:22', NULL, '1', NULL, 1),
('9699173e-f26e-f1d5-6927-46d69ef75bad', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-30 10:40:38', '2007-08-30 10:41:22', NULL, '1', NULL, 1),
('9476f38d-2a6a-51ec-c663-46d69ed61384', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-30 10:40:38', '2007-08-30 10:41:22', NULL, '1', NULL, 1),
('8f7a9492-8372-11a9-10e9-46d69e9ecd88', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-30 10:40:38', '2007-08-30 10:41:22', NULL, '1', NULL, 1),
('6a04deb4-b6c3-670e-942d-46ce8bac80e4', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'a', '2007-08-24 07:40:58', '2007-08-24 07:40:58', NULL, '1', NULL, 0),
('6c2d7979-fff2-7ac8-983c-46ce8bc10cbf', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'a', '2007-08-24 07:40:58', '2007-08-24 07:40:58', NULL, '1', NULL, 0),
('6e4cfb61-0a25-5d60-b3f6-46ce8bd2cfbb', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'a', '2007-08-24 07:40:58', '2007-08-24 07:40:58', NULL, '1', NULL, 0),
('708cc83a-90d1-220a-9449-46ce8b8b9e2a', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'a', '2007-08-24 07:40:58', '2007-08-24 07:40:58', NULL, '1', NULL, 0),
('75591f0b-049c-145c-80f0-46ce8b6b09cf', '598457bc-776a-9154-9b63-4652c9ce58cb', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 'b', '2007-08-24 07:40:58', '2007-08-24 07:40:58', NULL, '1', NULL, 0),
('77874128-1442-9171-3a06-46ce8bda0353', '598457bc-776a-9154-9b63-4652c9ce58cb', 'bb2b1cb0-55b9-8261-ab24-468225565659', 'b', '2007-08-24 07:40:58', '2007-08-24 07:40:58', NULL, '1', NULL, 0),
('79b8305e-db08-0524-9f3c-46ce8b37b6ef', '598457bc-776a-9154-9b63-4652c9ce58cb', '43a1e427-3cef-1fce-d9a7-46b2164cbc65', 'b', '2007-08-24 07:40:58', '2007-08-24 07:40:58', NULL, '1', NULL, 0),
('7be43d1d-ac50-120a-0af0-46ce8b5b02c6', '598457bc-776a-9154-9b63-4652c9ce58cb', '52d3ab7e-36eb-80dc-866d-46b216b81e73', 'b', '2007-08-24 07:40:58', '2007-08-24 07:40:58', NULL, '1', NULL, 0);

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

INSERT INTO `componentprepress` (`id`, `rate_id`, `component_id`, `side`, `type`, `count`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`) VALUES 
('4df34dbb-5526-c307-8add-46ebaefe08a3', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-15 10:07:58', '2007-09-15 10:08:26', NULL, '1', NULL, 1),
('4894c0b4-124e-377c-4079-46ebaea34229', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-15 10:07:58', '2007-09-15 10:08:25', NULL, '1', NULL, 1),
('5cc70055-4a0a-142d-8127-46ebaeaa3050', '319a1633-aa9f-6b4e-df98-469628a1c043', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'flm', 1, '2007-09-15 10:07:25', '2007-09-15 10:07:58', NULL, '1', NULL, 1),
('5747718f-c769-2ea9-c0ff-46ebaea603fb', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-15 10:07:25', '2007-09-15 10:07:58', NULL, '1', NULL, 1),
('51bb9ed5-4681-b179-2288-46ebaed25d4c', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-15 10:07:25', '2007-09-15 10:07:58', NULL, '1', NULL, 1),
('59b79d97-66d3-3d45-8112-46ebaee8ec96', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-15 10:06:49', '2007-09-15 10:07:25', NULL, '1', NULL, 1),
('53d9766a-e5fe-8c5b-42c7-46ebaec1e99d', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-15 10:06:49', '2007-09-15 10:07:25', NULL, '1', NULL, 1),
('c3c99a6f-1f26-164e-5945-46ebad48a8b9', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 2, '2007-09-15 10:02:51', '2007-09-15 10:06:34', NULL, '1', NULL, 1),
('63a56122-7d62-5246-f255-46ebac2b0686', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-15 09:59:23', '2007-09-15 10:02:51', NULL, '1', NULL, 1),
('5e69cce4-8f0e-2aad-cfaf-46ebac3dfc85', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 2, '2007-09-15 09:59:23', '2007-09-15 10:02:51', NULL, '1', NULL, 1),
('49a5d68a-fd1a-8f56-88a9-46ebac13c1e4', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 2, '2007-09-15 09:58:58', '2007-09-15 09:59:23', NULL, '1', NULL, 1),
('6ba35bd3-9624-ff77-9854-46ebac86478b', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-15 09:58:38', '2007-09-15 09:58:58', NULL, '1', NULL, 1),
('667259bf-8f3f-bd1f-ebef-46ebaca13294', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 2, '2007-09-15 09:58:38', '2007-09-15 09:58:58', NULL, '1', NULL, 1),
('27704544-36e0-d3bf-d6dd-46ebab08cad9', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-15 09:54:53', '2007-09-15 09:58:38', NULL, '1', NULL, 1),
('224b4fc8-8b94-483e-8bf3-46ebab871446', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 2, '2007-09-15 09:54:53', '2007-09-15 09:58:38', NULL, '1', NULL, 1),
('40360be6-2f4d-a88d-6822-46ebab4ca2b8', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 2, '2007-09-15 09:54:08', '2007-09-15 09:54:53', NULL, '1', NULL, 1),
('9e1f07d3-7b1f-96a0-0975-46ebabf1d37e', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-15 09:52:24', '2007-09-15 09:54:08', NULL, '1', NULL, 1),
('98f69f52-82d5-55d4-25b1-46ebabbf1a38', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 2, '2007-09-15 09:52:24', '2007-09-15 09:54:08', NULL, '1', NULL, 1),
('8e8601f0-f504-20a6-7a6d-46ebabbac379', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-15 09:52:03', '2007-09-15 09:52:24', NULL, '1', NULL, 1),
('3d00002f-62d1-facb-12b6-46ebab7f43dc', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-15 09:52:03', '2007-09-15 09:52:24', NULL, '1', NULL, 1),
('43ad57f4-ccc6-8919-2695-46ebaa2ff922', '319a1633-aa9f-6b4e-df98-469628a1c043', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'flm', 1, '2007-09-15 09:49:03', '2007-09-15 09:52:03', NULL, '1', NULL, 1),
('412e8e74-48b9-7bde-58da-46ebaa67df42', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-15 09:49:03', '2007-09-15 09:52:03', NULL, '1', NULL, 1),
('3eb44eb3-6e91-d58c-3295-46ebaa591de0', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-15 09:49:03', '2007-09-15 09:52:03', NULL, '1', NULL, 1),
('ef7be1ea-62ac-4825-bcd9-46ebaad0a745', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-15 09:48:11', '2007-09-15 09:49:03', NULL, '1', NULL, 1),
('ed422c32-07ff-4511-ff95-46ebaa79081f', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-15 09:48:11', '2007-09-15 09:49:03', NULL, '1', NULL, 1),
('1a77f72c-b6bd-cc8e-1100-46ebaa38a4dc', '319a1633-aa9f-6b4e-df98-469628a1c043', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'flm', 1, '2007-09-15 09:47:13', '2007-09-15 09:48:11', NULL, '1', NULL, 1),
('180e738e-3585-da92-20d5-46ebaacad6d8', '319a1633-aa9f-6b4e-df98-469628a1c043', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'flm', 1, '2007-09-15 09:47:13', '2007-09-15 09:48:11', NULL, '1', NULL, 1),
('155c219e-0d96-4a92-3559-46ebaa4a5d2e', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-15 09:47:13', '2007-09-15 09:48:11', NULL, '1', NULL, 1),
('130c00ff-551a-af3f-dcaa-46ebaa8d9f4c', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-15 09:47:13', '2007-09-15 09:48:11', NULL, '1', NULL, 1),
('5fad22a1-41bd-36c9-cebe-46eba93bc4d5', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-15 09:45:42', '2007-09-15 09:47:13', NULL, '1', NULL, 1),
('5d72f494-cf2c-d9e2-a90c-46eba982bbb2', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-15 09:45:42', '2007-09-15 09:47:13', NULL, '1', NULL, 1),
('2e33e3d8-dc9d-a290-3bf8-46eba930d850', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-15 09:45:23', '2007-09-15 09:45:42', NULL, '1', NULL, 1),
('2c04463d-96d4-6c1c-fbb6-46eba9fc169e', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-15 09:45:23', '2007-09-15 09:45:42', NULL, '1', NULL, 1),
('71e5091c-1dfd-3a79-4900-46eba9cc27dd', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-15 09:45:06', '2007-09-15 09:45:23', NULL, '1', NULL, 1),
('4f4f0fd4-9d0a-fdcd-d8bd-46eba93795d4', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-15 09:45:06', '2007-09-15 09:45:23', NULL, '1', NULL, 1),
('1644c46c-69cb-23c7-b2d7-46eba94f2e8d', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-15 09:44:45', '2007-09-15 09:45:06', NULL, '1', NULL, 1),
('14201ca3-316c-bd7b-101f-46eba90bfd26', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 2, '2007-09-15 09:44:45', '2007-09-15 09:45:06', NULL, '1', NULL, 1),
('adcfd2ac-a9f5-e8d1-55b4-46eba9749ddb', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-15 09:43:01', '2007-09-15 09:44:45', NULL, '1', NULL, 1),
('ab7ab557-7c50-0257-69ba-46eba9611b19', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-15 09:43:01', '2007-09-15 09:44:45', NULL, '1', NULL, 1),
('2b4fea90-dcef-8c00-3bfd-46eba8f45938', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-15 09:40:56', '2007-09-15 09:43:01', NULL, '1', NULL, 1),
('28b3c1fa-cac5-f624-0705-46eba8dcedb2', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 2, '2007-09-15 09:40:56', '2007-09-15 09:43:01', NULL, '1', NULL, 1),
('dbba9996-4b6a-0dc3-f131-46eba71e14e9', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-15 09:36:52', '2007-09-15 09:40:56', NULL, '1', NULL, 1),
('d995bfab-75fc-6b27-327a-46eba7a06aad', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-15 09:36:52', '2007-09-15 09:40:56', NULL, '1', NULL, 1),
('4d631b66-677f-b47b-44e6-46eba4937ee6', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 2, '2007-09-15 09:22:13', '2007-09-15 09:36:52', NULL, '1', NULL, 1),
('bad03930-c6bf-c52b-a6cf-46eba36cf019', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 2, '2007-09-15 09:20:36', '2007-09-15 09:22:13', NULL, '1', NULL, 1),
('95fdcc14-df31-500c-d668-46eba3dd8d41', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-15 09:20:00', '2007-09-15 09:20:36', NULL, '1', NULL, 1),
('93c1ed8a-af81-53d2-3825-46eba3aab238', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 2, '2007-09-15 09:20:00', '2007-09-15 09:20:36', NULL, '1', NULL, 1),
('73a490cd-19eb-f509-1e3a-46eba2f34b65', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-15 09:16:44', '2007-09-15 09:20:00', NULL, '1', NULL, 1),
('712684ca-3e2c-27a0-2be2-46eba26485e9', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 2, '2007-09-15 09:16:44', '2007-09-15 09:20:00', NULL, '1', NULL, 1),
('4e401a62-df35-ad4f-7621-46eba2872891', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-15 09:16:25', '2007-09-15 09:16:44', NULL, '1', NULL, 1),
('4b5f2ca1-1d85-3c3a-60cd-46eba2c46a72', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 2, '2007-09-15 09:16:25', '2007-09-15 09:16:44', NULL, '1', NULL, 1),
('47134ace-25e7-ecc2-f039-46eba21f18e0', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-15 09:15:55', '2007-09-15 09:16:25', NULL, '1', NULL, 1),
('44e1c670-c339-b33a-5c2c-46eba2a15c5a', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-15 09:15:55', '2007-09-15 09:16:25', NULL, '1', NULL, 1),
('266ff9af-8d10-555b-db85-46eba2b2ac67', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-15 09:12:43', '2007-09-15 09:15:55', NULL, '1', NULL, 1),
('23d210e2-4e55-503e-8f68-46eba2d0af9b', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 2, '2007-09-15 09:12:43', '2007-09-15 09:15:55', NULL, '1', NULL, 1),
('3200ef77-d329-cc13-9e4b-46eba11806b1', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-15 09:10:56', '2007-09-15 09:12:43', NULL, '1', NULL, 1),
('238c3ca3-f76d-5211-d964-46eba17eb5d2', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 2, '2007-09-15 09:10:56', '2007-09-15 09:12:43', NULL, '1', NULL, 1),
('6978b220-51ac-f146-8c7b-46eba1091071', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-15 09:09:19', '2007-09-15 09:10:56', NULL, '1', NULL, 1),
('624b4f54-2422-bfd4-c03d-46eba1b26566', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-15 09:09:19', '2007-09-15 09:10:56', NULL, '1', NULL, 1),
('f15bbaa5-ff37-e97e-fd23-46eba060fb88', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-15 09:05:01', '2007-09-15 09:09:19', NULL, '1', NULL, 1),
('ef3a2159-4a3d-fe5b-b0b2-46eba08ec4d5', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 2, '2007-09-15 09:05:01', '2007-09-15 09:09:19', NULL, '1', NULL, 1),
('a33d2ad6-eb70-53db-6a32-46e95cc19853', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-13 15:49:55', '2007-09-15 09:05:01', NULL, '1', NULL, 1),
('81c82087-0d7c-b221-29e1-46e95cf7bd18', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-13 15:49:55', '2007-09-15 09:05:01', NULL, '1', NULL, 1),
('a376b7fb-6ff8-2a9d-67c1-46e93d3b2bc4', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-13 13:38:35', '2007-09-13 15:49:55', NULL, '1', NULL, 1),
('7f7437c0-fbea-8690-7365-46e93d06b7aa', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-13 13:38:35', '2007-09-13 15:49:55', NULL, '1', NULL, 1),
('8259ea55-88fb-6f67-53d8-46e93d68fcfc', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-13 13:37:35', '2007-09-13 13:38:35', NULL, '1', NULL, 1),
('6b3536f2-7fc8-2a3a-e5bc-46e93ddcb7d9', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-13 13:37:35', '2007-09-13 13:38:35', NULL, '1', NULL, 1),
('5d774888-a508-ec53-3a00-46e93d642cf9', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-13 13:37:10', '2007-09-13 13:37:35', NULL, '1', NULL, 1),
('4679d40c-7d35-df20-8501-46e93d484905', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-13 13:37:10', '2007-09-13 13:37:35', NULL, '1', NULL, 1),
('a9190dc0-c9cd-eaf1-5130-46e93c8248e6', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-13 13:36:23', '2007-09-13 13:37:10', NULL, '1', NULL, 1),
('ea586171-e237-957d-b484-46e93c6ed883', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-13 13:36:22', '2007-09-13 13:37:10', NULL, '1', NULL, 1),
('98b9bca4-2a1f-65a5-87a5-46e93c6ec778', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-13 13:36:10', '2007-09-13 13:36:22', NULL, '1', NULL, 1),
('843f26a0-5a8a-df4e-a2d3-46e93c6eb958', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-13 13:36:10', '2007-09-13 13:36:22', NULL, '1', NULL, 1),
('e27ed7b7-84b3-c453-0c6a-46e93c04e802', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-13 13:36:06', '2007-09-13 13:36:10', NULL, '1', NULL, 1),
('caa90e46-18cd-0bfa-af2d-46e93caa3017', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-13 13:36:06', '2007-09-13 13:36:10', NULL, '1', NULL, 1),
('4df4edb3-8a61-643e-ca73-46e93b9573e8', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-13 13:32:45', '2007-09-13 13:36:06', NULL, '1', NULL, 1),
('48ec1166-c5d8-517b-7a24-46e93b50a31d', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-13 13:32:45', '2007-09-13 13:36:06', NULL, '1', NULL, 1),
('1efc0b9d-f9fa-8d93-bc10-46e93b0b0b5d', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-13 13:32:00', '2007-09-13 13:32:45', NULL, '1', NULL, 1),
('f0f06916-2e7e-9e7e-d426-46e93bdb43f1', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-13 13:31:59', '2007-09-13 13:32:45', NULL, '1', NULL, 1),
('4e7e5329-5fac-c49d-a9cc-46e93a0e8660', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-13 13:28:08', '2007-09-13 13:31:59', NULL, '1', NULL, 1),
('45a3ab15-40d5-042a-7c67-46e93ab74806', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-13 13:28:08', '2007-09-13 13:31:59', NULL, '1', NULL, 1),
('cf4e0f86-7ac6-e892-e884-46e93a560514', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-13 13:27:34', '2007-09-13 13:28:08', NULL, '1', NULL, 1),
('7d6a092d-cac8-40e5-8986-46e93a53b690', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-13 13:27:34', '2007-09-13 13:28:08', NULL, '1', NULL, 1),
('40a00f37-44a8-3360-8d13-46e937ba328f', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-13 13:14:49', '2007-09-13 13:27:34', NULL, '1', NULL, 1),
('3b8756a8-a66a-8cbf-4fe6-46e93729e798', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-13 13:14:49', '2007-09-13 13:27:34', NULL, '1', NULL, 1),
('8d3f6f17-d1b8-edfd-8a7e-46e9370181d0', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-13 13:13:41', '2007-09-13 13:14:49', NULL, '1', NULL, 1),
('7de12101-8cb1-0d2f-e9fa-46e937dd917e', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-13 13:13:41', '2007-09-13 13:14:49', NULL, '1', NULL, 1),
('56108588-f146-baa9-751a-46e9374abb6c', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-13 13:11:49', '2007-09-13 13:13:41', NULL, '1', NULL, 1),
('4e984efd-8e23-9704-e0cb-46e9370463da', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-13 13:11:49', '2007-09-13 13:13:41', NULL, '1', NULL, 1),
('f094a23c-c458-7a79-78f2-46e93619f9ce', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-13 13:10:53', '2007-09-13 13:11:49', NULL, '1', NULL, 1),
('8fa7c57d-b779-c065-9b4a-46d6de461290', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', '8f50860d-16b5-5491-e451-46d6dce0fc06', 'b', 'ctp', 1, '2007-08-30 15:12:05', '2007-08-31 06:51:12', NULL, '1', NULL, 1),
('8ac1e918-0c30-fea5-d055-46d6de4f0af7', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', '8f50860d-16b5-5491-e451-46d6dce0fc06', 'a', 'ctp', 1, '2007-08-30 15:12:05', '2007-08-31 06:51:12', NULL, '1', NULL, 1),
('ba831f57-a3ca-425d-99eb-46d6dc5aad2a', '3f7e93cd-3491-675f-3186-46d56ac29df0', '8f50860d-16b5-5491-e451-46d6dce0fc06', 'b', 'ctp', 1, '2007-08-30 15:05:22', '2007-08-30 15:12:05', NULL, '1', NULL, 1),
('b5717263-57dd-cb0b-54a5-46d6dc98c2b9', '3f7e93cd-3491-675f-3186-46d56ac29df0', '8f50860d-16b5-5491-e451-46d6dce0fc06', 'a', 'ctp', 1, '2007-08-30 15:05:22', '2007-08-30 15:12:05', NULL, '1', NULL, 1),
('4f93cef2-619e-fbfa-c804-46d6d8e2320c', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 4, '2007-08-30 14:49:25', '2007-09-13 07:06:24', NULL, '1', NULL, 1),
('479ca04b-57ac-ae8f-d019-46d6bec54d40', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-08-30 12:57:58', '2007-08-30 14:49:25', NULL, '1', NULL, 1),
('4a0d6a30-8f8b-610d-5436-46d6bb54a8ff', '3f7e93cd-3491-675f-3186-46d56ac29df0', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', 'b', 'ctp', 8, '2007-08-30 12:44:06', '2007-08-30 15:13:44', NULL, '1', NULL, 1),
('c4a44d47-87f3-d374-3b3b-46d69e5cc42e', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-08-30 10:41:22', '2007-08-30 12:57:58', NULL, '1', NULL, 1),
('e5603aed-412a-e198-92f8-46d6a9a09585', '3f7e93cd-3491-675f-3186-46d56ac29df0', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', 'a', 'ctp', 8, '2007-08-30 11:25:08', '2007-08-30 11:30:23', NULL, '1', NULL, 1),
('1fc3fb2d-c7d5-161b-2df2-46d6a929ab8a', '3f7e93cd-3491-675f-3186-46d56ac29df0', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', 'b', 'ctp', 7, '2007-08-30 11:25:09', '2007-08-30 11:30:23', NULL, '1', NULL, 1),
('d8aa45e5-f11a-1b62-aa01-46d6aaa9363c', '3f7e93cd-3491-675f-3186-46d56ac29df0', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', 'a', 'ctp', 8, '2007-08-30 11:30:23', '2007-08-30 12:36:47', NULL, '1', NULL, 1),
('ddfc1beb-cb83-8d60-302b-46d6aa6ed1f8', '3f7e93cd-3491-675f-3186-46d56ac29df0', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', 'b', 'ctp', 7, '2007-08-30 11:30:23', '2007-08-30 12:36:47', NULL, '1', NULL, 1),
('d3be3782-2036-f46b-cc37-46d6b9d4a3bb', 'e5fe5458-fe8d-bdc1-d227-46d6b9dd62e7', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', 'a', 'ctp', 1, '2007-08-30 12:36:47', '2007-08-30 12:38:43', NULL, '1', NULL, 1),
('d8b7bbfe-c0c2-93e5-2ca9-46d6b9a9c304', 'e5fe5458-fe8d-bdc1-d227-46d6b9dd62e7', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', 'b', 'ctp', 1, '2007-08-30 12:36:47', '2007-08-30 12:38:43', NULL, '1', NULL, 1),
('7f90cb71-4fb6-eebd-f2ab-46d6ba8e0794', 'e5fe5458-fe8d-bdc1-d227-46d6b9dd62e7', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', 'a', 'ctp', 8, '2007-08-30 12:38:43', '2007-08-30 12:44:06', NULL, '1', NULL, 1),
('846cd9de-3c9a-7838-6ddc-46d6ba736f5d', 'e5fe5458-fe8d-bdc1-d227-46d6b9dd62e7', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', 'b', 'ctp', 7, '2007-08-30 12:38:43', '2007-08-30 12:44:06', NULL, '1', NULL, 1),
('44fc8533-98fa-77e3-50f9-46d6bba3ea21', '3f7e93cd-3491-675f-3186-46d56ac29df0', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', 'a', 'ctp', 9, '2007-08-30 12:44:06', '2007-08-30 15:13:44', NULL, '1', NULL, 1),
('eb702446-a24b-a6a6-7a96-46e9362dbde8', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-13 13:10:53', '2007-09-13 13:11:49', NULL, '1', NULL, 1),
('2123d06e-bbfb-7ec3-d77b-46e936fd94c2', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-13 13:10:17', '2007-09-13 13:10:53', NULL, '1', NULL, 1),
('1bab2744-c3b4-4acc-659b-46e93620eb82', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-13 13:10:17', '2007-09-13 13:10:53', NULL, '1', NULL, 1),
('29446af3-96bb-1740-4884-46e8e25deddb', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-13 07:11:36', '2007-09-13 13:10:17', NULL, '1', NULL, 1),
('241bd95b-b95c-6bdf-0618-46e8e24fd311', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-13 07:11:36', '2007-09-13 13:10:17', NULL, '1', NULL, 1),
('77f3e5dd-fa28-377c-b455-46e8e14c6b05', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-13 07:06:24', '2007-09-13 07:11:36', NULL, '1', NULL, 1),
('729eb00e-8d2f-66e4-d106-46e8e19aff9d', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-13 07:06:24', '2007-09-13 07:11:36', NULL, '1', NULL, 1),
('eec24647-d613-3f86-8cae-46e7f226e4ea', '7e06052d-2e00-981e-a279-46d676109bb1', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', 'b', 'flm', 8, '2007-09-12 14:06:14', '2007-09-18 11:52:27', NULL, '1', NULL, 1),
('e84764ad-3838-7504-7b40-46e7f2bc5406', '7e06052d-2e00-981e-a279-46d676109bb1', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', 'a', 'flm', 8, '2007-09-12 14:06:14', '2007-09-18 11:52:27', NULL, '1', NULL, 1),
('b3032f59-fc67-89cb-a5fe-46d80dc9e3f3', '3f7e93cd-3491-675f-3186-46d56ac29df0', 'b2b4f119-b162-e477-9f78-46d7cac9f270', 'a', 'ctp', 3, '2007-08-31 12:44:28', '2007-08-31 12:44:28', NULL, '1', NULL, 0),
('2985a90c-f6ad-fa67-7a70-46d80c6a0366', '3f7e93cd-3491-675f-3186-46d56ac29df0', 'b2b4f119-b162-e477-9f78-46d7cac9f270', 'a', 'ctp', 3, '2007-08-31 12:42:56', '2007-08-31 12:44:28', NULL, '1', NULL, 1),
('3655a88c-8655-0a64-68a3-46d80a412442', '3f7e93cd-3491-675f-3186-46d56ac29df0', 'b2b4f119-b162-e477-9f78-46d7cac9f270', 'a', 'ctp', 3, '2007-08-31 12:32:34', '2007-08-31 12:42:56', NULL, '1', NULL, 1),
('b4662b9c-e6a0-47bf-9b09-46d80847c67d', '3f7e93cd-3491-675f-3186-46d56ac29df0', 'b2b4f119-b162-e477-9f78-46d7cac9f270', 'a', 'ctp', 3, '2007-08-31 12:23:54', '2007-08-31 12:32:34', NULL, '1', NULL, 1),
('b7857b06-50a5-1d05-422f-46d8035159c0', '3f7e93cd-3491-675f-3186-46d56ac29df0', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', 'b', 'ctp', 7, '2007-08-31 12:02:18', '2007-09-10 14:47:39', NULL, '1', NULL, 1),
('b221341e-8979-04d8-b847-46d803beab8d', '3f7e93cd-3491-675f-3186-46d56ac29df0', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', 'a', 'ctp', 8, '2007-08-31 12:02:18', '2007-09-10 14:47:39', NULL, '1', NULL, 1),
('ca3ff540-02af-ca99-5692-46d7cc7940e1', '3f7e93cd-3491-675f-3186-46d56ac29df0', 'b2b4f119-b162-e477-9f78-46d7cac9f270', 'a', 'ctp', 3, '2007-08-31 08:10:28', '2007-08-31 12:23:54', NULL, '1', NULL, 1),
('80fc4d87-1f10-7922-c3f6-46d7cc8b93e1', '3f7e93cd-3491-675f-3186-46d56ac29df0', 'b2b4f119-b162-e477-9f78-46d7cac9f270', 'a', 'ctp', 3, '2007-08-31 08:06:56', '2007-08-31 08:10:28', NULL, '1', NULL, 1),
('2db64772-3368-de71-9035-46d7cb2c1a2c', '3f7e93cd-3491-675f-3186-46d56ac29df0', 'b2b4f119-b162-e477-9f78-46d7cac9f270', 'a', 'ctp', 3, '2007-08-31 08:02:49', '2007-08-31 08:06:56', NULL, '1', NULL, 1),
('d391a6ef-ff06-5c14-da29-46d7ba85d92f', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', '8f50860d-16b5-5491-e451-46d6dce0fc06', 'b', 'ctp', 1, '2007-08-31 06:51:12', '2007-08-31 06:51:12', NULL, '1', NULL, 0),
('cefba0cc-b8d8-21bc-0a81-46d7ba082b00', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', '8f50860d-16b5-5491-e451-46d6dce0fc06', 'a', 'ctp', 1, '2007-08-31 06:51:12', '2007-08-31 06:51:12', NULL, '1', NULL, 0),
('cd780834-f307-3667-d748-46d6de338100', '3f7e93cd-3491-675f-3186-46d56ac29df0', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', 'b', 'ctp', 7, '2007-08-30 15:13:44', '2007-08-31 12:02:18', NULL, '1', NULL, 1),
('71d70756-fdcc-c58e-2071-46d6deea41ee', '3f7e93cd-3491-675f-3186-46d56ac29df0', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', 'a', 'ctp', 8, '2007-08-30 15:13:44', '2007-08-31 12:02:18', NULL, '1', NULL, 1),
('a285407d-06b1-e0ff-60c3-46d58702f806', '3f7e93cd-3491-675f-3186-46d56ac29df0', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', 'b', 'ctp', 7, '2007-08-29 14:48:11', '2007-08-30 08:22:20', NULL, '1', NULL, 1),
('9da612ed-78e6-c145-787a-46d58735bfce', '3f7e93cd-3491-675f-3186-46d56ac29df0', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', 'a', 'ctp', 8, '2007-08-29 14:48:11', '2007-08-30 08:22:20', NULL, '1', NULL, 1),
('c6f53b80-e96f-79c7-5d53-46d69e99e667', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-08-30 10:40:38', '2007-08-30 10:41:22', NULL, '1', NULL, 1),
('51d8f737-7333-c3ee-ad06-46d68d68e909', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-08-30 09:27:25', '2007-08-30 09:59:05', NULL, '1', NULL, 1),
('895bbcdd-975a-a54d-4acf-46cacef035e3', '319a1633-aa9f-6b4e-df98-469628a1c043', '629da741-d120-307b-0f49-46c94438e8c8', 'a', 'flm', 4, '2007-08-21 11:38:46', '2007-08-21 11:38:46', NULL, '1', NULL, 0),
('8e667abf-8a95-49b5-eab7-46cace1e11c8', '319a1633-aa9f-6b4e-df98-469628a1c043', '629da741-d120-307b-0f49-46c94438e8c8', 'b', 'flm', 4, '2007-08-21 11:38:46', '2007-08-21 11:38:46', NULL, '1', NULL, 0),
('9d168469-e3cb-6f0e-6aca-46d6874ce489', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-08-30 09:03:49', '2007-08-30 09:27:25', NULL, '1', NULL, 1),
('b08e4627-45e6-8822-c261-46d687d84501', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-08-30 09:02:08', '2007-08-30 09:03:49', NULL, '1', NULL, 1),
('75abe8ca-4590-4054-5505-46d67e909fb1', '3f7e93cd-3491-675f-3186-46d56ac29df0', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', 'b', 'ctp', 7, '2007-08-30 08:22:20', '2007-08-30 09:58:01', NULL, '1', NULL, 1),
('70deabb5-5a46-6641-dfd5-46d67ea3402a', '3f7e93cd-3491-675f-3186-46d56ac29df0', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', 'a', 'ctp', 8, '2007-08-30 08:22:20', '2007-08-30 09:58:01', NULL, '1', NULL, 1),
('ac463400-6a9f-9a7c-342f-46ce8be1da1b', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', '598457bc-776a-9154-9b63-4652c9ce58cb', 'a', 'ctp', 10, '2007-08-24 07:40:58', '2007-08-24 07:40:58', NULL, '1', NULL, 0),
('b1715208-21c0-9e4d-d156-46ce8b1844bb', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', '598457bc-776a-9154-9b63-4652c9ce58cb', 'b', 'ctp', 10, '2007-08-24 07:40:58', '2007-08-24 07:40:58', NULL, '1', NULL, 0),
('b67df0ab-9087-7d34-64c5-46ce8bc8e2b1', '319a1633-aa9f-6b4e-df98-469628a1c043', '598457bc-776a-9154-9b63-4652c9ce58cb', 'a', 'flm', 5, '2007-08-24 07:40:58', '2007-08-24 07:40:58', NULL, '1', NULL, 0),
('bb912226-ebe7-38f9-604e-46ce8beebec5', '319a1633-aa9f-6b4e-df98-469628a1c043', '598457bc-776a-9154-9b63-4652c9ce58cb', 'b', 'flm', 5, '2007-08-24 07:40:58', '2007-08-24 07:40:58', NULL, '1', NULL, 0),
('438d0fbd-ae3e-52ca-53d0-46ebaf24aea8', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-15 10:08:26', '2007-09-15 10:25:51', NULL, '1', NULL, 1),
('99350d10-00c1-5701-d258-46ebaf6867cd', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-15 10:08:26', '2007-09-15 10:25:51', NULL, '1', NULL, 1),
('5bfb35be-164e-0988-5538-46ebb34e280a', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-15 10:25:51', '2007-09-15 10:26:22', NULL, '1', NULL, 1),
('61212e06-a45e-40c7-6ee9-46ebb34e7d1a', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-15 10:25:51', '2007-09-15 10:26:22', NULL, '1', NULL, 1),
('bdedb9dc-3700-a6cc-85dc-46ebb3a3f766', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-15 10:26:22', '2007-09-15 10:26:51', NULL, '1', NULL, 1),
('c3163811-141a-0683-7cdc-46ebb372c031', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-15 10:26:22', '2007-09-15 10:26:51', NULL, '1', NULL, 1),
('a9e05b4c-3453-61cf-acde-46ebb3238280', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-15 10:26:51', '2007-09-15 10:27:26', NULL, '1', NULL, 1),
('aed2c3b9-67e4-6070-4fea-46ebb3d443ee', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-15 10:26:51', '2007-09-15 10:27:26', NULL, '1', NULL, 1),
('a047939f-2147-01b4-94a2-46ebb3f456cc', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-15 10:27:26', '2007-09-15 15:05:45', NULL, '1', NULL, 1),
('a553a07b-d8c4-8b82-2e1d-46ebb3569d7b', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-15 10:27:26', '2007-09-15 15:05:45', NULL, '1', NULL, 1),
('13849769-227f-a248-c372-46ebf460029a', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-15 15:05:45', '2007-09-15 15:09:25', NULL, '1', NULL, 1),
('189afbd9-2347-470e-6b98-46ebf40e65a9', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-15 15:05:45', '2007-09-15 15:09:25', NULL, '1', NULL, 1),
('bc69bf82-c253-fb2a-b118-46ebf5f963a2', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-15 15:09:25', '2007-09-15 15:11:45', NULL, '1', NULL, 1),
('c193ce35-663c-5b2f-66f9-46ebf526be6b', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-15 15:09:25', '2007-09-15 15:11:45', NULL, '1', NULL, 1),
('7bc8fceb-0ff1-4d73-645a-46ebf67fb364', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-15 15:11:45', '2007-09-15 15:14:26', NULL, '1', NULL, 1),
('7e27fa8d-eb47-c13b-9843-46ebf6d44de9', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-15 15:11:45', '2007-09-15 15:14:26', NULL, '1', NULL, 1),
('c07b35b3-45d9-e417-4881-46ebf62cace8', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-15 15:14:26', '2007-09-15 15:14:48', NULL, '1', NULL, 1),
('c28caf65-353c-f45c-d68c-46ebf6c75e7e', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-15 15:14:26', '2007-09-15 15:14:48', NULL, '1', NULL, 1),
('7268562c-5229-6599-013b-46ebf60278d2', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-15 15:14:48', '2007-09-15 15:16:15', NULL, '1', NULL, 1),
('77a362df-c4ad-e1fe-8878-46ebf6a491b6', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-15 15:14:48', '2007-09-15 15:16:15', NULL, '1', NULL, 1),
('6575d043-8fb6-dc36-d599-46ebf77a9e10', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-15 15:16:15', '2007-09-15 15:16:23', NULL, '1', NULL, 1),
('67e26b8a-fbf7-76ff-9f7a-46ebf7c2674f', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-15 15:16:15', '2007-09-15 15:16:23', NULL, '1', NULL, 1),
('4412e384-4bce-0e4c-955b-46ebf7ca5065', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-15 15:16:23', '2007-09-15 15:16:38', NULL, '1', NULL, 1),
('4a23952a-eb6c-046b-0781-46ebf711e298', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-15 15:16:23', '2007-09-15 15:16:38', NULL, '1', NULL, 1),
('f23c42c1-df35-7da7-c9e4-46ebf757e9ee', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-15 15:16:39', '2007-09-15 15:17:19', NULL, '1', NULL, 1),
('5100030b-9fe9-e004-a424-46ebf76ab652', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-15 15:16:39', '2007-09-15 15:17:19', NULL, '1', NULL, 1),
('aeb616ef-0be3-b797-031d-46ebf7246cb5', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-15 15:17:19', '2007-09-15 15:17:25', NULL, '1', NULL, 1),
('b1d41121-2ca2-0478-bc0b-46ebf7396c45', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-15 15:17:19', '2007-09-15 15:17:25', NULL, '1', NULL, 1),
('9ac87270-2ce7-51ea-0b63-46ebf7bfcb01', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-15 15:17:25', '2007-09-15 15:23:01', NULL, '1', NULL, 1),
('9d2ce1bf-7b89-d340-7d9e-46ebf7cc1a40', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-15 15:17:25', '2007-09-15 15:23:01', NULL, '1', NULL, 1),
('daaf0e45-1993-1ad4-eb35-46ebf84c0f4f', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-15 15:23:01', '2007-09-15 15:23:39', NULL, '1', NULL, 1),
('dfb2c7ae-9c0c-3582-b7a2-46ebf88c21cb', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-15 15:23:01', '2007-09-15 15:23:39', NULL, '1', NULL, 1),
('e0ad0b2f-c4d5-7fe3-5871-46ebf83f5023', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-15 15:23:39', '2007-09-17 07:21:14', NULL, '1', NULL, 1),
('e5bdc027-54c1-29f5-eab1-46ebf8eb2db1', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-15 15:23:39', '2007-09-17 07:21:14', NULL, '1', NULL, 1),
('54dc8c91-cad0-b161-e4c2-46ee2a19bf9c', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-17 07:21:14', '2007-09-17 07:23:17', NULL, '1', NULL, 1),
('56fc4177-2dc8-d124-8c31-46ee2a0dca00', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-17 07:21:14', '2007-09-17 07:23:17', NULL, '1', NULL, 1),
('ce16ec6a-0665-a250-f96b-46ee2b683039', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-17 07:23:17', '2007-09-17 07:24:25', NULL, '1', NULL, 1),
('d0369a8e-487c-3a84-2e24-46ee2b57d062', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-17 07:23:17', '2007-09-17 07:24:25', NULL, '1', NULL, 1),
('614da69e-748f-553c-e727-46ee2bbe8c89', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-17 07:24:25', '2007-09-17 07:32:25', NULL, '1', NULL, 1),
('637e0159-1593-5492-e635-46ee2b176351', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-17 07:24:25', '2007-09-17 07:32:25', NULL, '1', NULL, 1),
('707f3e42-d5eb-c42d-14ec-46ee2dd67984', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-17 07:32:25', '2007-09-17 07:43:26', NULL, '1', NULL, 1),
('72ca1e13-4e7c-41d4-e9aa-46ee2dedeac1', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-17 07:32:25', '2007-09-17 07:43:26', NULL, '1', NULL, 1),
('8342888e-426e-b752-bdd0-46ee30063883', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-17 07:43:26', '2007-09-17 07:44:06', NULL, '1', NULL, 1),
('85615966-4537-a29c-234c-46ee30307b3e', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-17 07:43:26', '2007-09-17 07:44:06', NULL, '1', NULL, 1),
('c552a026-4750-e243-c239-46ee3024af94', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-17 07:44:06', '2007-09-17 07:48:36', NULL, '1', NULL, 1),
('ca7d557c-b1a9-2387-90e6-46ee30caed4b', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-17 07:44:06', '2007-09-17 07:48:36', NULL, '1', NULL, 1),
('36f454f8-e90a-2249-8cf1-46ee31fe375e', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-17 07:48:36', '2007-09-17 07:53:50', NULL, '1', NULL, 1),
('39414fbe-7f16-4832-8f03-46ee314da607', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-17 07:48:36', '2007-09-17 07:53:50', NULL, '1', NULL, 1),
('89765ec2-ef03-a4b1-21d3-46ee32fd025c', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-17 07:53:50', '2007-09-17 08:00:55', NULL, '1', NULL, 1),
('8ba01ba1-6a4f-c5dd-14f5-46ee32aebc47', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-17 07:53:50', '2007-09-17 08:00:55', NULL, '1', NULL, 1),
('75e1b7d0-16d1-2184-b196-46ee345730da', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-17 08:00:55', '2007-09-17 08:15:39', NULL, '1', NULL, 1),
('780ab62f-bea1-e02f-3046-46ee344ec10e', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-17 08:00:55', '2007-09-17 08:15:39', NULL, '1', NULL, 1),
('707fd244-de12-a358-728f-46ee37e7b04c', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-17 08:15:39', '2007-09-17 08:36:14', NULL, '1', NULL, 1),
('7297e8b9-f579-bfe2-816e-46ee37ab2c4b', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-17 08:15:39', '2007-09-17 08:36:14', NULL, '1', NULL, 1),
('a0bd1351-30db-84ce-3b89-46ee3cf0d859', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-17 08:36:14', '2007-09-17 08:37:46', NULL, '1', NULL, 1),
('a2cfc901-1e9a-e291-602f-46ee3c3250d6', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-17 08:36:14', '2007-09-17 08:37:46', NULL, '1', NULL, 1),
('2f4488d0-c52f-ee29-0bd0-46ee3cd09c40', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-17 08:37:46', '2007-09-17 08:38:32', NULL, '1', NULL, 1),
('31609ea0-8d42-9d84-1bb0-46ee3c327325', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-17 08:37:46', '2007-09-17 08:38:32', NULL, '1', NULL, 1),
('5f0e0012-0497-f80e-9b1a-46ee3d7eb857', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-17 08:38:32', '2007-09-17 08:39:44', NULL, '1', NULL, 1),
('802b0a14-548a-89ce-045f-46ee3d551125', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-17 08:38:32', '2007-09-17 08:39:44', NULL, '1', NULL, 1),
('87e7c42a-5254-13a6-f3f4-46ee3d6a30ea', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-17 08:39:44', '2007-09-17 08:41:55', NULL, '1', NULL, 1),
('8a0a448c-b892-5d12-1298-46ee3d0fd8f5', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-17 08:39:44', '2007-09-17 08:41:55', NULL, '1', NULL, 1),
('97114cd6-9f51-9174-65cc-46ee3d533dcf', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-17 08:41:55', '2007-09-17 08:44:17', NULL, '1', NULL, 1),
('9932a9c3-7f2e-76ff-0175-46ee3d9ebc13', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-17 08:41:55', '2007-09-17 08:44:17', NULL, '1', NULL, 1),
('4ad0e4f1-4d36-2f24-5c7a-46ee3eb67e5f', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-17 08:44:17', '2007-09-17 11:08:35', NULL, '1', NULL, 1),
('4cf86eaa-e9ca-586a-6d99-46ee3ee2d8ee', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-17 08:44:17', '2007-09-17 11:08:35', NULL, '1', NULL, 1),
('4494bcae-ab5d-84bd-4670-46ee60dac7a6', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-17 11:08:35', '2007-09-17 11:10:31', NULL, '1', NULL, 1),
('46bc4011-cc58-3313-6107-46ee609e7466', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-17 11:08:35', '2007-09-17 11:10:31', NULL, '1', NULL, 1),
('189da1a3-d558-c90b-284f-46ee60b8a7b5', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-17 11:10:31', '2007-09-17 11:17:22', NULL, '1', NULL, 1),
('1ab45d51-c5d8-dcdb-4dae-46ee60e5ecee', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-17 11:10:31', '2007-09-17 11:17:22', NULL, '1', NULL, 1),
('727ce952-440b-c6e7-c0de-46ee62195b07', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-17 11:17:22', '2007-09-17 13:51:16', NULL, '1', NULL, 1),
('74984dfb-acef-db2a-cd50-46ee622bb282', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-17 11:17:22', '2007-09-17 13:51:16', NULL, '1', NULL, 1),
('ab421d91-efbf-4c66-17cb-46ee864dd2de', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-17 13:51:16', '2007-09-17 13:53:56', NULL, '1', NULL, 1),
('b3d0ec9c-7736-1ac7-a21b-46ee865b98ee', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-17 13:51:16', '2007-09-17 13:53:56', NULL, '1', NULL, 1),
('1f682a65-70b4-5aaf-1bea-46ee86d854e9', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-17 13:53:56', '2007-09-17 13:56:05', NULL, '1', NULL, 1),
('246fadb5-1ebf-7f04-5605-46ee862bf8c4', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-17 13:53:56', '2007-09-17 13:56:05', NULL, '1', NULL, 1),
('c99ffd12-c8f6-5636-54c5-46ee872f2b1e', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-17 13:56:05', '2007-09-17 13:58:05', NULL, '1', NULL, 1),
('ceccdd0b-919b-8d7b-7ebf-46ee87f9d27a', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-17 13:56:05', '2007-09-17 13:58:05', NULL, '1', NULL, 1),
('39cbfa03-8c54-7ff6-4fa5-46ee874348f2', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-17 13:58:05', '2007-09-17 13:58:29', NULL, '1', NULL, 1),
('3f30e4b2-1c57-9c6c-5096-46ee874d2ae5', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-17 13:58:05', '2007-09-17 13:58:29', NULL, '1', NULL, 1),
('44ad0d8f-59df-604e-6258-46ee88cc80e5', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-17 13:58:29', '2007-09-17 14:02:02', NULL, '1', NULL, 1),
('46f90364-15f2-7b2b-1b5c-46ee880a5a74', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-17 13:58:29', '2007-09-17 14:02:02', NULL, '1', NULL, 1),
('e60fc3ed-97e7-fc44-1e9e-46ee88282428', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-17 14:02:02', '2007-09-17 14:16:41', NULL, '1', NULL, 1),
('ee7fd698-04db-a2dd-70e5-46ee883afb70', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-17 14:02:02', '2007-09-17 14:16:41', NULL, '1', NULL, 1),
('32470807-aae6-5826-c7f0-46ee8cf7a04b', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-17 14:16:41', '2007-09-17 15:01:49', NULL, '1', NULL, 1),
('826d0f4b-4a83-9585-cdc4-46ee8c8b6b29', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-17 14:16:41', '2007-09-17 15:01:49', NULL, '1', NULL, 1),
('6d0b863f-d648-0f07-213c-46ee961581cf', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-17 15:01:49', '2007-09-18 08:10:59', NULL, '1', NULL, 1),
('75c89fbd-5cef-1c92-7095-46ee96e3a2bf', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-17 15:01:49', '2007-09-18 08:10:59', NULL, '1', NULL, 1),
('d8c2df1f-58ea-c060-09aa-46ef88b5c274', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-18 08:10:59', '2007-09-27 13:17:46', NULL, '1', NULL, 1),
('de10e845-167c-1088-0718-46ef88135908', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-18 08:10:59', '2007-09-27 13:17:46', NULL, '1', NULL, 1),
('92a627fa-67bc-2489-5fa0-46efbb5a467c', '7e06052d-2e00-981e-a279-46d676109bb1', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', 'a', 'flm', 8, '2007-09-18 11:52:27', '2007-09-19 11:54:56', NULL, '1', NULL, 1),
('97d6a2a4-b4e9-3495-0efc-46efbba43a5e', '7e06052d-2e00-981e-a279-46d676109bb1', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', 'b', 'flm', 8, '2007-09-18 11:52:27', '2007-09-19 11:54:56', NULL, '1', NULL, 1),
('ac977179-5b9b-f78a-c2cc-46f10e74d57c', '7e06052d-2e00-981e-a279-46d676109bb1', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', 'a', 'flm', 8, '2007-09-19 11:54:56', '2007-09-19 12:55:45', NULL, '1', NULL, 1),
('b1a99e60-1a29-808a-a268-46f10ebb0467', '7e06052d-2e00-981e-a279-46d676109bb1', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', 'b', 'flm', 8, '2007-09-19 11:54:56', '2007-09-19 12:55:45', NULL, '1', NULL, 1),
('e014975d-a376-5b24-7778-46f11cccf130', '7e06052d-2e00-981e-a279-46d676109bb1', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', 'a', 'flm', 8, '2007-09-19 12:55:45', '2007-09-21 14:03:14', NULL, '1', NULL, 1),
('e511e006-5adf-be27-02bb-46f11c4837f3', '7e06052d-2e00-981e-a279-46d676109bb1', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', 'b', 'flm', 8, '2007-09-19 12:55:45', '2007-09-21 14:03:14', NULL, '1', NULL, 1),
('c3422cfd-6b5b-9304-fde7-46f3cf5b5ff9', '7e06052d-2e00-981e-a279-46d676109bb1', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', 'a', 'flm', 8, '2007-09-21 14:03:14', '2007-09-24 11:36:51', NULL, '1', NULL, 1),
('c84f485a-3d3f-b5db-dd37-46f3cf322ad4', '7e06052d-2e00-981e-a279-46d676109bb1', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', 'b', 'flm', 8, '2007-09-21 14:03:14', '2007-09-24 11:36:51', NULL, '1', NULL, 1),
('c03a30bc-798d-0b33-ffee-46f7a1c06f77', '7e06052d-2e00-981e-a279-46d676109bb1', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', 'a', 'flm', 8, '2007-09-24 11:36:51', '2007-09-25 10:51:06', NULL, '1', NULL, 1),
('c5433c06-6e21-f8e9-4623-46f7a1545074', '7e06052d-2e00-981e-a279-46d676109bb1', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', 'b', 'flm', 8, '2007-09-24 11:36:51', '2007-09-25 10:51:06', NULL, '1', NULL, 1),
('84b28307-6ebf-d16d-7135-46f8e8eef331', '7e06052d-2e00-981e-a279-46d676109bb1', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', 'a', 'flm', 8, '2007-09-25 10:51:06', '2007-09-25 10:53:36', NULL, '1', NULL, 1),
('89d89bca-56ef-9bf5-f3ad-46f8e8fdc57d', '7e06052d-2e00-981e-a279-46d676109bb1', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', 'b', 'flm', 8, '2007-09-25 10:51:06', '2007-09-25 10:53:36', NULL, '1', NULL, 1),
('5f83e40a-0b28-0b99-c3f3-46f8e88bc893', '7e06052d-2e00-981e-a279-46d676109bb1', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', 'a', 'flm', 8, '2007-09-25 10:53:36', '2007-09-25 10:53:36', NULL, '1', NULL, 0),
('64a422db-3a4d-cb21-003b-46f8e8a9416f', '7e06052d-2e00-981e-a279-46d676109bb1', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', 'b', 'flm', 8, '2007-09-25 10:53:36', '2007-09-25 10:53:36', NULL, '1', NULL, 0);
INSERT INTO `componentprepress` (`id`, `rate_id`, `component_id`, `side`, `type`, `count`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`) VALUES 
('1cd4e108-5e4e-835f-7cb7-46fbada453a0', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-27 13:17:46', '2007-09-27 13:32:01', NULL, '1', NULL, 1),
('22227bb9-bdee-5e0c-fc84-46fbad3dc3fe', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-27 13:17:46', '2007-09-27 13:32:01', NULL, '1', NULL, 1),
('70acbc15-e732-f3a5-e117-46fbb075c3c2', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-27 13:32:01', '2007-09-27 13:32:55', NULL, '1', NULL, 1),
('77bb7c2e-56cb-c889-afdb-46fbb0843f3b', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-27 13:32:01', '2007-09-27 13:32:55', NULL, '1', NULL, 1),
('5bbf9041-2dc8-5eba-7d7f-46fbb1861060', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-09-27 13:32:55', '2007-10-04 12:55:02', NULL, '1', NULL, 1),
('6e4e5c90-b546-0556-2934-46fbb161a6d1', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-09-27 13:32:55', '2007-10-04 12:55:02', NULL, '1', NULL, 1),
('68e49f3f-45f6-c9c3-4043-4704e2af39bc', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-10-04 12:55:02', '2007-10-04 12:56:13', NULL, '1', NULL, 1),
('6e56fe95-f5ce-ad0e-5917-4704e299c87b', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-10-04 12:55:02', '2007-10-04 12:56:13', NULL, '1', NULL, 1),
('d5eaa8dd-5f62-349f-c63a-4704e20cdb1d', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-10-04 12:56:13', '2007-10-05 08:56:23', NULL, '1', NULL, 1),
('db3fc96f-227c-ce12-9efc-4704e20a0796', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-10-04 12:56:13', '2007-10-05 08:56:23', NULL, '1', NULL, 1),
('a46ff079-90d8-c408-be4e-4705f6aea89a', 'e5fe5458-fe8d-bdc1-d227-46d6b9dd62e7', 'e7840f84-fe38-1b71-4ce4-4705f47ed801', 'a', 'ctp', 3, '2007-10-05 08:31:37', '2007-10-05 08:35:52', NULL, '1', NULL, 1),
('28e15e6e-1743-a46b-9d8a-4705f77f2efe', 'e5fe5458-fe8d-bdc1-d227-46d6b9dd62e7', 'e7840f84-fe38-1b71-4ce4-4705f47ed801', 'a', 'ctp', 3, '2007-10-05 08:35:52', '2007-10-05 08:37:48', NULL, '1', NULL, 1),
('da5a98f0-489c-03b0-c046-4705f751a653', 'e5fe5458-fe8d-bdc1-d227-46d6b9dd62e7', 'e7840f84-fe38-1b71-4ce4-4705f47ed801', 'a', 'ctp', 3, '2007-10-05 08:37:48', '2007-10-05 08:38:43', NULL, '1', NULL, 1),
('db70f399-0550-6bea-6f58-4705f8930960', 'e5fe5458-fe8d-bdc1-d227-46d6b9dd62e7', 'e7840f84-fe38-1b71-4ce4-4705f47ed801', 'a', 'ctp', 3, '2007-10-05 08:38:43', '2007-10-05 08:39:15', NULL, '1', NULL, 1),
('7948373e-9a29-ae00-4914-4705f8344e4d', '3f7e93cd-3491-675f-3186-46d56ac29df0', 'e7840f84-fe38-1b71-4ce4-4705f47ed801', 'a', 'ctp', 3, '2007-10-05 08:39:15', '2007-10-05 08:43:19', NULL, '1', NULL, 1),
('e9400a72-241e-ab2b-057d-4705f9c5d6a7', '3f7e93cd-3491-675f-3186-46d56ac29df0', 'e7840f84-fe38-1b71-4ce4-4705f47ed801', 'a', 'ctp', 3, '2007-10-05 08:43:19', '2007-10-05 08:43:19', NULL, '1', NULL, 0),
('43f7498e-1334-d1f3-d39f-4705fc9b346f', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-10-05 08:56:23', '2007-10-05 08:59:31', NULL, '1', NULL, 1),
('4925e38e-b9c6-ca82-1050-4705fc2bfa70', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-10-05 08:56:23', '2007-10-05 08:59:31', NULL, '1', NULL, 1),
('70550c6b-9bb9-33ea-a016-4705fcc195a6', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-10-05 08:59:31', '2007-10-05 09:00:39', NULL, '1', NULL, 1),
('75691df4-87a2-b8eb-ec1b-4705fc44d121', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-10-05 08:59:31', '2007-10-05 09:00:39', NULL, '1', NULL, 1),
('2822929b-f6f1-bd63-6c54-4705fd3853d6', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'a', 'ctp', 1, '2007-10-05 09:00:39', '2007-10-05 09:00:39', NULL, '1', NULL, 0),
('2d37914b-9d3b-7fe6-5c62-4705fda3730b', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'b', 'ctp', 1, '2007-10-05 09:00:39', '2007-10-05 09:00:39', NULL, '1', NULL, 0),
('d4f0d7d7-77af-1b22-d45c-47061435f1d8', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', '40757223-4089-a067-db22-470614470ba6', 'a', 'ctp', 1, '2007-10-05 10:41:09', '2007-10-05 10:42:17', NULL, '1', NULL, 1),
('d9f7220e-9088-444d-da21-4706146778ac', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', '40757223-4089-a067-db22-470614470ba6', 'b', 'ctp', 1, '2007-10-05 10:41:09', '2007-10-05 10:42:17', NULL, '1', NULL, 1),
('5b608340-6272-6a87-d70c-470615f428bd', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', '40757223-4089-a067-db22-470614470ba6', 'a', 'ctp', 1, '2007-10-05 10:42:17', '2007-10-05 10:42:48', NULL, '1', NULL, 1),
('6861ec30-6e89-5b2d-514f-470615644c15', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', '40757223-4089-a067-db22-470614470ba6', 'b', 'ctp', 1, '2007-10-05 10:42:17', '2007-10-05 10:42:48', NULL, '1', NULL, 1),
('287e90b1-e8e0-0a86-f113-470615b966c1', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', '40757223-4089-a067-db22-470614470ba6', 'a', 'ctp', 1, '2007-10-05 10:42:48', '2007-10-05 10:42:48', NULL, '1', NULL, 0),
('3173bac9-dd27-aea2-2509-4706156eced0', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', '40757223-4089-a067-db22-470614470ba6', 'b', 'ctp', 1, '2007-10-05 10:42:48', '2007-10-05 10:42:48', NULL, '1', NULL, 0),
('eab55f5a-0b08-1d9f-60e4-4709edf02980', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'dc72a139-71cc-4680-0e8b-4709ea86b5fd', 'a', 'ctp', 12, '2007-10-08 08:44:06', '2007-10-08 08:48:21', NULL, '1', NULL, 1),
('eafc085d-2e63-22d9-1ff5-4709ed90b0e7', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'dc72a139-71cc-4680-0e8b-4709ea86b5fd', 'b', 'ctp', 1, '2007-10-08 08:44:06', '2007-10-08 08:48:21', NULL, '1', NULL, 1),
('b65db634-d624-a3f1-e26e-4709ee182102', 'a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', 'dc72a139-71cc-4680-0e8b-4709ea86b5fd', 'a', 'ctp', 12, '2007-10-08 08:48:21', '2007-10-08 08:48:21', NULL, '1', NULL, 0);

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

INSERT INTO `config` (`category`, `name`, `value`) VALUES 
('notify', 'fromaddress', 'do_not_reply@example.com'),
('notify', 'fromname', 'SugarCRM'),
('notify', 'send_by_default', '2'),
('notify', 'on', '1'),
('notify', 'send_from_assigning_user', '2'),
('mail', 'smtpserver', 'mail.karting-zone.net'),
('mail', 'smtpport', '25'),
('mail', 'sendtype', 'SMTP'),
('mail', 'smtpuser', 'petar.peshev@karting-zone.net'),
('mail', 'smtppass', 'alfabeta'),
('mail', 'smtpauth_req', '1'),
('info', 'sugar_version', '4.5.0'),
('MySettings', 'tab', 'YTozNDp7aTowO3M6NDoiSG9tZSI7aToxO3M6NzoiaUZyYW1lcyI7aToyO3M6ODoiQ2FsZW5kYXIiO2k6MztzOjEwOiJBY3Rpdml0aWVzIjtpOjQ7czo4OiJDb250YWN0cyI7aTo1O3M6ODoiQWNjb3VudHMiO2k6NjtzOjU6IkxlYWRzIjtpOjc7czoxMzoiT3Bwb3J0dW5pdGllcyI7aTo4O3M6NToiQ2FzZXMiO2k6OTtzOjQ6IkJ1Z3MiO2k6MTA7czo5OiJEb2N1bWVudHMiO2k6MTE7czo2OiJFbWFpbHMiO2k6MTI7czo5OiJDYW1wYWlnbnMiO2k6MTM7czo3OiJQcm9qZWN0IjtpOjE0O3M6NToiRmVlZHMiO2k6MTU7czo4OiJQcm9kdWN0cyI7aToxNjtzOjE3OiJDb21wb25lbnRFc3RpbWF0ZSI7aToxNztzOjE1OiJQcm9kdWN0RXN0aW1hdGUiO2k6MTg7czo5OiJTdXBwbGllcnMiO2k6MTk7czo4OiJTdXBwbGllcyI7aToyMDtzOjE0OiJQdXJjaGFzZU9yZGVycyI7aToyMTtzOjk6Ik1hdGVyaWFscyI7aToyMjtzOjY6IlF1b3RlcyI7aToyMztzOjEwOiJPcGVyYXRpb25zIjtpOjI0O3M6MTc6IlByb2R1Y3RPcGVyYXRpb25zIjtpOjI1O3M6MzoiSW5rIjtpOjI2O3M6MTI6IlByZXNzbWFjaGluZSI7aToyNztzOjY6IlByaWNlcyI7aToyODtzOjE0OiJQcmVzc3ByaWNlbGlzdCI7aToyOTtzOjg6IlJhdGVmaWxtIjtpOjMwO3M6OToiUmF0ZXBsYXRlIjtpOjMxO3M6MTA6IlBhcGVyd2FzdGUiO2k6MzI7czo5OiJEYXNoYm9hcmQiO2k6MzM7czoxMToiUGFwZXJmb3JtYXQiO30='),
('portal', 'on', '0'),
('Update', 'CheckUpdates', 'manual'),
('license', 'msg_admin', ''),
('license', 'msg_all', ''),
('license', 'last_validation', 'success'),
('license', 'latest_versions', 'YToxOntpOjA7YToyOntzOjc6InZlcnNpb24iO3M6NjoiNC41LjFmIjtzOjExOiJkZXNjcmlwdGlvbiI7czoxNjM6IlRoZSBsYXRlc3QgdmVyc2lvbiBvZiBTdWdhckNSTSBpcyA0LjUuMWYuICBQbGVhc2UgdmlzaXQgPGEgaHJlZj0iaHR0cDovL3N1cHBvcnQuc3VnYXJjcm0uY29tIiB0YXJnZXQ9Il9uZXciPnN1cHBvcnQuc3VnYXJjcm0uY29tPC9hPiB0byBhY3F1aXJlIHRoZSBsYXRlc3QgdmVyc2lvbi4iO319'),
('license', 'last_validation_fail', '2007-09-24 12:24:41'),
('license', 'vk_end_date', '2007-01-05 13:31:55'),
('license', 'validation_key', 'YToxOntzOjg6InZlcmlmaWVkIjtiOjA7fQ=='),
('massemailer', 'campaign_emails_per_run', '500'),
('massemailer', 'tracking_entities_location_type', '1'),
('MySettings', 'disable_useredit', 'no');

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

INSERT INTO `contacts` (`id`, `deleted`, `date_entered`, `date_modified`, `modified_user_id`, `assigned_user_id`, `created_by`, `salutation`, `first_name`, `last_name`, `lead_source`, `title`, `department`, `reports_to_id`, `birthdate`, `do_not_call`, `phone_home`, `phone_mobile`, `phone_work`, `phone_other`, `phone_fax`, `email1`, `email2`, `assistant`, `assistant_phone`, `email_opt_out`, `primary_address_street`, `primary_address_city`, `primary_address_state`, `primary_address_postalcode`, `primary_address_country`, `alt_address_street`, `alt_address_city`, `alt_address_state`, `alt_address_postalcode`, `alt_address_country`, `description`, `portal_name`, `portal_active`, `portal_app`, `invalid_email`) VALUES 
('80f6ca47-d6b2-401e-9135-46d7c9d84a0f', 0, '2007-08-31 07:54:50', '2007-10-08 07:32:38', 'db72618d-35da-19ad-1b67-46f37f819f41', '1', '1', NULL, 'Николай', 'Рачев', NULL, NULL, NULL, NULL, NULL, 'off', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'off', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
('7449dc44-5cfa-cec1-9a86-46d566c72c6e', 0, '2007-08-29 12:30:18', '2007-10-08 07:32:38', 'db72618d-35da-19ad-1b67-46f37f819f41', '1', '1', NULL, 'Марио', 'Коев', NULL, NULL, NULL, NULL, NULL, 'off', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'off', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
('f0ad7d17-b2ad-342f-cb50-4709e9cb9715', 0, '2007-10-08 08:24:48', '2007-10-08 08:24:48', '1', '1', '1', NULL, 'Сергей', 'Интеграл', NULL, NULL, NULL, NULL, NULL, 'off', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'off', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0);

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

INSERT INTO `contacts_audit` (`id`, `parent_id`, `date_created`, `created_by`, `field_name`, `data_type`, `before_value_string`, `after_value_string`, `before_value_text`, `after_value_text`) VALUES 
('716ff2f2-176e-769f-5e0f-45ee86f2f965', '1ae804e8-06a5-ed75-94d3-45d194878ef8', '2007-03-07 09:31:08', '1', 'email1', 'email', '', 'lord_pgp@abv.bg', NULL, NULL),
('a250980d-bfea-c42e-1717-45ee8873194a', '1ae804e8-06a5-ed75-94d3-45d194878ef8', '2007-03-07 09:40:14', '1', 'email1', 'email', 'lord_pgp@abv.bg', 'lordpgp@gmail.com', NULL, NULL);

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

INSERT INTO `currencies` (`id`, `name`, `symbol`, `iso4217`, `conversion_rate`, `status`, `deleted`, `date_entered`, `date_modified`, `created_by`) VALUES 
('b6230800-7a1d-db1e-804b-45c1eeec3d8a', 'Leva', 'Lv', 'BG', 1.6, 'Active', 1, '2007-02-01 13:44:57', '2007-02-01 14:05:06', '1'),
('63f9b91d-90ce-2480-4428-45cc6b3549ab', 'Leva', 'Lv', 'Lv', 1.61, 'Active', 1, '2007-02-09 12:40:23', '2007-02-13 09:42:41', '1');

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

INSERT INTO `dashboards` (`id`, `deleted`, `date_entered`, `date_modified`, `modified_user_id`, `assigned_user_id`, `created_by`, `name`, `description`, `content`) VALUES 
('44ce0df9-739e-4c1b-da09-459b841ab64b', 0, '2007-01-03 10:23:00', '2007-01-03 10:23:00', '1', '1', '1', 'Home', NULL, 'a:4:{i:0;a:2:{s:4:"type";s:4:"code";s:2:"id";s:29:"Chart_pipeline_by_sales_stage";}i:1;a:2:{s:4:"type";s:4:"code";s:2:"id";s:28:"Chart_lead_source_by_outcome";}i:2;a:2:{s:4:"type";s:4:"code";s:2:"id";s:22:"Chart_outcome_by_month";}i:3;a:2:{s:4:"type";s:4:"code";s:2:"id";s:29:"Chart_pipeline_by_lead_source";}}'),
('c47eb11f-ecac-f401-150f-470e0ea8f936', 0, '2007-10-11 11:51:16', '2007-10-11 11:51:16', 'db72618d-35da-19ad-1b67-46f37f819f41', 'db72618d-35da-19ad-1b67-46f37f819f41', 'db72618d-35da-19ad-1b67-46f37f819f41', 'Home', NULL, 'a:4:{i:0;a:2:{s:4:"type";s:4:"code";s:2:"id";s:29:"Chart_pipeline_by_sales_stage";}i:1;a:2:{s:4:"type";s:4:"code";s:2:"id";s:28:"Chart_lead_source_by_outcome";}i:2;a:2:{s:4:"type";s:4:"code";s:2:"id";s:22:"Chart_outcome_by_month";}i:3;a:2:{s:4:"type";s:4:"code";s:2:"id";s:29:"Chart_pipeline_by_lead_source";}}');

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

INSERT INTO `emails` (`id`, `date_entered`, `date_modified`, `assigned_user_id`, `modified_user_id`, `created_by`, `name`, `date_start`, `time_start`, `parent_type`, `parent_id`, `description`, `description_html`, `from_addr`, `from_name`, `to_addrs`, `cc_addrs`, `bcc_addrs`, `to_addrs_ids`, `to_addrs_names`, `to_addrs_emails`, `cc_addrs_ids`, `cc_addrs_names`, `cc_addrs_emails`, `bcc_addrs_ids`, `bcc_addrs_names`, `bcc_addrs_emails`, `type`, `status`, `message_id`, `reply_to_name`, `reply_to_addr`, `intent`, `mailbox_id`, `raw_source`, `deleted`) VALUES 
('c5a8976d-4b5f-07a9-0ee8-46f77728e196', '2007-09-24 08:38:40', '2007-09-24 08:41:54', '1', '1', '1', 'Subject', NULL, NULL, NULL, NULL, 'Test msg', '<html><body>Test msg</body></html>', 'lord_pgp@abv.bg', 'Administrator', 'peter.peshev@livesoft-bg.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'out', 'send_error', NULL, NULL, NULL, 'pick', NULL, 'Date%3A+Mon%2C+24+Sep+2007+11%3A36%3A40+%2B0300%0AReturn-Path%3A+lord_pgp%40abv.bg%0ATo%3A+peter.peshev%40livesoft-bg.com%0AFrom%3A+Administrator+%3Clord_pgp%40abv.bg%3E%0AReply-to%3A+Administrator+%3Clord_pgp%40abv.bg%3E%0ASubject%3A+Subject%0AMessage-ID%3A+%3Cc7ca3917b4b5e5e4bd3039ea1466e45a%40localhost%3E%0AX-Priority%3A+3%0AX-Mailer%3A+PHPMailer+%5Bversion+1.73%5D%0AMIME-Version%3A+1.0%0AContent-Type%3A+multipart%2Falternative%3B%0A%09boundary%3D%22b1_c7ca3917b4b5e5e4bd3039ea1466e45a%22%0A%0A%0A--b1_c7ca3917b4b5e5e4bd3039ea1466e45a%0AContent-Type%3A+text%2Fplain%3B+charset+%3D+%22UTF-8%22%0AContent-Transfer-Encoding%3A+quoted-printable%0A%0ATest+msg%0A%0A%0A--b1_c7ca3917b4b5e5e4bd3039ea1466e45a%0AContent-Type%3A+text%2Fhtml%3B+charset+%3D+%22UTF-8%22%0AContent-Transfer-Encoding%3A+quoted-printable%0A%0A%3Chtml%3E%3Cbody%3ETest+msg%3C%2Fbody%3E%3C%2Fhtml%3E%0A%0A%0A%0A--b1_c7ca3917b4b5e5e4bd3039ea1466e45a--%0A', 1),
('260268bf-cf80-2094-cf04-46f777b7ca3e', '2007-09-24 08:39:34', '2007-09-24 08:41:53', '1', '1', '1', 'Test Subject', '2007-09-24', '08:39:00', NULL, NULL, 'Test msg', '<html><body>Test msg</body></html>', 'lord_pgp@abv.bg', 'Administrator', 'peter.peshev@livesoft-bg.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'out', 'sent', NULL, NULL, NULL, 'pick', NULL, 'Date%3A+Mon%2C+24+Sep+2007+11%3A39%3A32+%2B0300%0AReturn-Path%3A+lord_pgp%40abv.bg%0ATo%3A+peter.peshev%40livesoft-bg.com%0AFrom%3A+Administrator+%3Clord_pgp%40abv.bg%3E%0AReply-to%3A+Administrator+%3Clord_pgp%40abv.bg%3E%0ASubject%3A+Test+Subject%0AMessage-ID%3A+%3Cca1fbfd485d042df6e6f675b1a05a1bd%40localhost%3E%0AX-Priority%3A+3%0AX-Mailer%3A+PHPMailer+%5Bversion+1.73%5D%0AMIME-Version%3A+1.0%0AContent-Type%3A+multipart%2Falternative%3B%0A%09boundary%3D%22b1_ca1fbfd485d042df6e6f675b1a05a1bd%22%0A%0A%0A--b1_ca1fbfd485d042df6e6f675b1a05a1bd%0AContent-Type%3A+text%2Fplain%3B+charset+%3D+%22UTF-8%22%0AContent-Transfer-Encoding%3A+quoted-printable%0A%0ATest+msg%0A%0A%0A--b1_ca1fbfd485d042df6e6f675b1a05a1bd%0AContent-Type%3A+text%2Fhtml%3B+charset+%3D+%22UTF-8%22%0AContent-Transfer-Encoding%3A+quoted-printable%0A%0A%3Chtml%3E%3Cbody%3ETest+msg%3C%2Fbody%3E%3C%2Fhtml%3E%0A%0A%0A%0A--b1_ca1fbfd485d042df6e6f675b1a05a1bd--%0A', 1),
('408918de-bc1a-288a-ba75-46f7770744df', '2007-09-24 08:37:53', '2007-09-24 08:41:53', '1', '1', '1', 'Subject', '2007-09-24', '08:37:00', NULL, NULL, 'Test msg', '<html><body>Test msg</body></html>', 'lord_pgp@abv.bg', 'Administrator', 'peter.peshev@livesoft-bg.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'out', 'sent', NULL, NULL, NULL, 'pick', NULL, 'Date%3A+Mon%2C+24+Sep+2007+11%3A37%3A51+%2B0300%0AReturn-Path%3A+lord_pgp%40abv.bg%0ATo%3A+peter.peshev%40livesoft-bg.com%0AFrom%3A+Administrator+%3Clord_pgp%40abv.bg%3E%0AReply-to%3A+Administrator+%3Clord_pgp%40abv.bg%3E%0ASubject%3A+Subject%0AMessage-ID%3A+%3C701960ded8e8c00c63b407882cc7fda6%40localhost%3E%0AX-Priority%3A+3%0AX-Mailer%3A+PHPMailer+%5Bversion+1.73%5D%0AMIME-Version%3A+1.0%0AContent-Type%3A+multipart%2Falternative%3B%0A%09boundary%3D%22b1_701960ded8e8c00c63b407882cc7fda6%22%0A%0A%0A--b1_701960ded8e8c00c63b407882cc7fda6%0AContent-Type%3A+text%2Fplain%3B+charset+%3D+%22UTF-8%22%0AContent-Transfer-Encoding%3A+quoted-printable%0A%0ATest+msg%0A%0A%0A--b1_701960ded8e8c00c63b407882cc7fda6%0AContent-Type%3A+text%2Fhtml%3B+charset+%3D+%22UTF-8%22%0AContent-Transfer-Encoding%3A+quoted-printable%0A%0A%3Chtml%3E%3Cbody%3ETest+msg%3C%2Fbody%3E%3C%2Fhtml%3E%0A%0A%0A%0A--b1_701960ded8e8c00c63b407882cc7fda6--%0A', 1),
('27d2bee1-e99e-f641-f57a-46f3ac1c96fb', '2007-09-21 11:36:14', '2007-10-11 13:03:23', '1', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'archived', NULL, NULL, NULL, NULL, 'pick', NULL, NULL, 1),
('612e4d6f-a362-b4c7-b81e-46f3c6d31674', '2007-09-21 13:26:40', '2007-10-11 13:03:24', '1', '1', '1', 'FW: test <a href="http://blah">Lqlqlq</a>', NULL, NULL, 'Accounts', NULL, '> test\r\n', '<html><body><br /><br />> От: Administrator<br />> Дата на изпращане: <br />> До: peter.peshev@livesoft-bg.com<br />> Тема: test<br />> <br />> <br /><em>> test<br /></em></body></html>', 'Administrator <lord_pgp@abv.bg>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'draft', 'draft', NULL, NULL, NULL, 'pick', NULL, NULL, 1),
('a4f58ad5-e635-6b2b-a373-46f3c79567fe', '2007-09-21 13:28:34', '2007-10-11 13:03:24', '1', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'archived', NULL, NULL, NULL, NULL, 'pick', NULL, NULL, 1),
('aca3b3a2-de1d-42e2-574a-46f775fcf815', '2007-09-24 08:27:52', '2007-09-24 08:41:54', '1', '1', '1', NULL, '2007-09-24', '08:27:00', NULL, NULL, NULL, NULL, 'lord_pgp@abv.bg', 'Administrator', 'peter.peshev@livesoft-bg.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'out', 'sent', NULL, NULL, NULL, 'pick', NULL, 'Date%3A+Mon%2C+24+Sep+2007+11%3A27%3A49+%2B0300%0AReturn-Path%3A+lord_pgp%40abv.bg%0ATo%3A+peter.peshev%40livesoft-bg.com%0AFrom%3A+Administrator+%3Clord_pgp%40abv.bg%3E%0AReply-to%3A+Administrator+%3Clord_pgp%40abv.bg%3E%0ASubject%3A+%0AMessage-ID%3A+%3C5af0d672e660c0bddb8fd62e06ad5bcc%40localhost%3E%0AX-Priority%3A+3%0AX-Mailer%3A+PHPMailer+%5Bversion+1.73%5D%0AMIME-Version%3A+1.0%0AContent-Transfer-Encoding%3A+quoted-printable%0AContent-Type%3A+text%2Fplain%3B+charset%3D%22UTF-8%22%0A%0A%0A', 1),
('15ded2e1-456e-1084-c0a6-46f776bebea0', '2007-09-24 08:33:17', '2007-09-24 08:41:53', '1', '1', '1', 'Test', '2007-09-24', '08:33:00', NULL, NULL, 'Ляляля', '<html><body>Ляляля</body></html>', 'lord_pgp@abv.bg', 'Administrator', 'peter.peshev@livesoft-bg.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'out', 'sent', NULL, NULL, NULL, 'pick', NULL, 'Date%3A+Mon%2C+24+Sep+2007+11%3A33%3A15+%2B0300%0AReturn-Path%3A+lord_pgp%40abv.bg%0ATo%3A+peter.peshev%40livesoft-bg.com%0AFrom%3A+Administrator+%3Clord_pgp%40abv.bg%3E%0AReply-to%3A+Administrator+%3Clord_pgp%40abv.bg%3E%0ASubject%3A+Test%0AMessage-ID%3A+%3C3a31117aed633fd05e4f872fc01c850b%40localhost%3E%0AX-Priority%3A+3%0AX-Mailer%3A+PHPMailer+%5Bversion+1.73%5D%0AMIME-Version%3A+1.0%0AContent-Type%3A+multipart%2Falternative%3B%0A%09boundary%3D%22b1_3a31117aed633fd05e4f872fc01c850b%22%0A%0A%0A--b1_3a31117aed633fd05e4f872fc01c850b%0AContent-Type%3A+text%2Fplain%3B+charset+%3D+%22UTF-8%22%0AContent-Transfer-Encoding%3A+quoted-printable%0A%0A%3DD0%3D9B%3DD1%3D8F%3DD0%3DBB%3DD1%3D8F%3DD0%3DBB%3DD1%3D8F%0A%0A%0A--b1_3a31117aed633fd05e4f872fc01c850b%0AContent-Type%3A+text%2Fhtml%3B+charset+%3D+%22UTF-8%22%0AContent-Transfer-Encoding%3A+quoted-printable%0A%0A%3Chtml%3E%3Cbody%3E%3DD0%3D9B%3DD1%3D8F%3DD0%3DBB%3DD1%3D8F%3DD0%3DBB%3DD1%3D8F%3C%2Fbody%3E%3C%2Fhtml%3E%0A%0A%0A%0A--b1_3a31117aed633fd05e4f872fc01c850b--%0A', 1),
('6bf74fd6-0926-77f8-2a7e-46f38405dc22', '2007-09-21 08:46:26', '2007-09-21 08:52:28', '1', '1', '1', 'Тестово събощение', '2007-09-21', '08:46:00', 'Accounts', NULL, 'Това е тестово съобщение', '<html><body>Това е тестово съобщение</body></html>', 'spoffnat_email_account@hello.bg.mg', 'Administrator', 'panayot.panayotov@livesoft-bg.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'out', 'sent', NULL, NULL, NULL, 'pick', NULL, 'Date%3A+Fri%2C+21+Sep+2007+11%3A46%3A26+%2B0300%0AReturn-Path%3A+spoffnat_email_account%40hello.bg.mg%0ATo%3A+panayot.panayotov%40livesoft-bg.com%0AFrom%3A+Administrator+%3Cspoffnat_email_account%40hello.bg.mg%3E%0AReply-to%3A+Administrator+%3Cspoffnat_email_account%40hello.bg.mg%3E%0ASubject%3A+%3D%3FUTF-8%3FB%3F0KLQtdGB0YLQvtCy0L4g0YHRitCx0L7RidC10L3QuNC1%3F%3D%0AMessage-ID%3A+%3Cd1bb8b97a48e0fb5c0d724c8547f9c2a%40localhost%3E%0AX-Priority%3A+3%0AX-Mailer%3A+PHPMailer+%5Bversion+1.73%5D%0AMIME-Version%3A+1.0%0AContent-Type%3A+multipart%2Falternative%3B%0A%09boundary%3D%22b1_d1bb8b97a48e0fb5c0d724c8547f9c2a%22%0A%0A%0A--b1_d1bb8b97a48e0fb5c0d724c8547f9c2a%0AContent-Type%3A+text%2Fplain%3B+charset+%3D+%22UTF-8%22%0AContent-Transfer-Encoding%3A+quoted-printable%0A%0A%3DD0%3DA2%3DD0%3DBE%3DD0%3DB2%3DD0%3DB0+%3DD0%3DB5+%3DD1%3D82%3DD0%3DB5%3DD1%3D81%3DD1%3D82%3DD0%3DBE%3DD0%3DB2%3DD0%3DBE+%3D%0A%3DD1%3D81%3DD1%3D8A%3DD0%3DBE%3DD0%3DB1%3DD1%3D89%3DD0%3DB5%3DD0%3DBD%3DD0%3DB8%3DD0%3DB5%0A%0A%0A--b1_d1bb8b97a48e0fb5c0d724c8547f9c2a%0AContent-Type%3A+text%2Fhtml%3B+charset+%3D+%22UTF-8%22%0AContent-Transfer-Encoding%3A+quoted-printable%0A%0A%3Chtml%3E%3Cbody%3E%3DD0%3DA2%3DD0%3DBE%3DD0%3DB2%3DD0%3DB0+%3DD0%3DB5+%3D%0A%3DD1%3D82%3DD0%3DB5%3DD1%3D81%3DD1%3D82%3DD0%3DBE%3DD0%3DB2%3DD0%3DBE+%3D%0A%3DD1%3D81%3DD1%3D8A%3DD0%3DBE%3DD0%3DB1%3DD1%3D89%3DD0%3DB5%3DD0%3DBD%3DD0%3DB8%3DD0%3DB5%3C%2Fbody%3E%3C%2Fhtml%3E%0A%0A%0A%0A--b1_d1bb8b97a48e0fb5c0d724c8547f9c2a--%0A', 1),
('739aef2b-7119-ab10-a75f-46f384562c0e', '2007-09-21 08:42:40', '2007-09-24 08:41:54', '1', '1', '1', 'test', '2007-09-21', '08:42:00', 'Accounts', NULL, 'test', '<html><body>test</body></html>', 'lord_pgp@abv.bg', 'Administrator', 'peter.peshev@livesoft-bg.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'out', 'sent', NULL, NULL, NULL, 'pick', NULL, 'Date%3A+Fri%2C+21+Sep+2007+11%3A42%3A40+%2B0300%0AReturn-Path%3A+lord_pgp%40abv.bg%0ATo%3A+peter.peshev%40livesoft-bg.com%0AFrom%3A+Administrator+%3Clord_pgp%40abv.bg%3E%0AReply-to%3A+Administrator+%3Clord_pgp%40abv.bg%3E%0ASubject%3A+test%0AMessage-ID%3A+%3Cbec24473787f71cfe5a5b86860fe4c70%40localhost%3E%0AX-Priority%3A+3%0AX-Mailer%3A+PHPMailer+%5Bversion+1.73%5D%0AMIME-Version%3A+1.0%0AContent-Type%3A+multipart%2Falternative%3B%0A%09boundary%3D%22b1_bec24473787f71cfe5a5b86860fe4c70%22%0A%0A%0A--b1_bec24473787f71cfe5a5b86860fe4c70%0AContent-Type%3A+text%2Fplain%3B+charset+%3D+%22UTF-8%22%0AContent-Transfer-Encoding%3A+quoted-printable%0A%0Atest%0A%0A%0A--b1_bec24473787f71cfe5a5b86860fe4c70%0AContent-Type%3A+text%2Fhtml%3B+charset+%3D+%22UTF-8%22%0AContent-Transfer-Encoding%3A+quoted-printable%0A%0A%3Chtml%3E%3Cbody%3Etest%3C%2Fbody%3E%3C%2Fhtml%3E%0A%0A%0A%0A--b1_bec24473787f71cfe5a5b86860fe4c70--%0A', 1),
('e6c030b3-db54-1478-e84c-464d69dd7657', '0000-00-00 00:00:00', '2007-10-11 13:03:24', '1', NULL, '1', 'PRD10000-Estimate', NULL, NULL, NULL, NULL, 'PRD10000 is waiting for estimate', NULL, 'Administrator', 'lord_pgp@abv.bg', NULL, NULL, NULL, NULL, 'admin', 'lord_pgp@abv.bg', NULL, NULL, NULL, NULL, NULL, NULL, 'out', 'sent', NULL, NULL, NULL, 'pick', NULL, NULL, 1),
('8f7736bc-77ae-90b2-f7d1-4678f38321c5', '0000-00-00 00:00:00', '2007-10-11 13:03:24', '1', NULL, '1', 'PRD10001-Estimate', NULL, NULL, NULL, NULL, 'PRD10001 is waiting for estimate', NULL, 'Administrator', 'lord_pgp@abv.bg', NULL, NULL, NULL, NULL, 'admin', 'lord_pgp@abv.bg', NULL, NULL, NULL, NULL, NULL, NULL, 'out', 'sent', NULL, NULL, NULL, 'pick', NULL, NULL, 1),
('5405e254-5e65-d1ae-ef6f-4688e2924624', '2007-07-02 11:34:48', '2007-10-11 13:03:24', '1', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'archived', NULL, NULL, NULL, NULL, 'pick', NULL, NULL, 1),
('46861bf3-c4b7-8bb0-fbe6-46c9403ba75c', '0000-00-00 00:00:00', '2007-10-11 13:03:24', '1', NULL, '1', 'PRD10002-Estimate', NULL, NULL, NULL, NULL, 'PRD10002 is waiting for estimate', NULL, 'Administrator', 'lord_pgp@abv.bg', NULL, NULL, NULL, NULL, 'admin', 'lord_pgp@abv.bg', NULL, NULL, NULL, NULL, NULL, NULL, 'out', 'sent', NULL, NULL, NULL, 'pick', NULL, NULL, 1),
('4d4c91a5-52ad-27dc-6a97-46c9436a94d7', '0000-00-00 00:00:00', '2007-10-11 13:03:24', '1', NULL, '1', 'PRD10003-Estimate', NULL, NULL, NULL, NULL, 'PRD10003 is waiting for estimate', NULL, 'Administrator', 'lord_pgp@abv.bg', NULL, NULL, NULL, NULL, 'admin', 'lord_pgp@abv.bg', NULL, NULL, NULL, NULL, NULL, NULL, 'out', 'sent', NULL, NULL, NULL, 'pick', NULL, NULL, 1),
('96eaf9f7-97e7-f3b4-cc98-46c94346fa23', '0000-00-00 00:00:00', '2007-10-11 13:03:24', '1', NULL, '1', 'PRD10004-Estimate', NULL, NULL, NULL, NULL, 'PRD10004 is waiting for estimate', NULL, 'Administrator', 'lord_pgp@abv.bg', NULL, NULL, NULL, NULL, 'admin', 'lord_pgp@abv.bg', NULL, NULL, NULL, NULL, NULL, NULL, 'out', 'sent', NULL, NULL, NULL, 'pick', NULL, NULL, 1),
('3f691e84-f5af-d082-0856-46f7773efba7', '2007-09-24 08:40:41', '2007-10-11 13:03:24', '1', '1', '1', 'Subject', NULL, NULL, NULL, NULL, 'Test msg', '<html><body>Test msg</body></html>', 'lord_pgp@abv.bg', 'Administrator', 'peter.peshev@livesoft-bg.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'out', 'send_error', NULL, NULL, NULL, 'pick', NULL, 'Date%3A+Mon%2C+24+Sep+2007+11%3A38%3A41+%2B0300%0AReturn-Path%3A+lord_pgp%40abv.bg%0ATo%3A+peter.peshev%40livesoft-bg.com%0AFrom%3A+Administrator+%3Clord_pgp%40abv.bg%3E%0AReply-to%3A+Administrator+%3Clord_pgp%40abv.bg%3E%0ASubject%3A+Subject%0AMessage-ID%3A+%3C814bc4ffc77a7f40176aa2b56f2cbb24%40localhost%3E%0AX-Priority%3A+3%0AX-Mailer%3A+PHPMailer+%5Bversion+1.73%5D%0AMIME-Version%3A+1.0%0AContent-Type%3A+multipart%2Falternative%3B%0A%09boundary%3D%22b1_814bc4ffc77a7f40176aa2b56f2cbb24%22%0A%0A%0A--b1_814bc4ffc77a7f40176aa2b56f2cbb24%0AContent-Type%3A+text%2Fplain%3B+charset+%3D+%22UTF-8%22%0AContent-Transfer-Encoding%3A+quoted-printable%0A%0ATest+msg%0A%0A%0A--b1_814bc4ffc77a7f40176aa2b56f2cbb24%0AContent-Type%3A+text%2Fhtml%3B+charset+%3D+%22UTF-8%22%0AContent-Transfer-Encoding%3A+quoted-printable%0A%0A%3Chtml%3E%3Cbody%3ETest+msg%3C%2Fbody%3E%3C%2Fhtml%3E%0A%0A%0A%0A--b1_814bc4ffc77a7f40176aa2b56f2cbb24--%0A', 1),
('c048bb41-c1e8-79d7-672c-46f77fe4ecb2', '2007-09-24 09:11:32', '2007-10-11 13:03:23', '1', '1', '1', 'Component estimate:PRD10003-1', '2007-09-24', '09:11:00', NULL, NULL, 'Test msg', '<html><body>Test msg</body></html>', 'lord_pgp@abv.bg', 'Administrator', 'Peter Peshev <peter.peshev@livesoft-bg.com>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'out', 'sent', NULL, NULL, NULL, 'pick', NULL, 'Date%3A+Mon%2C+24+Sep+2007+12%3A11%3A29+%2B0300%0AReturn-Path%3A+lord_pgp%40abv.bg%0ATo%3A+Peter+Peshev+%3Cpeter.peshev%40livesoft-bg.com%3E%0AFrom%3A+Administrator+%3Clord_pgp%40abv.bg%3E%0AReply-to%3A+Administrator+%3Clord_pgp%40abv.bg%3E%0ASubject%3A+Component+estimate%3APRD10003-1%0AMessage-ID%3A+%3C3d51d114a757efbbdeb79a67cdfba9f7%40localhost%3E%0AX-Priority%3A+3%0AX-Mailer%3A+PHPMailer+%5Bversion+1.73%5D%0AMIME-Version%3A+1.0%0AContent-Type%3A+multipart%2Falternative%3B%0A%09boundary%3D%22b1_3d51d114a757efbbdeb79a67cdfba9f7%22%0A%0A%0A--b1_3d51d114a757efbbdeb79a67cdfba9f7%0AContent-Type%3A+text%2Fplain%3B+charset+%3D+%22UTF-8%22%0AContent-Transfer-Encoding%3A+quoted-printable%0A%0ATest+msg%0A%0A%0A--b1_3d51d114a757efbbdeb79a67cdfba9f7%0AContent-Type%3A+text%2Fhtml%3B+charset+%3D+%22UTF-8%22%0AContent-Transfer-Encoding%3A+quoted-printable%0A%0A%3Chtml%3E%3Cbody%3ETest+msg%3C%2Fbody%3E%3C%2Fhtml%3E%0A%0A%0A%0A--b1_3d51d114a757efbbdeb79a67cdfba9f7--%0A', 1),
('7561562e-60cf-3107-2787-46f7c0295d64', '2007-09-24 13:50:26', '2007-10-11 13:03:24', '1', '1', '1', 'Component estimate:PRD10003-1', NULL, NULL, NULL, NULL, 'Дрън Дрън', '<html><body>Дрън Дрън</body></html>', 'lord_pgp@abv.bg', 'Administrator', 'User <petar.peshev@liveerp.org>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'out', 'send_error', NULL, NULL, NULL, 'pick', NULL, 'Date%3A+Mon%2C+24+Sep+2007+16%3A50%3A25+%2B0300%0AReturn-Path%3A+lord_pgp%40abv.bg%0ATo%3A+User+%3Cpetar.peshev%40liveerp.org%3E%0AFrom%3A+Administrator+%3Clord_pgp%40abv.bg%3E%0AReply-to%3A+Administrator+%3Clord_pgp%40abv.bg%3E%0ASubject%3A+Component+estimate%3APRD10003-1%0AMessage-ID%3A+%3C14e320676b3c2cca0befc15f94f4074c%40localhost%3E%0AX-Priority%3A+3%0AX-Mailer%3A+PHPMailer+%5Bversion+1.73%5D%0AMIME-Version%3A+1.0%0AContent-Type%3A+multipart%2Falternative%3B%0A%09boundary%3D%22b1_14e320676b3c2cca0befc15f94f4074c%22%0A%0A%0A--b1_14e320676b3c2cca0befc15f94f4074c%0AContent-Type%3A+text%2Fplain%3B+charset+%3D+%22UTF-8%22%0AContent-Transfer-Encoding%3A+quoted-printable%0A%0A%3DD0%3D94%3DD1%3D80%3DD1%3D8A%3DD0%3DBD+%3DD0%3D94%3DD1%3D80%3DD1%3D8A%3DD0%3DBD%0A%0A%0A--b1_14e320676b3c2cca0befc15f94f4074c%0AContent-Type%3A+text%2Fhtml%3B+charset+%3D+%22UTF-8%22%0AContent-Transfer-Encoding%3A+quoted-printable%0A%0A%3Chtml%3E%3Cbody%3E%3DD0%3D94%3DD1%3D80%3DD1%3D8A%3DD0%3DBD+%3D%0A%3DD0%3D94%3DD1%3D80%3DD1%3D8A%3DD0%3DBD%3C%2Fbody%3E%3C%2Fhtml%3E%0A%0A%0A%0A--b1_14e320676b3c2cca0befc15f94f4074c--%0A', 1),
('cbb74bd4-a762-836b-b830-46f7c00e3fa6', '2007-09-24 13:51:27', '2007-10-11 13:03:48', '1', '1', '1', 'Component estimate:PRD10003-1', NULL, NULL, NULL, NULL, 'Component estimate:PRD10003-1', '<html><body>Component estimate:PRD10003-1</body></html>', 'lord_pgp@abv.bg', 'Administrator', 'User <petar.peshev@liveerp.org>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'out', 'send_error', NULL, NULL, NULL, 'pick', NULL, 'Date%3A+Mon%2C+24+Sep+2007+16%3A51%3A26+%2B0300%0AReturn-Path%3A+lord_pgp%40abv.bg%0ATo%3A+User+%3Cpetar.peshev%40liveerp.org%3E%0AFrom%3A+Administrator+%3Clord_pgp%40abv.bg%3E%0AReply-to%3A+Administrator+%3Clord_pgp%40abv.bg%3E%0ASubject%3A+Component+estimate%3APRD10003-1%0AMessage-ID%3A+%3C3a974a07c38c9a9218576bbdbc799150%40localhost%3E%0AX-Priority%3A+3%0AX-Mailer%3A+PHPMailer+%5Bversion+1.73%5D%0AMIME-Version%3A+1.0%0AContent-Type%3A+multipart%2Falternative%3B%0A%09boundary%3D%22b1_3a974a07c38c9a9218576bbdbc799150%22%0A%0A%0A--b1_3a974a07c38c9a9218576bbdbc799150%0AContent-Type%3A+text%2Fplain%3B+charset+%3D+%22UTF-8%22%0AContent-Transfer-Encoding%3A+quoted-printable%0A%0AComponent+estimate%3APRD10003-1%0A%0A%0A--b1_3a974a07c38c9a9218576bbdbc799150%0AContent-Type%3A+text%2Fhtml%3B+charset+%3D+%22UTF-8%22%0AContent-Transfer-Encoding%3A+quoted-printable%0A%0A%3Chtml%3E%3Cbody%3EComponent+estimate%3APRD10003-1%3C%2Fbody%3E%3C%2Fhtml%3E%0A%0A%0A%0A--b1_3a974a07c38c9a9218576bbdbc799150--%0A', 1),
('45ab79ed-84e3-0113-c3b5-46f7c13bdb7e', '2007-09-24 13:52:20', '2007-10-11 13:03:48', '1', '1', '1', 'Component estimate:PRD10003-1', NULL, NULL, NULL, NULL, 'Component estimate:PRD10003-1', '<html><body>Component estimate:PRD10003-1</body></html>', 'lord_pgp@abv.bg', 'Administrator', 'User <petar.peshev@liveerp.org>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'out', 'send_error', NULL, NULL, NULL, 'pick', NULL, 'Date%3A+Mon%2C+24+Sep+2007+16%3A52%3A19+%2B0300%0AReturn-Path%3A+lord_pgp%40abv.bg%0ATo%3A+User+%3Cpetar.peshev%40liveerp.org%3E%0AFrom%3A+Administrator+%3Clord_pgp%40abv.bg%3E%0AReply-to%3A+Administrator+%3Clord_pgp%40abv.bg%3E%0ASubject%3A+Component+estimate%3APRD10003-1%0AMessage-ID%3A+%3Cbbef704e2001d8c6c2a53c2d4c4b5b3c%40localhost%3E%0AX-Priority%3A+3%0AX-Mailer%3A+PHPMailer+%5Bversion+1.73%5D%0AMIME-Version%3A+1.0%0AContent-Type%3A+multipart%2Falternative%3B%0A%09boundary%3D%22b1_bbef704e2001d8c6c2a53c2d4c4b5b3c%22%0A%0A%0A--b1_bbef704e2001d8c6c2a53c2d4c4b5b3c%0AContent-Type%3A+text%2Fplain%3B+charset+%3D+%22UTF-8%22%0AContent-Transfer-Encoding%3A+quoted-printable%0A%0AComponent+estimate%3APRD10003-1%0A%0A%0A--b1_bbef704e2001d8c6c2a53c2d4c4b5b3c%0AContent-Type%3A+text%2Fhtml%3B+charset+%3D+%22UTF-8%22%0AContent-Transfer-Encoding%3A+quoted-printable%0A%0A%3Chtml%3E%3Cbody%3EComponent+estimate%3APRD10003-1%3C%2Fbody%3E%3C%2Fhtml%3E%0A%0A%0A%0A--b1_bbef704e2001d8c6c2a53c2d4c4b5b3c--%0A', 1),
('db2ec33c-20f4-5446-c391-46f7c1bc5eb3', '2007-09-24 13:52:54', '2007-10-11 13:03:48', '1', '1', '1', 'Component estimate:PRD10003-1', NULL, NULL, NULL, NULL, 'Component estimate:PRD10003-1', '<html><body>Component estimate:PRD10003-1</body></html>', 'lord_pgp@abv.bg', 'Administrator', 'User <petar.peshev@liveerp.org>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'out', 'send_error', NULL, NULL, NULL, 'pick', NULL, 'Date%3A+Mon%2C+24+Sep+2007+16%3A52%3A53+%2B0300%0AReturn-Path%3A+lord_pgp%40abv.bg%0ATo%3A+User+%3Cpetar.peshev%40liveerp.org%3E%0AFrom%3A+Administrator+%3Clord_pgp%40abv.bg%3E%0AReply-to%3A+Administrator+%3Clord_pgp%40abv.bg%3E%0ASubject%3A+Component+estimate%3APRD10003-1%0AMessage-ID%3A+%3C657739f8777f7753a362509d53e87d72%40localhost%3E%0AX-Priority%3A+3%0AX-Mailer%3A+PHPMailer+%5Bversion+1.73%5D%0AMIME-Version%3A+1.0%0AContent-Type%3A+multipart%2Falternative%3B%0A%09boundary%3D%22b1_657739f8777f7753a362509d53e87d72%22%0A%0A%0A--b1_657739f8777f7753a362509d53e87d72%0AContent-Type%3A+text%2Fplain%3B+charset+%3D+%22UTF-8%22%0AContent-Transfer-Encoding%3A+quoted-printable%0A%0AComponent+estimate%3APRD10003-1%0A%0A%0A--b1_657739f8777f7753a362509d53e87d72%0AContent-Type%3A+text%2Fhtml%3B+charset+%3D+%22UTF-8%22%0AContent-Transfer-Encoding%3A+quoted-printable%0A%0A%3Chtml%3E%3Cbody%3EComponent+estimate%3APRD10003-1%3C%2Fbody%3E%3C%2Fhtml%3E%0A%0A%0A%0A--b1_657739f8777f7753a362509d53e87d72--%0A', 1),
('541d35d9-42f4-1b58-23ab-46f7c12fd258', '2007-09-24 13:53:28', '2007-10-11 13:03:23', '1', '1', '1', 'Component estimate:PRD10003-1', '2007-09-24', '13:53:00', NULL, NULL, 'Component estimate:PRD10003-1', '<html><body>Component estimate:PRD10003-1</body></html>', 'lord_pgp@abv.bg', 'Administrator', 'User <petar.peshev@liveerp.org>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'out', 'sent', NULL, NULL, NULL, 'pick', NULL, 'Date%3A+Mon%2C+24+Sep+2007+16%3A53%3A25+%2B0300%0AReturn-Path%3A+lord_pgp%40abv.bg%0ATo%3A+User+%3Cpetar.peshev%40liveerp.org%3E%0AFrom%3A+Administrator+%3Clord_pgp%40abv.bg%3E%0AReply-to%3A+Administrator+%3Clord_pgp%40abv.bg%3E%0ASubject%3A+Component+estimate%3APRD10003-1%0AMessage-ID%3A+%3C7abaffde386397baed122f833cebc1d8%40localhost%3E%0AX-Priority%3A+3%0AX-Mailer%3A+PHPMailer+%5Bversion+1.73%5D%0AMIME-Version%3A+1.0%0AContent-Type%3A+multipart%2Falternative%3B%0A%09boundary%3D%22b1_7abaffde386397baed122f833cebc1d8%22%0A%0A%0A--b1_7abaffde386397baed122f833cebc1d8%0AContent-Type%3A+text%2Fplain%3B+charset+%3D+%22UTF-8%22%0AContent-Transfer-Encoding%3A+quoted-printable%0A%0AComponent+estimate%3APRD10003-1%0A%0A%0A--b1_7abaffde386397baed122f833cebc1d8%0AContent-Type%3A+text%2Fhtml%3B+charset+%3D+%22UTF-8%22%0AContent-Transfer-Encoding%3A+quoted-printable%0A%0A%3Chtml%3E%3Cbody%3EComponent+estimate%3APRD10003-1%3C%2Fbody%3E%3C%2Fhtml%3E%0A%0A%0A%0A--b1_7abaffde386397baed122f833cebc1d8--%0A', 1),
('560a04a2-ecf5-8828-8531-46f7c21d5443', '2007-09-24 13:59:40', '2007-10-11 13:03:23', '1', '1', '1', 'Component estimate:PRD10003-1', '2007-09-24', '13:59:00', NULL, NULL, 'Component estimate:PRD10003-1', '<html><body>Component estimate:PRD10003-1</body></html>', 'lord_pgp@abv.bg', 'Administrator', 'User <petar.peshev@liveerp.org>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'out', 'sent', NULL, NULL, NULL, 'pick', NULL, 'Date%3A+Mon%2C+24+Sep+2007+16%3A59%3A38+%2B0300%0AReturn-Path%3A+lord_pgp%40abv.bg%0ATo%3A+User+%3Cpetar.peshev%40liveerp.org%3E%0AFrom%3A+Administrator+%3Clord_pgp%40abv.bg%3E%0AReply-to%3A+Administrator+%3Clord_pgp%40abv.bg%3E%0ASubject%3A+Component+estimate%3APRD10003-1%0AMessage-ID%3A+%3C48a14ca42f1ee11fb6aa5cba0ca2b78d%40localhost%3E%0AX-Priority%3A+3%0AX-Mailer%3A+PHPMailer+%5Bversion+1.73%5D%0AMIME-Version%3A+1.0%0AContent-Type%3A+multipart%2Falternative%3B%0A%09boundary%3D%22b1_48a14ca42f1ee11fb6aa5cba0ca2b78d%22%0A%0A%0A--b1_48a14ca42f1ee11fb6aa5cba0ca2b78d%0AContent-Type%3A+text%2Fplain%3B+charset+%3D+%22UTF-8%22%0AContent-Transfer-Encoding%3A+quoted-printable%0A%0AComponent+estimate%3APRD10003-1%0A%0A%0A--b1_48a14ca42f1ee11fb6aa5cba0ca2b78d%0AContent-Type%3A+text%2Fhtml%3B+charset+%3D+%22UTF-8%22%0AContent-Transfer-Encoding%3A+quoted-printable%0A%0A%3Chtml%3E%3Cbody%3EComponent+estimate%3APRD10003-1%3C%2Fbody%3E%3C%2Fhtml%3E%0A%0A%0A%0A--b1_48a14ca42f1ee11fb6aa5cba0ca2b78d--%0A', 1),
('afb0542d-3375-1efa-902e-46f7c351af5f', '2007-09-24 14:03:16', '2007-10-11 13:03:23', '1', '1', '1', 'Component estimate:PRD10003-1', '2007-09-24', '14:03:00', NULL, NULL, 'Component estimate:PRD10003-1', '<html><body>Component estimate:PRD10003-1</body></html>', 'lord_pgp@abv.bg', 'Administrator', 'User <petar.peshev@liveerp.org>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'out', 'sent', NULL, NULL, NULL, 'pick', NULL, 'Date%3A+Mon%2C+24+Sep+2007+17%3A03%3A13+%2B0300%0AReturn-Path%3A+lord_pgp%40abv.bg%0ATo%3A+User+%3Cpetar.peshev%40liveerp.org%3E%0AFrom%3A+Administrator+%3Clord_pgp%40abv.bg%3E%0AReply-to%3A+Administrator+%3Clord_pgp%40abv.bg%3E%0ASubject%3A+Component+estimate%3APRD10003-1%0AMessage-ID%3A+%3Cec7f4deeee99e423c3c6828282ed0bc8%40localhost%3E%0AX-Priority%3A+3%0AX-Mailer%3A+PHPMailer+%5Bversion+1.73%5D%0AMIME-Version%3A+1.0%0AContent-Type%3A+multipart%2Falternative%3B%0A%09boundary%3D%22b1_ec7f4deeee99e423c3c6828282ed0bc8%22%0A%0A%0A--b1_ec7f4deeee99e423c3c6828282ed0bc8%0AContent-Type%3A+text%2Fplain%3B+charset+%3D+%22UTF-8%22%0AContent-Transfer-Encoding%3A+quoted-printable%0A%0AComponent+estimate%3APRD10003-1%0A%0A%0A--b1_ec7f4deeee99e423c3c6828282ed0bc8%0AContent-Type%3A+text%2Fhtml%3B+charset+%3D+%22UTF-8%22%0AContent-Transfer-Encoding%3A+quoted-printable%0A%0A%3Chtml%3E%3Cbody%3EComponent+estimate%3APRD10003-1%3C%2Fbody%3E%3C%2Fhtml%3E%0A%0A%0A%0A--b1_ec7f4deeee99e423c3c6828282ed0bc8--%0A', 1),
('b16fc076-5c4d-0dab-f6da-46f7ce47d1d9', '2007-09-24 14:48:54', '2007-10-11 13:03:48', '1', '1', '1', 'Component estimate:PRD10003-1', NULL, NULL, NULL, NULL, 'Component estimate:PRD10003-1', '<html><body>Component estimate:PRD10003-1</body></html>', 'lord_pgp@abv.bg', 'Administrator', 'User <petar.peshev@liveerp.org>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'out', 'send_error', NULL, NULL, NULL, 'pick', NULL, 'Date%3A+Mon%2C+24+Sep+2007+17%3A48%3A54+%2B0300%0AReturn-Path%3A+lord_pgp%40abv.bg%0ATo%3A+User+%3Cpetar.peshev%40liveerp.org%3E%0AFrom%3A+Administrator+%3Clord_pgp%40abv.bg%3E%0AReply-to%3A+Administrator+%3Clord_pgp%40abv.bg%3E%0ASubject%3A+Component+estimate%3APRD10003-1%0AMessage-ID%3A+%3C89164b7f24a8bdbae45e9128289221fe%40localhost%3E%0AX-Priority%3A+3%0AX-Mailer%3A+PHPMailer+%5Bversion+1.73%5D%0AMIME-Version%3A+1.0%0AContent-Type%3A+multipart%2Falternative%3B%0A%09boundary%3D%22b1_89164b7f24a8bdbae45e9128289221fe%22%0A%0A%0A--b1_89164b7f24a8bdbae45e9128289221fe%0AContent-Type%3A+text%2Fplain%3B+charset+%3D+%22UTF-8%22%0AContent-Transfer-Encoding%3A+quoted-printable%0A%0AComponent+estimate%3APRD10003-1%0A%0A%0A--b1_89164b7f24a8bdbae45e9128289221fe%0AContent-Type%3A+text%2Fhtml%3B+charset+%3D+%22UTF-8%22%0AContent-Transfer-Encoding%3A+quoted-printable%0A%0A%3Chtml%3E%3Cbody%3EComponent+estimate%3APRD10003-1%3C%2Fbody%3E%3C%2Fhtml%3E%0A%0A%0A%0A--b1_89164b7f24a8bdbae45e9128289221fe--%0A', 1),
('99550e81-94bd-d20d-6fcd-46f7cf85bac1', '2007-09-24 14:53:30', '2007-10-11 13:03:48', '1', '1', '1', 'Component estimate:PRD10003-1', NULL, NULL, NULL, NULL, 'Component estimate:PRD10003-1', '<html><body>Component estimate:PRD10003-1</body></html>', 'lord_pgp@abv.bg', 'Administrator', 'User <petar.peshev@liveerp.org>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'out', 'send_error', NULL, NULL, NULL, 'pick', NULL, 'Date%3A+Mon%2C+24+Sep+2007+17%3A53%3A30+%2B0300%0AReturn-Path%3A+lord_pgp%40abv.bg%0ATo%3A+User+%3Cpetar.peshev%40liveerp.org%3E%0AFrom%3A+Administrator+%3Clord_pgp%40abv.bg%3E%0AReply-to%3A+Administrator+%3Clord_pgp%40abv.bg%3E%0ASubject%3A+Component+estimate%3APRD10003-1%0AMessage-ID%3A+%3Cc7ce3f8466829e2d45102eaf43b6cc1c%40localhost%3E%0AX-Priority%3A+3%0AX-Mailer%3A+PHPMailer+%5Bversion+1.73%5D%0AMIME-Version%3A+1.0%0AContent-Type%3A+multipart%2Falternative%3B%0A%09boundary%3D%22b1_c7ce3f8466829e2d45102eaf43b6cc1c%22%0A%0A%0A--b1_c7ce3f8466829e2d45102eaf43b6cc1c%0AContent-Type%3A+text%2Fplain%3B+charset+%3D+%22UTF-8%22%0AContent-Transfer-Encoding%3A+quoted-printable%0A%0AComponent+estimate%3APRD10003-1%0A%0A%0A--b1_c7ce3f8466829e2d45102eaf43b6cc1c%0AContent-Type%3A+text%2Fhtml%3B+charset+%3D+%22UTF-8%22%0AContent-Transfer-Encoding%3A+quoted-printable%0A%0A%3Chtml%3E%3Cbody%3EComponent+estimate%3APRD10003-1%3C%2Fbody%3E%3C%2Fhtml%3E%0A%0A%0A%0A--b1_c7ce3f8466829e2d45102eaf43b6cc1c--%0A', 1),
('f3c67b36-78a5-2e70-e264-4709ff4978f8', '2007-10-08 09:58:11', '2007-10-11 13:03:43', 'db72618d-35da-19ad-1b67-46f37f819f41', 'db72618d-35da-19ad-1b67-46f37f819f41', 'db72618d-35da-19ad-1b67-46f37f819f41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'archived', NULL, NULL, NULL, NULL, 'pick', NULL, NULL, 1),
('453ff74d-34ba-83b1-4cbf-470a02d3b65a', '2007-10-08 10:11:29', '2007-10-11 13:03:23', '1', '1', '1', 'Тест', '2007-10-08', '10:11:00', 'Accounts', NULL, 'Тестово съобщение', '<html><body>Тестово съобщение</body></html>', 'lord_pgp@abv.bg', 'Administrator', 'peter.peshev@livesoft-bg.com', NULL, NULL, 'f0ad7d17-b2ad-342f-cb50-4709e9cb9715; ', 'Сергей Интеграл; ', '; ', NULL, NULL, NULL, NULL, NULL, NULL, 'out', 'sent', NULL, NULL, NULL, 'pick', NULL, 'Date%3A+Mon%2C+8+Oct+2007+13%3A11%3A29+%2B0300%0AReturn-Path%3A+lord_pgp%40abv.bg%0ATo%3A+%3D%3FUTF-8%3FB%3F0KHQtdGA0LPQtdC5INCY0L3RgtC10LPRgNCw0Ls%3D%3F%3D+%3Cpeter.peshev%40livesoft-bg.com%3E%0AFrom%3A+Administrator+%3Clord_pgp%40abv.bg%3E%0AReply-to%3A+Administrator+%3Clord_pgp%40abv.bg%3E%0ASubject%3A+%3D%3FUTF-8%3FB%3F0KLQtdGB0YI%3D%3F%3D%0AMessage-ID%3A+%3C86df4211348624888570d7b81bcc344a%40alphaprint.liveerp.org%3E%0AX-Priority%3A+3%0AX-Mailer%3A+PHPMailer+%5Bversion+1.73%5D%0AMIME-Version%3A+1.0%0AContent-Type%3A+multipart%2Falternative%3B%0A%09boundary%3D%22b1_86df4211348624888570d7b81bcc344a%22%0A%0A%0A--b1_86df4211348624888570d7b81bcc344a%0AContent-Type%3A+text%2Fplain%3B+charset+%3D+%22UTF-8%22%0AContent-Transfer-Encoding%3A+quoted-printable%0A%0A%3DD0%3DA2%3DD0%3DB5%3DD1%3D81%3DD1%3D82%3DD0%3DBE%3DD0%3DB2%3DD0%3DBE+%3D%0A%3DD1%3D81%3DD1%3D8A%3DD0%3DBE%3DD0%3DB1%3DD1%3D89%3DD0%3DB5%3DD0%3DBD%3DD0%3DB8%3DD0%3DB5%0A%0A%0A--b1_86df4211348624888570d7b81bcc344a%0AContent-Type%3A+text%2Fhtml%3B+charset+%3D+%22UTF-8%22%0AContent-Transfer-Encoding%3A+quoted-printable%0A%0A%3Chtml%3E%3Cbody%3E%3DD0%3DA2%3DD0%3DB5%3DD1%3D81%3DD1%3D82%3DD0%3DBE%3DD0%3DB2%3DD0%3DBE+%3D%0A%3DD1%3D81%3DD1%3D8A%3DD0%3DBE%3DD0%3DB1%3DD1%3D89%3DD0%3DB5%3DD0%3DBD%3DD0%3DB8%3DD0%3DB5%3C%2Fbody%3E%3C%2Fhtml%3E%0A%0A%0A%0A--b1_86df4211348624888570d7b81bcc344a--%0A', 1),
('8e9f5f2a-2eec-905f-fc72-470a054e04b9', '2007-10-08 10:23:01', '2007-10-11 13:03:23', 'e6215035-1bef-82fe-0c85-470a0358b1fb', 'e6215035-1bef-82fe-0c85-470a0358b1fb', 'e6215035-1bef-82fe-0c85-470a0358b1fb', 'Тест', '2007-10-08', '10:23:00', 'Accounts', NULL, 'Тестово съобщение', '<html><body>Тестово съобщение</body></html>', 'panayot.panayotov@liveerp.org', 'Panayot Panayotov', 'Николай Рачев <nick.rachev@liveerp.org>; ', NULL, NULL, '80f6ca47-d6b2-401e-9135-46d7c9d84a0f; ', 'Николай Рачев; ', '; ', NULL, NULL, NULL, NULL, NULL, NULL, 'out', 'sent', NULL, NULL, NULL, 'pick', NULL, 'Date%3A+Mon%2C+8+Oct+2007+13%3A23%3A01+%2B0300%0AReturn-Path%3A+panayot.panayotov%40liveerp.org%0ATo%3A+%3D%3FUTF-8%3FB%3F0J3QuNC60L7Qu9Cw0Lkg0KDQsNGH0LXQsg%3D%3D%3F%3D+%3Cnick.rachev%40liveerp.org%3E%0AFrom%3A+Panayot+Panayotov+%3Cpanayot.panayotov%40liveerp.org%3E%0AReply-to%3A+Panayot+Panayotov+%3Cpanayot.panayotov%40liveerp.org%3E%0ASubject%3A+%3D%3FUTF-8%3FB%3F0KLQtdGB0YI%3D%3F%3D%0AMessage-ID%3A+%3C51c9364b585b0562069475b2e07781f2%40alphaprint.liveerp.org%3E%0AX-Priority%3A+3%0AX-Mailer%3A+PHPMailer+%5Bversion+1.73%5D%0AMIME-Version%3A+1.0%0AContent-Type%3A+multipart%2Falternative%3B%0A%09boundary%3D%22b1_51c9364b585b0562069475b2e07781f2%22%0A%0A%0A--b1_51c9364b585b0562069475b2e07781f2%0AContent-Type%3A+text%2Fplain%3B+charset+%3D+%22UTF-8%22%0AContent-Transfer-Encoding%3A+quoted-printable%0A%0A%3DD0%3DA2%3DD0%3DB5%3DD1%3D81%3DD1%3D82%3DD0%3DBE%3DD0%3DB2%3DD0%3DBE+%3D%0A%3DD1%3D81%3DD1%3D8A%3DD0%3DBE%3DD0%3DB1%3DD1%3D89%3DD0%3DB5%3DD0%3DBD%3DD0%3DB8%3DD0%3DB5%0A%0A%0A--b1_51c9364b585b0562069475b2e07781f2%0AContent-Type%3A+text%2Fhtml%3B+charset+%3D+%22UTF-8%22%0AContent-Transfer-Encoding%3A+quoted-printable%0A%0A%3Chtml%3E%3Cbody%3E%3DD0%3DA2%3DD0%3DB5%3DD1%3D81%3DD1%3D82%3DD0%3DBE%3DD0%3DB2%3DD0%3DBE+%3D%0A%3DD1%3D81%3DD1%3D8A%3DD0%3DBE%3DD0%3DB1%3DD1%3D89%3DD0%3DB5%3DD0%3DBD%3DD0%3DB8%3DD0%3DB5%3C%2Fbody%3E%3C%2Fhtml%3E%0A%0A%0A%0A--b1_51c9364b585b0562069475b2e07781f2--%0A', 1),
('4cb6b746-5848-f9f2-81be-470e1bca58a5', '2007-10-11 12:46:07', '2007-10-11 13:03:43', 'db72618d-35da-19ad-1b67-46f37f819f41', 'db72618d-35da-19ad-1b67-46f37f819f41', 'db72618d-35da-19ad-1b67-46f37f819f41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'archived', NULL, NULL, NULL, NULL, 'pick', NULL, NULL, 1),
('215cbf10-1599-1c41-d78b-470e1b8a3b0f', '2007-10-11 12:46:14', '2007-10-11 13:03:23', 'db72618d-35da-19ad-1b67-46f37f819f41', 'db72618d-35da-19ad-1b67-46f37f819f41', 'db72618d-35da-19ad-1b67-46f37f819f41', 'test ot Panayot', '2007-10-08', '10:04:00', NULL, NULL, 'test', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n<div><font face="Arial" size="2">test</font></div>\r\n', 'panayot.panayotov@livesoft-bg.com', 'Panayot Panayotov <panayot.panayotov@livesoft-bg.com>', 'nick.rachev@liveerp.org ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inbound', 'read', '<000601c80992$96f82860$2101a8c0@PANCHO>', 'Panayot Panayotov <panayot.panayotov@livesoft-bg.com>', NULL, 'pick', '141f932f-4b7f-a188-85c8-46f37f0bd8f2', 'Return-path: <panayot.panayotov@livesoft-bg.com>\r\nEnvelope-to: nick.rachev@liveerp.org\r\nDelivery-date: Mon, 08 Oct 2007 13:04:24 +0300\r\nReceived: from [83.228.15.91] (helo=PANCHO)\r\n	by aron.icnhost.net with esmtpa (Exim 4.68)\r\n	(envelope-from <panayot.panayotov@livesoft-bg.com>)\r\n	id 1IepTL-000076-RN\r\n	for nick.rachev@liveerp.org; Mon, 08 Oct 2007 13:04:24 +0300\r\nMessage-ID: <000601c80992$96f82860$2101a8c0@PANCHO>\r\nFrom: "Panayot Panayotov" <panayot.panayotov@livesoft-bg.com>\r\nTo: <nick.rachev@liveerp.org>\r\nSubject: test ot Panayot\r\nDate: Mon, 8 Oct 2007 13:04:15 +0300\r\nMIME-Version: 1.0\r\nContent-Type: multipart/alternative;\r\n	boundary="----=_NextPart_000_0003_01C809AB.BAB21630"\r\nX-Priority: 3\r\nX-MSMail-Priority: Normal\r\nX-Mailer: Microsoft Outlook Express 6.00.2900.3138\r\nX-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.3138\r\n\r\nThis is a multi-part message in MIME format.\r\n\r\n------=_NextPart_000_0003_01C809AB.BAB21630\r\nContent-Type: text/plain;\r\n	charset="koi8-r"\r\nContent-Transfer-Encoding: quoted-printable\r\n\r\ntest\r\n------=_NextPart_000_0003_01C809AB.BAB21630\r\nContent-Type: text/html;\r\n	charset="koi8-r"\r\nContent-Transfer-Encoding: quoted-printable\r\n\r\n<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">\r\n<HTML><HEAD>\r\n<META http-equiv=3DContent-Type content=3D"text/html; charset=3Dkoi8-r">\r\n<META content=3D"MSHTML 6.00.6000.16525" name=3DGENERATOR>\r\n<STYLE></STYLE>\r\n</HEAD>\r\n<BODY bgColor=3D#ffffff>\r\n<DIV><FONT face=3DArial size=3D2>test</FONT></DIV></BODY></HTML>\r\n\r\n------=_NextPart_000_0003_01C809AB.BAB21630--\r\n\r\n', 1),
('38eec719-a05a-b43e-7382-470e1bf2f3d5', '2007-10-11 12:46:14', '2007-10-11 13:03:23', 'db72618d-35da-19ad-1b67-46f37f819f41', 'db72618d-35da-19ad-1b67-46f37f819f41', 'db72618d-35da-19ad-1b67-46f37f819f41', 'Тест', '2007-10-08', '10:23:00', NULL, NULL, 'Тестово съобщение\r\n\r\n', 'Тестово съобщение\r\n\r\n\r\n', 'panayot.panayotov@liveerp.org', 'Panayot Panayotov <panayot.panayotov@liveerp.org>', 'nick.rachev@liveerp.org ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inbound', 'replied', '<ccfa5ea497e69735403707a53b06c469@alphaprint.liveerp.org>', 'Panayot Panayotov <panayot.panayotov@liveerp.org>', NULL, 'pick', '141f932f-4b7f-a188-85c8-46f37f0bd8f2', 'Return-path: <panayot.panayotov@liveerp.org>\r\nEnvelope-to: nick.rachev@liveerp.org\r\nDelivery-date: Mon, 08 Oct 2007 13:23:01 +0300\r\nReceived: from nobody by aron.icnhost.net with local (Exim 4.68)\r\n	(envelope-from <panayot.panayotov@liveerp.org>)\r\n	id 1IeplN-0001hO-K1\r\n	for nick.rachev@liveerp.org; Mon, 08 Oct 2007 13:23:01 +0300\r\nDate: Mon, 8 Oct 2007 13:23:01 +0300\r\nTo: "=?UTF-8?Q?=D0=9D=D0=B8=D0=BA=D0=BE=D0=BB=D0=B0=D0=B9=20=D0=A0=D0=B0=D1=87?=\\r\\n =?UTF-8?Q?=D0=B5=D0=B2?=" <nick.rachev@liveerp.org>\r\nFrom: Panayot Panayotov <panayot.panayotov@liveerp.org>\r\nReply-to: Panayot Panayotov <panayot.panayotov@liveerp.org>\r\nSubject: =?UTF-8?Q?=D0=A2=D0=B5=D1=81=D1=82?=\r\nMessage-ID: <ccfa5ea497e69735403707a53b06c469@alphaprint.liveerp.org>\r\nX-Priority: 3\r\nX-Mailer: PHPMailer [version 1.73]\r\nMIME-Version: 1.0\r\nContent-Type: multipart/alternative;\r\n	boundary="b1_ccfa5ea497e69735403707a53b06c469"\r\n\r\n\r\n--b1_ccfa5ea497e69735403707a53b06c469\r\nContent-Type: text/plain; charset = "UTF-8"\r\nContent-Transfer-Encoding: quoted-printable\r\n\r\n=D0=A2=D0=B5=D1=81=D1=82=D0=BE=D0=B2=D0=BE =\r\n=D1=81=D1=8A=D0=BE=D0=B1=D1=89=D0=B5=D0=BD=D0=B8=D0=B5\r\n\r\n\r\n--b1_ccfa5ea497e69735403707a53b06c469\r\nContent-Type: text/html; charset = "UTF-8"\r\nContent-Transfer-Encoding: quoted-printable\r\n\r\n<html><body>=D0=A2=D0=B5=D1=81=D1=82=D0=BE=D0=B2=D0=BE =\r\n=D1=81=D1=8A=D0=BE=D0=B1=D1=89=D0=B5=D0=BD=D0=B8=D0=B5</body></html>\r\n\r\n\r\n\r\n--b1_ccfa5ea497e69735403707a53b06c469--\r\n', 1),
('8470780b-8314-ada4-6414-470e1cd21732', '2007-10-11 12:50:39', '2007-10-11 13:03:22', 'db72618d-35da-19ad-1b67-46f37f819f41', 'db72618d-35da-19ad-1b67-46f37f819f41', 'db72618d-35da-19ad-1b67-46f37f819f41', 'RE: Тест', '2007-10-11', '12:50:00', 'Accounts', NULL, '> Тестово съобщение\r\n', '<html><body>albala<br /><br />> От: Panayot Panayotov <br />> Дата на изпращане: <br />> До: nick.rachev@liveerp.org <br />> Тема: Тест<br />> <br />> <br /><em>> Тестово съобщение<br /></em></body></html>', 'nick.rachev@liveerp.org', 'Nick Rachev', 'panayot.panayotov@liveerp.org ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'out', 'sent', NULL, NULL, NULL, 'pick', NULL, 'Date%3A+Thu%2C+11+Oct+2007+15%3A50%3A39+%2B0300%0AReturn-Path%3A+nick.rachev%40liveerp.org%0ATo%3A+panayot.panayotov%40liveerp.org%0AFrom%3A+Nick+Rachev+%3Cnick.rachev%40liveerp.org%3E%0AReply-to%3A+Nick+Rachev+%3Cnick.rachev%40liveerp.org%3E%0ASubject%3A+%3D%3FUTF-8%3FB%3FUkU6INCi0LXRgdGC%3F%3D%0AMessage-ID%3A+%3C11106d1b4835ef1b7de41bcdd0029323%40alphaprint.liveerp.org%3E%0AX-Priority%3A+3%0AX-Mailer%3A+PHPMailer+%5Bversion+1.73%5D%0AMIME-Version%3A+1.0%0AContent-Type%3A+multipart%2Falternative%3B%0A%09boundary%3D%22b1_11106d1b4835ef1b7de41bcdd0029323%22%0A%0A%0A--b1_11106d1b4835ef1b7de41bcdd0029323%0AContent-Type%3A+text%2Fplain%3B+charset+%3D+%22UTF-8%22%0AContent-Transfer-Encoding%3A+quoted-printable%0A%0A%3E+%3DD0%3DA2%3DD0%3DB5%3DD1%3D81%3DD1%3D82%3DD0%3DBE%3DD0%3DB2%3DD0%3DBE+%3D%0A%3DD1%3D81%3DD1%3D8A%3DD0%3DBE%3DD0%3DB1%3DD1%3D89%3DD0%3DB5%3DD0%3DBD%3DD0%3DB8%3DD0%3DB5%0A%0A%0A--b1_11106d1b4835ef1b7de41bcdd0029323%0AContent-Type%3A+text%2Fhtml%3B+charset+%3D+%22UTF-8%22%0AContent-Transfer-Encoding%3A+quoted-printable%0A%0A%3Chtml%3E%3Cbody%3Ealbala%3Cbr+%2F%3E%3Cbr+%2F%3E%3E+%3DD0%3D9E%3DD1%3D82%3A+Panayot+Panayotov+%3Cbr+%2F%3E%3E+%3D%0A%3DD0%3D94%3DD0%3DB0%3DD1%3D82%3DD0%3DB0+%3DD0%3DBD%3DD0%3DB0+%3D%0A%3DD0%3DB8%3DD0%3DB7%3DD0%3DBF%3DD1%3D80%3DD0%3DB0%3DD1%3D89%3DD0%3DB0%3DD0%3DBD%3DD0%3DB5%3A+%3Cbr+%2F%3E%3E+%3D%0A%3DD0%3D94%3DD0%3DBE%3A+nick.rachev%40liveerp.org+%3Cbr+%2F%3E%3E+%3DD0%3DA2%3DD0%3DB5%3DD0%3DBC%3DD0%3DB0%3A+%3D%0A%3DD0%3DA2%3DD0%3DB5%3DD1%3D81%3DD1%3D82%3Cbr+%2F%3E%3E+%3Cbr+%2F%3E%3E+%3Cbr+%2F%3E%3Cem%3E%3E+%3D%0A%3DD0%3DA2%3DD0%3DB5%3DD1%3D81%3DD1%3D82%3DD0%3DBE%3DD0%3DB2%3DD0%3DBE+%3D%0A%3DD1%3D81%3DD1%3D8A%3DD0%3DBE%3DD0%3DB1%3DD1%3D89%3DD0%3DB5%3DD0%3DBD%3DD0%3DB8%3DD0%3DB5%3Cbr+%3D%0A%2F%3E%3C%2Fem%3E%3C%2Fbody%3E%3C%2Fhtml%3E%0A%0A%0A%0A--b1_11106d1b4835ef1b7de41bcdd0029323--%0A', 1),
('93f5025d-7c3f-7217-d13e-470e1fa8825c', '2007-10-11 13:05:28', '2007-10-11 13:05:28', 'e6215035-1bef-82fe-0c85-470a0358b1fb', 'db72618d-35da-19ad-1b67-46f37f819f41', 'db72618d-35da-19ad-1b67-46f37f819f41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'archived', NULL, NULL, NULL, NULL, 'pick', NULL, NULL, 0),
('9ef49cac-0134-c4c9-e874-470e1fbb54b6', '2007-10-11 13:05:50', '2007-10-11 13:05:50', 'e6215035-1bef-82fe-0c85-470a0358b1fb', 'db72618d-35da-19ad-1b67-46f37f819f41', 'db72618d-35da-19ad-1b67-46f37f819f41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'archived', NULL, NULL, NULL, NULL, 'pick', NULL, NULL, 0);

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

INSERT INTO `emails_contacts` (`id`, `email_id`, `contact_id`, `date_modified`, `deleted`) VALUES 
('b9eae228-e892-e2ea-d332-470a026f07c9', '453ff74d-34ba-83b1-4cbf-470a02d3b65a', 'f0ad7d17-b2ad-342f-cb50-4709e9cb9715', '2007-10-11 13:03:23', 1),
('ac5b326a-5301-3fdb-3ad9-470a05f605c5', '8e9f5f2a-2eec-905f-fc72-470a054e04b9', '80f6ca47-d6b2-401e-9135-46d7c9d84a0f', '2007-10-11 13:03:23', 1);

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

INSERT INTO `emails_users` (`id`, `email_id`, `user_id`, `date_modified`, `deleted`) VALUES 
('d1aeff64-5add-491e-fec9-46f77785aefb', '408918de-bc1a-288a-ba75-46f7770744df', '1', '2007-09-24 08:41:53', 1),
('791feb71-a910-3aba-b3aa-46f7763fdacb', '15ded2e1-456e-1084-c0a6-46f776bebea0', '1', '2007-09-24 08:41:54', 1),
('cb7e93e7-1e87-5a54-09a0-46f77555a8fb', 'aca3b3a2-de1d-42e2-574a-46f775fcf815', '1', '2007-09-24 08:41:54', 1),
('7af01c64-31c6-320e-800a-46f3c62d2640', '612e4d6f-a362-b4c7-b81e-46f3c6d31674', '1', '2007-10-11 13:03:24', 1),
('ad1e5a55-861d-65b1-5980-46f384403975', '6bf74fd6-0926-77f8-2a7e-46f38405dc22', '1', '2007-09-21 08:52:28', 1),
('e537e736-de08-bd65-b284-46f384a940e2', '739aef2b-7119-ab10-a75f-46f384562c0e', '1', '2007-09-24 08:41:54', 1),
('c02002cb-00ab-78dd-085d-46f777fdb926', 'c5a8976d-4b5f-07a9-0ee8-46f77728e196', '1', '2007-09-24 08:41:54', 1),
('bd07a83b-a7c2-355e-21d4-46f777b0ed0e', '260268bf-cf80-2094-cf04-46f777b7ca3e', '1', '2007-09-24 08:41:53', 1),
('6b9154fc-9ab8-c106-df46-46f77820cd83', '3f691e84-f5af-d082-0856-46f7773efba7', '1', '2007-10-11 13:03:24', 1),
('355af9fb-99e9-1c67-faaf-46f77f040b36', 'c048bb41-c1e8-79d7-672c-46f77fe4ecb2', '1', '2007-10-11 13:03:23', 1),
('98a08a59-ee0e-8b7d-d63d-46f7c09a0002', '7561562e-60cf-3107-2787-46f7c0295d64', '1', '2007-10-11 13:03:24', 1),
('e421b57b-1928-8312-b9c7-46f7c0f47996', 'cbb74bd4-a762-836b-b830-46f7c00e3fa6', '1', '2007-10-11 13:03:48', 1),
('561e576e-eb16-3f5f-83dd-46f7c1cebf5e', '45ab79ed-84e3-0113-c3b5-46f7c13bdb7e', '1', '2007-10-11 13:03:48', 1),
('e6f7b57d-436d-904b-38c2-46f7c15e747c', 'db2ec33c-20f4-5446-c391-46f7c1bc5eb3', '1', '2007-10-11 13:03:48', 1),
('1ed16e9d-2ff1-23c1-e027-46f7c1493962', '541d35d9-42f4-1b58-23ab-46f7c12fd258', '1', '2007-10-11 13:03:23', 1),
('bd887d50-ab08-85f5-0380-46f7c273eedb', '560a04a2-ecf5-8828-8531-46f7c21d5443', '1', '2007-10-11 13:03:23', 1),
('63cc0386-c3b0-3d5b-2d7a-46f7c3a367d7', 'afb0542d-3375-1efa-902e-46f7c351af5f', '1', '2007-10-11 13:03:23', 1),
('785fcb51-4a35-0ac0-c711-46f7cee01fa4', 'b16fc076-5c4d-0dab-f6da-46f7ce47d1d9', '1', '2007-10-11 13:03:48', 1),
('c7981ee5-f74e-f1c3-4edc-46f7cfd096c3', '99550e81-94bd-d20d-6fcd-46f7cf85bac1', '1', '2007-10-11 13:03:48', 1),
('a6c217f7-da20-7040-a698-470a022bfd50', '453ff74d-34ba-83b1-4cbf-470a02d3b65a', '1', '2007-10-11 13:03:23', 1),
('a2f51b33-0c78-f07e-1314-470a0592020a', '8e9f5f2a-2eec-905f-fc72-470a054e04b9', 'e6215035-1bef-82fe-0c85-470a0358b1fb', '2007-10-11 13:03:23', 1),
('e495ed6b-392f-6805-8f85-470e1ccf0431', '8470780b-8314-ada4-6414-470e1cd21732', 'db72618d-35da-19ad-1b67-46f37f819f41', '2007-10-11 13:03:23', 1);

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

INSERT INTO `feeds` (`id`, `deleted`, `date_entered`, `date_modified`, `modified_user_id`, `assigned_user_id`, `created_by`, `title`, `description`, `url`) VALUES 
('e8bc00cd-cbb7-280c-0aa5-41e2df9c988d', 0, '2005-01-10 12:01:58', '2005-01-10 12:01:58', '1', '1', NULL, 'Linux Today', NULL, 'http://linuxtoday.com/backend/biglt.rss'),
('a93b3610-0f3c-a4cb-6985-41e2df65b1c8', 0, '2005-01-10 12:02:07', '2005-01-10 12:02:07', '1', '1', NULL, 'MacCentral News', NULL, 'http://maccentral.macworld.com/mnn.cgi'),
('dde361bb-7d4a-cc59-8cce-41e2dfcf3c1b', 0, '2005-01-10 12:02:21', '2005-01-10 12:02:21', '1', '1', NULL, 'MacMerc.com', NULL, 'http://macmerc.com/backend.php'),
('925ef6eb-7bbf-2766-cc7a-41e2df228578', 0, '2005-01-10 12:02:30', '2005-01-10 12:02:30', '1', '1', NULL, 'ABC News: Business', NULL, 'http://my.abcnews.go.com/rsspublic/business_rss20.xml'),
('dbab5f6c-d0da-4e67-478c-41e2df8b122c', 0, '2005-01-10 12:02:34', '2005-01-10 12:02:34', '1', '1', NULL, 'ABC News: Entertainment', NULL, 'http://my.abcnews.go.com/rsspublic/entertainment_rss20.xml'),
('7eb0e2e7-28c5-21cc-31f9-41e2dfbf3713', 0, '2005-01-10 12:02:39', '2005-01-10 12:02:39', '1', '1', NULL, 'ABC News: GMA', NULL, 'http://my.abcnews.go.com/rsspublic/gma_rss20.xml'),
('e8066ab5-3b23-fe0d-614e-41e2df558ec8', 0, '2005-01-10 12:02:43', '2005-01-10 12:02:43', '1', '1', NULL, 'ABC News: Health', NULL, 'http://my.abcnews.go.com/rsspublic/health_rss20.xml'),
('36b67446-880f-d6a5-e16e-41e2df3bd857', 0, '2005-01-10 12:02:48', '2005-01-10 12:02:48', '1', '1', NULL, 'ABC News: Nightline', NULL, 'http://my.abcnews.go.com/rsspublic/nightline_rss20.xml'),
('83235e59-0a98-1777-2a9c-41e2df9a09ce', 0, '2005-01-10 12:02:52', '2005-01-10 12:02:52', '1', '1', NULL, 'ABC News: Politics', NULL, 'http://my.abcnews.go.com/rsspublic/politics_rss20.xml'),
('c2e3db4d-c176-53bf-1aac-41e2df1a1450', 0, '2005-01-10 12:02:56', '2005-01-10 12:02:56', '1', '1', NULL, 'ABC News: Primetime', NULL, 'http://my.abcnews.go.com/rsspublic/primetime_rss20.xml'),
('4550e09a-b93e-092f-80ec-41e2dfc550f7', 0, '2005-01-10 12:03:01', '2005-01-10 12:03:01', '1', '1', NULL, 'ABC News: Technology', NULL, 'http://my.abcnews.go.com/rsspublic/scitech_rss20.xml'),
('a164cc3f-435e-0a59-3e8c-41e2dfebd62f', 0, '2005-01-10 12:03:05', '2005-01-10 12:03:05', '1', '1', NULL, 'ABC News: Travel', NULL, 'http://my.abcnews.go.com/rsspublic/travel_rss20.xml'),
('28572e36-b2fa-cd0e-fbec-41e2df1b84c0', 0, '2005-01-10 12:03:15', '2005-01-10 12:03:15', '1', '1', NULL, 'ABC News: ThisWeek', NULL, 'http://my.abcnews.go.com/rsspublic/tw_rss20.xml'),
('a50a67a3-73fd-c3b7-5ee6-41e2dffe5ec5', 0, '2005-01-10 12:03:19', '2005-01-10 12:03:19', '1', '1', NULL, 'ABC News: US', NULL, 'http://my.abcnews.go.com/rsspublic/us_rss20.xml'),
('ef110198-40fe-1799-363a-41e2df5c1007', 0, '2005-01-10 12:03:24', '2005-01-10 12:03:24', '1', '1', NULL, 'ABC News: WNT', NULL, 'http://my.abcnews.go.com/rsspublic/wnt_rss20.xml'),
('5b71af07-470d-95c3-8afd-41e2df76f015', 0, '2005-01-10 12:03:28', '2005-01-10 12:03:28', '1', '1', NULL, 'ABC News: International', NULL, 'http://my.abcnews.go.com/rsspublic/world_rss20.xml'),
('16c540cc-c02a-4311-d64c-41e2dfdbd596', 0, '2005-01-10 12:03:29', '2005-01-10 12:03:29', '1', '1', NULL, 'BBC News | Africa | World Edition', NULL, 'http://news.bbc.co.uk/rss/newsonline_world_edition/africa/rss091.xml'),
('bc2c7c1f-220d-400a-c383-41e2dfc79697', 0, '2005-01-10 12:03:29', '2005-01-10 12:03:29', '1', '1', NULL, 'BBC News | Americas | World Edition', NULL, 'http://news.bbc.co.uk/rss/newsonline_world_edition/americas/rss091.xml'),
('81bb8625-d0c5-07f1-04da-41e2df5fc5e2', 0, '2005-01-10 12:03:30', '2005-01-10 12:03:30', '1', '1', NULL, 'BBC News | Asia-Pacific | World Edition', NULL, 'http://news.bbc.co.uk/rss/newsonline_world_edition/asia-pacific/rss091.xml'),
('3a68ade5-eba9-dcf7-b8bc-41e2df75bea6', 0, '2005-01-10 12:03:31', '2005-01-10 12:03:31', '1', '1', NULL, 'BBC News | Business | World Edition', NULL, 'http://news.bbc.co.uk/rss/newsonline_world_edition/business/rss091.xml'),
('c5ae7e2a-c2c8-a261-8f4f-41e2dfad01f6', 0, '2005-01-10 12:03:31', '2005-01-10 12:03:31', '1', '1', NULL, 'BBC News | Entertainment | World Edition', NULL, 'http://news.bbc.co.uk/rss/newsonline_world_edition/entertainment/rss091.xml'),
('7da60a3e-c6b3-4d4a-0338-41e2df90838a', 0, '2005-01-10 12:03:32', '2005-01-10 12:03:32', '1', '1', NULL, 'BBC News | Europe | World Edition', NULL, 'http://news.bbc.co.uk/rss/newsonline_world_edition/europe/rss091.xml'),
('3191a790-8894-ea0a-fad6-41e2df8b7d62', 0, '2005-01-10 12:03:33', '2005-01-10 12:03:33', '1', '1', NULL, 'BBC News | News Front Page | World Edition', NULL, 'http://news.bbc.co.uk/rss/newsonline_world_edition/front_page/rss091.xml'),
('d0089e80-9da9-93d5-6999-41e2df85a074', 0, '2005-01-10 12:03:33', '2005-01-10 12:03:33', '1', '1', NULL, 'BBC News | Health | World Edition', NULL, 'http://news.bbc.co.uk/rss/newsonline_world_edition/health/rss091.xml'),
('9582dea7-c0dd-c5cb-07eb-41e2df38591c', 0, '2005-01-10 12:03:34', '2005-01-10 12:03:34', '1', '1', NULL, 'BBC News | Middle East | World Edition', NULL, 'http://news.bbc.co.uk/rss/newsonline_world_edition/middle_east/rss091.xml'),
('1c853682-6da0-1ebf-5a4b-41e2df0c6ae0', 0, '2005-01-10 12:03:35', '2005-01-10 12:03:35', '1', '1', NULL, 'BBC News | Programmes | World Edition', NULL, 'http://news.bbc.co.uk/rss/newsonline_world_edition/programmes/rss091.xml'),
('bd3d3b2a-3b2b-1b1c-b833-41e2dfed10b2', 0, '2005-01-10 12:03:35', '2005-01-10 12:03:35', '1', '1', NULL, 'BBC News | Science/Nature | World Edition', NULL, 'http://news.bbc.co.uk/rss/newsonline_world_edition/science/nature/rss091.xml'),
('77ea97e9-f224-ae60-e2f3-41e2dfa83f37', 0, '2005-01-10 12:03:36', '2005-01-10 12:03:36', '1', '1', NULL, 'BBC News | South Asia | World Edition', NULL, 'http://news.bbc.co.uk/rss/newsonline_world_edition/south_asia/rss091.xml'),
('15d960df-ef6b-bb2a-6bc7-41e2df301151', 0, '2005-01-10 12:03:37', '2005-01-10 12:03:37', '1', '1', NULL, 'BBC News | Have Your Say | World Edition', NULL, 'http://news.bbc.co.uk/rss/newsonline_world_edition/talking_point/rss091.xml'),
('a441427a-dded-20ec-14c0-41e2df00b0ca', 0, '2005-01-10 12:03:37', '2005-01-10 12:03:37', '1', '1', NULL, 'BBC News | Technology | World Edition', NULL, 'http://news.bbc.co.uk/rss/newsonline_world_edition/technology/rss091.xml'),
('4c8f056f-3eeb-7c81-89df-41e2dfdc1c14', 0, '2005-01-10 12:03:38', '2005-01-10 12:03:38', '1', '1', NULL, 'BBC News | UK News | Magazine | World Edition', NULL, 'http://news.bbc.co.uk/rss/newsonline_world_edition/uk_news/magazine/rss091.xml'),
('3a000f75-1443-8f26-018e-41e2df41bb7e', 0, '2005-01-10 12:03:39', '2005-01-10 12:03:39', '1', '1', NULL, 'BBC News | UK | World Edition', NULL, 'http://news.bbc.co.uk/rss/newsonline_world_edition/uk_news/rss091.xml'),
('b18a157a-9129-126a-3ae6-41e2df5bf062', 0, '2005-01-10 12:03:39', '2005-01-10 12:03:39', '1', '1', NULL, 'BBC News | Week at a Glance | World Edition', NULL, 'http://news.bbc.co.uk/rss/newsonline_world_edition/week_at-a-glance/rss091.xml'),
('5a354efc-6fd6-e3a9-a39d-41e2dfed604c', 0, '2005-01-10 12:03:45', '2005-01-10 12:03:45', '1', '1', NULL, 'Scotsman.com News - Alcohol & binge drinking', NULL, 'http://news.scotsman.com/topics.cfm?tid=585&format=rss'),
('52a9de11-f2fe-5a6d-539c-41e2dff841e5', 0, '2005-01-10 12:03:46', '2005-01-10 12:03:46', '1', '1', NULL, 'CNET News.com - Personal Technology', NULL, 'http://rss.com.com/2547-1040-0-5.xml'),
('e4a450fe-6602-2a1e-3ef2-41e2df356543', 0, '2005-01-10 12:03:46', '2005-01-10 12:03:46', '1', '1', NULL, 'Yahoo! News: Technology - Apple/Macintosh', NULL, 'http://rss.news.yahoo.com/rss/applecomputer'),
('573d09a7-7e57-b158-56bf-41e2df105ef4', 0, '2005-01-10 12:03:47', '2005-01-10 12:03:47', '1', '1', NULL, 'Yahoo! News: Entertainment - Arts and Stage', NULL, 'http://rss.news.yahoo.com/rss/arts'),
('a52e6677-1fa7-85fa-e4c6-41e2df9fbcca', 0, '2005-01-10 12:03:47', '2005-01-10 12:03:47', '1', '1', NULL, 'Yahoo! News: Business', NULL, 'http://rss.news.yahoo.com/rss/business'),
('a66852ab-d691-b6be-a3e0-41e2dfdb2fd7', 0, '2005-01-10 12:03:48', '2005-01-10 12:03:48', '1', '1', NULL, 'Yahoo! News: Cellular Phones', NULL, 'http://rss.news.yahoo.com/rss/cellphones'),
('211ea34b-c571-6bbc-22b0-41e2df130f37', 0, '2005-01-10 12:03:49', '2005-01-10 12:03:49', '1', '1', NULL, 'Yahoo! News: Entertainment - Dear Abby', NULL, 'http://rss.news.yahoo.com/rss/dearabby'),
('8d740c93-ee6b-36d6-a86d-41e2df99cf90', 0, '2005-01-10 12:03:49', '2005-01-10 12:03:49', '1', '1', NULL, 'Yahoo! News: Digital Photography', NULL, 'http://rss.news.yahoo.com/rss/digitalimaging'),
('7bc75358-93c7-5aeb-88f6-41e2df228bca', 0, '2005-01-10 12:03:50', '2005-01-10 12:03:50', '1', '1', NULL, 'Yahoo! News: Digital Music', NULL, 'http://rss.news.yahoo.com/rss/digitalmusic'),
('4537c91f-a52d-a98d-448a-41e2df099679', 0, '2005-01-10 12:03:51', '2005-01-10 12:03:51', '1', '1', NULL, 'Yahoo! News: Digital Video/TV Technology', NULL, 'http://rss.news.yahoo.com/rss/digitalvideo'),
('152a8211-c6a2-13b7-e8b6-41e2dfbb8c86', 0, '2005-01-10 12:03:52', '2005-01-10 12:03:52', '1', '1', NULL, 'Yahoo! News: Business - Earnings', NULL, 'http://rss.news.yahoo.com/rss/earnings'),
('a6050911-0292-5625-9ce2-41e2dfebccef', 0, '2005-01-10 12:03:53', '2005-01-10 12:03:53', '1', '1', NULL, 'Yahoo! News: Business - Economy', NULL, 'http://rss.news.yahoo.com/rss/economy'),
('a8ad7517-8eaa-08ea-f162-41e2dfd39386', 0, '2005-01-10 12:03:53', '2005-01-10 12:03:53', '1', '1', NULL, 'Yahoo! News: Presidential Election', NULL, 'http://rss.news.yahoo.com/rss/elections'),
('a3240865-6431-2f39-2057-41e2dfa726a0', 0, '2005-01-10 12:03:54', '2005-01-10 12:03:54', '1', '1', NULL, 'Yahoo! News: Entertainment - Industry', NULL, 'http://rss.news.yahoo.com/rss/enindustry'),
('4b590300-8679-61c0-cc2f-41e2dfddd876', 0, '2005-01-10 12:03:55', '2005-01-10 12:03:55', '1', '1', NULL, 'Yahoo! News: Technology - Enterprise', NULL, 'http://rss.news.yahoo.com/rss/enterprise'),
('a9cf9f87-69b2-717a-a8d2-41e2dffffa44', 0, '2005-01-10 12:03:55', '2005-01-10 12:03:55', '1', '1', NULL, 'Yahoo! News: Entertainment', NULL, 'http://rss.news.yahoo.com/rss/entertainment'),
('c48dea5a-b340-21da-b590-41e2dfadee26', 0, '2005-01-10 12:03:56', '2005-01-10 12:03:56', '1', '1', NULL, 'Yahoo! News: Business - European Economy', NULL, 'http://rss.news.yahoo.com/rss/eurobiz'),
('4d575816-f907-80dd-5fe5-41e2dff30297', 0, '2005-01-10 12:03:57', '2005-01-10 12:03:57', '1', '1', NULL, 'Yahoo! News: Fashion', NULL, 'http://rss.news.yahoo.com/rss/fashion'),
('9d01947b-4fa4-530b-ae22-41e2df953c95', 0, '2005-01-10 12:03:57', '2005-01-10 12:03:57', '1', '1', NULL, 'Yahoo! News: Health', NULL, 'http://rss.news.yahoo.com/rss/health'),
('186244ef-6a28-e5d3-f85f-41e2df10fc8e', 0, '2005-01-10 12:03:58', '2005-01-10 12:03:58', '1', '1', NULL, 'Yahoo! News: Reader Ratings', NULL, 'http://rss.news.yahoo.com/rss/highestrated'),
('d0c4a1f1-4235-1e44-137b-41e2dfd0f653', 0, '2005-01-10 12:03:58', '2005-01-10 12:03:58', '1', '1', NULL, 'Yahoo! News: Technology - Internet', NULL, 'http://rss.news.yahoo.com/rss/internet'),
('4ae094bf-947f-304a-4659-41e2dfa5d909', 0, '2005-01-10 12:04:00', '2005-01-10 12:04:00', '1', '1', NULL, 'Yahoo! News: Iraq', NULL, 'http://rss.news.yahoo.com/rss/iraq'),
('e7f2de1f-52ee-a6d6-4df2-41e2df2a1d06', 0, '2005-01-10 12:04:00', '2005-01-10 12:04:00', '1', '1', NULL, 'Yahoo! News: Linux/Open Source', NULL, 'http://rss.news.yahoo.com/rss/linux'),
('942cac2d-f97a-91b9-4073-41e2df6c80d5', 0, '2005-01-10 12:04:02', '2005-01-10 12:04:02', '1', '1', NULL, 'Yahoo! News: Microsoft', NULL, 'http://rss.news.yahoo.com/rss/microsoft'),
('bf300aab-0041-415e-788e-41e2df06cba4', 0, '2005-01-10 12:04:03', '2005-01-10 12:04:03', '1', '1', NULL, 'Yahoo! News: Most Emailed', NULL, 'http://rss.news.yahoo.com/rss/mostemailed'),
('8368b72f-f4e5-c4c5-f288-41e2df962d3a', 0, '2005-01-10 12:04:03', '2005-01-10 12:04:03', '1', '1', NULL, 'Yahoo! News: Most Viewed', NULL, 'http://rss.news.yahoo.com/rss/mostviewed'),
('1c3c47e4-4be0-7987-4ea9-41e2df97209b', 0, '2005-01-10 12:04:05', '2005-01-10 12:04:05', '1', '1', NULL, 'Yahoo! News: Entertainment - Movies', NULL, 'http://rss.news.yahoo.com/rss/movies'),
('6f988256-8ca1-1933-3049-41e2df3e60cc', 0, '2005-01-10 12:04:06', '2005-01-10 12:04:06', '1', '1', NULL, 'Yahoo! News: Entertainment - Music', NULL, 'http://rss.news.yahoo.com/rss/music'),
('ccd00fec-47d3-7624-d16e-41e2df044894', 0, '2005-01-10 12:04:07', '2005-01-10 12:04:07', '1', '1', NULL, 'Yahoo! News: Oddly Enough', NULL, 'http://rss.news.yahoo.com/rss/oddlyenough'),
('a4f2137a-b861-6975-c126-41e2dfb115db', 0, '2005-01-10 12:04:07', '2005-01-10 12:04:07', '1', '1', NULL, 'Yahoo! News: Op/Ed', NULL, 'http://rss.news.yahoo.com/rss/oped'),
('94f3d97c-9124-f5ca-4863-41e2dff1e0f1', 0, '2005-01-10 12:04:08', '2005-01-10 12:04:08', '1', '1', NULL, 'Yahoo! News: Business - Personal Finance', NULL, 'http://rss.news.yahoo.com/rss/personalfinance'),
('e67a951a-e02a-5e57-cbfe-41e2df1cb9eb', 0, '2005-01-10 12:04:10', '2005-01-10 12:04:10', '1', '1', NULL, 'Yahoo! News: Technology - Personal Technology', NULL, 'http://rss.news.yahoo.com/rss/personaltech'),
('53e42a4a-aad1-d0cc-00bc-41e2df76fe22', 0, '2005-01-10 12:04:11', '2005-01-10 12:04:11', '1', '1', NULL, 'Yahoo! News: Politics', NULL, 'http://rss.news.yahoo.com/rss/politics'),
('1c5392ff-668f-7a40-70b7-41e2dfca5009', 0, '2005-01-10 12:04:12', '2005-01-10 12:04:12', '1', '1', NULL, 'Yahoo! News: Entertainment - Reviews', NULL, 'http://rss.news.yahoo.com/rss/reviews'),
('a048463f-b2d8-a68b-e532-41e2df0a664a', 0, '2005-01-10 12:04:12', '2005-01-10 12:04:12', '1', '1', NULL, 'Yahoo! News: RSS & Blogging', NULL, 'http://rss.news.yahoo.com/rss/rssblog'),
('9aa02754-2c0e-e86b-9710-41e2df2e00b9', 0, '2005-01-10 12:04:13', '2005-01-10 12:04:13', '1', '1', NULL, 'Yahoo! News: Science', NULL, 'http://rss.news.yahoo.com/rss/science'),
('bf91dda9-fe5c-b0f9-dcdd-41e2dfa2fcc8', 0, '2005-01-10 12:04:14', '2005-01-10 12:04:14', '1', '1', NULL, 'Yahoo! News: Portals and Search Engines', NULL, 'http://rss.news.yahoo.com/rss/search'),
('a789b41c-d7d5-211c-5d76-41e2df3eb898', 0, '2005-01-10 12:04:15', '2005-01-10 12:04:15', '1', '1', NULL, 'Yahoo! News: Computer Security & Viruses', NULL, 'http://rss.news.yahoo.com/rss/security'),
('70f3c59d-f85f-66aa-a42f-41e2df696f49', 0, '2005-01-10 12:04:16', '2005-01-10 12:04:16', '1', '1', NULL, 'Yahoo! News: Semiconductor Industry & Servers', NULL, 'http://rss.news.yahoo.com/rss/semiconductor'),
('8b800cfb-41f6-5740-02bd-41e2df801fd9', 0, '2005-01-10 12:04:17', '2005-01-10 12:04:17', '1', '1', NULL, 'Yahoo! News: Technology - Software', NULL, 'http://rss.news.yahoo.com/rss/software'),
('b82277c3-a5bd-e2a2-313a-41e2dff0822e', 0, '2005-01-10 12:04:17', '2005-01-10 12:04:17', '1', '1', NULL, 'Yahoo! News: Technology - Spam', NULL, 'http://rss.news.yahoo.com/rss/spam'),
('26498c47-05ac-260e-414b-41e2df9ed30a', 0, '2005-01-10 12:04:18', '2005-01-10 12:04:18', '1', '1', NULL, 'Yahoo! News: Sports', NULL, 'http://rss.news.yahoo.com/rss/sports'),
('8d9cbe09-2776-3142-3c67-41e2dfc11a61', 0, '2005-01-10 12:04:18', '2005-01-10 12:04:18', '1', '1', NULL, 'Yahoo! News: Business - Stock Markets', NULL, 'http://rss.news.yahoo.com/rss/stocks'),
('df2f6c82-2eb8-80a4-6827-41e2df880575', 0, '2005-01-10 12:04:18', '2005-01-10 12:04:18', '1', '1', NULL, 'Yahoo! News: Technology', NULL, 'http://rss.news.yahoo.com/rss/tech'),
('5cf1cf76-42d6-61ba-3889-41e2df406926', 0, '2005-01-10 12:04:19', '2005-01-10 12:04:19', '1', '1', NULL, 'Yahoo! News: Top Stories', NULL, 'http://rss.news.yahoo.com/rss/topstories'),
('d9dcddc7-2d6b-df2f-7577-41e2df55a413', 0, '2005-01-10 12:04:20', '2005-01-10 12:04:20', '1', '1', NULL, 'Yahoo! News: Entertainment - Television', NULL, 'http://rss.news.yahoo.com/rss/tv'),
('561f4dd0-2359-391b-d126-41e2df4e5438', 0, '2005-01-10 12:04:21', '2005-01-10 12:04:21', '1', '1', NULL, 'Yahoo! News: U.S. National', NULL, 'http://rss.news.yahoo.com/rss/us'),
('18874c7d-9299-93cb-2ba2-41e2df1995a8', 0, '2005-01-10 12:04:22', '2005-01-10 12:04:22', '1', '1', NULL, 'Yahoo! News: Technology - Video Games', NULL, 'http://rss.news.yahoo.com/rss/videogames'),
('324f0fd4-0eb6-12e2-ecaf-41e2df28bcb9', 0, '2005-01-10 12:04:24', '2005-01-10 12:04:24', '1', '1', NULL, 'Yahoo! News: Wireless and Mobile Technology', NULL, 'http://rss.news.yahoo.com/rss/wireless'),
('6493d8af-027e-3cca-c2d6-41e2dfb9aa84', 0, '2005-01-10 12:04:24', '2005-01-10 12:04:24', '1', '1', NULL, 'Yahoo! News: World', NULL, 'http://rss.news.yahoo.com/rss/world'),
('eb881ccf-3494-a043-381a-41e2df52c73f', 0, '2005-01-10 12:04:29', '2005-01-10 12:04:29', '1', '1', NULL, 'PCWorld.com - Most Popular Downloads of the Week', NULL, 'http://rss.pcworld.com/rss/downloads.rss?period=week'),
('6bf251a7-1139-4c31-3d90-41e2df7ee6d3', 0, '2005-01-10 12:04:34', '2005-01-10 12:04:34', '1', '1', NULL, 'PCWorld.com - Latest News Stories', NULL, 'http://rss.pcworld.com/rss/latestnews.rss'),
('391c061c-5472-f753-ba89-41e2df7adaef', 0, '2005-01-10 12:04:39', '2005-01-10 12:04:39', '1', '1', NULL, 'eWEEK Database', NULL, 'http://rssnewsapps.ziffdavis.com/eweekdatabase.xml'),
('687e89bc-e055-7cc8-fee6-41e2df89541f', 0, '2005-01-10 12:04:44', '2005-01-10 12:04:44', '1', '1', NULL, 'eWEEK Developer', NULL, 'http://rssnewsapps.ziffdavis.com/eweekdeveloper.xml'),
('61ddc6c4-15c2-1e2e-b559-41e2df9ccbd9', 0, '2005-01-10 12:04:49', '2005-01-10 12:04:49', '1', '1', NULL, 'eWEEK Linux', NULL, 'http://rssnewsapps.ziffdavis.com/eweeklinux.xml'),
('388d5242-789e-015b-389e-41e2dfa00dc7', 0, '2005-01-10 12:04:54', '2005-01-10 12:04:54', '1', '1', NULL, 'eWEEK Web Services', NULL, 'http://rssnewsapps.ziffdavis.com/eweekwebservices.xml'),
('f01c7eac-7b4e-4742-2287-41e2df47daaf', 0, '2005-01-10 12:04:58', '2005-01-10 12:04:58', '1', '1', NULL, 'eWEEK Windows', NULL, 'http://rssnewsapps.ziffdavis.com/eweekwindows.xml'),
('cf40c1b2-e2fb-8641-2bb7-41e2dff46a8f', 0, '2005-01-10 12:05:03', '2005-01-10 12:05:03', '1', '1', NULL, 'eWEEK Technology News', NULL, 'http://rssnewsapps.ziffdavis.com/tech.xml'),
('65a0f073-85fe-9426-4a06-41e2dfe5a004', 0, '2005-01-10 12:05:04', '2005-01-10 12:05:04', '1', '1', NULL, 'Seattle Post-Intelligencer: Arts & Entertainment', NULL, 'http://seattlepi.nwsource.com/rss/ae.rss'),
('f00846ce-dd14-7fb7-9226-41e2df5041f0', 0, '2005-01-10 12:05:04', '2005-01-10 12:05:04', '1', '1', NULL, 'Seattle Post-Intelligencer: Books', NULL, 'http://seattlepi.nwsource.com/rss/books.rss'),
('64f66a69-0df0-3188-49bf-41e2dfa7fcf9', 0, '2005-01-10 12:05:05', '2005-01-10 12:05:05', '1', '1', NULL, 'Seattle Post-Intelligencer: Business News', NULL, 'http://seattlepi.nwsource.com/rss/business.rss'),
('bbd43fee-d439-694d-44e9-41e2df39ca30', 0, '2005-01-10 12:05:05', '2005-01-10 12:05:05', '1', '1', NULL, 'Seattle Post-Intelligencer: Classical Music', NULL, 'http://seattlepi.nwsource.com/rss/classical.rss'),
('2bf6471a-aca7-ad06-07a2-41e2df156469', 0, '2005-01-10 12:05:06', '2005-01-10 12:05:06', '1', '1', NULL, 'Seattle Post-Intelligencer: Cougar Football', NULL, 'http://seattlepi.nwsource.com/rss/cougars.rss'),
('813bddc2-bf31-dad5-1b09-41e2dff8520f', 0, '2005-01-10 12:05:06', '2005-01-10 12:05:06', '1', '1', NULL, 'Seattle Post-Intelligencer: Dining', NULL, 'http://seattlepi.nwsource.com/rss/dining.rss'),
('d15c347f-dcce-83f5-3dba-41e2df339a4f', 0, '2005-01-10 12:05:06', '2005-01-10 12:05:06', '1', '1', NULL, 'Seattle Post-Intelligencer: Food', NULL, 'http://seattlepi.nwsource.com/rss/food.rss'),
('439337e2-9bc7-465b-4f0e-41e2dfda55c8', 0, '2005-01-10 12:05:07', '2005-01-10 12:05:07', '1', '1', NULL, 'Seattle Post-Intelligencer: Gardening', NULL, 'http://seattlepi.nwsource.com/rss/gardening.rss'),
('8858e7a9-9e84-ee76-1486-41e2df13c205', 0, '2005-01-10 12:05:07', '2005-01-10 12:05:07', '1', '1', NULL, 'Seattle Post-Intelligencer: Health and Fitness', NULL, 'http://seattlepi.nwsource.com/rss/health.rss'),
('ca29844f-e128-1e28-a2fd-41e2dfeba1b6', 0, '2005-01-10 12:05:07', '2005-01-10 12:05:07', '1', '1', NULL, 'Seattle Post-Intelligencer: Husky Football', NULL, 'http://seattlepi.nwsource.com/rss/huskies.rss'),
('32892ebf-9522-7358-8e3b-41e2dff2b85c', 0, '2005-01-10 12:05:08', '2005-01-10 12:05:08', '1', '1', NULL, 'Seattle Post-Intelligencer: John Levesque', NULL, 'http://seattlepi.nwsource.com/rss/levesque.rss'),
('887bcac4-2f06-7430-894f-41e2df3ae78f', 0, '2005-01-10 12:05:08', '2005-01-10 12:05:08', '1', '1', NULL, 'Seattle Post-Intelligencer: Lifestyle', NULL, 'http://seattlepi.nwsource.com/rss/lifestyle.rss'),
('ead74e28-ee83-4f0d-c681-41e2df62d666', 0, '2005-01-10 12:05:08', '2005-01-10 12:05:08', '1', '1', NULL, 'Seattle Post-Intelligencer: Local News', NULL, 'http://seattlepi.nwsource.com/rss/local.rss'),
('5308fdd0-fe86-a7d4-6b56-41e2df0aee0f', 0, '2005-01-10 12:05:09', '2005-01-10 12:05:09', '1', '1', NULL, 'Seattle Post-Intelligencer: Mariners', NULL, 'http://seattlepi.nwsource.com/rss/mariners.rss'),
('e6ca8ca3-5734-d264-de97-41e2df6ae7da', 0, '2005-01-10 12:05:09', '2005-01-10 12:05:09', '1', '1', NULL, 'Seattle Post-Intelligencer: Jim Moore', NULL, 'http://seattlepi.nwsource.com/rss/moore.rss'),
('78a04e91-dd06-a9d5-33d8-41e2df6aa326', 0, '2005-01-10 12:05:10', '2005-01-10 12:05:10', '1', '1', NULL, 'Seattle Post-Intelligencer: Movies', NULL, 'http://seattlepi.nwsource.com/rss/movies.rss'),
('d6e1961e-025e-03bc-c2eb-41e2df215811', 0, '2005-01-10 12:05:10', '2005-01-10 12:05:10', '1', '1', NULL, 'Seattle Post-Intelligencer: Music', NULL, 'http://seattlepi.nwsource.com/rss/music.rss'),
('44ac9e37-caa2-74f1-f2b2-41e2df8451fd', 0, '2005-01-10 12:05:11', '2005-01-10 12:05:11', '1', '1', NULL, 'Seattle Post-Intelligencer: Opinion', NULL, 'http://seattlepi.nwsource.com/rss/opinion.rss'),
('b59a1298-cecc-56fd-78af-41e2dfbd7ac3', 0, '2005-01-10 12:05:11', '2005-01-10 12:05:11', '1', '1', NULL, 'Seattle Post-Intelligencer: High School Sports', NULL, 'http://seattlepi.nwsource.com/rss/preps.rss'),
('daa10bd9-2c50-667b-ad93-41e2df16b642', 0, '2005-01-10 12:05:12', '2005-01-10 12:05:12', '1', '1', NULL, 'Seattle Post-Intelligencer: Seahawks', NULL, 'http://seattlepi.nwsource.com/rss/seahawks.rss'),
('896a8ce4-0a22-f2e4-cb46-41e2df90b5d5', 0, '2005-01-10 12:05:12', '2005-01-10 12:05:12', '1', '1', NULL, 'Seattle Post-Intelligencer: Sonics', NULL, 'http://seattlepi.nwsource.com/rss/sonics.rss'),
('456ffec6-3c8a-c963-4a45-41e2df7c5b60', 0, '2005-01-10 12:05:13', '2005-01-10 12:05:13', '1', '1', NULL, 'Seattle Post-Intelligencer: Theater', NULL, 'http://seattlepi.nwsource.com/rss/theater.rss'),
('92184695-82da-6b2e-0c48-41e2dfbbecac', 0, '2005-01-10 12:05:13', '2005-01-10 12:05:13', '1', '1', NULL, 'Seattle Post-Intelligencer: Art Thiel', NULL, 'http://seattlepi.nwsource.com/rss/thiel.rss'),
('e10d1442-e58c-4a7a-cc76-41e2df151d40', 0, '2005-01-10 12:05:13', '2005-01-10 12:05:13', '1', '1', NULL, 'Seattle Post-Intelligencer: TV & Radio', NULL, 'http://seattlepi.nwsource.com/rss/tv.rss'),
('52c2c540-9646-b6b4-0690-41e2dfd3c33c', 0, '2005-01-10 12:05:14', '2005-01-10 12:05:14', '1', '1', NULL, 'Seattle Post-Intelligencer: Video Games', NULL, 'http://seattlepi.nwsource.com/rss/videogames.rss'),
('1e3e0549-9ae4-d6e4-c152-41e2df2c0b60', 0, '2005-01-10 12:05:15', '2005-01-10 12:05:15', '1', '1', NULL, 'Seattle Post-Intelligencer: Wheels', NULL, 'http://seattlepi.nwsource.com/rss/wheels.rss'),
('83921b19-86dd-0a41-74b3-41e2df9dc09c', 0, '2005-01-10 12:05:19', '2005-01-10 12:05:19', '1', '1', NULL, 'Slashdot: Developers', NULL, 'http://slashdot.org/developers.rdf'),
('e10afa8d-ec55-fb12-7db5-41e2e01be5c7', 0, '2005-01-10 12:05:23', '2005-01-10 12:05:23', '1', '1', NULL, 'Slashdot:', NULL, 'http://slashdot.org/slashdot.rss'),
('b7809dbf-4e01-b6e2-fa54-41e2e0b93efd', 0, '2005-01-10 12:05:28', '2005-01-10 12:05:28', '1', '1', NULL, 'Slate Magazine', NULL, 'http://slate.msn.com/rss/'),
('25016a8b-3c84-d029-d4f0-41e2e0c4a154', 0, '2005-01-10 12:05:34', '2005-01-10 12:05:34', '1', '1', NULL, 'SourceForge.net Project News', NULL, 'http://sourceforge.net/export/rss_sfnews.php'),
('f40305df-0c9b-bd01-a424-41e2e06687ee', 0, '2005-01-10 12:05:34', '2005-01-10 12:05:34', '1', '1', NULL, 'Boston Globe -- Business News', NULL, 'http://syndication.boston.com/news/globe/business?mode=rss_10'),
('4c7e5a97-0790-4a84-1c34-41e2e0395694', 0, '2005-01-10 12:05:36', '2005-01-10 12:05:36', '1', '1', NULL, 'Boston Globe -- City/Region News', NULL, 'http://syndication.boston.com/news/globe/city_region?mode=rss_10'),
('54949bd8-5a1d-9a47-7249-41e2e055c4db', 0, '2005-01-10 12:05:37', '2005-01-10 12:05:37', '1', '1', NULL, 'Boston Globe -- Ideas Section', NULL, 'http://syndication.boston.com/news/globe/ideas?mode=rss_10'),
('4f7b5f7c-0e5c-6f17-3a7b-41e2e0ddfc44', 0, '2005-01-10 12:05:38', '2005-01-10 12:05:38', '1', '1', NULL, 'Boston Globe -- Living / Arts News', NULL, 'http://syndication.boston.com/news/globe/living?mode=rss_10'),
('228dcfab-6c30-2cf6-f7e3-41e2e0488a17', 0, '2005-01-10 12:05:39', '2005-01-10 12:05:39', '1', '1', NULL, 'Boston Globe -- National News', NULL, 'http://syndication.boston.com/news/globe/nation?mode=rss_10'),
('ea614325-af09-f851-f120-41e2e0490fa2', 0, '2005-01-10 12:05:39', '2005-01-10 12:05:39', '1', '1', NULL, 'Boston Globe -- Front Page', NULL, 'http://syndication.boston.com/news/globe/pageone?mode=rss_10'),
('4b850ec7-8c12-16fa-e99f-41e2e01c0942', 0, '2005-01-10 12:05:41', '2005-01-10 12:05:41', '1', '1', NULL, 'Boston Globe -- Sports News', NULL, 'http://syndication.boston.com/news/globe/sports?mode=rss_10'),
('158909fe-4028-662e-c57d-41e2e0cb2054', 0, '2005-01-10 12:05:42', '2005-01-10 12:05:42', '1', '1', NULL, 'Boston Globe -- World News', NULL, 'http://syndication.boston.com/news/globe/world?mode=rss_10'),
('ec7000ad-6b84-81b2-c632-41e2e0e9f21c', 0, '2005-01-10 12:05:42', '2005-01-10 12:05:42', '1', '1', NULL, 'Odds and Ends', NULL, 'http://syndication.boston.com/news/odd?mode=rss_10'),
('44f8d79e-0fae-a328-d8f8-41e2e0abc373', 0, '2005-01-10 12:05:44', '2005-01-10 12:05:44', '1', '1', NULL, 'Boston.com / News', NULL, 'http://syndication.boston.com/news?mode=rss_10'),
('d208a0cd-fb70-a0f2-fa96-41e2e01c4cf5', 0, '2005-01-10 12:05:48', '2005-01-10 12:05:48', '1', '1', NULL, 'Techdirt', NULL, 'http://techdirt.com/techdirt_rss.xml'),
('8d018850-7e9b-e970-cbd1-41e2e0c1a765', 0, '2005-01-10 12:05:53', '2005-01-10 12:05:53', '1', '1', NULL, 'Techno File', NULL, 'http://time.blogs.com/technofile/index.rdf'),
('eaf51d0c-834a-5593-ee8c-41e2e05e449f', 0, '2005-01-10 12:05:54', '2005-01-10 12:05:54', '1', '1', NULL, 'BBC News | News Front Page | UK Edition', NULL, 'http://www.bbc.co.uk/syndication/feeds/news/ukfs_news/front_page/rss091.xml'),
('28193b0e-fb4e-3197-70fb-41e2e0da0a44', 0, '2005-01-10 12:05:56', '2005-01-10 12:05:56', '1', '1', NULL, 'BBC News | Technology | UK Edition', NULL, 'http://www.bbc.co.uk/syndication/feeds/news/ukfs_news/technology/rss091.xml'),
('8610b5a9-75cc-c84c-fadc-41e2e088b0df', 0, '2005-01-10 12:05:57', '2005-01-10 12:05:57', '1', '1', NULL, 'BBC News | UK | UK Edition', NULL, 'http://www.bbc.co.uk/syndication/feeds/news/ukfs_news/uk/rss091.xml'),
('c313e1b3-db1d-26ec-84af-41e2e00160d9', 0, '2005-01-10 12:06:01', '2005-01-10 12:06:01', '1', '1', NULL, 'InfoWorld: Application development', NULL, 'http://www.infoworld.com/rss/appdev.xml'),
('2ff65a56-6bd5-c60c-9f76-41e2e0df96b8', 0, '2005-01-10 12:06:06', '2005-01-10 12:06:06', '1', '1', NULL, 'InfoWorld: Java', NULL, 'http://www.infoworld.com/rss/appdev_java.xml'),
('df955186-98c3-2983-2135-41e2e01ab985', 0, '2005-01-10 12:06:10', '2005-01-10 12:06:10', '1', '1', NULL, 'InfoWorld: Web Applications', NULL, 'http://www.infoworld.com/rss/appdev_webapp.xml'),
('3c0798b8-fb41-2fb1-3d23-41e2e01b8d2e', 0, '2005-01-10 12:06:15', '2005-01-10 12:06:15', '1', '1', NULL, 'InfoWorld: Wireless Applications', NULL, 'http://www.infoworld.com/rss/appdev_wireapps.xml'),
('7e235e26-b2f2-e691-b6be-41e2e07e66b9', 0, '2005-01-10 12:06:19', '2005-01-10 12:06:19', '1', '1', NULL, 'InfoWorld: XML', NULL, 'http://www.infoworld.com/rss/appdev_xml.xml'),
('ba005fe6-b497-6dd0-2ead-41e2e047f344', 0, '2005-01-10 12:06:23', '2005-01-10 12:06:23', '1', '1', NULL, 'InfoWorld: Applications', NULL, 'http://www.infoworld.com/rss/applications.xml'),
('2d0effdd-a0df-b611-fe99-41e2e01d157f', 0, '2005-01-10 12:06:28', '2005-01-10 12:06:28', '1', '1', NULL, 'InfoWorld: Application Management', NULL, 'http://www.infoworld.com/rss/apps_appmgmt.xml'),
('8848e6de-196b-a37f-acc1-41e2e0bded0b', 0, '2005-01-10 12:06:32', '2005-01-10 12:06:32', '1', '1', NULL, 'InfoWorld: Collaboration', NULL, 'http://www.infoworld.com/rss/apps_collab.xml'),
('d78da415-8df2-c73f-3706-41e2e03e5563', 0, '2005-01-10 12:06:36', '2005-01-10 12:06:36', '1', '1', NULL, 'InfoWorld: CRM', NULL, 'http://www.infoworld.com/rss/apps_crm.xml'),
('31114cb7-c113-29bf-9f20-41e2e0a5687a', 0, '2005-01-10 12:06:41', '2005-01-10 12:06:41', '1', '1', NULL, 'InfoWorld: Enterprise Integration', NULL, 'http://www.infoworld.com/rss/apps_einteg.xml'),
('7ea784e8-46ad-8979-dd73-41e2e0241926', 0, '2005-01-10 12:06:45', '2005-01-10 12:06:45', '1', '1', NULL, 'InfoWorld: ERP', NULL, 'http://www.infoworld.com/rss/apps_erp.xml'),
('d75c137d-0aae-3fbd-2906-41e2e0de0fe0', 0, '2005-01-10 12:06:49', '2005-01-10 12:06:49', '1', '1', NULL, 'InfoWorld: Columnists', NULL, 'http://www.infoworld.com/rss/columnists.xml'),
('288dd54e-4460-658f-f7c3-41e2e031d2f8', 0, '2005-01-10 12:06:54', '2005-01-10 12:06:54', '1', '1', NULL, 'InfoWorld: Business', NULL, 'http://www.infoworld.com/rss/ebizstra.xml'),
('5fb588ad-8d0a-c82e-920d-41e2e02745bf', 0, '2005-01-10 12:06:58', '2005-01-10 12:06:58', '1', '1', NULL, 'InfoWorld: Business to Business', NULL, 'http://www.infoworld.com/rss/ebustrat_btob.xml'),
('9794dfd2-c784-d326-2ad7-41e2e00e2a81', 0, '2005-01-10 12:07:02', '2005-01-10 12:07:02', '1', '1', NULL, 'InfoWorld: Business to Consumer', NULL, 'http://www.infoworld.com/rss/ebustrat_btoc.xml'),
('f162f572-b6da-7189-90be-41e2e02042de', 0, '2005-01-10 12:07:06', '2005-01-10 12:07:06', '1', '1', NULL, 'InfoWorld: Portals', NULL, 'http://www.infoworld.com/rss/ebustrat_portal.xml'),
('3817838b-4dbf-84b6-1549-41e2e0b0995a', 0, '2005-01-10 12:07:11', '2005-01-10 12:07:11', '1', '1', NULL, 'InfoWorld: Handheld Devices', NULL, 'http://www.infoworld.com/rss/eusrhw_handdevc.xml'),
('66f7b3eb-104a-dba5-7a66-41e2e065f261', 0, '2005-01-10 12:07:15', '2005-01-10 12:07:15', '1', '1', NULL, 'InfoWorld: Mobile PC', NULL, 'http://www.infoworld.com/rss/eusrhw_mobilepc.xml'),
('9e00fb2a-6efe-1d1f-ad34-41e2e03a4ca6', 0, '2005-01-10 12:07:19', '2005-01-10 12:07:19', '1', '1', NULL, 'InfoWorld: PCs', NULL, 'http://www.infoworld.com/rss/eusrhw_pc.xml'),
('d4c6cbba-d698-5f1f-d06a-41e2e05ba76d', 0, '2005-01-10 12:07:23', '2005-01-10 12:07:23', '1', '1', NULL, 'InfoWorld: Processors & Components', NULL, 'http://www.infoworld.com/rss/eusrhw_proccomp.xml'),
('1c467be4-a384-2226-b896-41e2e07a8bf5', 0, '2005-01-10 12:07:28', '2005-01-10 12:07:28', '1', '1', NULL, 'InfoWorld: Hardware', NULL, 'http://www.infoworld.com/rss/hardware.xml'),
('5915c10c-ea6e-ed29-b748-41e2e0feb9f0', 0, '2005-01-10 12:07:32', '2005-01-10 12:07:32', '1', '1', NULL, 'InfoWorld: Grid Computing', NULL, 'http://www.infoworld.com/rss/netwking_gridcmp.xml'),
('916d98b1-a0df-59e6-d252-41e2e0a0fce5', 0, '2005-01-10 12:07:36', '2005-01-10 12:07:36', '1', '1', NULL, 'InfoWorld: Network Infrastructure', NULL, 'http://www.infoworld.com/rss/netwking_netinfra.xml'),
('dfc0f4c7-69e2-3310-0a2a-41e2e0195d74', 0, '2005-01-10 12:07:40', '2005-01-10 12:07:40', '1', '1', NULL, 'InfoWorld: Network Management', NULL, 'http://www.infoworld.com/rss/netwking_netmgmt.xml'),
('29007367-92cc-7976-501d-41e2e037017b', 0, '2005-01-10 12:07:45', '2005-01-10 12:07:45', '1', '1', NULL, 'InfoWorld: Utilities Component', NULL, 'http://www.infoworld.com/rss/netwking_utilcomp.xml'),
('6abf823f-4b0d-e9a8-635c-41e2e039d4bf', 0, '2005-01-10 12:07:49', '2005-01-10 12:07:49', '1', '1', NULL, 'InfoWorld: Networking', NULL, 'http://www.infoworld.com/rss/networking.xml'),
('e8f2ad3b-48dd-d577-2362-41e2e0e96eec', 0, '2005-01-10 12:07:57', '2005-01-10 12:07:57', '1', '1', NULL, 'InfoWorld: Top News', NULL, 'http://www.infoworld.com/rss/news.rdf'),
('36a48d6e-be52-025b-aff8-41e2e0a360c5', 0, '2005-01-10 12:08:02', '2005-01-10 12:08:02', '1', '1', NULL, 'InfoWorld: Top News', NULL, 'http://www.infoworld.com/rss/news.xml'),
('74662412-16b7-140f-bf08-41e2e088ee14', 0, '2005-01-10 12:08:06', '2005-01-10 12:08:06', '1', '1', NULL, 'InfoWorld: Platforms', NULL, 'http://www.infoworld.com/rss/platforms.xml'),
('adf6ac68-003f-395e-c410-41e2e0e5463f', 0, '2005-01-10 12:08:10', '2005-01-10 12:08:10', '1', '1', NULL, 'InfoWorld: Application Servers', NULL, 'http://www.infoworld.com/rss/platform_appserv.xml'),
('ebb409b9-3336-e5da-16d1-41e2e0a346ab', 0, '2005-01-10 12:08:14', '2005-01-10 12:08:14', '1', '1', NULL, 'InfoWorld: Databases', NULL, 'http://www.infoworld.com/rss/platform_database.xml'),
('2c602f5d-5c2e-2b0a-558d-41e2e016671c', 0, '2005-01-10 12:08:19', '2005-01-10 12:08:19', '1', '1', NULL, 'InfoWorld: Open Source', NULL, 'http://www.infoworld.com/rss/platform_opensrc.xml'),
('64050dae-dd95-8a54-a7f4-41e2e027805a', 0, '2005-01-10 12:08:23', '2005-01-10 12:08:23', '1', '1', NULL, 'InfoWorld: Platforms', NULL, 'http://www.infoworld.com/rss/platform_os.xml'),
('9866d35a-406f-e916-f8c9-41e2e0214c5d', 0, '2005-01-10 12:08:27', '2005-01-10 12:08:27', '1', '1', NULL, 'InfoWorld: Server Hardware', NULL, 'http://www.infoworld.com/rss/platform_servhw.xml'),
('d244ac22-d651-84d4-9726-41e2e029cbde', 0, '2005-01-10 12:08:31', '2005-01-10 12:08:31', '1', '1', NULL, 'InfoWorld: Test Center Reviews', NULL, 'http://www.infoworld.com/rss/reviews.xml'),
('173d9c3d-a132-efbc-3653-41e2e07f665f', 0, '2005-01-10 12:08:36', '2005-01-10 12:08:36', '1', '1', NULL, 'InfoWorld: Security', NULL, 'http://www.infoworld.com/rss/security.xml'),
('6362dd39-39e6-dd5e-96a5-41e2e07c3534', 0, '2005-01-10 12:08:40', '2005-01-10 12:08:40', '1', '1', NULL, 'InfoWorld: Firewall', NULL, 'http://www.infoworld.com/rss/security_firewall.xml'),
('a8f67506-9b3c-92bc-046d-41e2e06b7fbc', 0, '2005-01-10 12:08:44', '2005-01-10 12:08:44', '1', '1', NULL, 'InfoWorld: Security Appliances', NULL, 'http://www.infoworld.com/rss/security_secapp.xml'),
('dc99ca3c-a068-afcc-41f0-41e2e06d71e5', 0, '2005-01-10 12:08:48', '2005-01-10 12:08:48', '1', '1', NULL, 'InfoWorld: VPN', NULL, 'http://www.infoworld.com/rss/security_vpn.xml'),
('29ac7be2-6a12-5710-435f-41e2e03416e1', 0, '2005-01-10 12:08:53', '2005-01-10 12:08:53', '1', '1', NULL, 'InfoWorld: Vulnerability Management', NULL, 'http://www.infoworld.com/rss/security_vulmgmt.xml'),
('6776e391-4544-b6e6-caf4-41e2e07f46b9', 0, '2005-01-10 12:08:57', '2005-01-10 12:08:57', '1', '1', NULL, 'InfoWorld: Wireless Security', NULL, 'http://www.infoworld.com/rss/security_wiresec.xml'),
('a24dcc9a-3fda-e158-9bcc-41e2e049a496', 0, '2005-01-10 12:09:01', '2005-01-10 12:09:01', '1', '1', NULL, 'InfoWorld: Standards', NULL, 'http://www.infoworld.com/rss/standards.xml'),
('f336c24c-3349-c630-9cbd-41e2e08442a9', 0, '2005-01-10 12:09:05', '2005-01-10 12:09:05', '1', '1', NULL, 'InfoWorld: Application Development', NULL, 'http://www.infoworld.com/rss/stanprot_appdev.xml'),
('300c6790-d2a3-75f0-8fa0-41e2e08b960b', 0, '2005-01-10 12:09:10', '2005-01-10 12:09:10', '1', '1', NULL, 'InfoWorld: Internet', NULL, 'http://www.infoworld.com/rss/stanprot_inet.xml'),
('69babb1f-fe7c-c364-83ab-41e2e0e2b049', 0, '2005-01-10 12:09:14', '2005-01-10 12:09:14', '1', '1', NULL, 'InfoWorld: Networking', NULL, 'http://www.infoworld.com/rss/stanprot_netwking.xml'),
('b97c4759-c783-6990-f94a-41e2e00fca1d', 0, '2005-01-10 12:09:18', '2005-01-10 12:09:18', '1', '1', NULL, 'InfoWorld: Security', NULL, 'http://www.infoworld.com/rss/stanprot_security.xml'),
('27b8f326-6eba-c459-8a66-41e2e0c88453', 0, '2005-01-10 12:09:23', '2005-01-10 12:09:23', '1', '1', NULL, 'InfoWorld: Storage', NULL, 'http://www.infoworld.com/rss/stanprot_storage.xml'),
('5ede0b55-899c-ccf0-a22b-41e2e0473f50', 0, '2005-01-10 12:09:27', '2005-01-10 12:09:27', '1', '1', NULL, 'InfoWorld: Wireless', NULL, 'http://www.infoworld.com/rss/stanprot_wireless.xml'),
('9ba85759-7a84-79d2-5d5b-41e2e0215d1e', 0, '2005-01-10 12:09:31', '2005-01-10 12:09:31', '1', '1', NULL, 'InfoWorld: Storage', NULL, 'http://www.infoworld.com/rss/storage.xml'),
('d9cde4fd-28f6-faed-2555-41e2e04de5cb', 0, '2005-01-10 12:09:35', '2005-01-10 12:09:35', '1', '1', NULL, 'InfoWorld: Business Continuity', NULL, 'http://www.infoworld.com/rss/storage_buscont.xml'),
('2bdd0ae4-0ddc-8c7c-6bbe-41e2e1f0faeb', 0, '2005-01-10 12:09:40', '2005-01-10 12:09:40', '1', '1', NULL, 'InfoWorld: Networked Storage', NULL, 'http://www.infoworld.com/rss/storage_netstor.xml'),
('68d12716-8c75-08d5-0785-41e2e1f8d408', 0, '2005-01-10 12:09:44', '2005-01-10 12:09:44', '1', '1', NULL, 'InfoWorld: Storage Hardware', NULL, 'http://www.infoworld.com/rss/storage_storhw.xml'),
('a6502372-e900-cd75-587f-41e2e1a348db', 0, '2005-01-10 12:09:48', '2005-01-10 12:09:48', '1', '1', NULL, 'InfoWorld: Storage Management', NULL, 'http://www.infoworld.com/rss/storage_stormgmt.xml'),
('e494037a-c6c4-8793-108b-41e2e15f0f95', 0, '2005-01-10 12:09:52', '2005-01-10 12:09:52', '1', '1', NULL, 'InfoWorld: Telecom', NULL, 'http://www.infoworld.com/rss/telecomm.xml'),
('42778fab-3037-1280-059b-41e2e149966a', 0, '2005-01-10 12:09:57', '2005-01-10 12:09:57', '1', '1', NULL, 'InfoWorld: Broadband', NULL, 'http://www.infoworld.com/rss/telecom_broadband.xml'),
('82a29d82-9ad5-65ca-b74d-41e2e1b9cc06', 0, '2005-01-10 12:10:01', '2005-01-10 12:10:01', '1', '1', NULL, 'InfoWorld: Telephony', NULL, 'http://www.infoworld.com/rss/telecom_telephony.xml'),
('d05fc611-e074-96ea-4186-41e2e1577cea', 0, '2005-01-10 12:10:05', '2005-01-10 12:10:05', '1', '1', NULL, 'InfoWorld: xSPs', NULL, 'http://www.infoworld.com/rss/telecom_xsp.xml'),
('21f3db54-63ce-67b8-999d-41e2e11b3dfb', 0, '2005-01-10 12:10:10', '2005-01-10 12:10:10', '1', '1', NULL, 'InfoWorld: Web services', NULL, 'http://www.infoworld.com/rss/webservices.xml'),
('586629ae-ecab-f5d5-41f9-41e2e1eb8af6', 0, '2005-01-10 12:10:14', '2005-01-10 12:10:14', '1', '1', NULL, 'InfoWorld: Web Services Applications', NULL, 'http://www.infoworld.com/rss/websvcs_websvcap.xml'),
('8a5a7213-cc37-924c-1fef-41e2e1607a6a', 0, '2005-01-10 12:10:18', '2005-01-10 12:10:18', '1', '1', NULL, 'InfoWorld: Web Services Development', NULL, 'http://www.infoworld.com/rss/websvcs_websvcdv.xml'),
('d30ec90d-86e4-6b11-05dd-41e2e155d05a', 0, '2005-01-10 12:10:22', '2005-01-10 12:10:22', '1', '1', NULL, 'InfoWorld: Web Services Integration', NULL, 'http://www.infoworld.com/rss/websvcs_websvcin.xml'),
('22f69fbf-65ef-2790-262f-41e2e17a93e2', 0, '2005-01-10 12:10:27', '2005-01-10 12:10:27', '1', '1', NULL, 'InfoWorld: Web Management', NULL, 'http://www.infoworld.com/rss/websvcs_websvcmg.xml'),
('7ce83cab-8e9d-f80f-0013-41e2e17e3a32', 0, '2005-01-10 12:10:31', '2005-01-10 12:10:31', '1', '1', NULL, 'InfoWorld: Wireless', NULL, 'http://www.infoworld.com/rss/wireless.xml'),
('bcaa2681-9bf1-9ef1-6be9-41e2e1c982e2', 0, '2005-01-10 12:10:35', '2005-01-10 12:10:35', '1', '1', NULL, 'InfoWorld: Wireless Applications', NULL, 'http://www.infoworld.com/rss/wireless_wireapps.xml'),
('53e80be9-2d4c-d3d4-9e83-41e2e1a6d6be', 0, '2005-01-10 12:10:40', '2005-01-10 12:10:40', '1', '1', NULL, 'InfoWorld: Wireless Network Infrastructure', NULL, 'http://www.infoworld.com/rss/wireless_wirenetinfra.xml'),
('53714c90-4807-b021-8e0a-41e2e16e168f', 0, '2005-01-10 12:10:44', '2005-01-10 12:10:44', '1', '1', NULL, 'InfoWorld: Wireless Network Management', NULL, 'http://www.infoworld.com/rss/wireless_wirenetmgmt.xml'),
('a63fa605-f6f5-fdb5-9b4b-41e2e1f0b3dd', 0, '2005-01-10 12:10:48', '2005-01-10 12:10:48', '1', '1', NULL, 'Linux Magazine', NULL, 'http://www.linux-mag.com/lm.rss'),
('5bd9c58c-b0a7-bdef-ebca-41e2e150faf6', 0, '2005-01-10 12:10:57', '2005-01-10 12:10:57', '1', '1', NULL, 'Linux Journal - The Original Magazine of the Linux Community', NULL, 'http://www.linuxjournal.com/news.rss'),
('49e7d772-950e-9f18-b39e-41e2e1344dd3', 0, '2005-01-10 12:11:06', '2005-01-10 12:11:06', '1', '1', NULL, 'macdailynews.com', NULL, 'http://www.macdailynews.com/rss/rss.xml'),
('b15d917f-6220-4792-f3cf-41e2e1295e2d', 0, '2005-01-10 12:11:06', '2005-01-10 12:11:06', '1', '1', NULL, 'MacRumors', NULL, 'http://www.macrumors.com/macrumors.xml'),
('90634cab-75d2-4b3f-4424-41e2e18d34f1', 0, '2005-01-10 12:11:11', '2005-01-10 12:11:11', '1', '1', NULL, 'GoogleGuy Says - Google Ranking Info', NULL, 'http://www.markcarey.com/googleguy-says/index.rdf'),
('3b548447-e8e8-b3d1-c4c7-41e2e1c46b85', 0, '2005-01-10 12:11:12', '2005-01-10 12:11:12', '1', '1', NULL, 'CBS MarketWatch.com - Financial Services Industry News', NULL, 'http://www.marketwatch.com/rss/financial/'),
('dff224ac-4ccf-aed7-43b9-41e2e194fb1e', 0, '2005-01-10 12:11:12', '2005-01-10 12:11:12', '1', '1', NULL, 'CBS MarketWatch.com - Internet Industry News', NULL, 'http://www.marketwatch.com/rss/internet/'),
('9abe4795-81da-da4b-c27d-41e2e1f12209', 0, '2005-01-10 12:11:13', '2005-01-10 12:11:13', '1', '1', NULL, 'CBS MarketWatch.com - Personal Finance News', NULL, 'http://www.marketwatch.com/rss/pf/'),
('4dfb388a-1305-c6a6-bb1b-41e2e1ec0ea0', 0, '2005-01-10 12:11:14', '2005-01-10 12:11:14', '1', '1', NULL, 'CBS MarketWatch.com - Software Industry News', NULL, 'http://www.marketwatch.com/rss/software/'),
('5a554d53-5f02-0030-fa51-41e2e1c4ec0b', 0, '2005-01-10 12:11:15', '2005-01-10 12:11:15', '1', '1', NULL, 'CBS MarketWatch.com - Top Stories', NULL, 'http://www.marketwatch.com/rss/topstories/'),
('70a60db8-b993-ffdc-c7a2-41e2e1f9f2cc', 0, '2005-01-10 12:11:16', '2005-01-10 12:11:16', '1', '1', NULL, 'Reuters: Business', NULL, 'http://www.microsite.reuters.com/rss/businessNews'),
('8bd7e961-fade-e048-969b-41e2e15a0523', 0, '2005-01-10 12:11:16', '2005-01-10 12:11:16', '1', '1', NULL, 'Reuters: US Domestic News', NULL, 'http://www.microsite.reuters.com/rss/domesticNews'),
('157fe8ea-d139-355e-b64d-41e2e1d60dd1', 0, '2005-01-10 12:11:17', '2005-01-10 12:11:17', '1', '1', NULL, 'Reuters: Politics', NULL, 'http://www.microsite.reuters.com/rss/ElectionCoverage'),
('92d037ee-06a3-418f-74c4-41e2e19c22f5', 0, '2005-01-10 12:11:17', '2005-01-10 12:11:17', '1', '1', NULL, 'Reuters: Entertainment', NULL, 'http://www.microsite.reuters.com/rss/Entertainment'),
('1e69fa33-09c2-f086-1f49-41e2e130cd40', 0, '2005-01-10 12:11:18', '2005-01-10 12:11:18', '1', '1', NULL, 'Reuters: Health', NULL, 'http://www.microsite.reuters.com/rss/healthNews'),
('9f9d5276-26a0-aadc-1e03-41e2e13d5fc3', 0, '2005-01-10 12:11:18', '2005-01-10 12:11:18', '1', '1', NULL, 'Reuters: Life & Leisure', NULL, 'http://www.microsite.reuters.com/rss/lifeAndLeisureNews'),
('22ae3feb-5b25-0c61-7d1c-41e2e134a898', 0, '2005-01-10 12:11:19', '2005-01-10 12:11:19', '1', '1', NULL, 'Reuters: Oddly Enough', NULL, 'http://www.microsite.reuters.com/rss/oddlyEnoughNews'),
('a446695a-c6d2-e970-0d13-41e2e10b4f0a', 0, '2005-01-10 12:11:19', '2005-01-10 12:11:19', '1', '1', NULL, 'Reuters: Politics', NULL, 'http://www.microsite.reuters.com/rss/politicsNews'),
('4360b39e-9f38-94ab-68f5-41e2e1f8ebfc', 0, '2005-01-10 12:11:20', '2005-01-10 12:11:20', '1', '1', NULL, 'Reuters: Science', NULL, 'http://www.microsite.reuters.com/rss/scienceNews'),
('bdbfe8e9-980b-c873-e3b0-41e2e1426554', 0, '2005-01-10 12:11:20', '2005-01-10 12:11:20', '1', '1', NULL, 'Reuters: Sports', NULL, 'http://www.microsite.reuters.com/rss/sportsNews'),
('56773914-9860-cc40-5763-41e2e126f83f', 0, '2005-01-10 12:11:21', '2005-01-10 12:11:21', '1', '1', NULL, 'Reuters: Technology', NULL, 'http://www.microsite.reuters.com/rss/technologyNews'),
('d098cf04-c313-867c-11d9-41e2e1fd4fe3', 0, '2005-01-10 12:11:21', '2005-01-10 12:11:21', '1', '1', NULL, 'Reuters: Top News', NULL, 'http://www.microsite.reuters.com/rss/topNews'),
('563ae3f7-df64-9e60-d02a-41e2e182eacb', 0, '2005-01-10 12:11:22', '2005-01-10 12:11:22', '1', '1', NULL, 'Reuters: World', NULL, 'http://www.microsite.reuters.com/rss/worldNews'),
('e52e8793-7b64-d778-4382-41e2e11bda85', 0, '2005-01-10 12:11:26', '2005-01-10 12:11:26', '1', '1', NULL, 'NYT > Arts', NULL, 'http://www.nytimes.com/services/xml/rss/nyt/Arts.xml'),
('76395a02-40cb-98c1-7e38-41e2e1cfef20', 0, '2005-01-10 12:11:31', '2005-01-10 12:11:31', '1', '1', NULL, 'NYT > Automobiles', NULL, 'http://www.nytimes.com/services/xml/rss/nyt/Automobiles.xml'),
('f329defa-0a0b-72bd-874b-41e2e1d870e6', 0, '2005-01-10 12:11:35', '2005-01-10 12:11:35', '1', '1', NULL, 'NYT > Books', NULL, 'http://www.nytimes.com/services/xml/rss/nyt/Books.xml'),
('7bd169d6-5a81-5486-a70b-41e2e1bdb372', 0, '2005-01-10 12:11:40', '2005-01-10 12:11:40', '1', '1', NULL, 'NYT > Business', NULL, 'http://www.nytimes.com/services/xml/rss/nyt/Business.xml'),
('32da2be6-a2be-a445-baeb-41e2e10be2b4', 0, '2005-01-10 12:11:59', '2005-01-10 12:11:59', '1', '1', NULL, 'NYT > Circuits', NULL, 'http://www.nytimes.com/services/xml/rss/nyt/Circuits.xml'),
('abc4b934-4df7-b840-2c71-41e2e1b5c624', 0, '2005-01-10 12:12:03', '2005-01-10 12:12:03', '1', '1', NULL, 'NYT > Fashion and Style', NULL, 'http://www.nytimes.com/services/xml/rss/nyt/FashionandStyle.xml'),
('3e368e6c-a9c8-9db5-8c58-41e2e13063cc', 0, '2005-01-10 12:12:08', '2005-01-10 12:12:08', '1', '1', NULL, 'NYT > Health', NULL, 'http://www.nytimes.com/services/xml/rss/nyt/Health.xml'),
('ad6f00c5-4d44-a7f3-3956-41e2e13cb440', 0, '2005-01-10 12:12:12', '2005-01-10 12:12:12', '1', '1', NULL, 'NYT > Home Page', NULL, 'http://www.nytimes.com/services/xml/rss/nyt/HomePage.xml'),
('3243b29a-5bf0-73e7-ff62-41e2e10d3f1e', 0, '2005-01-10 12:12:17', '2005-01-10 12:12:17', '1', '1', NULL, 'NYT > International', NULL, 'http://www.nytimes.com/services/xml/rss/nyt/International.xml'),
('c0a95969-5b4c-0813-5070-41e2e1dc098d', 0, '2005-01-10 12:12:21', '2005-01-10 12:12:21', '1', '1', NULL, 'NYT > Magazine', NULL, 'http://www.nytimes.com/services/xml/rss/nyt/Magazine.xml'),
('b26227be-c4ac-d0db-3534-41e2e1e3c2bd', 0, '2005-01-10 12:12:31', '2005-01-10 12:12:31', '1', '1', NULL, 'NYT > Media and Advertising', NULL, 'http://www.nytimes.com/services/xml/rss/nyt/MediaandAdvertising.xml'),
('949123f7-e6b3-9c9b-6d3f-41e2e1ac24ca', 0, '2005-01-10 12:12:41', '2005-01-10 12:12:41', '1', '1', NULL, 'NYT > Movie Reviews', NULL, 'http://www.nytimes.com/services/xml/rss/nyt/Movies.xml'),
('1daf4a0b-1a1a-3f5b-9114-41e2e1ac5bd2', 0, '2005-01-10 12:12:46', '2005-01-10 12:12:46', '1', '1', NULL, 'NYT > Multimedia', NULL, 'http://www.nytimes.com/services/xml/rss/nyt/Multimedia.xml'),
('93f6049a-0b8c-368f-84db-41e2e10cf8dc', 0, '2005-01-10 12:12:50', '2005-01-10 12:12:50', '1', '1', NULL, 'NYT > National', NULL, 'http://www.nytimes.com/services/xml/rss/nyt/National.xml'),
('162fe62d-82ad-3acb-e40b-41e2e1ca3a42', 0, '2005-01-10 12:12:55', '2005-01-10 12:12:55', '1', '1', NULL, 'NYT > New York Region', NULL, 'http://www.nytimes.com/services/xml/rss/nyt/NYRegion.xml'),
('8b3b6aa8-afe3-f354-6934-41e2e1289783', 0, '2005-01-10 12:12:59', '2005-01-10 12:12:59', '1', '1', NULL, 'NYT > Opinion', NULL, 'http://www.nytimes.com/services/xml/rss/nyt/Opinion.xml'),
('16f15af7-8097-d8ff-e71b-41e2e1e3e56d', 0, '2005-01-10 12:13:04', '2005-01-10 12:13:04', '1', '1', NULL, 'NYT > Most E-mailed Articles', NULL, 'http://www.nytimes.com/services/xml/rss/nyt/pop_top.xml'),
('8c824e5a-a19e-3d18-f0b3-41e2e1347681', 0, '2005-01-10 12:13:08', '2005-01-10 12:13:08', '1', '1', NULL, 'NYT > Real Estate', NULL, 'http://www.nytimes.com/services/xml/rss/nyt/RealEstate.xml'),
('18a8f2f9-a4bb-40a0-c2fa-41e2e1a22c5b', 0, '2005-01-10 12:13:13', '2005-01-10 12:13:13', '1', '1', NULL, 'NYT > Science', NULL, 'http://www.nytimes.com/services/xml/rss/nyt/Science.xml'),
('8b5a69c3-7872-7621-978d-41e2e16ed94a', 0, '2005-01-10 12:13:17', '2005-01-10 12:13:17', '1', '1', NULL, 'NYT > Sports', NULL, 'http://www.nytimes.com/services/xml/rss/nyt/Sports.xml'),
('2c248cf4-cbb0-1ae3-98dc-41e2e1f4b908', 0, '2005-01-10 12:13:22', '2005-01-10 12:13:22', '1', '1', NULL, 'NYT > Technology', NULL, 'http://www.nytimes.com/services/xml/rss/nyt/Technology.xml'),
('b87e7042-bb54-8c71-eb00-41e2e1fe56f3', 0, '2005-01-10 12:13:26', '2005-01-10 12:13:26', '1', '1', NULL, 'NYT > Theater', NULL, 'http://www.nytimes.com/services/xml/rss/nyt/Theater.xml'),
('56a41258-299c-b87a-f11f-41e2e1dea02e', 0, '2005-01-10 12:13:40', '2005-01-10 12:13:40', '1', '1', NULL, 'NYT > Travel', NULL, 'http://www.nytimes.com/services/xml/rss/nyt/Travel.xml'),
('cad9e735-4edb-cf76-fa57-41e2e1bd9573', 0, '2005-01-10 12:13:44', '2005-01-10 12:13:44', '1', '1', NULL, 'NYT > Washington', NULL, 'http://www.nytimes.com/services/xml/rss/nyt/Washington.xml'),
('6c4ffca7-d6e0-762b-7319-41e2e1942650', 0, '2005-01-10 12:13:49', '2005-01-10 12:13:49', '1', '1', NULL, 'NYT > Week in Review', NULL, 'http://www.nytimes.com/services/xml/rss/nyt/WeekinReview.xml'),
('8fc8560f-f3b2-2f3f-7a8e-41e2e2b89d5a', 0, '2005-01-10 12:13:54', '2005-01-10 12:13:54', '1', '1', NULL, 'Telegraph Arts | Books', NULL, 'http://www.telegraph.co.uk/newsfeed/rss/arts_books.xml'),
('5ed58c84-963b-dc9e-9192-41e2e286de6b', 0, '2005-01-10 12:13:59', '2005-01-10 12:13:59', '1', '1', NULL, 'Telegraph Arts', NULL, 'http://www.telegraph.co.uk/newsfeed/rss/arts_main.xml'),
('3f8d6369-2cb1-34ff-2a84-41e2e2ad2838', 0, '2005-01-10 12:14:04', '2005-01-10 12:14:04', '1', '1', NULL, 'Telegraph Connected', NULL, 'http://www.telegraph.co.uk/newsfeed/rss/connected.xml'),
('26c18e81-99a1-dd1d-2971-41e2e2b1f154', 0, '2005-01-10 12:14:09', '2005-01-10 12:14:09', '1', '1', NULL, 'Telegraph Education', NULL, 'http://www.telegraph.co.uk/newsfeed/rss/education.xml'),
('f09bdcc6-8e18-f9b6-a868-41e2e26e388c', 0, '2005-01-10 12:14:13', '2005-01-10 12:14:13', '1', '1', NULL, 'Telegraph Expat', NULL, 'http://www.telegraph.co.uk/newsfeed/rss/expat.xml'),
('caa98477-7101-c99e-018d-41e2e2c7c022', 0, '2005-01-10 12:14:18', '2005-01-10 12:14:18', '1', '1', NULL, 'Telegraph Fashion', NULL, 'http://www.telegraph.co.uk/newsfeed/rss/fashion.xml'),
('abf7648d-d5c0-31cd-b450-41e2e294e388', 0, '2005-01-10 12:14:23', '2005-01-10 12:14:23', '1', '1', NULL, 'Telegraph Gardening', NULL, 'http://www.telegraph.co.uk/newsfeed/rss/gardening.xml');
INSERT INTO `feeds` (`id`, `deleted`, `date_entered`, `date_modified`, `modified_user_id`, `assigned_user_id`, `created_by`, `title`, `description`, `url`) VALUES 
('a1762049-8d34-762a-49ff-41e2e23d820e', 0, '2005-01-10 12:14:28', '2005-01-10 12:14:28', '1', '1', NULL, 'Telegraph Health', NULL, 'http://www.telegraph.co.uk/newsfeed/rss/health.xml'),
('3f266fb5-3e33-91e2-73be-41e2e2dd9764', 0, '2005-01-10 12:14:33', '2005-01-10 12:14:33', '1', '1', NULL, 'Telegraph Opinion | Leaders', NULL, 'http://www.telegraph.co.uk/newsfeed/rss/leaders.xml'),
('108906cd-58af-9a2e-a04e-41e2e23db4a1', 0, '2005-01-10 12:14:38', '2005-01-10 12:14:38', '1', '1', NULL, 'Telegraph Opinion | Letters', NULL, 'http://www.telegraph.co.uk/newsfeed/rss/letters.xml'),
('b4eff965-86bf-e571-fef0-41e2e234081f', 0, '2005-01-10 12:14:42', '2005-01-10 12:14:42', '1', '1', NULL, 'Telegraph Money | Markets', NULL, 'http://www.telegraph.co.uk/newsfeed/rss/money_markets.xml'),
('9bebccf6-65fe-7240-9802-41e2e2a5d2b6', 0, '2005-01-10 12:14:47', '2005-01-10 12:14:47', '1', '1', NULL, 'Telegraph Money | Personal Finance', NULL, 'http://www.telegraph.co.uk/newsfeed/rss/money_pf.xml'),
('6268c9b4-82b3-74b5-be2d-41e2e280945c', 0, '2005-01-10 12:14:52', '2005-01-10 12:14:52', '1', '1', NULL, 'Telegraph Business | Small Business', NULL, 'http://www.telegraph.co.uk/newsfeed/rss/money_smallbus.xml'),
('6313eb76-e22b-cb06-b80b-41e2e25b1270', 0, '2005-01-10 12:14:57', '2005-01-10 12:14:57', '1', '1', NULL, 'Telegraph Motoring', NULL, 'http://www.telegraph.co.uk/newsfeed/rss/motoring.xml'),
('42131d7e-df56-90a2-6ff1-41e2e21b63d4', 0, '2005-01-10 12:15:02', '2005-01-10 12:15:02', '1', '1', NULL, 'Telegraph News | Breaking News', NULL, 'http://www.telegraph.co.uk/newsfeed/rss/news_breaking.xml'),
('13dd2763-7cff-361b-6864-41e2e2f367cb', 0, '2005-01-10 12:15:07', '2005-01-10 12:15:07', '1', '1', NULL, 'Telegraph News | International News', NULL, 'http://www.telegraph.co.uk/newsfeed/rss/news_international.xml'),
('e00bd292-8c0c-4f96-49b0-41e2e2ff2f9a', 0, '2005-01-10 12:15:11', '2005-01-10 12:15:11', '1', '1', NULL, 'Telegraph News | Front Page News', NULL, 'http://www.telegraph.co.uk/newsfeed/rss/news_main.xml'),
('b2da8888-120f-bfb7-67d6-41e2e28c5532', 0, '2005-01-10 12:15:16', '2005-01-10 12:15:16', '1', '1', NULL, 'Telegraph News | UK News', NULL, 'http://www.telegraph.co.uk/newsfeed/rss/news_uk.xml'),
('885e54fd-09ba-9cdc-a9e3-41e2e2ebb292', 0, '2005-01-10 12:15:21', '2005-01-10 12:15:21', '1', '1', NULL, 'Telegraph Opinion', NULL, 'http://www.telegraph.co.uk/newsfeed/rss/opinion.xml'),
('689b064d-8821-4b66-9788-41e2e2e48838', 0, '2005-01-10 12:15:26', '2005-01-10 12:15:26', '1', '1', NULL, 'Telegraph Property', NULL, 'http://www.telegraph.co.uk/newsfeed/rss/property.xml'),
('c36c0a13-8f54-a6c5-6b0b-41e2e27050c6', 0, '2005-01-10 12:15:31', '2005-01-10 12:15:31', '1', '1', NULL, 'Telegraph Sport | Cricket', NULL, 'http://www.telegraph.co.uk/newsfeed/rss/sport_cricket.xml'),
('4ecabb98-a3cd-4b96-d288-41e2e2943a21', 0, '2005-01-10 12:15:36', '2005-01-10 12:15:36', '1', '1', NULL, 'Telegraph Sport | Football', NULL, 'http://www.telegraph.co.uk/newsfeed/rss/sport_football.xml'),
('e911ad05-13d6-869d-6e85-41e2e24224d4', 0, '2005-01-10 12:15:40', '2005-01-10 12:15:40', '1', '1', NULL, 'Telegraph Sport | Golf', NULL, 'http://www.telegraph.co.uk/newsfeed/rss/sport_golf.xml'),
('ba80d353-4126-d39e-363e-41e2e29b93b6', 0, '2005-01-10 12:15:45', '2005-01-10 12:15:45', '1', '1', NULL, 'Telegraph Sport', NULL, 'http://www.telegraph.co.uk/newsfeed/rss/sport_main.xml'),
('bd5e4012-976e-3cdb-bacb-41e2e2409362', 0, '2005-01-10 12:15:50', '2005-01-10 12:15:50', '1', '1', NULL, 'Telegraph Sport | Rugby Union', NULL, 'http://www.telegraph.co.uk/newsfeed/rss/sport_rugu.xml'),
('c7d5ddd0-3e83-5b31-5158-41e2e2c8eeaf', 0, '2005-01-10 12:15:55', '2005-01-10 12:15:55', '1', '1', NULL, 'Telegraph Travel', NULL, 'http://www.telegraph.co.uk/newsfeed/rss/travel_main.xml'),
('933a0c4c-b2b9-cef9-a3a1-41e2e2afe273', 0, '2005-01-10 12:16:00', '2005-01-10 12:16:00', '1', '1', NULL, 'Telegraph Wine', NULL, 'http://www.telegraph.co.uk/newsfeed/rss/wine.xml'),
('3ac7981d-0c22-8f87-72c3-41e2e2965536', 0, '2005-01-10 12:16:05', '2005-01-10 12:16:05', '1', '1', NULL, 'washingtonpost.com - Business', NULL, 'http://www.washingtonpost.com/wp-srv/business/rssheadlines.xml'),
('c09c8abc-7992-2dc4-face-41e2e268cfb9', 0, '2005-01-10 12:16:09', '2005-01-10 12:16:09', '1', '1', NULL, 'washingtonpost.com - Education', NULL, 'http://www.washingtonpost.com/wp-srv/education/rssheadlines.xml'),
('6de7e3cf-20a5-8ae9-9b91-41e2e2531c32', 0, '2005-01-10 12:16:14', '2005-01-10 12:16:14', '1', '1', NULL, 'washingtonpost.com - Health', NULL, 'http://www.washingtonpost.com/wp-srv/health/rssheadlines.xml'),
('e6962597-5923-ce09-9db4-41e2e2864635', 0, '2005-01-10 12:16:18', '2005-01-10 12:16:18', '1', '1', NULL, 'washingtonpost.com - Metro', NULL, 'http://www.washingtonpost.com/wp-srv/metro/rssheadlines.xml'),
('644ba5b6-6a86-c78c-9fc7-41e2e213bcc8', 0, '2005-01-10 12:16:23', '2005-01-10 12:16:23', '1', '1', NULL, 'washingtonpost.com - Nation', NULL, 'http://www.washingtonpost.com/wp-srv/nation/rssheadlines.xml'),
('e06ad79d-0a57-7366-1e30-41e2e2e06c22', 0, '2005-01-10 12:16:27', '2005-01-10 12:16:27', '1', '1', NULL, 'washingtonpost.com - Opinion', NULL, 'http://www.washingtonpost.com/wp-srv/opinion/rssheadlines.xml'),
('b04689c2-b068-7223-d8af-41e2e2687b82', 0, '2005-01-10 12:16:32', '2005-01-10 12:16:32', '1', '1', NULL, 'washingtonpost.com - 2004 Election', NULL, 'http://www.washingtonpost.com/wp-srv/politics/elections/2004/rssheadlines.xml'),
('4660f0e9-37bf-af65-dbb3-41e2e2e3aef3', 0, '2005-01-10 12:16:37', '2005-01-10 12:16:37', '1', '1', NULL, 'washingtonpost.com - Politics', NULL, 'http://www.washingtonpost.com/wp-srv/politics/rssheadlines.xml'),
('d549ff0c-6666-a153-9804-41e2e2dea5de', 0, '2005-01-10 12:16:41', '2005-01-10 12:16:41', '1', '1', NULL, 'washingtonpost.com - Real Estate', NULL, 'http://www.washingtonpost.com/wp-srv/realestate/rssheadlines.xml'),
('6204cd5b-0bf2-eda1-1c1b-41e2e2475997', 0, '2005-01-10 12:16:46', '2005-01-10 12:16:46', '1', '1', NULL, 'washingtonpost.com - Sports', NULL, 'http://www.washingtonpost.com/wp-srv/sports/rssheadlines.xml'),
('227a0fa6-21fb-a275-66f8-41e2e2b91da7', 0, '2005-01-10 12:16:51', '2005-01-10 12:16:51', '1', '1', NULL, 'washingtonpost.com - Technology', NULL, 'http://www.washingtonpost.com/wp-srv/technology/rssheadlines.xml'),
('b8ef9e66-846e-8c8a-5e37-41e2e2139fb6', 0, '2005-01-10 12:16:55', '2005-01-10 12:16:55', '1', '1', NULL, 'washingtonpost.com - World', NULL, 'http://www.washingtonpost.com/wp-srv/world/rssheadlines.xml'),
('1426c66e-f338-2f01-6c37-41e2e250f9c6', 0, '2005-01-10 12:17:09', '2005-01-10 12:17:09', '1', '1', NULL, 'Wired News', NULL, 'http://www.wired.com/news_drop/netcenter/netcenter.rdf'),
('dad0faed-5e63-a3d3-2600-41e2e25b3432', 0, '2005-01-10 12:17:13', '2005-01-10 12:17:13', '1', '1', NULL, 'African News from World Press Review', NULL, 'http://www.worldpress.org/feeds/Africa.xml'),
('975ea85d-b5e3-147d-9a4e-41e2e2bd803c', 0, '2005-01-10 12:17:18', '2005-01-10 12:17:18', '1', '1', NULL, 'Latin American and Canadian News from World Press Review', NULL, 'http://www.worldpress.org/feeds/Americas.xml'),
('5c4cc320-8083-64c3-3e26-41e2e2f6b657', 0, '2005-01-10 12:17:23', '2005-01-10 12:17:23', '1', '1', NULL, 'Asian News from World Press Review', NULL, 'http://www.worldpress.org/feeds/Asia.xml'),
('2b354b70-9a4f-f7ce-a98e-41e2e21f0c8f', 0, '2005-01-10 12:17:28', '2005-01-10 12:17:28', '1', '1', NULL, 'European News from World Press Review', NULL, 'http://www.worldpress.org/feeds/Europe.xml'),
('dc142b87-1213-1748-38c8-41e2e23eb448', 0, '2005-01-10 12:17:32', '2005-01-10 12:17:32', '1', '1', NULL, 'Middle Eastern News from World Press Review', NULL, 'http://www.worldpress.org/feeds/Mideast.xml'),
('ade6b2d5-1c1d-f17c-564c-41e2e20caaa3', 0, '2005-01-10 12:17:37', '2005-01-10 12:17:37', '1', '1', NULL, 'Top Headlines from World Press Review', NULL, 'http://www.worldpress.org/feeds/topstories.xml'),
('3c13d9ed-6b2e-ffc0-432a-41e2e2bd099b', 0, '2005-01-10 12:17:42', '2005-01-10 12:17:42', '1', '1', NULL, 'Breaking News Headlines from Around the World, Powered by Worldpress.org', NULL, 'http://www.worldpress.org/feeds/worldpresswire.xml'),
('cb27f088-bcd4-6378-d754-41e2e2c815b8', 0, '2005-01-10 12:17:50', '2005-01-10 12:17:50', '1', '1', NULL, 'Linux Journal - The Original Magazine of the Linux Community', NULL, 'http://www3.linuxjournal.com/news.rss'),
('d3b812de-b09b-d19d-1ef7-41e2e2c7175b', 0, '2005-01-10 12:17:51', '2005-01-10 12:17:51', '1', '1', NULL, 'ZDNet News - Front Door', NULL, 'http://zdnet.com.com/2036-2_2-0.xml'),
('4a1301d9-c4fe-f6be-4edb-41e2e22b41b0', 0, '2005-01-10 12:17:52', '2005-01-10 12:17:52', '1', '1', NULL, 'ZDNet News - Hardware', NULL, 'http://zdnet.com.com/2509-1103_2-0-10.xml'),
('b5cc579b-0de1-f1fb-2f4c-41e2e23dc415', 0, '2005-01-10 12:17:52', '2005-01-10 12:17:52', '1', '1', NULL, 'ZDNet News - Software', NULL, 'http://zdnet.com.com/2509-1104_2-0-10.xml'),
('36085453-2d39-d3b9-1b9c-41e2e2ab4ee7', 0, '2005-01-10 12:17:53', '2005-01-10 12:17:53', '1', '1', NULL, 'ZDNet News - Security', NULL, 'http://zdnet.com.com/2509-1105_2-0-10.xml'),
('ae0619d9-4e7e-f462-6d85-41e2e21bfd46', 0, '2005-01-10 12:17:53', '2005-01-10 12:17:53', '1', '1', NULL, 'ZDNet News - Commentary', NULL, 'http://zdnet.com.com/2509-1107_2-0-10.xml'),
('30d86812-bc01-d5d3-faca-41e2e2d9bd0d', 0, '2005-01-10 12:17:54', '2005-01-10 12:17:54', '1', '1', NULL, 'ZDNet News - Latest Headlines', NULL, 'http://zdnet.com.com/2509-11_2-0-20.xml'),
('90df24f4-9717-7a1b-ed5b-41e77fbcfba7', 0, '2005-01-14 00:16:00', '2005-01-14 00:16:00', '1', '1', '1', 'SourceForge.net: SF.net Recent Project Donations: SugarCRM', NULL, 'http://sourceforge.net/export/rss2_projdonors.php?group_id=107819'),
('4bbca87f-2017-5488-d8e0-41e7808c2553', 0, '2005-01-14 00:17:00', '2005-01-14 00:17:00', '1', '1', '1', 'SourceForge.net: SF.net Project News: SugarCRM', NULL, 'http://sourceforge.net/export/rss2_projnews.php?group_id=107819'),
('c03b64eb-d0d4-a188-e203-41e7804677bd', 0, '2005-01-14 00:17:00', '2005-01-14 00:17:00', '1', '1', '1', 'SourceForge.net: SF.net Project News: SugarCRM  (including full news text)', NULL, 'http://sourceforge.net/export/rss2_projnews.php?group_id=107819&rss_fulltext=1'),
('42210fc0-d21c-cff6-2c72-41e780195bfc', 0, '2005-01-14 00:17:00', '2005-01-14 00:17:00', '1', '1', '1', 'SourceForge.net: Project File Releases: SugarCRM', NULL, 'http://sourceforge.net/export/rss2_projfiles.php?group_id=107819'),
('d410145c-e217-8ad3-0e99-41e78038cf4a', 0, '2005-01-14 00:17:00', '2005-01-14 00:17:00', '1', '1', '1', 'SourceForge.net: Project Documentation (DocManager) Updates: SugarCRM', NULL, 'http://sourceforge.net/export/rss2_projdocs.php?group_id=107819'),
('db197b9c-9158-d779-0be3-41e780eda0f6', 0, '2005-01-14 00:17:00', '2005-01-14 00:17:00', '1', '1', '1', 'SourceForge.net: Project Summary: SugarCRM  (sugarcrm project)', NULL, 'http://sourceforge.net/export/rss2_projsummary.php?group_id=107819');

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

INSERT INTO `formats` (`x`, `y`, `name`) VALUES 
(15, 21, 'A5'),
(50, 70, 'Shi'),
(35, 50, 'GTO'),
(NULL, NULL, '-');

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

INSERT INTO `iframes` (`id`, `name`, `url`, `type`, `placement`, `status`, `deleted`, `date_entered`, `date_modified`, `created_by`) VALUES 
('d5640973-afa1-e0ec-9649-45ab471b2441', 'Р', 'http://www.numberoneadv.com', 'personal', 'shortcut', 1, 0, '2007-01-15 09:21:02', '2007-01-15 09:21:46', '177bd6bb-665d-cc61-4d82-45ab422290d3'),
('34161d15-e088-9140-55d1-45ab48ee6769', 'Бакхус', 'http://www.bacchus.bg/', 'personal', 'shortcut', 1, 0, '2007-01-15 09:24:05', '2007-01-15 09:24:05', '177bd6bb-665d-cc61-4d82-45ab422290d3');

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

INSERT INTO `inbound_email` (`id`, `deleted`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `name`, `status`, `server_url`, `email_user`, `email_password`, `port`, `service`, `mailbox`, `delete_seen`, `mailbox_type`, `template_id`, `stored_options`, `group_id`) VALUES 
('e503e46f-b603-6098-45ab-46f37d54db3d', 0, '2007-09-21 08:16:40', '2007-09-21 08:17:20', '1', '1', 'personal.Nikolina', 'Active', 'mail.liveerp.org', 'nikolina.stoyanova@liveerp.org', 'ePmo9h0CkFY=', 110, '::::::pop3::::notls::', 'INBOX', 1, 'pick', NULL, 'YTo0OntzOjk6ImZyb21fbmFtZSI7czowOiIiO3M6OToiZnJvbV9hZGRyIjtzOjA6IiI7czoxMDoib25seV9zaW5jZSI7YjowO3M6MTM6ImZpbHRlcl9kb21haW4iO3M6MDoiIjt9', '726c1497-7af4-510a-d56e-46f37dc5a170'),
('413397ef-c71a-a3d8-0020-46f37e647bdb', 0, '2007-09-21 08:19:59', '2007-10-15 07:16:29', '1', '1', 'personal.Emil', 'Active', 'mail.liveerp.org', 'emil.koralov@liveerp.org', 'u+5e/eBH78o=', 110, '::::::pop3::::notls::', 'INBOX', 1, 'pick', NULL, 'YTo0OntzOjk6ImZyb21fbmFtZSI7czoxMjoiRW1pbCBLb3JhbG92IjtzOjk6ImZyb21fYWRkciI7czowOiIiO3M6MTA6Im9ubHlfc2luY2UiO2I6MDtzOjEzOiJmaWx0ZXJfZG9tYWluIjtzOjA6IiI7fQ==', '141f1064-8e78-f58f-ee5f-46f37e56bb1a'),
('357a90d2-95d7-e278-0439-46f37f1204f1', 0, '2007-09-21 08:21:57', '2007-10-15 07:07:32', '1', '1', 'personal.Vera', 'Active', 'mail.liveerp.org', 'vera.valkova@liveerp.org', 'lzf3EgFjD+g=', 110, '::::::pop3::::notls::', 'INBOX', 1, 'pick', NULL, 'YTo0OntzOjk6ImZyb21fbmFtZSI7czoxMzoiVmVyYSBWYWxrb3ZhICI7czo5OiJmcm9tX2FkZHIiO3M6MDoiIjtzOjEwOiJvbmx5X3NpbmNlIjtiOjA7czoxMzoiZmlsdGVyX2RvbWFpbiI7czowOiIiO30=', 'd7b7db22-0179-aa25-3a55-46f37f9d8175'),
('141f932f-4b7f-a188-85c8-46f37f0bd8f2', 0, '2007-09-21 08:24:01', '2007-10-11 12:49:05', '1', '1', 'personal.Nick', 'Active', 'mail.liveerp.org', 'nick.rachev@liveerp.org', 'AYY4b902lkM=', 110, '::::::pop3::::notls::', 'INBOX', 1, 'pick', NULL, 'YTo0OntzOjk6ImZyb21fbmFtZSI7czoxMToiTmljayBSYWNoZXYiO3M6OToiZnJvbV9hZGRyIjtzOjA6IiI7czoxMDoib25seV9zaW5jZSI7YjowO3M6MTM6ImZpbHRlcl9kb21haW4iO3M6MDoiIjt9', 'db72618d-35da-19ad-1b67-46f37f819f41'),
('87a002d5-64a1-8537-4398-46f3ad162055', 0, '2007-09-21 11:37:41', '2007-10-11 13:27:06', '1', '1', 'personal.admin', 'Active', 'email.livesoft-bg.com', 'peter.peshev@livesoft-bg.com', 'qmv/QLBojTM=', 110, '::::::pop3::::notls::', 'INBOX', 0, 'pick', NULL, 'YTo0OntzOjk6ImZyb21fbmFtZSI7czowOiIiO3M6OToiZnJvbV9hZGRyIjtzOjA6IiI7czoxMDoib25seV9zaW5jZSI7YjowO3M6MTM6ImZpbHRlcl9kb21haW4iO3M6MDoiIjt9', '1'),
('f22c8709-2871-e2a5-c600-470a0303d172', 0, '2007-10-08 10:14:35', '2007-10-08 10:22:10', 'e6215035-1bef-82fe-0c85-470a0358b1fb', '1', 'personal.Panayot', 'Active', 'mail.liveerp.org', 'panayot.panayotov@liveerp.org', '7ZQSHd5jxC4=', 110, '::::::pop3::::notls::', 'INBOX', 0, 'pick', NULL, 'YTo0OntzOjk6ImZyb21fbmFtZSI7czoxNzoiUGFuYXlvdCBQYW5heW90b3YiO3M6OToiZnJvbV9hZGRyIjtzOjA6IiI7czoxMDoib25seV9zaW5jZSI7YjowO3M6MTM6ImZpbHRlcl9kb21haW4iO3M6MDoiIjt9', 'e6215035-1bef-82fe-0c85-470a0358b1fb');

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

INSERT INTO `ink` (`id`, `date_entered`, `date_modified`, `assigned_user_id`, `modified_user_id`, `created_by`, `name`, `short_symbol`, `show_name`, `type`, `cmyk_type`, `pantone`, `PMS_mix_charge`, `active`, `sortorder`, `description`, `deleted`) VALUES 
('c7b4444e-2af8-1970-72e6-46812acdc62f', '2007-06-26 15:01:28', '2007-08-28 08:23:24', '1', '1', '1', 'Син', 'C', NULL, 'CMYK', 'Cyan', NULL, 'on', 'c7b4444e-2af8-1970-72e6-46812acdc62f', 1, NULL, 0),
('bb2b1cb0-55b9-8261-ab24-468225565659', '2007-06-27 08:54:54', '2007-08-28 08:23:24', '1', '1', '1', 'Жълто', 'Y', NULL, 'CMYK', 'Proc Yellow', NULL, 'off', 'c7b4444e-2af8-1970-72e6-46812acdc62f', NULL, NULL, 0),
('52d3ab7e-36eb-80dc-866d-46b216b81e73', '2007-08-02 17:36:19', '2007-08-28 08:23:24', '1', '1', '1', 'Червено', 'M', NULL, 'CMYK', 'Magenta', NULL, 'off', 'on', NULL, NULL, 0),
('43a1e427-3cef-1fce-d9a7-46b2164cbc65', '2007-08-02 17:37:09', '2007-08-30 07:45:29', '1', '1', '1', 'Черно', 'K', NULL, 'CMYK', 'Proc Black', NULL, 'off', 'on', NULL, NULL, 0);

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

INSERT INTO `layout` (`id`, `product_component_id`, `number_lots`, `number_units`, `run_style`, `format`, `date_entered`, `date_modified`, `assigned_user_id`, `modified_user_id`, `created_by`, `name`, `signleprice_a`, `singleprice_b`, `price_a`, `price_b`, `description`, `deleted`) VALUES 
('c464a966-2602-b7e1-4a03-46d7ca5d9459', 'b2b4f119-b162-e477-9f78-46d7cac9f270', 1, 4, '2', 'Shi', '2007-08-31 08:00:52', '2007-08-31 08:00:52', NULL, NULL, '1', 'Предпечат-Листовки ДЗИ-1-1', NULL, NULL, NULL, NULL, NULL, 0),
('1b16ea32-5c86-9dbe-ce57-46b826b156b1', '598457bc-776a-9154-9b63-4652c9ce58cb', 2, 2, '2', 'GTO', '2007-08-07 08:00:48', '2007-08-07 08:00:48', NULL, NULL, '1', 'Предпечат-Каталог "Пресфото"-2-2', NULL, NULL, NULL, NULL, NULL, 0),
('a845814c-3524-5da9-64d1-46b824f16c13', '598457bc-776a-9154-9b63-4652c9ce58cb', 8, NULL, '1', 'GTO', '2007-08-07 07:52:17', '2007-08-07 07:52:17', NULL, NULL, '1', 'Предпечат-Каталог "Пресфото"-2-2', NULL, NULL, NULL, NULL, NULL, 0),
('9938cdd1-f0df-314f-5b4e-46d6dc8e6483', '8f50860d-16b5-5491-e451-46d6dce0fc06', 1, NULL, '1', 'GTO', '2007-08-30 15:02:43', '2007-08-30 15:02:43', NULL, NULL, '1', 'Предпечат-Книга Компанията на паяците-3-1', NULL, NULL, NULL, NULL, NULL, 0),
('6f46a160-b003-6f53-b2a7-46c57fd70f65', '6508c5a0-0630-b9c2-49df-46c57f37ab0c', 2, NULL, '1', NULL, '2007-08-17 11:01:01', '2007-08-17 11:01:01', NULL, NULL, '1', 'Предпечат-Първо издание-1-1', NULL, NULL, NULL, NULL, NULL, 0),
('cb9e2cf4-d514-5911-bd2e-46c93e3aacfe', 'c165910b-df60-1b59-1d45-46c93ee2e59d', 1, NULL, '1', NULL, '2007-08-20 07:09:27', '2007-08-20 07:09:27', NULL, NULL, '1', 'Предпечат-Първо издание-2-1', NULL, NULL, NULL, NULL, NULL, 0),
('6d4c9593-e648-74e1-9b99-46c944b7683b', '629da741-d120-307b-0f49-46c94438e8c8', 1, NULL, '1', 'GTO', '2007-08-20 07:38:15', '2007-08-20 07:38:15', NULL, NULL, '1', 'Предпечат-Каталог-01-2007-1-1', NULL, NULL, NULL, NULL, NULL, 0),
('996be1ed-a112-10ac-abf1-46d43a3ab852', '90527d21-6801-50aa-5e6c-46d43a4c0c12', 1, NULL, '1', NULL, '2007-08-28 15:10:27', '2007-08-28 15:10:27', NULL, NULL, '1', 'Предпечат-Каталог Пресфото-3-1', NULL, NULL, NULL, NULL, NULL, 0),
('862b14b1-d4cb-5bc7-40d1-46d43b6026df', '7d0627b7-e9f0-ab14-cfbd-46d43bd1e411', 1, NULL, '1', NULL, '2007-08-28 15:11:37', '2007-08-28 15:11:37', NULL, NULL, '1', 'Предпечат-Каталог Пресфото-4-1', NULL, NULL, NULL, NULL, NULL, 0),
('95c0ec7e-4312-8c05-6f3c-46d691f296dd', '8bf7767a-67fb-4332-3f8d-46d69175660b', NULL, NULL, '1', NULL, '2007-08-30 09:42:48', '2007-08-30 09:42:48', NULL, NULL, '1', 'Предпечат-Книга Компанията на паяците-3-1', NULL, NULL, NULL, NULL, NULL, 0),
('d15c3714-e823-a502-f4e9-46d6860f74ad', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 1, 1, '1', 'GTO', '2007-08-30 08:57:26', '2007-08-30 08:57:26', NULL, NULL, '1', 'Предпечат-Книга Компанията на паяците-2-1', NULL, NULL, NULL, NULL, NULL, 0),
('deab7c83-3da9-0222-bac7-46d56e27b181', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', 8, NULL, '1', 'Shi', '2007-08-29 13:04:29', '2007-08-29 13:04:29', NULL, NULL, '1', 'Предпечат-Книга Компанията на паяците-1-3', NULL, NULL, NULL, NULL, NULL, 0),
('e7f1625a-ad05-591a-6892-46d56e67c434', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', 1, 1, '2', 'Shi', '2007-08-29 13:04:29', '2007-08-30 15:13:43', NULL, NULL, '1', 'Предпечат-Книга Компанията на паяците-1-4', NULL, NULL, NULL, NULL, NULL, 1),
('2976d636-9243-22e6-b31d-46e523b9d8f8', '20378ec0-7b98-8e25-06e9-46e5232bb652', NULL, NULL, '1', NULL, '2007-09-10 11:00:33', '2007-09-10 11:00:33', NULL, NULL, '1', 'Предпечат-Книга Компанията на паяците-4-1', NULL, NULL, NULL, NULL, NULL, 0),
('de294677-eaee-5383-b4a9-46ebb368ac32', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 1, NULL, '1', 'GTO', '2007-09-15 10:25:50', '2007-09-15 10:26:22', NULL, NULL, '1', 'Предпечат-Корица - Книга Компанията на паяците-2', NULL, NULL, NULL, NULL, NULL, 1),
('81c64fec-429a-51c8-7b9e-46f8e567a957', '42999efc-5b2a-c093-f540-46f8e579100a', NULL, NULL, '1', NULL, '2007-09-25 10:41:25', '2007-09-25 10:41:25', NULL, NULL, '1', 'Предпечат-Книга Компанията на паяците-3-1', NULL, NULL, NULL, NULL, NULL, 0),
('5756e75b-aadd-6675-11c2-4705f49d2e7c', 'e7840f84-fe38-1b71-4ce4-4705f47ed801', 1, 4, '2', 'Shi', '2007-10-05 08:22:54', '2007-10-05 08:22:54', NULL, NULL, '1', 'Предпечат-Листовки ДЗИ-1-1', NULL, NULL, NULL, NULL, NULL, 0),
('8c387071-27fb-5d5e-c044-470614d55d75', '40757223-4089-a067-db22-470614470ba6', 1, NULL, '1', 'GTO', '2007-10-05 10:39:28', '2007-10-05 10:39:28', NULL, NULL, '1', 'Предпечат-Книга Компанията на паяците-3-1', NULL, NULL, NULL, NULL, NULL, 0),
('de9e1be9-e117-46c3-5b26-4709ea3ffd80', 'dc72a139-71cc-4680-0e8b-4709ea86b5fd', 3, 1, '1', 'GTO', '2007-10-08 08:29:35', '2007-10-08 08:29:35', NULL, NULL, '1', 'Предпечат-Стикери "LAVAZZA"-1-1', NULL, NULL, NULL, NULL, NULL, 0);

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

INSERT INTO `machines` (`id`, `date_entered`, `date_modified`, `assigned_user_id`, `modified_user_id`, `created_by`, `name`, `category`, `format`, `description`, `deleted`) VALUES 
('e277abdd-529a-886a-cce4-45e4417266fd', '2007-02-27 14:35:34', '2007-02-27 14:35:34', '1', '1', '1', 'Shinohara', NULL, NULL, NULL, 0),
('a3b6288c-49d2-bdb2-869e-45e442884a0f', '2007-02-27 14:38:05', '2007-02-27 14:38:05', '1', '1', '1', 'GTO', NULL, NULL, NULL, 0);

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

INSERT INTO `meetings` (`id`, `date_entered`, `date_modified`, `assigned_user_id`, `modified_user_id`, `created_by`, `name`, `location`, `duration_hours`, `duration_minutes`, `date_start`, `time_start`, `date_end`, `parent_type`, `status`, `parent_id`, `description`, `deleted`, `reminder_time`, `outlook_id`) VALUES 
('322f9bed-6e52-5453-1eaa-46f8ce3b2bdd', '2007-09-25 09:02:52', '2007-09-25 09:06:25', '1', '1', '1', 'kljklj', NULL, 1, 0, '2007-09-25', '09:15:00', '2007-09-25', NULL, 'Planned', NULL, NULL, 1, -1, NULL),
('8505ef05-dbe6-8a0d-bd23-46f8cedf5ff1', '2007-09-25 09:03:59', '2007-09-25 09:05:31', '1', '1', '1', 'JJBJ', NULL, 1, 0, '2007-09-25', '09:15:00', '2007-09-25', 'Accounts', 'Planned', NULL, NULL, 1, 900, NULL);

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

INSERT INTO `meetings_users` (`id`, `meeting_id`, `user_id`, `required`, `accept_status`, `date_modified`, `deleted`) VALUES 
('46af7e33-84be-0666-9338-46f8cea32640', '322f9bed-6e52-5453-1eaa-46f8ce3b2bdd', '1', '1', 'accept', '2007-09-25 09:06:25', 1),
('e949bbc5-40bf-0f65-e4fc-46f8cf9ab48a', '8505ef05-dbe6-8a0d-bd23-46f8cedf5ff1', '1', '1', 'accept', '2007-09-25 09:05:31', 1);

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

INSERT INTO `operations` (`id`, `date_entered`, `date_modified`, `assigned_user_id`, `modified_user_id`, `created_by`, `name`, `type`, `sp`, `count`, `startprice`, `coefficient`, `tir`, `kol`, `description`, `deleted`) VALUES 
('273450b1-677f-fe2a-7b99-46d7cb1bdf30', '2007-08-31 08:06:02', '2007-08-31 08:06:02', '1', '1', '1', 'Рязане', 'Книговезане', 0.0015, NULL, NULL, NULL, 'on', 'on', NULL, 0),
('e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-01 16:46:40', '2007-08-29 13:50:08', '1', '1', '1', 'Лепене', 'Други', 0.02, NULL, NULL, NULL, 'on', 'off', NULL, 0),
('5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-01 16:48:40', '2007-08-29 13:49:50', '1', '1', '1', 'ВШМ', 'Книговезане', 0.02, NULL, NULL, NULL, 'on', 'off', NULL, 0),
('2a31ebad-52ef-a8c0-dda8-46b0b9a4cb4a', '2007-08-01 16:49:51', '2007-08-31 08:05:19', '1', '1', '1', 'Опаковане', 'Други', 0.0005, NULL, NULL, NULL, 'on', 'on', NULL, 0),
('a890ac5d-c429-a03f-a82a-46b0b9a438a1', '2007-08-01 16:50:33', '2007-08-01 16:50:33', '1', '1', '1', 'Индивид. Опаковане', 'Други', 0, NULL, NULL, NULL, 'off', 'off', NULL, 0),
('d2983969-7434-7d5f-d7d3-4709e5390126', '2007-10-08 08:10:16', '2007-10-08 08:13:10', '1', '1', '1', 'Сгъване', 'аа', 0.0075, '1', '10', '1', 'on', 'off', NULL, 0);

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

INSERT INTO `opportunities` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `assigned_user_id`, `created_by`, `deleted`, `name`, `opportunity_type`, `lead_source`, `amount`, `amount_backup`, `amount_usdollar`, `currency_id`, `date_closed`, `next_step`, `sales_stage`, `probability`, `description`) VALUES 
('c4085e78-f9a8-91e9-8e5c-46cec6b8c370', '2007-08-24 11:53:45', '2007-08-30 11:53:46', '1', '1', '1', 1, 'Сделка 1', NULL, NULL, 1000, NULL, 1000, '-99', '2007-08-24', NULL, 'Prospecting', 10, NULL);

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

INSERT INTO `paper` (`id`, `pname`, `fname`, `pref_supplier_id`, `pref_supplier_name`, `description`, `format`, `size_h`, `size_w`, `weight`, `mweight`, `packcount`, `cutcount`, `chrome`, `texture`, `absorbtion`, `color`, `side`, `man`, `quality`, `is_active`, `price_on`, `price`, `price_unit`, `size_unit`, `weight_unit`, `status`, `deleted`, `date_entered`, `date_modified`, `created_by`) VALUES 
('a8948502-cea9-500a-0d8c-464d6305dfdc', 'Хартия 70x100 - мат - гланц', 'Хартия 70x100 - мат - гланц', '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'К1 Партнерс', NULL, NULL, 70, 100, 90, NULL, 15873, NULL, 'chromed', 'мат', 'absorption2', NULL, NULL, NULL, 'quality1', 0, NULL, NULL, NULL, NULL, 'gram', NULL, 0, '2007-05-18 08:26:06', '2007-07-17 13:04:49', '1'),
('1275003c-ecc0-48d5-aa67-46d7cab64165', '60 х 90 - мат', '60 х 90 - мат', NULL, NULL, NULL, NULL, 60, 90, 150, NULL, NULL, NULL, NULL, 'мат', NULL, NULL, 'One-Sided', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'gram', NULL, 0, '2007-08-31 07:58:16', '2007-08-31 07:58:16', '1'),
('a4cb4337-447a-2e72-b569-464d64ac31bf', 'Хартия - Мат - 70х100 -170гр', 'Хартия - Мат - 70х100 -170гр', '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'К1 Партнерс', NULL, NULL, 70, 100, 170, NULL, NULL, NULL, 'chromed', 'мат', 'absorption1', 'color1', 'One-Sided', NULL, 'quality1', 0, NULL, NULL, NULL, NULL, 'gram', NULL, 0, '2007-05-18 08:34:00', '2007-07-23 14:27:07', '1'),
('afdedf2d-1d0d-439f-d9a8-464d656ee6d3', 'Хартия - Мат - 70х100 -300гр', 'Хартия - Мат - 70х100 -300гр', '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'К1 Партнерс', NULL, NULL, 70, 100, 300, NULL, NULL, NULL, NULL, 'мат', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'gram', NULL, 0, '2007-05-18 08:35:55', '2007-05-18 08:36:04', '1'),
('6e81e697-e379-92dc-732c-46d6861ae393', 'Опаковъчен картон 70x100', 'Опаковъчен картон', NULL, NULL, NULL, NULL, 70, 100, 240, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'One-Sided', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'gram', NULL, 0, '2007-08-30 08:56:52', '2007-08-30 08:56:52', '1'),
('acb15f14-faa6-de84-7614-46d52b677396', 'Хартия 50х100 мат-гланц', '100', NULL, NULL, NULL, NULL, 50, 100, NULL, NULL, NULL, NULL, 'chromed', 'мат', 'absorption2', NULL, 'One-Sided', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2007-08-29 08:17:52', '2007-08-29 08:17:52', '1'),
('13dfa91a-0374-7e5a-f194-46d568e8137b', '70 x 100 - офсет', '70 x 100 - офсет', NULL, NULL, NULL, NULL, 70, 100, 80, NULL, NULL, NULL, 'chromed', NULL, NULL, NULL, 'One-Sided', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'gram', NULL, 0, '2007-08-29 12:35:47', '2007-08-29 12:35:47', '1');

-- --------------------------------------------------------

-- 
-- Структура на таблица `paperformat`
-- 

CREATE TABLE `paperformat` (
  `id` varchar(36) NOT NULL default '',
  `date_entered` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `assigned_user_id` varchar(36) default NULL,
  `modified_user_id` varchar(36) default NULL,
  `created_by` varchar(36) default NULL,
  `name` varchar(50) NOT NULL default '',
  `x` float NOT NULL,
  `y` float NOT NULL,
  `description` text,
  `deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 PACK_KEYS=0;

-- 
-- Дъмп (схема) на данните в таблицата `paperformat`
-- 

INSERT INTO `paperformat` (`id`, `date_entered`, `date_modified`, `assigned_user_id`, `modified_user_id`, `created_by`, `name`, `x`, `y`, `description`, `deleted`) VALUES 
('9bd4ba93-d283-27ae-8bd0-47168f6ed09c', '2007-10-17 22:39:18', '2007-10-17 22:39:18', NULL, '28d2f82e-0aec-0640-54b7-4716657084fd', '28d2f82e-0aec-0640-54b7-4716657084fd', '30 x 21', 30, 21, NULL, 0),
('4ef59182-93e2-9a2c-14aa-47168f1a5e34', '2007-10-17 22:40:21', '2007-10-17 22:40:21', NULL, '28d2f82e-0aec-0640-54b7-4716657084fd', '28d2f82e-0aec-0640-54b7-4716657084fd', '21 x 30', 21, 30, NULL, 0),
('f0a2ba7e-fb76-abbd-c801-47168fadb68f', '2007-10-17 22:42:33', '2007-10-17 22:42:33', NULL, '28d2f82e-0aec-0640-54b7-4716657084fd', '28d2f82e-0aec-0640-54b7-4716657084fd', '30 x 50', 30, 50, NULL, 0);

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

INSERT INTO `papers_relation` (`id`, `paper_id`, `relation_id`, `relation_type`, `deleted`, `date_modified`) VALUES 
('a9705ad9-fcec-f675-5583-464d630b8b40', 'a8948502-cea9-500a-0d8c-464d6305dfdc', '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'Suppliers', 0, '0000-00-00 00:00:00'),
('94f1e138-32ff-8abb-4d6c-464d634a1d20', 'a8948502-cea9-500a-0d8c-464d6305dfdc', '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'Suppliers', 0, '0000-00-00 00:00:00'),
('a57b3f79-c2bb-30b2-5777-464d6403e01a', 'a4cb4337-447a-2e72-b569-464d64ac31bf', '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'Suppliers', 0, '0000-00-00 00:00:00'),
('38f23bae-e752-b195-2108-464d65b4d7c9', 'a4cb4337-447a-2e72-b569-464d64ac31bf', '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'Suppliers', 0, '0000-00-00 00:00:00'),
('b0800831-09ec-59e6-7d39-464d655ad135', 'afdedf2d-1d0d-439f-d9a8-464d656ee6d3', '', 'Suppliers', 0, '0000-00-00 00:00:00'),
('e9affdf4-ef0f-ddfe-1af8-464d650b2d24', 'afdedf2d-1d0d-439f-d9a8-464d656ee6d3', '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'Suppliers', 0, '0000-00-00 00:00:00'),
('a5d2bd44-36d6-8088-92cb-469cbe2b9497', 'a8948502-cea9-500a-0d8c-464d6305dfdc', '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'Suppliers', 0, '0000-00-00 00:00:00'),
('5ca23881-dfa8-e498-8e22-469cbe05c8f2', 'a8948502-cea9-500a-0d8c-464d6305dfdc', '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'Suppliers', 0, '0000-00-00 00:00:00'),
('c888e0d0-dfc6-abe3-45f1-46a4ba4a7e40', 'a4cb4337-447a-2e72-b569-464d64ac31bf', '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'Suppliers', 0, '0000-00-00 00:00:00'),
('8bb40b4f-90e6-2afb-a531-46d7ca138525', '1275003c-ecc0-48d5-aa67-46d7cab64165', '', 'Suppliers', 0, '0000-00-00 00:00:00'),
('71ff0141-bc07-fbd6-dafd-46d6867fb044', '6e81e697-e379-92dc-732c-46d6861ae393', '', 'Suppliers', 0, '0000-00-00 00:00:00'),
('b029e1b7-b845-4c8b-1441-46d52b75b025', 'acb15f14-faa6-de84-7614-46d52b677396', '', 'Suppliers', 0, '0000-00-00 00:00:00'),
('1bc622ef-7b1d-0a80-258a-46d568d2c73c', '13dfa91a-0374-7e5a-f194-46d568e8137b', '', 'Suppliers', 0, '0000-00-00 00:00:00');

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
  `default` varchar(255) default NULL,
  `description` text,
  `deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 PACK_KEYS=0;

-- 
-- Дъмп (схема) на данните в таблицата `paperwaste`
-- 

INSERT INTO `paperwaste` (`id`, `date_entered`, `date_modified`, `assigned_user_id`, `modified_user_id`, `created_by`, `name`, `type`, `setup_waste_per_plate`, `step_amount`, `pressmachine_id`, `pressmachine_name`, `operation_id`, `operation_name`, `active`, `default`, `description`, `deleted`) VALUES 
('8e7c9439-60a7-c5c2-9953-468e28c1bda4', '2007-07-06 11:34:26', '2007-09-26 12:14:10', '1', '1', '1', 'Макулатура - ВШМ', 'Others', NULL, 1000, '7709512d-3380-6f6e-a4c0-4688c89520cf', 'GTO', '5111675d-fc3e-ffba-8548-46b0b9743e2c', 'ВШМ', 'on', 'on', NULL, 0),
('b5f04e5d-0678-fe92-9ff8-46d572708e89', '2007-08-29 13:20:59', '2007-10-03 14:44:34', '1', '1', '1', 'Печат - Shinohara', 'Press', 40, 1000, 'aa750713-245a-38cc-b436-4688fc384385', 'Shinohara', NULL, NULL, 'on', 'on', NULL, 0),
('174012c1-71cd-ee4a-806c-46b0ba8e4d92', '2007-08-01 16:54:17', '2007-08-30 08:50:07', '1', '1', '1', 'Макулатура  - Лепене', 'Others', NULL, 1000, '7709512d-3380-6f6e-a4c0-4688c89520cf', 'GTO', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', 'Лепене', 'on', 'on', NULL, 0),
('d98ca1bf-5267-f88b-979b-46b0bc63a000', '2007-08-01 17:03:05', '2007-10-03 14:46:48', '1', '1', '1', 'Печат - GTO', 'Press', 40, 1000, '7709512d-3380-6f6e-a4c0-4688c89520cf', 'GTO', NULL, NULL, 'on', 'on', NULL, 0),
('6c6efb1c-bee8-732b-d475-46fba9ed9cc4', '2007-09-27 13:01:01', '2007-10-03 14:46:35', '1', '1', '1', 'Печат2 - GTO', 'Press', 50, 1000, '7709512d-3380-6f6e-a4c0-4688c89520cf', 'GTO', NULL, NULL, 'on', 'off', NULL, 0);

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

INSERT INTO `paperwasteline` (`id`, `paperwaste_id`, `impressions_number`, `base_waste`, `step_waste`, `deleted`, `date_entered`, `date_modified`, `created_by`) VALUES 
('b35d13eb-6051-ad2a-4b03-4692470871f2', 'b1fce05a-3796-4055-c968-469247086b66', 1000, 500, 60, 0, '2007-07-09 14:36:16', '2007-07-09 14:36:16', '1'),
('b3cb791e-af96-c3c1-b865-4692471bcf92', 'b1fce05a-3796-4055-c968-469247086b66', 5000, 740, 55, 0, '2007-07-09 14:36:16', '2007-07-09 14:36:16', '1'),
('c048a88f-043f-029d-708a-469248b97e09', 'bee79046-7822-6530-03fe-46924839ac7c', 12313, 123, 123, 0, '2007-07-09 14:39:54', '2007-07-09 14:39:54', '1'),
('f2f9f274-6c50-9a42-4eb9-4703abe1a6b0', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 1000, 30, 30, 0, '2007-10-03 14:46:49', '2007-10-03 14:46:49', '1'),
('590ff3c9-b2ad-6189-613e-46cd3c692655', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 1000, 40, 50, 1, '2007-08-23 07:49:23', '2007-08-30 08:49:56', '1'),
('5b6828ea-9f23-c89d-01f8-46cd3c64521c', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 3000, 220, 45, 1, '2007-08-23 07:49:23', '2007-08-30 08:49:56', '1'),
('5d9fe6f5-37b3-d296-eede-46cd3c9e9b13', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 5000, 310, 40, 1, '2007-08-23 07:49:23', '2007-08-30 08:49:56', '1'),
('5fda4453-1591-4a1d-886f-46cd3cd30a40', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 8000, 430, 35, 1, '2007-08-23 07:49:23', '2007-08-30 08:49:56', '1'),
('62158528-5053-f0cd-7bf5-46cd3cfeb8c6', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 11000, 535, 30, 1, '2007-08-23 07:49:23', '2007-08-30 08:49:56', '1'),
('2e21ecdb-a087-daaa-6b4e-46cd3c4ee61f', '174012c1-71cd-ee4a-806c-46b0ba8e4d92', 1000, 10, 50, 1, '2007-08-23 07:49:46', '2007-08-30 08:50:07', '1'),
('305de2ff-a956-a5d5-d4e8-46cd3c042fe3', '174012c1-71cd-ee4a-806c-46b0ba8e4d92', 3000, 110, 45, 1, '2007-08-23 07:49:46', '2007-08-30 08:50:07', '1'),
('32add6d6-83d3-6538-5137-46cd3c7f7d7b', '174012c1-71cd-ee4a-806c-46b0ba8e4d92', 5000, 200, 40, 1, '2007-08-23 07:49:46', '2007-08-30 08:50:07', '1'),
('34ee252b-e662-7655-6af0-46cd3cd85e86', '174012c1-71cd-ee4a-806c-46b0ba8e4d92', 8000, 320, 35, 1, '2007-08-23 07:49:46', '2007-08-30 08:50:07', '1'),
('3728b043-4ea0-92d8-f87f-46cd3c3dc323', '174012c1-71cd-ee4a-806c-46b0ba8e4d92', 11000, 425, 30, 1, '2007-08-23 07:49:46', '2007-08-30 08:50:07', '1'),
('6ac1e1d1-f0b1-bc63-6691-4703ab754c7b', '6c6efb1c-bee8-732b-d475-46fba9ed9cc4', 1000, 40, 40, 0, '2007-10-03 14:46:35', '2007-10-03 14:46:35', '1'),
('2728b51e-c692-e61f-f961-4703aab70ac7', 'b5f04e5d-0678-fe92-9ff8-46d572708e89', 1000, 30, 30, 0, '2007-10-03 14:44:34', '2007-10-03 14:44:34', '1'),
('9f12081f-57dd-9129-5e77-46fcdfeed4be', '6c6efb1c-bee8-732b-d475-46fba9ed9cc4', 1000, 40, 40, 1, '2007-09-28 11:01:46', '2007-10-03 14:46:35', '1'),
('a924da01-4c78-120d-fd1f-46fba902e050', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 1000, 30, 30, 1, '2007-09-27 13:01:53', '2007-10-03 14:46:48', '1'),
('c3150d76-c379-38eb-abc8-46fba996f584', '6c6efb1c-bee8-732b-d475-46fba9ed9cc4', 1000, 40, 40, 1, '2007-09-27 13:01:38', '2007-09-28 11:01:46', '1'),
('726942f2-a86e-2730-4f8a-46fba9c38c57', '6c6efb1c-bee8-732b-d475-46fba9ed9cc4', 1000, 40, 40, 1, '2007-09-27 13:01:01', '2007-09-27 13:01:38', '1'),
('52edce77-5c94-bd68-66d5-46fa2ab0c64b', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 1000, 40, 10, 1, '2007-09-26 09:46:50', '2007-09-26 09:47:48', '1'),
('40972be5-49a4-8248-18c8-46fa2ad9e9ca', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 1000, 40, 10, 1, '2007-09-26 09:46:46', '2007-09-26 09:46:50', '1'),
('6cbb9276-7daa-1d9e-5316-46fa2967f005', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 1000, 40, 10, 1, '2007-09-26 09:42:53', '2007-09-26 09:46:45', '1'),
('95f647f8-d519-b303-ef3f-46fa29bb7b52', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 1000, 40, 10, 1, '2007-09-26 09:40:28', '2007-09-26 09:42:53', '1'),
('ea86f95d-2ebf-7d35-fd3e-46d684a86c4e', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 1000, 40, 10, 1, '2007-08-30 08:49:56', '2007-09-26 09:40:04', '1'),
('76d68cbf-fb06-cead-3eab-46d684dc398f', '174012c1-71cd-ee4a-806c-46b0ba8e4d92', 1000, 33, 3, 0, '2007-08-30 08:50:07', '2007-08-30 08:50:07', '1'),
('86e25025-0e45-a9b0-7982-46fa28831fa5', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 1000, 40, 10, 1, '2007-09-26 09:40:04', '2007-09-26 09:40:28', '1'),
('7315f3a3-92bd-5922-30f7-46d571c74d5c', '2962049a-32fb-10bd-221a-46d56ba8f8fa', 1000, 40, 10, 0, '2007-08-29 13:17:03', '2007-08-29 13:17:03', '1'),
('78d8273e-0351-8d75-a4c9-46fa4dcb99a7', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 1000, 40, 10, 0, '2007-09-26 12:14:10', '2007-09-26 12:14:10', '1'),
('4b8b0360-9bf5-1123-9977-46fa4d73dd8a', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 1000, 40, 10, 1, '2007-09-26 12:13:57', '2007-09-26 12:14:10', '1'),
('d8ebfce2-e2e0-2db6-c144-46fa4cf49c02', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 1000, 40, 10, 1, '2007-09-26 12:12:18', '2007-09-26 12:13:56', '1'),
('29154930-2033-7d57-82bc-46fa4cedc035', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 1000, 40, 10, 1, '2007-09-26 12:12:12', '2007-09-26 12:12:18', '1'),
('84e2c132-5929-6726-f618-46fa4a838502', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 1000, 40, 10, 1, '2007-09-26 12:05:08', '2007-09-26 12:12:12', '1'),
('b6230c8e-000b-ace9-66eb-46fa4a97ab60', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 1000, 40, 10, 1, '2007-09-26 12:04:50', '2007-09-26 12:05:08', '1'),
('e656f976-dec7-59f1-1c7a-46fa4a3ce447', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 1000, 40, 10, 1, '2007-09-26 12:04:38', '2007-09-26 12:04:50', '1'),
('88a1e3bf-4478-1dac-91d6-46fa4a15a1a4', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 1000, 40, 10, 1, '2007-09-26 12:03:44', '2007-09-26 12:04:38', '1'),
('95bb0677-1336-2cfc-f0cf-46fa4a6bc1e3', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 1000, 40, 10, 1, '2007-09-26 12:01:33', '2007-09-26 12:03:44', '1'),
('4c05a491-2e1b-2604-6e7e-46fa2c6e5883', '461c6bc0-7f8d-76c5-88ba-46fa2c463c62', 100, 100, 10, 0, '2007-09-26 09:55:00', '2007-09-26 09:55:00', '1'),
('47a7bfb0-368c-cda5-16c9-46fa2c704b7b', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 1000, 40, 10, 1, '2007-09-26 09:54:02', '2007-09-26 12:01:33', '1'),
('e3cd90fe-9499-54c1-a53b-46fa2bec8a33', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 1000, 40, 10, 1, '2007-09-26 09:52:51', '2007-09-26 09:54:02', '1'),
('c727afe5-96c3-ea25-b913-46fa2bcf791b', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 1000, 40, 10, 1, '2007-09-26 09:49:58', '2007-09-26 09:52:51', '1'),
('ac6fd127-9655-5f92-89ba-46fa2ad4973f', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 1000, 40, 10, 1, '2007-09-26 09:48:30', '2007-09-26 09:49:58', '1'),
('11bd9b14-6873-b0cb-e375-46fa2aca296d', '8e7c9439-60a7-c5c2-9953-468e28c1bda4', 1000, 40, 10, 1, '2007-09-26 09:47:49', '2007-09-26 09:48:30', '1'),
('b37b8b2f-6e8e-3f4a-3aa8-46d6771d9017', 'd98ca1bf-5267-f88b-979b-46b0bc63a000', 1000, 30, 30, 1, '2007-08-30 07:55:28', '2007-09-27 13:01:53', '1'),
('cda1428b-74b5-6873-e51f-46d588a04f10', 'b5f04e5d-0678-fe92-9ff8-46d572708e89', 1000, 30, 30, 1, '2007-08-29 14:53:41', '2007-10-03 14:44:34', '1');

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

INSERT INTO `press` (`id`, `date_entered`, `date_modified`, `assigned_user_id`, `modified_user_id`, `created_by`, `name`, `pressmachine_name`, `pressmachine_id`, `description`, `deleted`) VALUES 
('cb9d9b35-cf8c-e010-3dcb-46d7ca94e08b', '2007-08-31 08:00:52', '2007-08-31 08:00:52', NULL, '1', '1', '', 'Shinohara', 'aa750713-245a-38cc-b436-4688fc384385', NULL, 0),
('1c7ef3f2-7652-2f25-4ac7-46b826160705', '2007-08-07 08:00:48', '2007-08-07 08:00:48', NULL, '1', '1', '', 'GTO', '7709512d-3380-6f6e-a4c0-4688c89520cf', NULL, 0),
('a9a469e2-e4eb-5dc9-bab7-46b824980d5c', '2007-08-07 07:52:17', '2007-08-07 07:52:17', NULL, '1', '1', '', 'GTO', '7709512d-3380-6f6e-a4c0-4688c89520cf', NULL, 0),
('9dd70232-1b9f-b07c-a8bf-46d6dc91ad2a', '2007-08-30 15:02:43', '2007-08-30 15:02:43', NULL, '1', '1', '', 'GTO', '7709512d-3380-6f6e-a4c0-4688c89520cf', NULL, 0),
('7c3cd850-d52f-2960-85b8-46c57ff5fbe6', '2007-08-17 11:01:01', '2007-08-17 11:01:01', NULL, '1', '1', '', NULL, NULL, NULL, 0),
('d928d96d-9b28-28c5-718d-46c93eb04d48', '2007-08-20 07:09:27', '2007-08-20 07:09:27', NULL, '1', '1', '', NULL, NULL, NULL, 0),
('765b695f-77ae-09ea-539a-46c944ba2db9', '2007-08-20 07:38:15', '2007-08-20 07:38:15', NULL, '1', '1', '', 'GTO', '7709512d-3380-6f6e-a4c0-4688c89520cf', NULL, 0),
('a8e99b13-1295-f675-b166-46d43a03f493', '2007-08-28 15:10:27', '2007-08-28 15:10:27', NULL, '1', '1', '', NULL, NULL, NULL, 0),
('8aa557a3-e24d-6ef6-ea4a-46d43bfae0cb', '2007-08-28 15:11:37', '2007-08-28 15:11:37', NULL, '1', '1', '', NULL, NULL, NULL, 0),
('9e5e3647-8c02-38da-9f48-46d69101a265', '2007-08-30 09:42:48', '2007-08-30 09:42:48', NULL, '1', '1', '', NULL, NULL, NULL, 0),
('d60f6e69-8186-92a9-f02b-46d6865933fe', '2007-08-30 08:57:26', '2007-08-30 08:57:26', NULL, '1', '1', '', 'GTO', '7709512d-3380-6f6e-a4c0-4688c89520cf', NULL, 0),
('e35c4328-7ec5-0c84-e8e8-46d56e6d58df', '2007-08-29 13:04:29', '2007-08-29 13:04:29', NULL, '1', '1', '', 'Shinohara', 'aa750713-245a-38cc-b436-4688fc384385', NULL, 0),
('eb2da2bc-45f2-2b27-c8c6-46d56ed68d6b', '2007-08-29 13:04:29', '2007-08-29 13:04:29', NULL, '1', '1', '', 'Shinohara', 'aa750713-245a-38cc-b436-4688fc384385', NULL, 1),
('325533ae-beb7-1e31-70b7-46e5238434a7', '2007-09-10 11:00:33', '2007-09-10 11:00:33', NULL, '1', '1', '', NULL, NULL, NULL, 0),
('e2d3bad7-2a0b-7909-1622-46ebb3f381b8', '2007-09-15 10:25:50', '2007-09-15 10:25:50', NULL, '1', '1', '', 'GTO', '7709512d-3380-6f6e-a4c0-4688c89520cf', NULL, 1),
('8dc21131-b7bc-4d5c-bb5f-46f8e5656daa', '2007-09-25 10:41:25', '2007-09-25 10:41:25', NULL, '1', '1', '', NULL, NULL, NULL, 0),
('650ac288-b2bc-a03c-87db-4705f4420b5e', '2007-10-05 08:22:54', '2007-10-05 08:22:54', NULL, '1', '1', '', 'Shinohara', 'aa750713-245a-38cc-b436-4688fc384385', NULL, 0),
('96b29845-df3b-5dfc-a5d0-4706140d8c30', '2007-10-05 10:39:28', '2007-10-05 10:39:28', NULL, '1', '1', '', 'GTO', '7709512d-3380-6f6e-a4c0-4688c89520cf', NULL, 0),
('e8f82733-da2c-03ac-366c-4709ea87febf', '2007-10-08 08:29:35', '2007-10-08 08:29:35', NULL, '1', '1', '', 'GTO', '7709512d-3380-6f6e-a4c0-4688c89520cf', NULL, 0);

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

INSERT INTO `pressline` (`id`, `component_id`, `date_entered`, `date_modified`, `assigned_user_id`, `modified_user_id`, `created_by`, `layout_name`, `press_id`, `layout_id`, `part`, `deleted`) VALUES 
('d2bc9ed9-0da5-ea1b-4161-46d7ca64f19c', 'b2b4f119-b162-e477-9f78-46d7cac9f270', '2007-08-31 08:00:52', '2007-08-31 08:00:52', NULL, NULL, '1', 'Предпечат-Листовки ДЗИ-1-1', 'cb9d9b35-cf8c-e010-3dcb-46d7ca94e08b', 'c464a966-2602-b7e1-4a03-46d7ca5d9459', '100', 0),
('1cd17ff5-436d-2c25-883c-46b8260297ee', '598457bc-776a-9154-9b63-4652c9ce58cb', '2007-08-07 08:00:48', '2007-08-07 08:00:48', NULL, NULL, '1', 'Предпечат-Каталог "Пресфото"-2-2', '1c7ef3f2-7652-2f25-4ac7-46b826160705', '1b16ea32-5c86-9dbe-ce57-46b826b156b1', '100', 0),
('a9f49ac7-fb6e-517f-6a57-46b82416dd5d', '598457bc-776a-9154-9b63-4652c9ce58cb', '2007-08-07 07:52:17', '2007-08-07 07:52:17', NULL, NULL, '1', 'Предпечат-Каталог "Пресфото"-2-2', 'a9a469e2-e4eb-5dc9-bab7-46b824980d5c', 'a845814c-3524-5da9-64d1-46b824f16c13', '100', 0),
('9f7a9311-efbe-9a76-5378-46d6dcf8418b', '8f50860d-16b5-5491-e451-46d6dce0fc06', '2007-08-30 15:02:43', '2007-08-30 15:02:43', NULL, NULL, '1', 'Предпечат-Книга Компанията на паяците-3-1', '9dd70232-1b9f-b07c-a8bf-46d6dc91ad2a', '9938cdd1-f0df-314f-5b4e-46d6dc8e6483', '100', 0),
('7df8933b-69cf-22a9-67cf-46c57fe68b63', '6508c5a0-0630-b9c2-49df-46c57f37ab0c', '2007-08-17 11:01:01', '2007-08-17 11:01:01', NULL, NULL, '1', 'Предпечат-Първо издание-1-1', '7c3cd850-d52f-2960-85b8-46c57ff5fbe6', '6f46a160-b003-6f53-b2a7-46c57fd70f65', '100', 0),
('db12b9ec-5d4d-cf4c-1386-46c93e105a35', 'c165910b-df60-1b59-1d45-46c93ee2e59d', '2007-08-20 07:09:27', '2007-08-20 07:09:27', NULL, NULL, '1', 'Предпечат-Първо издание-2-1', 'd928d96d-9b28-28c5-718d-46c93eb04d48', 'cb9e2cf4-d514-5911-bd2e-46c93e3aacfe', '100', 0),
('7a3a84a0-b244-3031-681b-46c944208851', '629da741-d120-307b-0f49-46c94438e8c8', '2007-08-20 07:38:15', '2007-08-20 07:38:15', NULL, NULL, '1', 'Предпечат-Каталог-01-2007-1-1', '765b695f-77ae-09ea-539a-46c944ba2db9', '6d4c9593-e648-74e1-9b99-46c944b7683b', '100', 0),
('aaceabe6-174c-7cd1-9502-46d43a759504', '90527d21-6801-50aa-5e6c-46d43a4c0c12', '2007-08-28 15:10:27', '2007-08-28 15:10:27', NULL, NULL, '1', 'Предпечат-Каталог Пресфото-3-1', 'a8e99b13-1295-f675-b166-46d43a03f493', '996be1ed-a112-10ac-abf1-46d43a3ab852', '100', 0),
('8c3cf32c-95c1-43f3-2350-46d43bebff3a', '7d0627b7-e9f0-ab14-cfbd-46d43bd1e411', '2007-08-28 15:11:37', '2007-08-28 15:11:37', NULL, NULL, '1', 'Предпечат-Каталог Пресфото-4-1', '8aa557a3-e24d-6ef6-ea4a-46d43bfae0cb', '862b14b1-d4cb-5bc7-40d1-46d43b6026df', '100', 0),
('a04b6fe6-d8ed-eece-1e64-46d69113c1de', '8bf7767a-67fb-4332-3f8d-46d69175660b', '2007-08-30 09:42:48', '2007-08-30 09:42:48', NULL, NULL, '1', 'Предпечат-Книга Компанията на паяците-3-1', '9e5e3647-8c02-38da-9f48-46d69101a265', '95c0ec7e-4312-8c05-6f3c-46d691f296dd', '100', 0),
('d7a90d7f-74b2-a7c4-c15d-46d6866f2c29', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '2007-08-30 08:57:26', '2007-08-30 08:57:26', NULL, NULL, '1', 'Предпечат-Книга Компанията на паяците-2-1', 'd60f6e69-8186-92a9-f02b-46d6865933fe', 'd15c3714-e823-a502-f4e9-46d6860f74ad', '100', 0),
('e54fa38d-77cc-0d6c-c225-46d56e7eb69c', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', '2007-08-29 13:04:29', '2007-08-29 13:04:29', NULL, NULL, '1', 'Предпечат-Книга Компанията на паяците-1-3', 'e35c4328-7ec5-0c84-e8e8-46d56e6d58df', 'deab7c83-3da9-0222-bac7-46d56e27b181', '100', 0),
('ed02721f-bedc-3d4b-22ef-46d56ed2d91f', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', '2007-08-29 13:04:29', '2007-08-29 13:04:29', NULL, NULL, '1', 'Предпечат-Книга Компанията на паяците-1-4', 'eb2da2bc-45f2-2b27-c8c6-46d56ed68d6b', 'e7f1625a-ad05-591a-6892-46d56e67c434', '100', 1),
('36ad6929-7242-5b52-bd2b-46e52390e781', '20378ec0-7b98-8e25-06e9-46e5232bb652', '2007-09-10 11:00:33', '2007-09-10 11:00:33', NULL, NULL, '1', 'Предпечат-Книга Компанията на паяците-4-1', '325533ae-beb7-1e31-70b7-46e5238434a7', '2976d636-9243-22e6-b31d-46e523b9d8f8', '100', 0),
('e4ac7f0b-89a9-e8dd-be26-46ebb34ab1e2', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '2007-09-15 10:25:50', '2007-09-15 10:25:50', NULL, NULL, '1', 'Предпечат-Корица - Книга Компанията на паяците-2', 'e2d3bad7-2a0b-7909-1622-46ebb3f381b8', 'de294677-eaee-5383-b4a9-46ebb368ac32', '100', 1),
('9419eb92-e7a1-aa15-9e09-46f8e54c8cc8', '42999efc-5b2a-c093-f540-46f8e579100a', '2007-09-25 10:41:25', '2007-09-25 10:41:25', NULL, NULL, '1', 'Предпечат-Книга Компанията на паяците-3-1', '8dc21131-b7bc-4d5c-bb5f-46f8e5656daa', '81c64fec-429a-51c8-7b9e-46f8e567a957', '100', 0),
('66bcbf71-9e55-6aff-ea6f-4705f45b211a', 'e7840f84-fe38-1b71-4ce4-4705f47ed801', '2007-10-05 08:22:54', '2007-10-05 08:22:54', NULL, NULL, '1', 'Предпечат-Листовки ДЗИ-1-1', '650ac288-b2bc-a03c-87db-4705f4420b5e', '5756e75b-aadd-6675-11c2-4705f49d2e7c', '100', 0),
('987e706c-d244-858d-6572-470614ad2846', '40757223-4089-a067-db22-470614470ba6', '2007-10-05 10:39:28', '2007-10-05 10:39:28', NULL, NULL, '1', 'Предпечат-Книга Компанията на паяците-3-1', '96b29845-df3b-5dfc-a5d0-4706140d8c30', '8c387071-27fb-5d5e-c044-470614d55d75', '100', 0),
('e9509f80-d9cc-87f1-144a-4709ea879fc3', 'dc72a139-71cc-4680-0e8b-4709ea86b5fd', '2007-10-08 08:29:35', '2007-10-08 08:29:35', NULL, NULL, '1', 'Предпечат-Стикери "LAVAZZA"-1-1', 'e8f82733-da2c-03ac-366c-4709ea87febf', 'de9e1be9-e117-46c3-5b26-4709ea3ffd80', '100', 0);

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
  `plate_price` float default NULL,
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

INSERT INTO `pressmachine` (`id`, `date_entered`, `date_modified`, `assigned_user_id`, `modified_user_id`, `created_by`, `name`, `model`, `manufacturer`, `gripper`, `speed`, `printing_units`, `active`, `sortorder`, `plate_price`, `s_x`, `s_y`, `s_f`, `m_x`, `m_y`, `m_f`, `mp_x`, `mp_y`, `mp_f`, `description`, `deleted`) VALUES 
('7709512d-3380-6f6e-a4c0-4688c89520cf', '2007-07-02 09:42:49', '2007-07-16 07:02:19', '1', '1', '1', 'GTO', 'GTO', NULL, '0', '10000', 4, 'on', 1, 2.5, 35, 50, 'GTO', 35, 50, 'GTO', 35, 50, 'GTO', NULL, 0),
('aa750713-245a-38cc-b436-4688fc384385', '2007-07-02 13:23:36', '2007-08-30 13:52:06', '1', '1', '1', 'Shinohara', 'Shinohara', NULL, '0', '10000', 4, 'on', 2, 2.5, 50, 70, 'Shi', 50, 70, 'Shi', 50, 70, 'Shi', NULL, 0);

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
  `default` varchar(36) default NULL,
  `description` text,
  `deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 PACK_KEYS=0;

-- 
-- Дъмп (схема) на данните в таблицата `presspricelist`
-- 

INSERT INTO `presspricelist` (`id`, `date_entered`, `date_modified`, `assigned_user_id`, `modified_user_id`, `created_by`, `name`, `type`, `inks_number`, `step_amount`, `pressmachine_id`, `pressmachine_name`, `active`, `default`, `description`, `deleted`) VALUES 
('9f884209-0086-55d3-942a-46d67c1ff493', '2007-08-30 08:14:29', '2007-09-26 14:46:41', '1', '1', '1', '4 x Shinohara', 'Книги', 4, 1000, 'aa750713-245a-38cc-b436-4688fc384385', 'Shinohara', 'on', 'on', NULL, 0),
('b8aed1f4-281a-1119-244b-46d67cadae88', '2007-08-30 08:13:36', '2007-09-26 14:49:57', '1', '1', '1', '3 x Shinohara', 'Книги', 3, 1000, 'aa750713-245a-38cc-b436-4688fc384385', 'Shinohara', 'on', 'on', NULL, 0),
('90cd9e83-4e54-4de4-1a37-46d67b97c4c1', '2007-08-30 08:11:27', '2007-08-30 08:11:27', '1', '1', '1', '2 x Shinohara', 'Книги', 2, 1000, 'aa750713-245a-38cc-b436-4688fc384385', 'Shinohara', 'on', 'on', NULL, 0),
('e4965bbc-bf4b-fde5-f796-46d67bca30ce', '2007-08-30 08:10:08', '2007-09-27 13:19:51', '1', '1', '1', '1 x Shinohara', 'Книги', 1, 1000, 'aa750713-245a-38cc-b436-4688fc384385', 'Shinohara', 'on', 'off', NULL, 0),
('4ee288eb-8342-bc46-ce5c-46d67a86f455', '2007-08-30 08:07:52', '2007-08-30 08:07:52', '1', '1', '1', '3 х GTO', 'Книги', 3, 1000, '7709512d-3380-6f6e-a4c0-4688c89520cf', 'GTO', 'on', 'on', NULL, 0),
('97d264cf-639e-cec4-4303-46d67a8c5f32', '2007-08-30 08:07:06', '2007-08-30 08:07:06', '1', '1', '1', '2 х GTO', 'Книги', 2, 1000, '7709512d-3380-6f6e-a4c0-4688c89520cf', 'GTO', 'on', 'on', NULL, 0),
('983f483d-8af1-9472-601a-468d07c0aed0', '2007-07-05 15:01:25', '2007-08-30 09:08:52', '1', '1', '1', '4 х GTO', 'Книги', 4, 1000, '7709512d-3380-6f6e-a4c0-4688c89520cf', 'GTO', 'on', 'on', NULL, 0),
('d90538b5-a7f8-95ef-85c8-46d67a3a1c7e', '2007-08-30 08:06:24', '2007-09-28 07:42:38', '1', '1', '1', '1 х GTO', 'Книги', 1, 1000, '7709512d-3380-6f6e-a4c0-4688c89520cf', 'GTO', 'on', 'on', NULL, 0),
('d86b89ee-5f75-e841-a1bb-46fba787fec6', '2007-09-27 12:53:33', '2007-09-27 13:20:08', '1', '1', '1', '1 x Shinohara 2', 'Книги', 1, 1000, 'aa750713-245a-38cc-b436-4688fc384385', 'Shinohara', 'on', 'off', NULL, 0),
('67b7d87b-e4c3-cd12-b1bc-46fbba42da2f', '2007-09-27 14:11:57', '2007-09-28 07:41:59', '1', '1', '1', '1 х GTO2', 'Книги', 1, 1000, '7709512d-3380-6f6e-a4c0-4688c89520cf', 'GTO', 'on', 'off', NULL, 0),
('59eeda72-3dc8-e7a4-9dca-46fbbab5686c', '2007-09-27 14:14:39', '2007-09-27 14:14:39', '1', '1', '1', '3 х GTO 2', 'Книги', 3, 1000, '7709512d-3380-6f6e-a4c0-4688c89520cf', 'GTO', 'on', 'off', NULL, 0),
('dace9bea-eefd-f2c6-939b-4705fec8ab1e', '2007-10-05 09:07:07', '2007-10-05 09:07:07', '1', '1', '1', '1 x Shinohara 3', 'Книги', 1, 1000, 'aa750713-245a-38cc-b436-4688fc384385', 'Shinohara', 'on', 'on', NULL, 0),
('15f1cd98-0363-928c-da21-4709e2fa8c4f', '2007-10-08 07:54:09', '2007-10-08 07:54:09', '1', '1', '1', '4vss', 'Преференциална', 4, 1000, 'aa750713-245a-38cc-b436-4688fc384385', 'Shinohara', 'on', 'off', NULL, 0);

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

INSERT INTO `pricelistlines` (`id`, `pricelist_id`, `impressions_number`, `base_price`, `step_price`, `deleted`, `date_entered`, `date_modified`, `created_by`) VALUES 
('e0b37c48-dec7-c937-144f-4705fe307e7c', 'dace9bea-eefd-f2c6-939b-4705fec8ab1e', 1000, 40, 25, 0, '2007-10-05 09:07:07', '2007-10-05 09:07:07', '1'),
('ad49494f-03c3-0f23-ffd0-46fcb02f4810', 'd90538b5-a7f8-95ef-85c8-46d67a3a1c7e', 4000, 62.5, 12.5, 0, '2007-09-28 07:42:38', '2007-09-28 07:42:38', '1'),
('aaf00f13-49d0-76a7-f12c-46fcb0e5eff4', 'd90538b5-a7f8-95ef-85c8-46d67a3a1c7e', 1000, 25, 12.5, 0, '2007-09-28 07:42:38', '2007-09-28 07:42:38', '1'),
('50239b68-2277-be5a-8348-46fcb08590ca', '67b7d87b-e4c3-cd12-b1bc-46fbba42da2f', 4000, 69, 13, 0, '2007-09-28 07:41:59', '2007-09-28 07:41:59', '1'),
('4dbd5e65-8085-8ea7-0c47-46fcb0f9303e', '67b7d87b-e4c3-cd12-b1bc-46fbba42da2f', 1000, 30, 13, 0, '2007-09-28 07:41:59', '2007-09-28 07:41:59', '1'),
('6535e59e-9e58-b079-d1b8-46fbbaaf41d1', '59eeda72-3dc8-e7a4-9dca-46fbbab5686c', 6000, 154, 15, 0, '2007-09-27 14:14:39', '2007-09-27 14:14:39', '1'),
('62be1f6d-a6cc-e8e8-e81b-46fbbaf4bf95', '59eeda72-3dc8-e7a4-9dca-46fbbab5686c', 4000, 120, 17, 0, '2007-09-27 14:14:39', '2007-09-27 14:14:39', '1'),
('6004d75d-ba11-1807-535f-46fbba652622', '59eeda72-3dc8-e7a4-9dca-46fbbab5686c', 1000, 60, 20, 0, '2007-09-27 14:14:39', '2007-09-27 14:14:39', '1'),
('40698920-0d06-7edf-703f-46fbbaf2c0cd', '67b7d87b-e4c3-cd12-b1bc-46fbba42da2f', 4000, 69, 13, 1, '2007-09-27 14:13:09', '2007-09-28 07:41:59', '1'),
('3e137c6b-b6a0-3793-ea79-46fbba9e5040', '67b7d87b-e4c3-cd12-b1bc-46fbba42da2f', 1000, 30, 13, 1, '2007-09-27 14:13:09', '2007-09-28 07:41:59', '1'),
('9790ea2f-a255-9289-1f39-46fbba96aaec', '67b7d87b-e4c3-cd12-b1bc-46fbba42da2f', 1000, 30, 13, 1, '2007-09-27 14:12:28', '2007-09-27 14:13:09', '1'),
('6d800453-5d9b-a734-a418-46fbba4cf513', '67b7d87b-e4c3-cd12-b1bc-46fbba42da2f', 1000, 30, 13, 1, '2007-09-27 14:11:57', '2007-09-27 14:12:28', '1'),
('797301cd-1473-8e6c-630e-46fbae7451c2', 'd86b89ee-5f75-e841-a1bb-46fba787fec6', 1000, 100, 50, 0, '2007-09-27 13:20:09', '2007-09-27 13:20:09', '1'),
('573b804b-4b48-8e47-6ccc-46fbadf982f0', 'e4965bbc-bf4b-fde5-f796-46d67bca30ce', 1000, 50, 25, 0, '2007-09-27 13:19:51', '2007-09-27 13:19:51', '1'),
('3dd1a472-f221-9f7c-bc23-46fba9681a57', 'e4965bbc-bf4b-fde5-f796-46d67bca30ce', 1000, 50, 25, 1, '2007-09-27 12:59:09', '2007-09-27 13:19:51', '1'),
('c13161ad-701a-995d-c478-46fba838704a', 'd86b89ee-5f75-e841-a1bb-46fba787fec6', 1000, 100, 50, 1, '2007-09-27 12:58:35', '2007-09-27 13:20:09', '1'),
('70bc4461-9b79-0f94-64a9-46fba72c6a5e', 'd86b89ee-5f75-e841-a1bb-46fba787fec6', 1000, 100, 50, 1, '2007-09-27 12:53:51', '2007-09-27 12:58:35', '1'),
('de2b1499-a2e4-1168-c287-46fba72c3b5b', 'd86b89ee-5f75-e841-a1bb-46fba787fec6', 1000, 100, 50, 1, '2007-09-27 12:53:33', '2007-09-27 12:53:51', '1'),
('6d6116b8-e9f4-5511-5a03-46fa71222a85', 'b8aed1f4-281a-1119-244b-46d67cadae88', 6000, 265, 25, 0, '2007-09-26 14:49:57', '2007-09-26 14:49:57', '1'),
('6b4436c3-6a08-e322-c581-46fa7111c5ac', 'b8aed1f4-281a-1119-244b-46d67cadae88', 4000, 205, 30, 0, '2007-09-26 14:49:57', '2007-09-26 14:49:57', '1'),
('691735e3-0cf6-ca37-53cd-46fa71666069', 'b8aed1f4-281a-1119-244b-46d67cadae88', 1000, 100, 35, 0, '2007-09-26 14:49:57', '2007-09-26 14:49:57', '1'),
('ea19d6e6-1b00-8f9b-7822-46fa7058d028', '9f884209-0086-55d3-942a-46d67c1ff493', 8000, 370, 25, 0, '2007-09-26 14:46:36', '2007-09-26 14:46:36', '1'),
('e7ce84d5-6314-9102-0a33-46fa70c28e43', '9f884209-0086-55d3-942a-46d67c1ff493', 6000, 310, 30, 0, '2007-09-26 14:46:36', '2007-09-26 14:46:36', '1'),
('e5a19168-4d57-d7ff-4aa8-46fa707d72b8', '9f884209-0086-55d3-942a-46d67c1ff493', 4000, 240, 35, 0, '2007-09-26 14:46:36', '2007-09-26 14:46:36', '1'),
('e365e77b-3964-f09f-15ff-46fa70747f1b', '9f884209-0086-55d3-942a-46d67c1ff493', 1000, 120, 40, 0, '2007-09-26 14:46:36', '2007-09-26 14:46:36', '1'),
('a6a26af2-518a-8803-a954-46fa70a4fbf1', '9f884209-0086-55d3-942a-46d67c1ff493', 8000, 370, 25, 1, '2007-09-26 14:46:27', '2007-09-26 14:46:36', '1'),
('a47e5192-1db3-73d6-314f-46fa708c6d90', '9f884209-0086-55d3-942a-46d67c1ff493', 6000, 310, 30, 1, '2007-09-26 14:46:27', '2007-09-26 14:46:36', '1'),
('a2573575-d45e-0921-a2f4-46fa70aa4b46', '9f884209-0086-55d3-942a-46d67c1ff493', 4000, 240, 35, 1, '2007-09-26 14:46:27', '2007-09-26 14:46:36', '1'),
('a0342fa1-e8d6-4aa6-f33d-46fa70d91ba5', '9f884209-0086-55d3-942a-46d67c1ff493', 1000, 120, 40, 1, '2007-09-26 14:46:27', '2007-09-26 14:46:36', '1'),
('94491ed6-d7bf-b7a5-5d90-46fa70fa6778', '9f884209-0086-55d3-942a-46d67c1ff493', 8000, 370, 25, 1, '2007-09-26 14:44:34', '2007-09-26 14:46:27', '1'),
('9218b071-90b6-9b7e-c6a2-46fa70218a9f', '9f884209-0086-55d3-942a-46d67c1ff493', 6000, 310, 30, 1, '2007-09-26 14:44:34', '2007-09-26 14:46:27', '1'),
('8feab1b7-4abe-7e41-9a6b-46fa70fd7fe9', '9f884209-0086-55d3-942a-46d67c1ff493', 4000, 240, 35, 1, '2007-09-26 14:44:34', '2007-09-26 14:46:27', '1'),
('8dab511f-d053-7993-6416-46fa707e9d8b', '9f884209-0086-55d3-942a-46d67c1ff493', 1000, 120, 40, 1, '2007-09-26 14:44:34', '2007-09-26 14:46:27', '1'),
('b114d94b-1a9a-a8fa-d805-46d689ec3e5f', '983f483d-8af1-9472-601a-468d07c0aed0', 8000, 185, 12.5, 0, '2007-08-30 09:08:52', '2007-08-30 09:08:52', '1'),
('aee7aa42-316d-1b39-c66d-46d689ce9d30', '983f483d-8af1-9472-601a-468d07c0aed0', 6000, 155, 15, 0, '2007-08-30 09:08:52', '2007-08-30 09:08:52', '1'),
('ac9565fa-81e4-fbce-71cc-46d689583798', '983f483d-8af1-9472-601a-468d07c0aed0', 4000, 120, 17.5, 0, '2007-08-30 09:08:52', '2007-08-30 09:08:52', '1'),
('aa652e8c-c0cb-f7a1-f7e8-46d68990d8d0', '983f483d-8af1-9472-601a-468d07c0aed0', 1000, 60, 20, 0, '2007-08-30 09:08:52', '2007-08-30 09:08:52', '1'),
('ac83b780-7fe9-044d-577a-46d67cd08622', '9f884209-0086-55d3-942a-46d67c1ff493', 8000, 370, 25, 1, '2007-08-30 08:14:29', '2007-09-26 14:44:34', '1'),
('aa416d22-9171-86c2-9aaa-46d67c26266b', '9f884209-0086-55d3-942a-46d67c1ff493', 6000, 310, 30, 1, '2007-08-30 08:14:29', '2007-09-26 14:44:34', '1'),
('a7e94b59-d264-34b7-04e5-46d67cde3cd2', '9f884209-0086-55d3-942a-46d67c1ff493', 4000, 240, 35, 1, '2007-08-30 08:14:29', '2007-09-26 14:44:34', '1'),
('a5a00fb8-d091-4ffc-c09f-46d67cf1e9f1', '9f884209-0086-55d3-942a-46d67c1ff493', 1000, 120, 40, 1, '2007-08-30 08:14:29', '2007-09-26 14:44:34', '1'),
('c3909ad9-e023-3eec-c0f4-46d67c8156b4', 'b8aed1f4-281a-1119-244b-46d67cadae88', 6000, 265, 25, 1, '2007-08-30 08:13:36', '2007-09-26 14:49:57', '1'),
('92283364-d1c9-43d0-e841-468df6882f8b', '4a36090d-b82e-6698-6c10-468dec12d2ec', 1000, 40, 10, 0, '2007-07-06 07:58:56', '2007-07-06 07:58:56', '1'),
('928eac4f-714d-d576-c921-468df6bf6b3b', '4a36090d-b82e-6698-6c10-468dec12d2ec', 3000, 60, 10, 0, '2007-07-06 07:58:56', '2007-07-06 07:58:56', '1'),
('c140b60c-4085-b356-0ab4-46d67c7773ef', 'b8aed1f4-281a-1119-244b-46d67cadae88', 4000, 205, 30, 1, '2007-08-30 08:13:36', '2007-09-26 14:49:57', '1'),
('bea44b3e-2c32-9953-56c3-46d67c3a4050', 'b8aed1f4-281a-1119-244b-46d67cadae88', 1000, 100, 35, 1, '2007-08-30 08:13:36', '2007-09-26 14:49:57', '1'),
('844bc2da-e324-05b0-2f2c-46d67be4533f', 'e4965bbc-bf4b-fde5-f796-46d67bca30ce', 1000, 50, 25, 1, '2007-08-30 08:12:10', '2007-09-27 12:59:09', '1'),
('990443a8-cd60-6da8-26c6-46d67b154051', '90cd9e83-4e54-4de4-1a37-46d67b97c4c1', 4000, 170, 25, 0, '2007-08-30 08:11:27', '2007-08-30 08:11:27', '1'),
('9697ae60-ca29-1429-b106-46d67b6fbf9a', '90cd9e83-4e54-4de4-1a37-46d67b97c4c1', 1000, 80, 30, 0, '2007-08-30 08:11:27', '2007-08-30 08:11:27', '1'),
('ea69f812-6052-2774-c9d4-46d67b9b26c9', 'e4965bbc-bf4b-fde5-f796-46d67bca30ce', 1000, 0, 25, 1, '2007-08-30 08:10:08', '2007-08-30 08:12:10', '1'),
('3c750f17-57a8-539b-8b42-46d67ad66b2c', '983f483d-8af1-9472-601a-468d07c0aed0', 8000, 185, 12.5, 1, '2007-08-30 08:08:23', '2007-08-30 09:08:52', '1'),
('187000a7-0eed-bf79-1267-46d67a6e979b', '983f483d-8af1-9472-601a-468d07c0aed0', 6000, 155, 15, 1, '2007-08-30 08:08:23', '2007-08-30 09:08:52', '1'),
('f37083ea-e8d8-f312-881c-46d67a2a0e91', '983f483d-8af1-9472-601a-468d07c0aed0', 4000, 120, 17.5, 1, '2007-08-30 08:08:23', '2007-08-30 09:08:52', '1'),
('f12402eb-7826-8552-9846-46d67a1b7cbf', '983f483d-8af1-9472-601a-468d07c0aed0', 1000, 60, 20, 1, '2007-08-30 08:08:22', '2007-08-30 09:08:52', '1'),
('5979cae0-b060-b564-cd4c-46d67ac02715', '4ee288eb-8342-bc46-ce5c-46d67a86f455', 6000, 132.5, 12.5, 0, '2007-08-30 08:07:52', '2007-08-30 08:07:52', '1'),
('572e2bfc-abe9-ebc2-c506-46d67a994407', '4ee288eb-8342-bc46-ce5c-46d67a86f455', 4000, 102.5, 15, 0, '2007-08-30 08:07:52', '2007-08-30 08:07:52', '1'),
('54dfb547-ca05-df2f-004f-46d67a876b6b', '4ee288eb-8342-bc46-ce5c-46d67a86f455', 1000, 50, 17.5, 0, '2007-08-30 08:07:52', '2007-08-30 08:07:52', '1'),
('a1692353-c4ed-9620-7dcc-46d67afbfa1e', '97d264cf-639e-cec4-4303-46d67a8c5f32', 4000, 85, 12.5, 0, '2007-08-30 08:07:06', '2007-08-30 08:07:06', '1'),
('9d91f963-c39a-dae2-85e1-46d67a613e46', '97d264cf-639e-cec4-4303-46d67a8c5f32', 1000, 40, 15, 0, '2007-08-30 08:07:06', '2007-08-30 08:07:06', '1'),
('e17a3cbe-6045-51ac-6236-46d67a08e8b6', 'd90538b5-a7f8-95ef-85c8-46d67a3a1c7e', 4000, 62.5, 12.5, 1, '2007-08-30 08:06:24', '2007-09-28 07:42:38', '1'),
('def522c7-5aa0-67ac-1de5-46d67a6dea6a', 'd90538b5-a7f8-95ef-85c8-46d67a3a1c7e', 1000, 25, 12.5, 1, '2007-08-30 08:06:24', '2007-09-28 07:42:38', '1'),
('82c0f287-3154-8f9b-9971-46d67ac84041', '983f483d-8af1-9472-601a-468d07c0aed0', 8000, 185, 12.5, 1, '2007-08-30 08:04:42', '2007-08-30 08:08:22', '1'),
('806d2ac6-c9ed-4612-132a-46d67af6e632', '983f483d-8af1-9472-601a-468d07c0aed0', 6000, 155, 15, 1, '2007-08-30 08:04:42', '2007-08-30 08:08:22', '1'),
('7e0d9658-0782-49a2-d736-46d67a81ffde', '983f483d-8af1-9472-601a-468d07c0aed0', 4000, 120, 17.5, 1, '2007-08-30 08:04:42', '2007-08-30 08:08:22', '1'),
('7bbbf1bb-94c1-4404-fbf5-46d67a006af1', '983f483d-8af1-9472-601a-468d07c0aed0', 1000, 60, 20, 1, '2007-08-30 08:04:42', '2007-08-30 08:08:22', '1'),
('8b169c7a-0a9e-1394-55ed-46c9828b59b6', '983f483d-8af1-9472-601a-468d07c0aed0', 1000, 60, 50, 1, '2007-08-20 12:01:29', '2007-08-30 08:04:42', '1'),
('8d68063e-1ba2-972f-86c3-46c98216ff3d', '983f483d-8af1-9472-601a-468d07c0aed0', 3000, 160, 45, 1, '2007-08-20 12:01:29', '2007-08-30 08:04:42', '1'),
('8fa59b88-bf7c-bf77-4d28-46c982908117', '983f483d-8af1-9472-601a-468d07c0aed0', 5000, 250, 40, 1, '2007-08-20 12:01:29', '2007-08-30 08:04:42', '1'),
('16a7fc04-a417-666c-afac-4709e2e9df63', '15f1cd98-0363-928c-da21-4709e2fa8c4f', 1000, 100, 50, 0, '2007-10-08 07:54:09', '2007-10-08 07:54:09', '1'),
('16e71053-6530-ae54-d1d2-4709e27b3a05', '15f1cd98-0363-928c-da21-4709e2fa8c4f', 5000, 300, 40, 0, '2007-10-08 07:54:09', '2007-10-08 07:54:09', '1'),
('1720cb5d-3586-621d-2a63-4709e2aa58e2', '15f1cd98-0363-928c-da21-4709e2fa8c4f', 10000, 500, 20, 0, '2007-10-08 07:54:09', '2007-10-08 07:54:09', '1');

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

INSERT INTO `prices` (`id`, `paper_id`, `material_id`, `supplier_id`, `supplier_name`, `price`, `due_date`, `isvalid`, `price_usdollar`, `currency_id`, `date_entered`, `date_modified`, `assigned_user_id`, `modified_user_id`, `created_by`, `name`, `description`, `deleted`) VALUES 
('b501e3f9-7106-e981-1832-46d7ca305f77', '1275003c-ecc0-48d5-aa67-46d7cab64165', NULL, '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'К1 Партнерс', 0.16, NULL, NULL, 0.16, NULL, '2007-08-31 08:01:50', '2007-08-31 08:01:50', '1', '1', '1', '60 х 90 - мат', NULL, 0),
('74294374-69e4-a24d-3b1f-46d6861808d9', '6e81e697-e379-92dc-732c-46d6861ae393', NULL, '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'К1 Партнерс', 0.4, NULL, NULL, 0.4, NULL, '2007-08-30 08:58:43', '2007-08-30 08:58:43', '1', '1', '1', 'Опаковъчен картон 70x100', NULL, 0),
('146cb4fd-b430-8dd3-9673-46d5683fc5dd', '13dfa91a-0374-7e5a-f194-46d568e8137b', NULL, '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'К1 Партнерс', 0.1, NULL, NULL, 0.1, NULL, '2007-08-29 12:38:33', '2007-08-29 12:38:33', '1', '1', '1', '70 x 100 - офсет', NULL, 0),
('a6fa96d4-4f10-da08-6cb2-46d53836e9a1', 'a4cb4337-447a-2e72-b569-464d64ac31bf', NULL, '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'К1 Партнерс', 0.3, NULL, NULL, 0.3, NULL, '2007-08-29 09:12:03', '2007-08-29 09:12:03', '1', '1', '1', 'Хартия - Мат - 70х100 -170гр', NULL, 0),
('e69007ff-389e-40a9-9403-46d537f864b3', 'a4cb4337-447a-2e72-b569-464d64ac31bf', NULL, '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'К1 Партнерс', 0.36, NULL, NULL, 0.36, NULL, '2007-08-29 09:09:40', '2007-08-29 09:09:40', '1', '1', '1', 'Хартия - Мат - 70х100 -170гр', NULL, 0),
('60070ad1-cb83-e458-fa58-46d5380287f7', 'a4cb4337-447a-2e72-b569-464d64ac31bf', NULL, '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'К1 Партнерс', 221, NULL, NULL, 221, NULL, '2007-08-29 09:10:43', '2007-08-29 09:10:43', '1', '1', '1', 'Хартия - Мат - 70х100 -170гр', NULL, 0),
('c345c508-9b07-8c07-5738-464d63caf724', 'a8948502-cea9-500a-0d8c-464d6305dfdc', NULL, '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'К1 Партнерс', 0.1147, NULL, 'Valid', 0.1147, '-99', '2007-05-18 08:28:01', '2007-05-18 08:28:17', '1', '1', '1', 'Хартия 70x100 - мат - гланц', NULL, 0),
('94c505d2-8bcf-694c-d675-464d64235abf', NULL, NULL, '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'К1 Партнерс', 0.0971, NULL, 'Valid', 0.0971, NULL, '2007-05-18 08:30:58', '2007-08-30 07:43:41', '1', '1', '1', 'Chantellor 100', NULL, 0),
('34447ba8-ade6-a83b-7a8d-464d651e6e81', 'a4cb4337-447a-2e72-b569-464d64ac31bf', NULL, '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'К1 Партнерс', 22, NULL, 'Valid', 22, NULL, '2007-05-18 08:34:47', '2007-05-18 08:34:47', '1', '1', '1', 'Хартия - Мат - 70х100', NULL, 0),
('b9229202-1196-26cd-e0ef-464d65246ea2', 'afdedf2d-1d0d-439f-d9a8-464d656ee6d3', NULL, '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'К1 Партнерс', 0.4, NULL, 'Valid', 0.4, '-99', '2007-05-18 08:36:15', '2007-05-18 08:38:15', '1', '1', '1', 'Хартия - Мат - 70х100 -300гр', NULL, 0),
('47eaa2d5-95fb-260b-44cf-465321aef914', NULL, NULL, '5e0b1f19-edac-32da-c0ee-45cf3dd3f612', 'Славей 91', 0.09, NULL, 'Valid', 0.09, '-99', '2007-05-22 16:59:55', '2007-08-30 07:43:41', '1', '1', '1', 'Chantellor 100', NULL, 0),
('2fe515e8-56ba-842f-090b-46c93f63c652', 'afdedf2d-1d0d-439f-d9a8-464d656ee6d3', NULL, '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'К1 Партнерс', 0.385, NULL, NULL, 0.385, '-99', '2007-08-20 07:17:18', '2007-08-20 07:17:18', '1', '1', '1', 'Хартия - Мат - 70х100 -300гр', NULL, 0),
('4b99ed68-1656-3817-1284-46d523491301', 'a4cb4337-447a-2e72-b569-464d64ac31bf', NULL, '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', NULL, NULL, NULL, NULL, NULL, NULL, '2007-08-29 07:41:36', '2007-08-29 07:41:36', '1', '1', '1', 'gghfg', NULL, 0);

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

INSERT INTO `printing` (`id`, `date_entered`, `date_modified`, `assigned_user_id`, `modified_user_id`, `created_by`, `name`, `product_id`, `product_name`, `parent_id`, `count_whole_sheets`, `count_reversal_whole_sheets`, `count_whole_sheets_multiplicity`, `whole_sheets_multiplicity`, `whole_sheets_quantity`, `whole_sheets_preparations`, `reversal_whole_sheets_multiplicity`, `reversal_whole_sheets_quantity`, `reversal_whole_sheets_preparations`, `multiplicity_whole_sheets_multiplicity`, `multiplicity_whole_sheets_quantity`, `multiplicity_whole_sheets_preparations`, `description`, `deleted`) VALUES 
('e8e3b0b4-e16d-a21c-0026-4652ca4a9232', '2007-05-22 10:48:10', '2007-08-30 07:42:09', '1', '1', '1', 'Печат - Каталог "Пресфото"-2', NULL, 'Каталог "Пресфото"-2', '', '1', NULL, NULL, 1, 3000, 2, 1, 3000, 0, NULL, NULL, NULL, NULL, 0),
('71f53f4b-4f10-90b2-3197-4652ca9565df', '2007-05-22 10:47:15', '2007-08-30 07:42:09', '1', '1', '1', 'Печат - Каталог "Пресфото"-1', NULL, 'Каталог "Пресфото"-1', '', '11', NULL, NULL, NULL, 3000, 22, 2, 1500, 0, 1, 3000, 0, NULL, 0);

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

INSERT INTO `printing_prices` (`quantity`, `color`, `machine`, `price`) VALUES 
('1000', 1, 'GTO', 25),
('2000', 1, 'GTO', 35),
('3000', 1, 'GTO', 45),
('4000', 1, 'GTO', 55),
('5000', 1, 'GTO', 65),
('6000', 1, 'GTO', 75),
('7000', 1, 'GTO', 85),
('8000', 1, 'GTO', 95),
('9000', 1, 'GTO', 105),
('10000', 1, 'GTO', 115),
('15000', 1, 'GTO', 155),
('20000', 1, 'GTO', 215),
('25000', 1, 'GTO', 265),
('1000', 1, 'Shinohara', 50),
('2000', 1, 'Shinohara', 70),
('3000', 1, 'Shinohara', 90),
('4000', 1, 'Shinohara', 110),
('5000', 1, 'Shinohara', 130),
('6000', 1, 'Shinohara', 150),
('7000', 1, 'Shinohara', 170),
('8000', 1, 'Shinohara', 190),
('9000', 1, 'Shinohara', 210),
('10000', 1, 'Shinohara', 230),
('15000', 1, 'Shinohara', 310),
('20000', 1, 'Shinohara', 430),
('25000', 1, 'Shinohara', 530),
('1000', 2, 'Shinohara', 80),
('2000', 2, 'Shinohara', 100),
('3000', 2, 'Shinohara', 120),
('4000', 2, 'Shinohara', 140),
('5000', 2, 'Shinohara', 160),
('6000', 2, 'Shinohara', 180),
('7000', 2, 'Shinohara', 200),
('8000', 2, 'Shinohara', 220),
('9000', 2, 'Shinohara', 240),
('10000', 2, 'Shinohara', 260),
('15000', 2, 'Shinohara', 360),
('20000', 2, 'Shinohara', 460),
('25000', 2, 'Shinohara', 560),
('1000', 2, 'GTO', 40),
('2000', 2, 'GTO', 50),
('3000', 2, 'GTO', 60),
('4000', 2, 'GTO', 70),
('5000', 2, 'GTO', 80),
('6000', 2, 'GTO', 90),
('7000', 2, 'GTO', 100),
('8000', 2, 'GTO', 110),
('9000', 2, 'GTO', 120),
('10000', 2, 'GTO', 130),
('15000', 2, 'GTO', 180),
('20000', 2, 'GTO', 230),
('25000', 2, 'GTO', 280),
('1000', 3, 'GTO', 50),
('2000', 3, 'GTO', 65),
('3000', 3, 'GTO', 80),
('4000', 3, 'GTO', 95),
('5000', 3, 'GTO', 110),
('6000', 3, 'GTO', 120),
('7000', 3, 'GTO', 130),
('8000', 3, 'GTO', 140),
('9000', 3, 'GTO', 150),
('10000', 3, 'GTO', 160),
('15000', 3, 'GTO', 210),
('20000', 3, 'GTO', 260),
('25000', 3, 'GTO', 310),
('1000', 3, 'Shinohara', 100),
('2000', 3, 'Shinohara', 130),
('3000', 3, 'Shinohara', 160),
('4000', 3, 'Shinohara', 190),
('5000', 3, 'Shinohara', 220),
('6000', 3, 'Shinohara', 240),
('7000', 3, 'Shinohara', 260),
('8000', 3, 'Shinohara', 280),
('9000', 3, 'Shinohara', 300),
('10000', 3, 'Shinohara', 320),
('15000', 3, 'Shinohara', 420),
('20000', 3, 'Shinohara', 520),
('25000', 3, 'Shinohara', 620),
('1000', 4, 'Shinohara', 120),
('2000', 4, 'Shinohara', 150),
('3000', 4, 'Shinohara', 180),
('4000', 4, 'Shinohara', 210),
('5000', 4, 'Shinohara', 240),
('6000', 4, 'Shinohara', 260),
('7000', 4, 'Shinohara', 280),
('8000', 4, 'Shinohara', 300),
('9000', 4, 'Shinohara', 320),
('10000', 4, 'Shinohara', 340),
('15000', 4, 'Shinohara', 440),
('20000', 4, 'Shinohara', 540),
('25000', 4, 'Shinohara', 640),
('1000', 4, 'GTO', 60),
('2000', 4, 'GTO', 75),
('3000', 4, 'GTO', 90),
('4000', 4, 'GTO', 105),
('5000', 4, 'GTO', 120),
('6000', 4, 'GTO', 130),
('7000', 4, 'GTO', 140),
('8000', 4, 'GTO', 150),
('9000', 4, 'GTO', 160),
('10000', 4, 'GTO', 170),
('15000', 4, 'GTO', 220),
('20000', 4, 'GTO', 270),
('25000', 4, 'GTO', 320);

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
  `total_estimate` float NOT NULL default '0',
  `status` varchar(255) NOT NULL default '',
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

INSERT INTO `productestimate` (`id`, `product_id`, `product_name`, `total_paper`, `total_prepress`, `total_press`, `total_operations`, `total_estimate`, `status`, `date_entered`, `date_modified`, `assigned_user_id`, `modified_user_id`, `created_by`, `name`, `description`, `deleted`) VALUES 
('31b38032-6bcf-9eb5-4257-46efe67eb242', '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците', 351, 135, 900, 280, 0, 'outdated', '2007-09-18 14:54:00', '2007-09-19 11:50:25', '1', '1', '1', 'Калкулация-Книга Компанията на паяците', NULL, 1),
('b6788efe-2325-64c3-6037-46efe583f301', '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците', 351, 135, 900, 280, 0, 'outdated', '2007-09-18 14:47:35', '2007-09-18 14:54:26', '1', '1', '1', 'Калкулация-Книга Компанията на паяците', NULL, 1),
('d6d1fb1a-d867-0d35-3baa-46f11c93f14e', '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците', 351, 135, 900, 280, 0, 'outdated', '2007-09-19 12:57:37', '2007-09-19 13:07:41', '1', '1', '1', 'Калкулация-Книга Компанията на паяците', NULL, 1),
('32da2f31-8773-b9c7-3b7c-46f11eb72cbc', '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците', 351, 135, 900, 280, 0, 'outdated', '2007-09-19 13:05:50', '2007-09-19 13:07:50', '1', '1', '1', 'Калкулация-Книга Компанията на паяците', NULL, 1),
('e7069c65-5690-6fda-d54b-46f11fabc916', '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците', 351, 135, 900, 280, 0, 'outdated', '2007-09-19 13:08:06', '2007-09-20 12:57:07', '1', '1', '1', 'Калкулация-Книга Компанията на паяците', NULL, 1),
('e6fa3fad-6da1-c15c-8e1c-46f26efba0f1', '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците', 351, 135, 900, 280, 0, 'outdated', '2007-09-20 12:57:42', '2007-09-20 13:03:46', '1', '1', '1', 'Калкулация-Книга Компанията на паяците', NULL, 1),
('d3a77f67-621f-1c80-d409-46f26f966e44', '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците', 351, 135, 900, 280, 0, 'outdated', '2007-09-20 13:03:16', '2007-09-20 13:14:47', '1', '1', '1', 'Калкулация-Книга Компанията на паяците', NULL, 1),
('4dc6a68c-dae7-4d5b-170e-46f272881caa', '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците', 351, 135, 900, 280, 0, 'outdated', '2007-09-20 13:15:49', '2007-09-28 12:30:16', '1', '1', '1', 'Калкулация-Книга Компанията на паяците', NULL, 1),
('4c37d4de-72eb-8499-5303-46fcf357c670', '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците', 367, 135, 1750, 280, 0, 'outdated', '2007-09-28 12:30:44', '2007-09-28 15:02:26', '1', '1', '1', 'Калкулация-Книга Компанията на паяците', NULL, 1),
('1d82436e-9308-5d25-b691-46fd09cdd82a', '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците', 367, 135, 1750, 280, 2532, 'outdated', '2007-09-28 14:03:00', '2007-09-28 15:02:26', '1', '1', '1', 'Калкулация-Книга Компанията на паяците', NULL, 1),
('7601600f-eccd-4df8-97b0-470395cacd52', '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците', 262, 0, 1600, 260, 2242, 'outdated', '2007-10-03 13:12:22', '2007-10-03 13:35:05', NULL, '1', '1', 'Калкулация-Книга Компанията на паяците', NULL, 1),
('6c0004bb-9ebc-6d72-6a48-47039d22e413', '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците', 0, 0, 0, 0, 0, 'outdated', '2007-10-03 13:48:30', '2007-10-03 13:55:40', '1', '1', '1', 'Калкулация-Книга Компанията на паяците', NULL, 1),
('3336e4a9-7be0-1f16-add2-47039fab4c46', '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците', 0, 0, 0, 0, 0, 'outdated', '2007-10-03 13:56:03', '2007-10-03 14:08:25', '1', '1', '1', 'Калкулация-Книга Компанията на паяците', NULL, 1),
('402ef274-8f23-9bb7-fa7f-4703a39d895f', '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците', 0, 0, 0, 0, 0, 'outdated', '2007-10-03 14:14:47', '2007-10-03 14:21:27', '1', '1', '1', 'Калкулация-Книга Компанията на паяците', NULL, 1),
('d36226e9-97ae-473c-bfd7-4703a58f9002', '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците', 97, 0, 950, 0, 1462, 'outdated', '2007-10-03 14:22:00', '2007-10-03 14:31:42', '1', '1', '1', 'Калкулация-Книга Компанията на паяците', NULL, 1),
('2d530112-45d0-a7b4-0eb0-4703a78db4ed', '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците', 97, 0, 950, 280, 1462, 'outdated', '2007-10-03 14:32:00', '2007-10-03 14:33:50', '1', '1', '1', 'Калкулация-Книга Компанията на паяците', NULL, 1),
('837a10bf-96d9-a6d0-c26d-4703a8da0a61', '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците', 97, 135, 950, 280, 1462, 'outdated', '2007-10-03 14:33:20', '2007-10-03 14:33:29', '1', '1', '1', 'Калкулация-Книга Компанията на паяците', NULL, 1),
('ad5e4e18-ddfa-fa0c-545c-4703a83157c5', '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците', 97, 135, 950, 280, 1462, 'outdated', '2007-10-03 14:34:57', '2007-10-03 14:45:30', '1', '1', '1', 'Калкулация-Книга Компанията на паяците', NULL, 1),
('f19db0a1-5256-923b-94cb-4703ab576909', '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците', 353, 150, 750, 300, 1553, 'uptodate', '2007-10-03 14:45:44', '2007-10-05 10:43:43', '1', '1', '1', 'Калкулация-Книга Компанията на паяците', NULL, 0),
('599230a3-3288-d62d-30b8-4705f8bcfff9', '41d748cf-adf4-69a7-60b8-4705f3c38a79', 'Листовки ДЗИ', 427, 45, 365, 80, 917, 'outdated', '2007-10-05 08:41:55', '2007-10-05 11:11:22', '1', '1', '1', 'Калкулация-Листовки ДЗИ', NULL, 1),
('2ac40964-d99d-e4aa-02ce-47061be1cbdb', '41d748cf-adf4-69a7-60b8-4705f3c38a79', 'Листовки ДЗИ', 427, 45, 365, 80, 917, 'uptodate', '2007-10-05 11:10:34', '2007-10-05 11:24:04', '1', '1', '1', 'Калкулация-Листовки ДЗИ', NULL, 0),
('b0720e16-f3b0-7c75-9cfd-4713145f9e40', '8e2b6aa8-2783-1ceb-2b1b-4709e9a8b951', 'Стикери "LAVAZZA"', 90, 90, 180, 0.9, 360.9, 'uptodate', '2007-10-15 07:18:25', '2007-10-15 07:18:25', 'db72618d-35da-19ad-1b67-46f37f819f41', 'db72618d-35da-19ad-1b67-46f37f819f41', 'db72618d-35da-19ad-1b67-46f37f819f41', 'Калкулация-Стикери "LAVAZZA"', NULL, 0);

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

INSERT INTO `productlog` (`id`, `date_entered`, `date_modified`, `assigned_user_id`, `modified_user_id`, `created_by`, `product_name`, `product_id`, `description`, `deleted`) VALUES 
('b3137fb4-8939-5231-89ca-464d69a19be1', '2007-05-18 08:52:29', '2007-08-30 07:41:44', NULL, '1', '1', 'Каталог Пресфото', '', NULL, 0),
('2d74031e-9f84-ce46-06d7-4678f3f4bad7', '2007-06-20 09:29:22', '2007-08-30 07:41:44', NULL, '1', '1', 'Първо издание', '', NULL, 0),
('6bc313b0-9587-70e7-4c1c-46c9403b34bb', '2007-08-20 07:19:56', '2007-08-30 07:41:44', NULL, '1', '1', 'Каталог-01-2007', '', NULL, 0),
('8918a618-1dd4-738b-aabf-46c943f3ac16', '2007-08-20 07:30:27', '2007-08-20 07:34:20', NULL, '1', '1', 'asdasd', '', NULL, 0),
('4cce0b56-8021-fc3f-de12-46c943beb14a', '2007-08-20 07:31:16', '2007-08-20 07:34:20', NULL, '1', '1', 'asdsa', '', NULL, 0),
('a4bfd6aa-d776-16bb-fcc1-46d567b4c357', '2007-08-29 12:31:36', '2007-09-25 08:56:11', NULL, '1', '1', 'Книга Компанията на паяците', '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', NULL, 0),
('e2b6d7e6-8b1f-94f3-9829-46d7c9873dd9', '2007-08-31 07:56:35', '2007-09-25 07:35:09', NULL, '1', '1', 'Листовки ДЗИ', '', NULL, 0),
('607bbbe4-0556-235b-6f2c-4705f3913a5e', '2007-10-05 08:20:32', '2007-10-05 08:20:32', NULL, '1', '1', 'Листовки ДЗИ', '41d748cf-adf4-69a7-60b8-4705f3c38a79', NULL, 0),
('a3cf8a62-1c4a-243c-bd82-4709e95c9099', '2007-10-08 08:26:13', '2007-10-08 08:26:13', NULL, '1', '1', 'Стикери "LAVAZZA"', '8e2b6aa8-2783-1ceb-2b1b-4709e9a8b951', NULL, 0);

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

INSERT INTO `productoperations` (`id`, `product_name`, `product_id`, `component_name`, `component_id`, `machine_name`, `machine_id`, `operation_name`, `operation_id`, `date_entered`, `date_modified`, `assigned_user_id`, `modified_user_id`, `created_by`, `name`, `singleprice`, `lots`, `quantity`, `operations_count`, `est_price`, `est_date`, `execution_date`, `executor`, `executed_date`, `executored_from`, `executed_qty`, `description`, `deleted`) VALUES 
('2d01a4a6-598f-774f-0f5e-46bc710e43a3', NULL, NULL, 'Каталог "Пресфото"-2', NULL, NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-10 14:10:43', '2007-08-30 07:42:09', NULL, '1', '1', 'Каталог "Пресфото"-2-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('52a600ef-755b-904d-44bf-46bc2da2b92e', NULL, NULL, 'Каталог "Пресфото"-2', NULL, NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-10 09:18:48', '2007-08-30 07:42:09', NULL, '1', '1', 'Каталог "Пресфото"-2-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('739df135-2faf-31be-8ba0-46baef0549e4', NULL, NULL, 'Каталог "Пресфото"-2', NULL, NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-09 10:43:45', '2007-08-30 07:42:09', NULL, '1', '1', 'Каталог "Пресфото"-2-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('7317a4b2-88bc-aa99-8724-46baef1d791d', NULL, NULL, 'Каталог "Пресфото"-2', NULL, NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-09 10:43:45', '2007-08-30 07:42:09', NULL, '1', '1', 'Каталог "Пресфото"-2-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('5ce90deb-1936-8532-ac6c-46bc2d85b2c9', NULL, NULL, 'Каталог "Пресфото"-2', NULL, NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-10 09:18:48', '2007-08-30 07:42:09', NULL, '1', '1', 'Каталог "Пресфото"-2-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('64ba0799-5e8d-b9cf-c7d5-46bc2d2e9b75', NULL, NULL, 'Каталог "Пресфото"-2', NULL, NULL, NULL, 'Опаковане', '2a31ebad-52ef-a8c0-dda8-46b0b9a4cb4a', '2007-08-10 09:18:48', '2007-08-30 07:42:09', NULL, '1', '1', 'Каталог "Пресфото"-2-Опаковане', NULL, NULL, NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('27266491-541e-b66b-77d1-46bc2d1d37c9', NULL, NULL, 'Каталог "Пресфото"-2', NULL, NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-10 09:19:08', '2007-08-30 07:42:09', NULL, '1', '1', 'Каталог "Пресфото"-2-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('27ad17fa-c66a-7e27-277a-46bc2d38d9b2', NULL, NULL, 'Каталог "Пресфото"-2', NULL, NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-10 09:19:08', '2007-08-30 07:42:09', NULL, '1', '1', 'Каталог "Пресфото"-2-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('31f49ea8-33da-11c3-26e9-46bc6e9c82aa', NULL, NULL, 'Каталог "Пресфото"-2', NULL, NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-10 13:54:35', '2007-08-30 07:42:09', NULL, '1', '1', 'Каталог "Пресфото"-2-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('d38c783f-987c-3c9b-0ec1-46d69432843d', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Тяло - Книга Компанията на паяците', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-30 09:58:01', '2007-08-30 11:25:08', NULL, '1', '1', 'Тяло - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('3294bba8-e54a-814d-76de-46bc6e3f700d', NULL, NULL, 'Каталог "Пресфото"-2', NULL, NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-10 13:54:35', '2007-08-30 07:42:09', NULL, '1', '1', 'Каталог "Пресфото"-2-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('2d8d5669-ae34-94de-c321-46bc71b18688', NULL, NULL, 'Каталог "Пресфото"-2', NULL, NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-10 14:10:43', '2007-08-30 07:42:09', NULL, '1', '1', 'Каталог "Пресфото"-2-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('3347b8ee-12ec-4be4-f5aa-46bc722c0d5a', NULL, NULL, 'Каталог "Пресфото"-2', NULL, NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-10 14:11:21', '2007-08-30 07:42:09', NULL, '1', '1', 'Каталог "Пресфото"-2-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('33d385c5-cdfd-0876-5fc0-46bc7266e9da', NULL, NULL, 'Каталог "Пресфото"-2', NULL, NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-10 14:11:21', '2007-08-30 07:42:09', NULL, '1', '1', 'Каталог "Пресфото"-2-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('a3269fdd-97c4-3d74-960c-46c945fb0663', NULL, NULL, NULL, NULL, NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-20 07:41:24', '2007-08-30 07:42:10', NULL, '1', '1', '-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('a91137e9-5b07-bfeb-01f9-46c9453abbcb', NULL, NULL, NULL, NULL, NULL, NULL, 'Опаковане', '2a31ebad-52ef-a8c0-dda8-46b0b9a4cb4a', '2007-08-20 07:41:24', '2007-08-30 07:42:10', NULL, '1', '1', '-Опаковане', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('a6aee181-9f9a-236a-7683-46c94a4a5219', NULL, NULL, NULL, NULL, NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-20 08:00:41', '2007-08-30 07:42:10', NULL, '1', '1', '-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('b9231f69-959f-a78c-01f9-46c94ac8c7c9', NULL, NULL, NULL, NULL, NULL, NULL, 'Опаковане', '2a31ebad-52ef-a8c0-dda8-46b0b9a4cb4a', '2007-08-20 08:00:44', '2007-08-30 07:42:10', NULL, '1', '1', '-Опаковане', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('f1fea2ad-b492-a011-6d08-46c94eb6ccc3', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-20 08:19:11', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('4870ecfe-2055-5609-93c7-46d68d11121f', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците-Корица', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-30 09:27:25', '2007-08-30 09:59:05', NULL, '1', '1', 'Книга Компанията на паяците-Корица-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('420800cb-aff1-3ec8-388d-46c94ee643db', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'Опаковане', '2a31ebad-52ef-a8c0-dda8-46b0b9a4cb4a', '2007-08-20 08:19:12', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-Опаковане', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('56a70920-f035-8733-5e4a-46c94e286595', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-20 08:19:39', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('b4920366-da4a-5ad7-f123-46c94e6be694', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'Опаковане', '2a31ebad-52ef-a8c0-dda8-46b0b9a4cb4a', '2007-08-20 08:19:39', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-Опаковане', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('44aec7be-8009-34b2-92bc-46c94e977a53', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-20 08:20:04', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('4a9caf50-a692-bd44-8115-46c94e531705', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'Опаковане', '2a31ebad-52ef-a8c0-dda8-46b0b9a4cb4a', '2007-08-20 08:20:04', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-Опаковане', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('43555d5e-d6c0-0ad0-dde3-46d68dd9e801', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците-Корица', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-30 09:27:25', '2007-08-30 09:59:05', NULL, '1', '1', 'Книга Компанията на паяците-Корица-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('4dc282cd-8103-7077-7b75-46c94e53063f', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-20 08:20:04', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('e6ef1bde-bc53-af98-756b-46c981babc53', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-20 11:58:33', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('335a6bd2-7279-88a2-beca-46c9820644b8', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-20 11:59:00', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('387091e8-5335-6567-9240-46c982983d9b', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-20 11:59:00', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('301c676c-1668-d4ee-e0b5-46c98775cc19', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-20 12:23:12', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('93e4ea34-1016-554b-4488-46d687e2f7f4', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците-2', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-30 09:03:49', '2007-08-30 09:27:25', NULL, '1', '1', 'Книга Компанията на паяците-2-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('35703862-a827-8d1e-9531-46c9871fcc4d', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-20 12:23:12', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('e893ca0e-2316-3a74-392f-46ca8ed99a5b', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-21 07:04:19', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('f2102d01-a826-86d1-e3e9-46ca8e4ba1c1', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-21 07:04:20', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('ac2e8666-c4ba-6ae8-4929-46ca8e1a8281', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-21 07:05:10', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('b2323724-fd7c-1755-0b04-46ca8ec3a9fd', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-21 07:05:10', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('8ecb850d-8667-11d5-ef58-46d6879bab08', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците-2', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-30 09:03:49', '2007-08-30 09:27:25', NULL, '1', '1', 'Книга Компанията на паяците-2-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('c66118bb-724b-99b4-cba4-46ca8f8f1c82', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-21 07:07:47', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-ВШМ', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('cbca6a89-a409-0be4-46a3-46ca8fb28d71', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-21 07:07:47', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('144f153d-b5f1-8296-f2f5-46ca9d29380a', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-21 08:06:59', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('199b19a8-600f-45e8-6758-46ca9da62731', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-21 08:06:59', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('308e6ebb-2ac8-57e7-5305-46caa8f41d57', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-21 08:53:37', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('35d061c7-4f7f-1b1a-89fe-46caa82fd120', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-21 08:53:37', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('a7602d21-7aac-1cd1-0e7b-46d6878ed06f', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците-2', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-30 09:02:08', '2007-08-30 09:03:49', NULL, '1', '1', 'Книга Компанията на паяците-2-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('aac0c74b-c8a6-7566-75be-46caa813d4f1', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-21 08:54:01', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('b00ba52e-e584-eaa4-5bd4-46caa87f32a1', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-21 08:54:01', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('7c8dd768-1367-08b2-1c13-46caa82379dc', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-21 08:54:40', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('7cda5be9-6efc-f642-af31-46caa89d4965', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-21 08:55:25', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('8290b29a-ea8b-62ed-61b1-46caa93f8b6e', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-21 08:57:41', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('a48667cc-062e-ce6b-0827-46d687c6aae8', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците-2', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-30 09:02:08', '2007-08-30 09:03:49', NULL, '1', '1', 'Книга Компанията на паяците-2-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('87f47246-92d4-72b4-29d6-46caa99cb87c', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-21 08:57:41', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('ce7c93e6-4418-c5f7-b8ae-46d694107bdf', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Тяло - Книга Компанията на паяците', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-30 09:58:01', '2007-08-30 11:25:08', NULL, '1', '1', 'Тяло - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('f1d5040f-3750-376d-9c2c-46caa933b0a3', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-21 08:59:02', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('146a1288-4e16-3983-f966-46caa9992175', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-21 08:59:02', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('d372a986-d663-0cb2-e46f-46caa9402ba2', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-21 09:00:48', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('d8c76b42-4364-aec4-4f65-46caa963ac06', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-21 09:00:48', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('30f922e4-9cf6-fa69-d659-46cab0cbab89', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-21 09:29:37', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-ВШМ', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('64f3d0dc-df18-4463-d6a7-46d67e31e4eb', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците-1', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-30 08:22:20', '2007-08-30 09:58:01', NULL, '1', '1', 'Книга Компанията на паяците-1-Лепене', NULL, NULL, NULL, '25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('35f3d35e-c7f6-543e-aa3a-46cab00c68a0', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-21 09:29:37', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-Лепене', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('545af650-2dbc-c6b0-a19f-46cac3fc7899', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-21 10:51:37', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('57358786-0930-3473-5739-46cac3c287b4', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'Книговезане', 'cc2cb632-61a2-bd4f-5e2e-4691f58d5fc6', '2007-08-21 10:51:37', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-Книговезане', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('549a4cf8-ee77-26f3-03ff-46cac3404640', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-21 10:52:12', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('71cbdd17-466c-7a3e-7847-46caceedbe21', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-21 11:38:46', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
('773585ef-daf2-d83e-4825-46cacec84b24', NULL, NULL, 'Каталог-01-2007-1', NULL, NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-21 11:38:46', '2007-08-30 07:42:10', NULL, '1', '1', 'Каталог-01-2007-1-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
('5fafd6c8-2b49-08d7-e639-46d67ef31f56', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците-1', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-30 08:22:20', '2007-08-30 09:58:01', NULL, '1', '1', 'Книга Компанията на паяците-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('e347c880-9821-dcae-d85e-46cd569da3ba', NULL, NULL, 'Корица Пресфото', NULL, NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-23 09:41:26', '2007-08-30 07:42:09', NULL, '1', '1', 'Корица Пресфото-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('ec9f666d-fcbc-934e-32e3-46cd56703ba0', NULL, NULL, 'Корица Пресфото', NULL, NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-23 09:41:26', '2007-08-30 07:42:09', NULL, '1', '1', 'Корица Пресфото-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('960a88c9-5dfa-5ca9-beaf-46ce8b115898', NULL, NULL, 'Корица Пресфото', NULL, NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-24 07:40:58', '2007-08-30 07:42:09', NULL, '1', '1', 'Корица Пресфото-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
('b7731e74-1058-805e-dec3-46d6948248d2', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-30 09:59:05', '2007-08-30 10:36:30', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('9b8bea84-31de-5d46-c98c-46ce8bb87d12', NULL, NULL, 'Корица Пресфото', NULL, NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-24 07:40:58', '2007-08-30 07:42:09', NULL, '1', '1', 'Корица Пресфото-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
('aea63d71-f2f9-bc1e-d579-46d56a19e423', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците-1', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-29 12:46:38', '2007-08-29 12:51:10', NULL, '1', '1', 'Книга Компанията на паяците-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('b4ddb9a8-d336-b937-cd21-46d56aee11b0', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците-1', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-29 12:46:38', '2007-08-29 12:51:10', NULL, '1', '1', 'Книга Компанията на паяците-1-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('b7bb83ff-7fa0-d409-b073-46d56a93725a', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците-1', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'Опаковане', '2a31ebad-52ef-a8c0-dda8-46b0b9a4cb4a', '2007-08-29 12:46:38', '2007-08-29 12:51:10', NULL, '1', '1', 'Книга Компанията на паяците-1-Опаковане', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('c99429b1-be96-8fd9-5612-46d56b7615b3', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците-1', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-29 12:51:10', '2007-08-29 13:04:30', NULL, '1', '1', 'Книга Компанията на паяците-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('cf06911b-9cfd-ddbe-d286-46d56b25f7f1', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците-1', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-29 12:51:10', '2007-08-29 13:04:30', NULL, '1', '1', 'Книга Компанията на паяците-1-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('d1e4c5ad-407d-b9a0-38e0-46d56b4ddddc', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците-1', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'Опаковане', '2a31ebad-52ef-a8c0-dda8-46b0b9a4cb4a', '2007-08-29 12:51:10', '2007-08-29 13:04:30', NULL, '1', '1', 'Книга Компанията на паяците-1-Опаковане', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('2260b3b8-f05a-dfd2-6576-46d56e096f9b', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците-1', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-29 13:04:30', '2007-08-29 13:39:45', NULL, '1', '1', 'Книга Компанията на паяците-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('27b645fb-74f4-bd6d-8e92-46d56e08b8b9', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците-1', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-29 13:04:30', '2007-08-29 13:39:46', NULL, '1', '1', 'Книга Компанията на паяците-1-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('2a8e881c-0b79-9433-29fe-46d56e0af2e4', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците-1', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'Опаковане', '2a31ebad-52ef-a8c0-dda8-46b0b9a4cb4a', '2007-08-29 13:04:30', '2007-08-29 13:39:46', NULL, '1', '1', 'Книга Компанията на паяците-1-Опаковане', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('a9aa0317-1deb-e924-1a93-46d57728a04f', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците-1', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-29 13:39:46', '2007-08-29 13:45:38', NULL, '1', '1', 'Книга Компанията на паяците-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('10051c20-11af-239b-a0e4-46d577c60a35', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците-1', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-29 13:39:46', '2007-08-29 13:45:38', NULL, '1', '1', 'Книга Компанията на паяците-1-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('58a15890-2522-89de-306d-46d578be66a9', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците-1', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-29 13:45:38', '2007-08-29 13:48:20', NULL, '1', '1', 'Книга Компанията на паяците-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('5de6a17b-c0e9-509f-28c7-46d5786bf71b', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците-1', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-29 13:45:38', '2007-08-29 13:48:20', NULL, '1', '1', 'Книга Компанията на паяците-1-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('5ac129ea-5023-001d-9fac-46d579b2bfaa', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците-1', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-29 13:48:20', '2007-08-29 14:28:59', NULL, '1', '1', 'Книга Компанията на паяците-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('6030ee2c-a7b4-122f-bbd4-46d57904d9f6', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците-1', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-29 13:48:20', '2007-08-29 14:28:59', NULL, '1', '1', 'Книга Компанията на паяците-1-Лепене', NULL, NULL, NULL, '25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('e3c55cff-9a8f-de9b-9d72-46d58205d6d3', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците-1', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-29 14:28:59', '2007-08-29 14:45:36', NULL, '1', '1', 'Книга Компанията на паяците-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('e92657d7-f296-1209-ce22-46d582858c2e', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците-1', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-29 14:28:59', '2007-08-29 14:45:36', NULL, '1', '1', 'Книга Компанията на паяците-1-Лепене', NULL, NULL, NULL, '25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('2ef7837c-ea09-ddfd-630e-46d58661eb65', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците-1', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-29 14:45:36', '2007-08-29 14:48:11', NULL, '1', '1', 'Книга Компанията на паяците-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('342bb464-6e3d-a77b-fcde-46d58635057b', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците-1', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-29 14:45:36', '2007-08-29 14:48:11', NULL, '1', '1', 'Книга Компанията на паяците-1-Лепене', NULL, NULL, NULL, '25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('8c881986-cde0-d465-b73c-46d587b40d95', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците-1', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-29 14:48:11', '2007-08-30 08:22:20', NULL, '1', '1', 'Книга Компанията на паяците-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('91d20fda-97eb-e050-6801-46d5873a6fd6', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците-1', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-29 14:48:11', '2007-08-30 08:22:20', NULL, '1', '1', 'Книга Компанията на паяците-1-Лепене', NULL, NULL, NULL, '25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('bc60cdfb-b9de-3193-cf80-46d69466fa07', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-30 09:59:05', '2007-08-30 10:36:31', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('f6df0567-7e1c-dc42-7d03-46d69db89c2f', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-30 10:36:31', '2007-08-30 10:37:18', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('14705b3b-f02e-23ed-ded6-46d69d62f053', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-30 10:36:31', '2007-08-30 10:37:18', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('c261edda-e80b-5842-3866-46d69d0870fa', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-30 10:37:18', '2007-08-30 10:40:38', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('c769ee8b-7bfb-309e-a7a7-46d69deeddfb', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-30 10:37:18', '2007-08-30 10:40:38', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('ba8c5316-c456-ef4a-96e5-46d69e4fc100', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-30 10:40:38', '2007-08-30 10:41:22', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('bfa1d1b2-e917-6e9b-1360-46d69e165462', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-30 10:40:38', '2007-08-30 10:41:22', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('b506ab3e-b62b-e8ca-d444-46d69e2052e5', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-30 10:41:22', '2007-08-30 12:57:58', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('ba938382-03b8-c4b3-820e-46d69e7d25a6', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-30 10:41:22', '2007-08-30 12:57:58', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('d86b72a7-29c1-706d-6ae1-46d6a949640e', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Тяло - Книга Компанията на паяците', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-30 11:25:08', '2007-08-30 11:30:23', NULL, '1', '1', 'Тяло - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('ddebe0e0-5754-f694-0996-46d6a9b0f735', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Тяло - Книга Компанията на паяците', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-30 11:25:08', '2007-08-30 11:30:23', NULL, '1', '1', 'Тяло - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('c5e33bab-a4ea-b61b-8ff9-46d6aa145246', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Тяло - Книга Компанията на паяците', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-30 11:30:23', '2007-08-30 12:36:47', NULL, '1', '1', 'Тяло - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('cb8e7c3e-1565-8f45-9bbf-46d6aa7ec42d', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Тяло - Книга Компанията на паяците', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-30 11:30:23', '2007-08-30 12:36:47', NULL, '1', '1', 'Тяло - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('c23e0716-f2dd-42e4-5559-46d6b9f16f26', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Тяло - Книга Компанията на паяците', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-30 12:36:47', '2007-08-30 12:38:43', NULL, '1', '1', 'Тяло - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('c791900a-f9de-08eb-df45-46d6b91ca27b', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Тяло - Книга Компанията на паяците', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-30 12:36:47', '2007-08-30 12:38:43', NULL, '1', '1', 'Тяло - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('6e42631a-ebde-5a45-038f-46d6babebb50', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Тяло - Книга Компанията на паяците', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-30 12:38:43', '2007-08-30 12:44:06', NULL, '1', '1', 'Тяло - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('738dde02-4381-88e1-bce3-46d6ba82f9b7', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Тяло - Книга Компанията на паяците', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-30 12:38:43', '2007-08-30 12:44:06', NULL, '1', '1', 'Тяло - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('33a909fa-7d33-ab45-31b1-46d6bb38f9f9', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Тяло - Книга Компанията на паяците', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-30 12:44:06', '2007-08-30 15:13:43', NULL, '1', '1', 'Тяло - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('3902747a-926b-a230-e505-46d6bb342b8b', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Тяло - Книга Компанията на паяците', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-30 12:44:06', '2007-08-30 15:13:43', NULL, '1', '1', 'Тяло - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('38162136-f444-0856-2183-46d6be8a857b', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-30 12:57:58', '2007-08-30 14:49:25', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('3d8bd9a2-ff57-2f02-73ea-46d6be129fe9', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-30 12:57:58', '2007-08-30 14:49:25', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('4062519c-20c8-0a96-778d-46d6d81e5749', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-30 14:49:25', '2007-09-13 07:06:24', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('45c4d224-1744-13be-8bb5-46d6d8a54a93', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-30 14:49:25', '2007-09-13 07:06:24', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('a8b3e7a5-424d-36fb-3078-46d6dc2d0943', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Тяло2 - Компанията на паяците-3', NULL, NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-30 15:05:22', '2007-09-18 08:56:07', NULL, '1', '1', 'Тяло2 - Компанията на паяците-3-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('ae0440cb-d94c-976f-8687-46d6dc86cb4f', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Тяло2 - Компанията на паяците-3', NULL, NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-30 15:05:22', '2007-09-18 08:56:07', NULL, '1', '1', 'Тяло2 - Компанията на паяците-3-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('7842586c-b1fd-d3d6-2897-46d6debdd90a', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Тяло2 - Компанията на паяците-3', NULL, NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-30 15:12:05', '2007-09-18 08:56:07', NULL, '1', '1', 'Тяло2 - Компанията на паяците-3-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('7e282709-a98a-767f-5f99-46d6de581b16', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Тяло2 - Компанията на паяците-3', NULL, NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-30 15:12:05', '2007-09-18 08:56:07', NULL, '1', '1', 'Тяло2 - Компанията на паяците-3-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('e9b0f3f4-e482-9f36-66f6-46d6def46e94', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Тяло - Книга Компанията на паяците', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-30 15:13:43', '2007-08-31 12:02:18', NULL, '1', '1', 'Тяло - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('ef010938-d410-5cab-7818-46d6de6a73e8', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Тяло - Книга Компанията на паяците', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-30 15:13:43', '2007-08-31 12:02:18', NULL, '1', '1', 'Тяло - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('5e8ad72d-1ede-4af7-0854-46efbb888076', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Тяло - Книга Компанията на паяците', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-18 11:52:27', '2007-09-19 11:54:56', NULL, '1', '1', 'Тяло - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('be9d2fe6-1133-46ac-3afa-46d7baea3ab4', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Тяло2 - Компанията на паяците', NULL, NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-31 06:51:12', '2007-10-05 10:40:32', NULL, '1', '1', 'Тяло2 - Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('c3a16dfa-4a4f-70f9-a2e5-46d7ba41e1e8', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Тяло2 - Компанията на паяците', NULL, NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-31 06:51:12', '2007-10-05 10:40:17', NULL, '1', '1', 'Тяло2 - Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('708b2518-562b-8019-ee71-46d7cc3dd4a3', NULL, NULL, 'Листовки ДЗИ-1', NULL, NULL, NULL, 'Рязане', '273450b1-677f-fe2a-7b99-46d7cb1bdf30', '2007-08-31 08:06:56', '2007-09-25 08:24:15', NULL, '1', '1', 'Листовки ДЗИ-1-Рязане', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` (`id`, `product_name`, `product_id`, `component_name`, `component_id`, `machine_name`, `machine_id`, `operation_name`, `operation_id`, `date_entered`, `date_modified`, `assigned_user_id`, `modified_user_id`, `created_by`, `name`, `singleprice`, `lots`, `quantity`, `operations_count`, `est_price`, `est_date`, `execution_date`, `executor`, `executed_date`, `executored_from`, `executed_qty`, `description`, `deleted`) VALUES 
('759765c2-623b-2c03-a529-46d7cc74e7ce', NULL, NULL, 'Листовки ДЗИ-1', NULL, NULL, NULL, 'Опаковане', '2a31ebad-52ef-a8c0-dda8-46b0b9a4cb4a', '2007-08-31 08:06:56', '2007-09-25 08:24:15', NULL, '1', '1', 'Листовки ДЗИ-1-Опаковане', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('b5697909-3ae6-cba5-016e-46d7ccaa0cba', NULL, NULL, 'Листовки ДЗИ-1', NULL, NULL, NULL, 'Рязане', '273450b1-677f-fe2a-7b99-46d7cb1bdf30', '2007-08-31 08:10:28', '2007-09-25 08:24:15', NULL, '1', '1', 'Листовки ДЗИ-1-Рязане', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('b89b8ef1-5a4f-a2fe-d184-46d7ccd04512', NULL, NULL, 'Листовки ДЗИ-1', NULL, NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-31 08:10:28', '2007-09-25 08:24:15', NULL, '1', '1', 'Листовки ДЗИ-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('2b41fb14-04b4-8dd9-b9a2-46f8e8493c72', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Тяло - Книга Компанията на паяците', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-25 10:53:36', '2007-09-25 10:53:36', NULL, '1', '1', 'Тяло - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
('bdd5f7c0-8d5b-9cc5-591b-46d7cc9a56bb', NULL, NULL, 'Листовки ДЗИ-1', NULL, NULL, NULL, 'Опаковане', '2a31ebad-52ef-a8c0-dda8-46b0b9a4cb4a', '2007-08-31 08:10:28', '2007-09-25 08:24:15', NULL, '1', '1', 'Листовки ДЗИ-1-Опаковане', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('c0ba274f-f308-d8bf-33e0-46d7ccf1b575', NULL, NULL, 'Листовки ДЗИ-1', NULL, NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-31 08:10:28', '2007-09-25 08:24:15', NULL, '1', '1', 'Листовки ДЗИ-1-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('9b4bf85f-add9-1e30-b405-46d8037500eb', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Тяло - Книга Компанията на паяците', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-31 12:02:18', '2007-09-10 14:47:38', NULL, '1', '1', 'Тяло - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('a0da4815-c626-e22d-17ef-46d80300a6e1', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Тяло - Книга Компанията на паяците', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-31 12:02:18', '2007-09-10 14:47:38', NULL, '1', '1', 'Тяло - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('9ed48223-a452-851c-58e9-46d808fe12f0', NULL, NULL, 'Листовки ДЗИ-1', NULL, NULL, NULL, 'Рязане', '273450b1-677f-fe2a-7b99-46d7cb1bdf30', '2007-08-31 12:23:54', '2007-09-25 08:24:15', NULL, '1', '1', 'Листовки ДЗИ-1-Рязане', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('a1cbfdb2-6303-a0b8-5fac-46d808e81469', NULL, NULL, 'Листовки ДЗИ-1', NULL, NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-31 12:23:54', '2007-09-25 08:24:15', NULL, '1', '1', 'Листовки ДЗИ-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('a77b9114-9ade-aaa0-4bb5-46d80875f5a2', NULL, NULL, 'Листовки ДЗИ-1', NULL, NULL, NULL, 'Опаковане', '2a31ebad-52ef-a8c0-dda8-46b0b9a4cb4a', '2007-08-31 12:23:54', '2007-09-25 08:24:15', NULL, '1', '1', 'Листовки ДЗИ-1-Опаковане', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('aa69938f-074e-b909-051b-46d808ca865a', NULL, NULL, 'Листовки ДЗИ-1', NULL, NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-31 12:23:54', '2007-09-25 08:24:15', NULL, '1', '1', 'Листовки ДЗИ-1-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('280300c9-c2f2-09cd-b567-46d80a6657a7', NULL, NULL, 'Листовки ДЗИ-1', NULL, NULL, NULL, 'Рязане', '273450b1-677f-fe2a-7b99-46d7cb1bdf30', '2007-08-31 12:32:34', '2007-09-25 08:24:15', NULL, '1', '1', 'Листовки ДЗИ-1-Рязане', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('2d1503e5-7f94-1c1a-37af-46d80a487871', NULL, NULL, 'Листовки ДЗИ-1', NULL, NULL, NULL, 'Опаковане', '2a31ebad-52ef-a8c0-dda8-46b0b9a4cb4a', '2007-08-31 12:32:34', '2007-09-25 08:24:15', NULL, '1', '1', 'Листовки ДЗИ-1-Опаковане', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('5c1224c6-12e2-808c-0734-46f8e8158cf7', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Тяло - Книга Компанията на паяците', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-25 10:51:06', '2007-09-25 10:53:36', NULL, '1', '1', 'Тяло - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('14fdcb23-713d-03e1-3ba9-46d80c4116b5', NULL, NULL, 'Листовки ДЗИ-1', NULL, NULL, NULL, 'Рязане', '273450b1-677f-fe2a-7b99-46d7cb1bdf30', '2007-08-31 12:42:56', '2007-09-25 08:24:15', NULL, '1', '1', 'Листовки ДЗИ-1-Рязане', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('17cb6763-fce1-a904-0e83-46d80c2acf04', NULL, NULL, 'Листовки ДЗИ-1', NULL, NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-31 12:42:56', '2007-09-25 08:24:15', NULL, '1', '1', 'Листовки ДЗИ-1-ВШМ', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('1d143c51-af83-6d19-4983-46d80c1e50ee', NULL, NULL, 'Листовки ДЗИ-1', NULL, NULL, NULL, 'Опаковане', '2a31ebad-52ef-a8c0-dda8-46b0b9a4cb4a', '2007-08-31 12:42:56', '2007-09-25 08:24:15', NULL, '1', '1', 'Листовки ДЗИ-1-Опаковане', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('20055e83-84ed-be99-6a59-46d80c1cea5a', NULL, NULL, 'Листовки ДЗИ-1', NULL, NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-31 12:42:56', '2007-09-25 08:24:15', NULL, '1', '1', 'Листовки ДЗИ-1-Лепене', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('9ed00fe2-b155-56ec-8f16-46d80da2f534', NULL, NULL, 'Листовки ДЗИ-1', NULL, NULL, NULL, 'Рязане', '273450b1-677f-fe2a-7b99-46d7cb1bdf30', '2007-08-31 12:44:28', '2007-09-25 08:24:15', NULL, '1', '1', 'Листовки ДЗИ-1-Рязане', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
('a1a63e5d-12df-2921-5297-46d80d4c5c16', NULL, NULL, 'Листовки ДЗИ-1', NULL, NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-08-31 12:44:28', '2007-09-25 08:24:15', NULL, '1', '1', 'Листовки ДЗИ-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
('a6d6dd88-9c33-7f6a-67a8-46d80d6bfaf6', NULL, NULL, 'Листовки ДЗИ-1', NULL, NULL, NULL, 'Опаковане', '2a31ebad-52ef-a8c0-dda8-46b0b9a4cb4a', '2007-08-31 12:44:28', '2007-09-25 08:24:15', NULL, '1', '1', 'Листовки ДЗИ-1-Опаковане', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
('a9b0272a-9a1d-a453-f81e-46d80dde0640', NULL, NULL, 'Листовки ДЗИ-1', NULL, NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-08-31 12:44:28', '2007-09-25 08:24:15', NULL, '1', '1', 'Листовки ДЗИ-1-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
('56841af1-8bbc-4d2e-877e-46f8e894ca2b', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Тяло - Книга Компанията на паяците', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-25 10:51:06', '2007-09-25 10:53:36', NULL, '1', '1', 'Тяло - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('ebe05b63-2ba7-27b7-2cc3-46e559026b62', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Тяло - Книга Компанията на паяците', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-10 14:47:38', '2007-09-12 14:06:14', NULL, '1', '1', 'Тяло - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('f0e5947e-2825-43d5-ae7a-46e55971e3e4', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Тяло - Книга Компанията на паяците', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-10 14:47:39', '2007-09-12 14:06:14', NULL, '1', '1', 'Тяло - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('d5eb6cdb-8f5c-6053-ae45-46e7f256e220', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Тяло - Книга Компанията на паяците', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-12 14:06:14', '2007-09-18 11:52:27', NULL, '1', '1', 'Тяло - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('db52b124-3881-a2bf-7c95-46e7f243f353', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Тяло - Книга Компанията на паяците', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-12 14:06:14', '2007-09-18 11:52:27', NULL, '1', '1', 'Тяло - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('62cff10b-3dca-7828-c051-46e8e11f7178', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-13 07:06:24', '2007-09-13 07:11:36', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('6882b628-f8ae-059c-b654-46e8e106bf28', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-13 07:06:24', '2007-09-13 07:11:36', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('1265000c-49ed-1b7f-5656-46e8e271d6ed', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-13 07:11:36', '2007-09-13 13:10:16', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('17d9a36d-653a-f70e-adab-46e8e25bc48f', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-13 07:11:36', '2007-09-13 13:10:17', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('739805ef-0e30-dc47-6786-46e936c8de49', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-13 13:10:17', '2007-09-13 13:10:53', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('f27b0a8a-f561-388c-b3cc-46e936e3228d', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-13 13:10:17', '2007-09-13 13:10:53', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('d751e92d-956f-fbd4-a5b2-46e936261fa0', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-13 13:10:53', '2007-09-13 13:11:49', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('ded0fad0-7561-e9e3-ba3a-46e936b25174', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-13 13:10:53', '2007-09-13 13:11:49', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('3bcd3365-9636-0e85-5f86-46e937c28f1b', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-13 13:11:49', '2007-09-13 13:13:40', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('41691724-5373-f457-c438-46e93790d90b', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-13 13:11:49', '2007-09-13 13:13:40', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('29fc0f92-deee-e2ee-918c-46e937eacd9b', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-13 13:13:41', '2007-09-13 13:14:49', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('3c219285-a565-97fd-a2c3-46e937b181b5', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-13 13:13:41', '2007-09-13 13:14:49', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('297a22d9-5100-21ac-4547-46e9377372b9', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-13 13:14:49', '2007-09-13 13:27:33', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('2eedacff-ee03-39ea-64c4-46e937fa8100', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-13 13:14:49', '2007-09-13 13:27:33', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('e969fa53-a658-2b07-e655-46e93ab48499', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Комп. на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-13 13:27:33', '2007-09-13 13:28:08', NULL, '1', '1', 'Корица - Книга Комп. на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('eef30c2f-f5fc-89fb-b7e2-46e93a3460ed', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Комп. на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-13 13:27:33', '2007-09-13 13:28:08', NULL, '1', '1', 'Корица - Книга Комп. на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('32704bee-1708-f04c-e197-46e93adf733a', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-13 13:28:08', '2007-09-13 13:31:59', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('39085c25-3fda-04cf-6c63-46e93a71c41f', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-13 13:28:08', '2007-09-13 13:31:59', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('df287060-27e6-d8e2-df4b-46e93b149e5c', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книг Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-13 13:31:59', '2007-09-13 13:32:45', NULL, '1', '1', 'Корица - Книг Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('e4a52a7f-04bb-2d02-3d8d-46e93b47f3e1', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книг Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-13 13:31:59', '2007-09-13 13:32:45', NULL, '1', '1', 'Корица - Книг Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('369688fb-3005-1283-18f9-46e93b80a41a', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-13 13:32:45', '2007-09-13 13:36:05', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('3c5ce2f9-67e7-1cdf-78a5-46e93b42c70e', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-13 13:32:45', '2007-09-13 13:36:06', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('4ec08a91-ab1e-1c5f-a858-46e93c6b26db', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-13 13:36:06', '2007-09-13 13:36:09', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('6726dd89-bfe9-5740-232d-46e93c46f4fc', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-13 13:36:06', '2007-09-13 13:36:09', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('131a9cdb-5245-e7ba-de34-46e93c456fd0', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-13 13:36:10', '2007-09-13 13:36:21', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('2a5b7743-a5f0-667a-5ee0-46e93c896243', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-13 13:36:10', '2007-09-13 13:36:22', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('6f02a9e1-338d-eb1a-4df6-46e93c038fb6', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-13 13:36:22', '2007-09-13 13:37:09', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('87ee5070-17c3-94c9-fdc2-46e93c79ec85', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-13 13:36:22', '2007-09-13 13:37:09', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('c186c5c2-e2fa-c217-6da3-46e93d65172d', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-13 13:37:09', '2007-09-13 13:37:34', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('d99e812c-e77f-3cfd-9a49-46e93d50e2b8', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-13 13:37:09', '2007-09-13 13:37:34', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('d764aa01-0385-2727-e919-46e93de39387', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книг Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-13 13:37:34', '2007-09-13 13:38:33', NULL, '1', '1', 'Корица - Книг Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('ee4877c2-85c5-8641-d0b2-46e93d006fde', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книг Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-13 13:37:34', '2007-09-13 13:38:34', NULL, '1', '1', 'Корица - Книг Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('adec5f83-caec-2510-ecf2-46e93d4bf9ea', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-13 13:38:34', '2007-09-13 15:49:53', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('d94a9d75-5ba3-3c54-bb7c-46e93d199a66', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-13 13:38:34', '2007-09-13 15:49:54', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('c02442ee-773c-7b66-ab27-46e95cda6a6f', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-13 15:49:54', '2007-09-14 13:59:47', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('e68cab8c-b66d-087a-b846-46e95ce8c92e', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-13 15:49:54', '2007-09-14 13:59:47', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('9c6413bd-9cb1-510e-de41-46ea9365a6b4', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-14 13:59:47', '2007-09-14 14:02:04', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('9ed77225-f859-62f0-99d1-46ea93ea3bb0', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-14 13:59:47', '2007-09-14 14:02:04', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('c90d0cca-8dd3-7667-fe0e-46ea947f9790', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-14 14:02:04', '2007-09-14 14:23:37', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('cbb3213d-f7bf-fada-6fa5-46ea94ae5964', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-14 14:02:04', '2007-09-14 14:23:37', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('c219ba30-c33b-c9f7-d32a-46ea993772e1', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-14 14:23:37', '2007-09-14 14:35:59', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('c487070e-71eb-eb19-b3ee-46ea99f80250', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-14 14:23:37', '2007-09-14 14:36:00', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('1af22f93-08df-fbfe-7206-46ea9c67bf20', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-14 14:36:00', '2007-09-14 14:37:42', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('227ee6c6-e9f8-768d-912a-46ea9c88e96f', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-14 14:36:00', '2007-09-14 14:37:42', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('82ff1ed0-4461-a613-1005-46ea9c5d897c', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-14 14:37:42', '2007-09-14 14:51:47', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('88d40bc9-0ae1-f523-3ba8-46ea9cd501b4', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-14 14:37:42', '2007-09-14 14:51:47', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('ac9456a4-25dc-54fa-daf3-46eaa0e75ee1', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-14 14:51:47', '2007-09-15 09:02:54', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('af900ab5-2561-d619-2ddb-46eaa029cb72', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-14 14:51:47', '2007-09-15 09:02:54', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('bd854048-6961-3f65-5a3d-46eb9f6266b3', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-15 09:02:54', '2007-09-15 09:05:53', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('c0359bbe-ed98-b7a6-89c5-46eb9f5ca1a1', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-15 09:02:54', '2007-09-15 09:05:53', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('38a53b63-f6d5-4966-cc55-46eba007ffc4', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-15 09:05:53', '2007-09-15 09:10:36', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('3b630947-8aa9-2b39-654e-46eba0f73a22', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-15 09:05:53', '2007-09-15 09:10:36', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('e9864957-0091-3267-6bd1-46eba141d314', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-15 09:10:36', '2007-09-15 09:10:57', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('ec061d42-37b6-0e30-ad67-46eba1ae7f90', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-15 09:10:36', '2007-09-15 09:10:57', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('772222cd-2dd0-b975-95b1-46eba18d4d0e', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-15 09:10:57', '2007-09-15 09:13:02', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('79b10b0e-f40c-754f-b3ec-46eba15d1698', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-15 09:10:57', '2007-09-15 09:13:02', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('ce801565-54b8-dcd2-c7ad-46eba2172885', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-15 09:13:02', '2007-09-15 09:16:25', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('d1230376-1905-9985-f3c1-46eba2c54a40', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-15 09:13:02', '2007-09-15 09:16:25', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('39c875b6-ed8c-0a88-6be0-46eba2431b95', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-15 09:16:25', '2007-09-15 09:16:44', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('3ce0dca8-93cf-2933-c72b-46eba2894ad6', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-15 09:16:25', '2007-09-15 09:16:44', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('61256049-fd77-165d-ef45-46eba2e2dc04', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-15 09:16:44', '2007-09-15 09:16:45', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('63fb2d5c-7af9-c79d-db37-46eba206b7d0', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-15 09:16:44', '2007-09-15 09:16:45', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('ae22b8eb-e399-eb53-3faf-46eba253be52', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-15 09:16:45', '2007-09-15 09:20:36', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('b0f20b51-e423-24d9-9a14-46eba27c42a8', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-15 09:16:45', '2007-09-15 09:20:36', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('a366d839-8cbe-2286-8102-46eba30beadb', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-15 09:20:36', '2007-09-15 09:20:49', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('a614c77b-2d94-862d-aac0-46eba3bac833', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-15 09:20:36', '2007-09-15 09:20:49', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('4c2bcf30-994d-dece-6666-46eba3b4224e', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-15 09:20:49', '2007-09-15 09:23:16', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('4ee729fc-eb2b-b5d3-c517-46eba309ae12', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-15 09:20:49', '2007-09-15 09:23:16', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('4b052007-5b4b-927a-9d7a-46eba44808bf', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-15 09:23:16', '2007-09-15 09:38:02', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('4da87887-3a50-10d0-77ad-46eba44b23a4', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-15 09:23:16', '2007-09-15 09:38:02', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('40189e56-57b9-3aec-ace7-46eba7584476', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-15 09:38:02', '2007-09-15 09:41:58', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('42a55f3a-de00-918e-97a1-46eba7ac54e4', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-15 09:38:02', '2007-09-15 09:41:58', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('503515e9-6bda-f326-0adb-46eba83b42e3', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-15 09:41:58', '2007-09-15 09:44:40', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('53075d10-02c2-0ae5-d192-46eba87698fe', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-15 09:41:58', '2007-09-15 09:44:40', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('a9962a49-e508-d3de-a6e9-46eba9a59234', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-15 09:44:40', '2007-09-15 09:45:04', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('ac1e14aa-8554-86fe-302f-46eba90b48d8', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-15 09:44:40', '2007-09-15 09:45:04', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('5c6b6e72-4340-dba0-7d0a-46eba93066d5', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-15 09:45:04', '2007-09-15 09:45:16', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('5f21a7b3-a1b0-fece-c542-46eba9f967c5', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-15 09:45:04', '2007-09-15 09:45:16', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('a2617139-56ea-262d-90f0-46eba9212cb7', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-15 09:45:16', '2007-09-15 09:45:39', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('a4ed2bbd-5672-45b0-de5a-46eba909a1cf', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-15 09:45:16', '2007-09-15 09:45:39', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('409deafc-2d81-3abc-1771-46eba9d51b19', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-15 09:45:39', '2007-09-15 09:47:05', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` (`id`, `product_name`, `product_id`, `component_name`, `component_id`, `machine_name`, `machine_id`, `operation_name`, `operation_id`, `date_entered`, `date_modified`, `assigned_user_id`, `modified_user_id`, `created_by`, `name`, `singleprice`, `lots`, `quantity`, `operations_count`, `est_price`, `est_date`, `execution_date`, `executor`, `executed_date`, `executored_from`, `executed_qty`, `description`, `deleted`) VALUES 
('432f1bf6-8a8c-6dbb-3681-46eba90fc23b', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-15 09:45:39', '2007-09-15 09:47:05', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('32a7706e-576a-9cbd-133e-46ebaac4d464', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-15 09:47:07', '2007-09-15 09:48:00', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('35327f36-8dd9-e929-5066-46ebaa8163e5', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-15 09:47:07', '2007-09-15 09:48:00', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('d3035572-3134-d7f4-e2a2-46ebaabb0a77', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-15 09:48:00', '2007-09-15 09:48:50', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('d5adc6d3-bbde-8bff-a0f6-46ebaa12dc51', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-15 09:48:00', '2007-09-15 09:48:50', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('ac3b8ebf-ca7e-7a67-d9af-46ebaaffabc1', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-15 09:48:52', '2007-09-15 09:52:02', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('aec7d0af-7286-7113-1b28-46ebaa213c4a', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-15 09:48:52', '2007-09-15 09:52:02', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('cd42eb75-48a7-05c8-a1c2-46ebab3df8f7', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-15 09:52:02', '2007-09-15 09:52:24', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('d2c6c482-dc36-7b8f-3e8f-46ebabdc8c45', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-15 09:52:02', '2007-09-15 09:52:24', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('6dc37b89-9f7e-f957-96ce-46ebab89f0e3', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-15 09:52:24', '2007-09-15 09:54:07', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('732c6c27-8d2a-be32-fb78-46ebabb79501', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-15 09:52:24', '2007-09-15 09:54:07', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('d0e7a0ab-ab10-ecda-aa11-46ebabedd0b6', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-15 09:54:07', '2007-09-15 09:54:52', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('d64dffda-d3fb-95f5-8445-46ebabe8ddff', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-15 09:54:07', '2007-09-15 09:54:52', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('ef551f5b-023f-2aa9-e8ad-46ebab94b20a', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-15 09:54:52', '2007-09-15 09:58:38', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('d8a003b8-3808-d1a3-9e70-46ebab41df5d', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-15 09:54:53', '2007-09-15 09:58:38', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('3b9bcade-57bc-513f-1e96-46ebace9f7a3', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-15 09:58:38', '2007-09-15 09:58:58', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('41655b72-f71a-193d-7c12-46ebacd4a5a7', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-15 09:58:38', '2007-09-15 09:58:58', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('21820b90-4389-90e1-2c91-46ebaca48dc9', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-15 09:58:58', '2007-09-15 09:59:23', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('271646b9-d354-2ac0-034d-46ebace6a7b6', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-15 09:58:58', '2007-09-15 09:59:23', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('366e400b-6063-f683-e389-46ebac05e3c4', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-15 09:59:23', '2007-09-15 10:00:07', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('3c14e0aa-0aea-48ce-d126-46ebacd3126c', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-15 09:59:23', '2007-09-15 10:00:07', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('76599a7b-ee77-6c8b-1b65-46ebad885dbb', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-15 10:00:07', '2007-09-15 10:04:14', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('78f8a0a5-e966-d0e8-4312-46ebad7737c9', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-15 10:00:07', '2007-09-15 10:04:14', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('6667a067-06c4-d743-d0aa-46ebae876037', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-15 10:04:14', '2007-09-15 10:06:49', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('693bf6c9-660c-f73e-acce-46ebae4b3ee1', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-15 10:04:14', '2007-09-15 10:06:49', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('2b312fec-5162-8c25-f4eb-46ebaef93905', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-15 10:06:49', '2007-09-15 10:07:25', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('317daebb-be02-8459-7fc0-46ebae9745bc', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-15 10:06:49', '2007-09-15 10:07:25', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('23095438-c0fd-bf54-e663-46ebaed0c58b', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-15 10:07:25', '2007-09-15 10:07:58', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('29320649-df62-7d28-fbc0-46ebae11206f', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-15 10:07:25', '2007-09-15 10:07:58', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('1b557e03-d77b-7925-185a-46ebaeefc6d1', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-15 10:07:58', '2007-09-15 10:08:25', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('214b984c-cdcc-d4c9-a592-46ebae879527', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-15 10:07:58', '2007-09-15 10:08:25', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('cf12548b-40ea-8797-3464-46ebaf7d769b', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-15 10:08:25', '2007-09-15 10:25:51', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('d4a6bbd3-548d-a1e5-40d0-46ebaf1f8818', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-15 10:08:25', '2007-09-15 10:25:51', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('32065e10-fb03-5f4d-e967-46ebb3d4af56', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-15 10:25:51', '2007-09-15 10:26:22', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('3792fbe7-2e86-2f3c-7823-46ebb3238647', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-15 10:25:51', '2007-09-15 10:26:22', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('9519931a-cb6c-586a-dd5c-46ebb3488340', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-15 10:26:22', '2007-09-15 10:26:51', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('9abf927d-22ea-4dee-a9bc-46ebb3eadae8', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-15 10:26:22', '2007-09-15 10:26:51', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('852627aa-81d7-f419-2db0-46ebb3538d08', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-15 10:26:51', '2007-09-15 10:27:26', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('759201ee-4a89-eeda-65ea-46ebb3574717', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-15 10:27:26', '2007-09-15 15:05:44', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('7b1bc44c-6691-b5e8-9250-46ebb3553361', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-15 10:27:26', '2007-09-15 15:05:44', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('dc5b7f8a-85c4-d042-e3e3-46ebf42ac189', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-15 15:05:44', '2007-09-15 15:09:25', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('e1d0f41b-2a6d-bf82-f6da-46ebf43e96f1', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-15 15:05:44', '2007-09-15 15:09:25', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('91bbc164-ba3d-9981-3112-46ebf5fb3561', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-15 15:09:25', '2007-09-15 15:11:45', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('99cd559e-1d19-83c1-e8e3-46ebf577492b', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-15 15:09:25', '2007-09-15 15:11:45', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('6d58fcc9-47fc-678f-76cb-46ebf667da53', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-15 15:11:45', '2007-09-15 15:14:26', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('6fffcb35-5439-b314-a5b3-46ebf6440451', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-15 15:11:45', '2007-09-15 15:14:26', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('b2b0656a-6955-e3ea-8af3-46ebf6ec3e87', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-15 15:14:26', '2007-09-15 15:14:48', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('b529a5f5-a6c9-1be7-de60-46ebf6c13f23', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-15 15:14:26', '2007-09-15 15:14:48', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('4a5d9918-9efb-e4dd-213e-46ebf6c5a37a', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-15 15:14:48', '2007-09-15 15:16:15', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('4fc6c8a3-f596-be35-1265-46ebf603bfb4', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-15 15:14:48', '2007-09-15 15:16:15', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('559aba72-1e28-40bf-a3ff-46ebf7f7dfe6', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-15 15:16:15', '2007-09-15 15:16:23', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('585a6c7d-d4c8-86be-9230-46ebf74d29e4', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-15 15:16:15', '2007-09-15 15:16:23', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('3128211c-a813-4a2b-2124-46ebf7284cf6', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-15 15:16:23', '2007-09-15 15:16:38', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('36f6653a-c0e8-819e-6f2f-46ebf70fe9a7', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-15 15:16:23', '2007-09-15 15:16:38', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('e391f2bb-bc0d-579b-7a2e-46ebf70e7259', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-15 15:16:38', '2007-09-15 15:17:19', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('e6388f8b-3771-6ee1-02cf-46ebf78bfc87', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-15 15:16:38', '2007-09-15 15:17:19', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('9b2e33e3-306f-1c73-175e-46ebf7effe87', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-15 15:17:19', '2007-09-15 15:17:25', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('9e698088-8d03-c71a-5b0f-46ebf7477b4a', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-15 15:17:19', '2007-09-15 15:17:25', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('8c4ddce3-4bbd-0a41-4e8b-46ebf7b53fcc', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-15 15:17:25', '2007-09-15 15:23:01', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('8ef79386-7de5-f75b-463e-46ebf7da5137', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-15 15:17:25', '2007-09-15 15:23:01', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('b257acce-a396-7a1f-79fb-46ebf8816f1e', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-15 15:23:01', '2007-09-15 15:23:39', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('b7e545d1-fdd5-4618-1f4c-46ebf8b3f069', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-15 15:23:01', '2007-09-15 15:23:39', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('b843d062-0fd6-dbf9-e0ee-46ebf89f8721', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-15 15:23:39', '2007-09-17 07:21:14', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('bdb4b1c9-b8aa-7767-aa6b-46ebf8b8d476', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-15 15:23:39', '2007-09-17 07:21:14', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('40dd7add-afeb-638a-0ed6-46ee2a575512', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-17 07:21:14', '2007-09-17 07:23:17', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('45afbe2e-eae7-b3fb-5cde-46ee2a84bc35', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-17 07:21:14', '2007-09-17 07:23:17', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('c170529d-ca34-6358-ae52-46ee2bd9be25', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-17 07:23:17', '2007-09-17 07:24:25', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('c3e3a11f-78af-b5d5-f686-46ee2ba2f5ce', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-17 07:23:17', '2007-09-17 07:24:25', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('54541561-8dfb-c6bd-7328-46ee2bb333b4', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-17 07:24:25', '2007-09-17 07:32:25', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('56e85ff0-d28f-9c86-c7cb-46ee2b506d2a', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-17 07:24:25', '2007-09-17 07:32:25', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('63737eb1-6c71-7806-7d42-46ee2d2de782', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-17 07:32:25', '2007-09-17 07:43:26', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('65f498ba-6103-3d25-a162-46ee2d98d39a', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-17 07:32:25', '2007-09-17 07:43:26', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('7674252d-9587-c3e8-85dd-46ee301680c0', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-17 07:43:26', '2007-09-17 07:44:06', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('78e37f05-2aff-7d66-c0aa-46ee306aa05c', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-17 07:43:26', '2007-09-17 07:44:06', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('9ce2e6ca-f0cf-9eca-58cc-46ee30824701', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-17 07:44:06', '2007-09-17 07:48:36', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('a27fa257-4efd-05b4-5ea6-46ee3047f69f', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-17 07:44:06', '2007-09-17 07:48:36', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('292029e0-4495-6923-6306-46ee31c581d0', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-17 07:48:36', '2007-09-17 07:53:50', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('2c352efd-9676-0845-594e-46ee31470962', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-17 07:48:36', '2007-09-17 07:53:50', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('7cac9a7c-5508-dc35-aee1-46ee3206b9a2', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-17 07:53:50', '2007-09-17 08:00:55', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('7f2904b9-345a-eeb1-0e0a-46ee325312ed', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-17 07:53:50', '2007-09-17 08:00:55', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('684281f0-420b-a731-5c2f-46ee34dce262', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-17 08:00:55', '2007-09-17 08:15:39', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('6ae72ddf-2837-dc21-a442-46ee3423f688', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-17 08:00:55', '2007-09-17 08:15:39', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('641fc456-c4f9-345a-88c0-46ee373996dd', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-17 08:15:39', '2007-09-17 08:36:14', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('6684cdd4-8cbf-d1ec-49a4-46ee377929bc', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-17 08:15:39', '2007-09-17 08:36:14', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('944c92c6-11d8-0698-6503-46ee3c45d07e', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-17 08:36:14', '2007-09-17 08:37:46', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('96b8121e-e463-01c6-119b-46ee3c88eeb2', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-17 08:36:14', '2007-09-17 08:37:46', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('1dec822d-c253-9d0d-006d-46ee3ce2ef12', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-17 08:37:46', '2007-09-17 08:38:31', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('230e8b5d-c93b-b418-1c05-46ee3c8c41c3', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-17 08:37:46', '2007-09-17 08:38:31', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('edb8cc96-3900-4ad0-6500-46ee3d29502a', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-17 08:38:31', '2007-09-17 08:39:44', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('f0270f68-eea9-3b92-aac6-46ee3d768d6c', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-17 08:38:31', '2007-09-17 08:39:44', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('7b5f5cde-0ced-8e7b-7e6a-46ee3d095c41', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-17 08:39:44', '2007-09-17 08:41:55', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('7dd37124-140f-595a-fb65-46ee3d34e882', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-17 08:39:44', '2007-09-17 08:41:55', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('8a377570-cad1-9436-77d2-46ee3d94f8fa', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-17 08:41:55', '2007-09-17 08:44:17', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('8cc0f998-97eb-417f-aed3-46ee3d3f9540', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-17 08:41:55', '2007-09-17 08:44:17', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('3dc69eff-dc0e-96d7-2c9b-46ee3edb3955', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-17 08:44:17', '2007-09-17 11:08:35', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('4043152d-a9cc-ff32-40a1-46ee3e2eee2c', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-17 08:44:17', '2007-09-17 11:08:35', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('37cda64c-fcce-fec4-7307-46ee6039fad7', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-17 11:08:35', '2007-09-17 11:10:30', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('3a468d7b-2d02-0c08-b95a-46ee60a40db7', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-17 11:08:35', '2007-09-17 11:10:31', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('ba300285-8dd9-ecf6-b68e-46ee6071585e', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-17 11:10:31', '2007-09-17 11:17:22', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('e15b041c-6e17-afc9-2067-46ee60e614be', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-17 11:10:31', '2007-09-17 11:17:22', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('65cfbb71-3811-7cb9-c462-46ee6273adee', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-17 11:17:22', '2007-09-17 13:51:16', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('684576ab-1180-9e17-7473-46ee62b40e98', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-17 11:17:22', '2007-09-17 13:51:16', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('7cc37257-1781-a4df-eb38-46ee86d73718', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-17 13:51:16', '2007-09-17 13:53:55', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `productoperations` (`id`, `product_name`, `product_id`, `component_name`, `component_id`, `machine_name`, `machine_id`, `operation_name`, `operation_id`, `date_entered`, `date_modified`, `assigned_user_id`, `modified_user_id`, `created_by`, `name`, `singleprice`, `lots`, `quantity`, `operations_count`, `est_price`, `est_date`, `execution_date`, `executor`, `executed_date`, `executored_from`, `executed_qty`, `description`, `deleted`) VALUES 
('82c1e1f9-55a2-6eae-339b-46ee8681b71b', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-17 13:51:16', '2007-09-17 13:53:55', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('e910e18d-c85e-f8e5-4162-46ee86a510ab', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-17 13:53:55', '2007-09-17 13:56:05', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('efe5e5e2-48bf-3678-2995-46ee867b070b', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-17 13:53:55', '2007-09-17 13:56:05', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('a0b57116-f49f-24c6-6bfe-46ee8715e4ef', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-17 13:56:05', '2007-09-17 13:58:05', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('a627be2d-9ec7-3f65-208f-46ee87d28762', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-17 13:56:05', '2007-09-17 13:58:05', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('2b685f6a-7caf-2f2f-eaf1-46ee8778e32a', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-17 13:58:05', '2007-09-17 13:58:29', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('2df6fa77-0886-f2ce-30d6-46ee87be852d', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-17 13:58:05', '2007-09-17 13:58:29', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('3186a220-cfa5-f331-50f2-46ee88921d97', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-17 13:58:29', '2007-09-17 14:02:02', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('38426110-eb1e-3fe6-a873-46ee882fd41c', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-17 13:58:29', '2007-09-17 14:02:02', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('aff7492a-1214-2a34-f513-46ee885c4837', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-17 14:02:02', '2007-09-17 14:16:40', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('ba388bd9-10c8-e5ce-62ff-46ee88a78d52', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-17 14:02:02', '2007-09-17 14:16:40', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('cf099ba9-6c0b-b1e7-c49c-46ee8c76cd57', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-17 14:16:40', '2007-09-17 15:01:49', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('d4795c41-8159-4ab8-c64b-46ee8ce5874b', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-17 14:16:40', '2007-09-17 15:01:49', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('36cd65e2-ce59-9cee-102d-46ee962ddeb8', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-17 15:01:49', '2007-09-18 08:10:59', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('41abda1a-5699-f754-d166-46ee961dacd1', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-17 15:01:49', '2007-09-18 08:10:59', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('a928fa75-929f-18ce-b5ec-46ef880235b6', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-18 08:10:59', '2007-09-27 13:17:45', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('aec3a516-c6f1-8223-9d71-46ef8890333b', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-18 08:10:59', '2007-09-27 13:17:45', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('643d1d17-7c00-7034-908e-46efbb54ea37', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Тяло - Книга Компанията на паяците', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-18 11:52:27', '2007-09-19 11:54:56', NULL, '1', '1', 'Тяло - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('7ec463b2-225d-7ef5-3b3e-46f10eff08a6', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Тяло - Книга Компанията на паяците', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-19 11:54:56', '2007-09-19 12:55:45', NULL, '1', '1', 'Тяло - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('8436aa67-ad51-11a7-6227-46f10e54e5c8', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Тяло - Книга Компанията на паяците', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-19 11:54:56', '2007-09-19 12:55:45', NULL, '1', '1', 'Тяло - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('b2e62ea3-a358-a27d-6247-46f11c09aa19', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Тяло - Книга Компанията на паяците', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-19 12:55:45', '2007-09-21 14:03:14', NULL, '1', '1', 'Тяло - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('b8546962-21d4-26d0-66d0-46f11c16292b', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Тяло - Книга Компанията на паяците', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-19 12:55:45', '2007-09-21 14:03:14', NULL, '1', '1', 'Тяло - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('952e3f61-1bce-98f2-08f8-46f3cf1727fd', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Тяло - Книга Компанията на паяците', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-21 14:03:14', '2007-09-24 11:36:51', NULL, '1', '1', 'Тяло - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('9a995126-544d-4790-5763-46f3cfd5f7b2', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Тяло - Книга Компанията на паяците', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-21 14:03:14', '2007-09-24 11:36:51', NULL, '1', '1', 'Тяло - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('863e4a90-72fc-7618-ceb9-46f7a12de03e', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Тяло - Книга Компанията на паяците', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-24 11:36:51', '2007-09-25 10:51:06', NULL, '1', '1', 'Тяло - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('8e3a88b6-7d2c-cc25-4f72-46f7a18af0ab', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Тяло - Книга Компанията на паяците', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-24 11:36:51', '2007-09-25 10:51:06', NULL, '1', '1', 'Тяло - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('32ebae37-f002-511d-2bc3-46f8e8bad124', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Тяло - Книга Компанията на паяците', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-25 10:53:36', '2007-09-25 10:53:36', NULL, '1', '1', 'Тяло - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
('dc81a0a1-10de-55b2-b105-46fbad1da6d7', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-27 13:17:45', '2007-09-27 13:32:01', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('e462e8f1-7082-77f1-2a20-46fbad506408', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-27 13:17:45', '2007-09-27 13:32:01', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('45834bf3-5048-7370-c00e-46fbb0eb3bfc', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-27 13:32:01', '2007-09-27 13:32:55', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('4b8485ea-2ecb-05ce-6e93-46fbb0e91949', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-27 13:32:01', '2007-09-27 13:32:55', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('28982d39-7ece-3885-af14-46fbb13f6db7', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-09-27 13:32:55', '2007-10-04 12:55:02', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('34a563f6-b523-09e1-a69d-46fbb189d55a', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-09-27 13:32:55', '2007-10-04 12:55:02', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('3b6cfb58-8ebf-b132-9fcf-4704e2574e44', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-10-04 12:55:02', '2007-10-04 12:56:13', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('44a34cbe-32a7-53cc-1a7a-4704e2c74842', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-10-04 12:55:02', '2007-10-04 12:56:13', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('a7a31a5d-6906-605f-fe02-4704e2e31e5d', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-10-04 12:56:13', '2007-10-05 08:56:23', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('b13009e8-b043-cd7f-4b6b-4704e27c3260', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-10-04 12:56:13', '2007-10-05 08:56:23', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('7edcec59-0c41-91ca-8e7b-4705f66980a9', NULL, '41d748cf-adf4-69a7-60b8-4705f3c38a79', 'Листовки ДЗИ-1', 'e7840f84-fe38-1b71-4ce4-4705f47ed801', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-10-05 08:31:37', '2007-10-05 08:35:51', NULL, '1', '1', 'Листовки ДЗИ-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('87cd53f7-7868-e73c-1ead-4705f6c5384f', NULL, '41d748cf-adf4-69a7-60b8-4705f3c38a79', 'Листовки ДЗИ-1', 'e7840f84-fe38-1b71-4ce4-4705f47ed801', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-10-05 08:31:37', '2007-10-05 08:35:51', NULL, '1', '1', 'Листовки ДЗИ-1-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('eeaa6cc9-afd1-9dc1-5f64-4705f7b88c24', NULL, '41d748cf-adf4-69a7-60b8-4705f3c38a79', 'Листовки ДЗИ-1', 'e7840f84-fe38-1b71-4ce4-4705f47ed801', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-10-05 08:35:51', '2007-10-05 08:37:48', NULL, '1', '1', 'Листовки ДЗИ-1-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('3ab10841-698d-1b96-f0dc-4705f77dd866', NULL, '41d748cf-adf4-69a7-60b8-4705f3c38a79', 'Листовки ДЗИ-1', 'e7840f84-fe38-1b71-4ce4-4705f47ed801', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-10-05 08:35:52', '2007-10-05 08:37:48', NULL, '1', '1', 'Листовки ДЗИ-1-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('b4fe0da6-cec6-cf73-06e2-4705f7a092c1', NULL, '41d748cf-adf4-69a7-60b8-4705f3c38a79', 'Листовки ДЗИ-1', 'e7840f84-fe38-1b71-4ce4-4705f47ed801', NULL, NULL, 'Рязане', '273450b1-677f-fe2a-7b99-46d7cb1bdf30', '2007-10-05 08:37:48', '2007-10-05 08:38:43', NULL, '1', '1', 'Листовки ДЗИ-1-Рязане', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('ba72b5d3-4ccd-1540-d124-4705f7981e83', NULL, '41d748cf-adf4-69a7-60b8-4705f3c38a79', 'Листовки ДЗИ-1', 'e7840f84-fe38-1b71-4ce4-4705f47ed801', NULL, NULL, 'Опаковане', '2a31ebad-52ef-a8c0-dda8-46b0b9a4cb4a', '2007-10-05 08:37:48', '2007-10-05 08:38:43', NULL, '1', '1', 'Листовки ДЗИ-1-Опаковане', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('b612667d-f8fe-467a-4655-4705f899c063', NULL, '41d748cf-adf4-69a7-60b8-4705f3c38a79', 'Листовки ДЗИ-1', 'e7840f84-fe38-1b71-4ce4-4705f47ed801', NULL, NULL, 'Рязане', '273450b1-677f-fe2a-7b99-46d7cb1bdf30', '2007-10-05 08:38:43', '2007-10-05 08:39:15', NULL, '1', '1', 'Листовки ДЗИ-1-Рязане', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('bb84a7fa-0bb6-072e-ecbb-4705f825256e', NULL, '41d748cf-adf4-69a7-60b8-4705f3c38a79', 'Листовки ДЗИ-1', 'e7840f84-fe38-1b71-4ce4-4705f47ed801', NULL, NULL, 'Опаковане', '2a31ebad-52ef-a8c0-dda8-46b0b9a4cb4a', '2007-10-05 08:38:43', '2007-10-05 08:39:15', NULL, '1', '1', 'Листовки ДЗИ-1-Опаковане', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('542660c1-14c2-d2fc-7e0f-4705f89eb2d2', NULL, '41d748cf-adf4-69a7-60b8-4705f3c38a79', 'Листовки ДЗИ-1', 'e7840f84-fe38-1b71-4ce4-4705f47ed801', NULL, NULL, 'Рязане', '273450b1-677f-fe2a-7b99-46d7cb1bdf30', '2007-10-05 08:39:15', '2007-10-05 08:43:19', NULL, '1', '1', 'Листовки ДЗИ-1-Рязане', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('59b0e3d4-bfc7-1a50-a2c4-4705f8b69afb', NULL, '41d748cf-adf4-69a7-60b8-4705f3c38a79', 'Листовки ДЗИ-1', 'e7840f84-fe38-1b71-4ce4-4705f47ed801', NULL, NULL, 'Опаковане', '2a31ebad-52ef-a8c0-dda8-46b0b9a4cb4a', '2007-10-05 08:39:15', '2007-10-05 08:43:19', NULL, '1', '1', 'Листовки ДЗИ-1-Опаковане', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('c4a6883b-fbf0-5dda-db73-4705f954095e', NULL, '41d748cf-adf4-69a7-60b8-4705f3c38a79', 'Листовки ДЗИ-1', 'e7840f84-fe38-1b71-4ce4-4705f47ed801', NULL, NULL, 'Рязане', '273450b1-677f-fe2a-7b99-46d7cb1bdf30', '2007-10-05 08:43:19', '2007-10-05 08:43:19', NULL, '1', '1', 'Листовки ДЗИ-1-Рязане', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
('c9f7090f-33bf-9798-eecb-4705f98804ba', NULL, '41d748cf-adf4-69a7-60b8-4705f3c38a79', 'Листовки ДЗИ-1', 'e7840f84-fe38-1b71-4ce4-4705f47ed801', NULL, NULL, 'Опаковане', '2a31ebad-52ef-a8c0-dda8-46b0b9a4cb4a', '2007-10-05 08:43:19', '2007-10-05 08:43:19', NULL, '1', '1', 'Листовки ДЗИ-1-Опаковане', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
('19e4804b-388d-ad2a-bb13-4705fc93bb1b', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-10-05 08:56:23', '2007-10-05 08:59:31', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('1f823271-1f23-93c8-4a44-4705fc360e35', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-10-05 08:56:23', '2007-10-05 08:59:31', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('46f7c8d8-8ca9-8129-439b-4705fcf4d980', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-10-05 08:59:31', '2007-10-05 09:00:38', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('4c794934-c5b7-4f5c-83bc-4705fc12d41e', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-10-05 08:59:31', '2007-10-05 09:00:38', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('f25f992a-491c-f923-8fae-4705fd202725', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-10-05 09:00:38', '2007-10-05 09:00:38', NULL, '1', '1', 'Корица - Книга Компанията на паяците-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
('3ce10ed9-1bf2-3893-98ca-4705fd30bb58', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-10-05 09:00:39', '2007-10-05 09:00:39', NULL, '1', '1', 'Корица - Книга Компанията на паяците-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
('ea799146-e1b7-f73a-6ad2-4706152cfca6', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците-3', '40757223-4089-a067-db22-470614470ba6', NULL, NULL, 'ВШМ', '5111675d-fc3e-ffba-8548-46b0b9743e2c', '2007-10-05 10:42:47', '2007-10-05 10:42:47', NULL, '1', '1', 'Книга Компанията на паяците-3-ВШМ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
('f267de8a-5c54-64e8-dd6b-470615e3d71f', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците-3', '40757223-4089-a067-db22-470614470ba6', NULL, NULL, 'Лепене', 'e4a38ecc-697d-9b40-3b71-46b0b876b6b3', '2007-10-05 10:42:47', '2007-10-05 10:42:47', NULL, '1', '1', 'Книга Компанията на паяците-3-Лепене', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
('39fc964f-3727-4133-4766-4709e6268ed9', NULL, '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Корица - Книга Компанията на паяците', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', 'GTO', 'a3b6288c-49d2-bdb2-869e-45e442884a0f', 'Сгъване', 'd2983969-7434-7d5f-d7d3-4709e5390126', '2007-10-08 08:11:59', '2007-10-08 08:11:59', '1', '1', '1', 'яяяя', NULL, NULL, NULL, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
('e9595cb8-bfd0-f545-f61b-4709edc51cf7', NULL, '8e2b6aa8-2783-1ceb-2b1b-4709e9a8b951', 'Стикери "LAVAZZA"-1', 'dc72a139-71cc-4680-0e8b-4709ea86b5fd', NULL, NULL, 'Рязане', '273450b1-677f-fe2a-7b99-46d7cb1bdf30', '2007-10-08 08:44:06', '2007-10-08 08:48:21', NULL, '1', '1', 'Стикери "LAVAZZA"-1-Рязане', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('b18e9cd0-8190-5932-78db-4709ee9c05c3', NULL, '8e2b6aa8-2783-1ceb-2b1b-4709e9a8b951', 'Стикери "LAVAZZA"-1', 'dc72a139-71cc-4680-0e8b-4709ea86b5fd', NULL, NULL, 'Рязане', '273450b1-677f-fe2a-7b99-46d7cb1bdf30', '2007-10-08 08:48:21', '2007-10-08 08:48:21', NULL, '1', '1', 'Стикери "LAVAZZA"-1-Рязане', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);

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
  `calculant_id` varchar(36) default NULL,
  `calculant_name` varchar(50) default NULL,
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

INSERT INTO `products` (`id`, `date_entered`, `date_modified`, `assigned_user_id`, `modified_user_id`, `account_id`, `account_name`, `contact_id`, `contact_name`, `created_by`, `calculant_id`, `calculant_name`, `pnum`, `type`, `pnum_pref`, `pnum_suf`, `category`, `format`, `unit`, `is_active`, `deadline`, `components`, `volume`, `status`, `period`, `note`, `vision`, `quantity`, `fsize_h`, `fsize_w`, `samples`, `file`, `name`, `description`, `deleted`) VALUES 
('87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', '2007-08-29 12:31:36', '2007-10-03 14:45:45', '1', '1', 'a4728179-5436-820e-3eaf-46d5667efb56', 'Капитал', '7449dc44-5cfa-cec1-9a86-46d566c72c6e', 'Марио Коев', '1', NULL, NULL, 'PRD10003', NULL, 'PRD', 10003, 'Book', NULL, NULL, 1, '2007-08-08', NULL, NULL, 'estimated', 'No', NULL, 'Компанията на паяците', 500, NULL, NULL, 'No', 'email', 'Книга Компанията на паяците', NULL, 0),
('41d748cf-adf4-69a7-60b8-4705f3c38a79', '2007-10-05 08:20:32', '2007-10-05 08:41:55', '1', '1', 'eb2e4078-4422-c298-5679-46d7c9e0919f', 'Начо', '80f6ca47-d6b2-401e-9135-46d7c9d84a0f', 'Николай Рачев', '1', '1', 'admin', 'PRD10004', NULL, 'PRD', 10004, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'estimated', 'No', NULL, 'Листовки ДЗИ', 40000, NULL, NULL, 'No', 'email', 'Листовки ДЗИ', NULL, 0),
('8e2b6aa8-2783-1ceb-2b1b-4709e9a8b951', '2007-10-08 08:26:13', '2007-10-15 07:18:25', '1', 'db72618d-35da-19ad-1b67-46f37f819f41', '81d77f74-8e3b-e5d2-2791-4709e9e64d96', 'Интеграл', 'f0ad7d17-b2ad-342f-cb50-4709e9cb9715', 'Сергей Интеграл', '1', 'db72618d-35da-19ad-1b67-46f37f819f41', 'Nick', 'PRD10005', NULL, 'PRD', 10005, 'Book', NULL, NULL, 1, '2007-10-10', NULL, NULL, 'estimated', 'No', NULL, 'Стикери', 200, NULL, NULL, 'No', 'ftp', 'Стикери "LAVAZZA"', NULL, 0);

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
  `calculant_id` varchar(36) default NULL,
  `calculant_name` varchar(36) default NULL,
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

INSERT INTO `products_components` (`id`, `date_entered`, `date_modified`, `assigned_user_id`, `modified_user_id`, `created_by`, `name`, `status`, `parent_id`, `description`, `paperid`, `client_paper`, `number`, `number_pref`, `number_suf`, `paper`, `type`, `format`, `fsize_h`, `fsize_w`, `bleed_format`, `run_format`, `run_size_x`, `run_size_y`, `bleed_size_x`, `bleed_size_y`, `paperpress_format`, `paperpress_size_x`, `paperpress_size_y`, `press_format`, `press_size_x`, `press_size_y`, `volume`, `quantity`, `color_side_a`, `color_side_b`, `machine`, `price`, `paper_rate_id`, `paper_rate`, `rate_price`, `supplier_id`, `supplier_name`, `calculant_id`, `calculant_name`, `order_number`, `task_number`, `depends_on_id`, `milestone_flag`, `deleted`) VALUES 
('4769ac12-e56f-a792-07af-4652c986db5f', '2007-05-22 10:43:38', '2007-08-30 07:42:09', '1', '1', '1', 'Каталог "Пресфото"-1', '', '', NULL, 'a4cb4337-447a-2e72-b569-464d64ac31bf', NULL, 'PRD10000-1', 'PRD', 1, 'Хартия - Мат - 70х100 -170гр', 'Body', NULL, 70, 100, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, 0, NULL, 0, 0, 88, NULL, NULL, NULL, 'Shinohara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'off', 1),
('598457bc-776a-9154-9b63-4652c9ce58cb', '2007-05-22 10:45:43', '2007-08-30 07:42:09', '1', '1', '1', 'Корица Пресфото', '', '', 'Това е корицата на каталога Пресфото', 'a4cb4337-447a-2e72-b569-464d64ac31bf', 'No', 'PRD10000-2', 'PRD', 2, 'Хартия - Мат - 70х100 -170гр', 'Cover', 'GTO', 35, 50, 'GTO', 'GTO', 35, 50, 35, 50, '', 0, 0, 'GTO', 35, 50, 5, 2000, 4, 4, 'GTO', '0.4', 'b9229202-1196-26cd-e0ef-464d65246ea2', NULL, NULL, '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'К1 Партнерс', NULL, NULL, 1, NULL, NULL, 'off', 1),
('8bf7767a-67fb-4332-3f8d-46d69175660b', '2007-08-30 09:42:48', '2007-08-30 09:59:31', '1', '1', '1', 'Книга Компанията на паяците-3', '', '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', NULL, '13dfa91a-0374-7e5a-f194-46d568e8137b', NULL, 'PRD10003-3', 'PRD', 3, '70 x 100 - офсет', 'Form', 'GTO', 15, 21, 'GTO', 'GTO', 35, 50, 35, 50, '', 0, 0, NULL, 0, 0, 5, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1),
('629da741-d120-307b-0f49-46c94438e8c8', '2007-08-20 07:38:15', '2007-09-19 11:50:40', '1', '1', '1', 'Каталог-01-2007-1', '', '', NULL, 'afdedf2d-1d0d-439f-d9a8-464d656ee6d3', 'No', 'PRD10002-1', 'PRD', 1, 'Хартия - Мат - 70х100 -300гр', 'Body', 'A5', 15, 21, 'A5', 'A5', 15, 21, 15, 21, '', 0, 0, 'GTO', 35, 50, 8, 400, 4, 4, NULL, '0.385', '2fe515e8-56ba-842f-090b-46c93f63c652', NULL, NULL, '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'К1 Партнерс', NULL, NULL, 1, NULL, NULL, NULL, 1),
('c8a58adb-cda5-467b-3c4a-46d686d1c111', '2007-08-30 08:57:26', '2007-10-05 09:00:38', '1', '1', '1', 'Корица - Книга Компанията на паяците', 'estimated', '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', NULL, '6e81e697-e379-92dc-732c-46d6861ae393', 'No', 'PRD10003-2', 'PRD', 2, 'Опаковъчен картон 70x100', 'Cover', '-', 11, 18, '-', '-', 11, 18, 11, 18, 'GTO', 35, 50, 'GTO', 35, 50, 4, 500, 4, 0, NULL, '0.4', '74294374-69e4-a24d-3b1f-46d6861808d9', 'Опаковъчен картон 70x100', 'Лв 0.40', '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'К1 Партнерс', '1', 'admin', 1, NULL, NULL, NULL, 0),
('90527d21-6801-50aa-5e6c-46d43a4c0c12', '2007-08-28 15:10:27', '2007-08-30 07:42:10', '1', '1', '1', 'Каталог Пресфото-3', '', '', NULL, 'afdedf2d-1d0d-439f-d9a8-464d656ee6d3', NULL, 'PRD10000-3', 'PRD', 3, 'Хартия - Мат - 70х100 -300гр', 'Form', 'Shi', 50, 70, 'Shi', 'Shi', 50, 70, 50, 70, '', 0, 0, NULL, 0, 0, 55, NULL, 4, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1),
('7d0627b7-e9f0-ab14-cfbd-46d43bd1e411', '2007-08-28 15:11:37', '2007-08-30 07:42:10', '1', '1', '1', 'Каталог Пресфото-4', '', '', NULL, 'afdedf2d-1d0d-439f-d9a8-464d656ee6d3', NULL, 'PRD10000-4', 'PRD', 4, 'Хартия - Мат - 70х100 -300гр', 'Body', 'GTO', 35, 50, 'GTO', 'GTO', 35, 50, 35, 50, '', 0, 0, NULL, 0, 0, 44, NULL, 4, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1),
('a4512284-554b-cd49-c7ca-46d568fa0e6c', '2007-08-29 12:37:28', '2007-09-25 10:53:35', '1', '1', '1', 'Тяло - Книга Компанията на паяците', 'waiting_estimate', '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', NULL, '13dfa91a-0374-7e5a-f194-46d568e8137b', 'No', 'PRD10003-1', 'PRD', 1, '70 x 100 - офсет', 'Body', '-', 11, 18, '-', '-', 11, 18, 11, 18, 'Shi', 50, 70, 'Shi', 50, 70, 200, 500, 1, 1, NULL, '0.1', '146cb4fd-b430-8dd3-9673-46d5683fc5dd', '70 x 100 - офсет', 'Лв 0.10', '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'К1 Партнерс', '1', 'admin', 1, NULL, NULL, NULL, 0),
('8f50860d-16b5-5491-e451-46d6dce0fc06', '2007-08-30 15:02:43', '2007-09-18 08:56:06', '1', '1', '1', 'Тяло2 - Компанията на паяците', '', '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', NULL, '13dfa91a-0374-7e5a-f194-46d568e8137b', 'No', 'PRD10003-3', 'PRD', 3, '70 x 100 - офсет', 'Body', '-', 11, 18, '-', '-', 11, 18, 11, 18, '', 0, 0, 'GTO', 35, 50, 1, 500, 1, 1, NULL, '0.1', '146cb4fd-b430-8dd3-9673-46d5683fc5dd', '70 x 100 - офсет', 'Лв 0.10', '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'К1 Партнерс', NULL, NULL, 1, NULL, NULL, NULL, 1),
('b2b4f119-b162-e477-9f78-46d7cac9f270', '2007-08-31 08:00:52', '2007-09-25 08:24:45', '1', '1', '1', 'Листовки ДЗИ-1', 'closed', '', NULL, '1275003c-ecc0-48d5-aa67-46d7cab64165', 'No', 'PRD10004-1', 'PRD', 1, '60 х 90 - мат', 'Flayer', '-', 14, 20, '-', '-', 14.5, 20.7, 14.9, 21.1, '-', 30, 45, 'Shi', 50, 70, 2, 40000, 3, 3, NULL, '0.16', 'b501e3f9-7106-e981-1832-46d7ca305f77', '60 х 90 - мат', 'Лв 0.16', '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'К1 Партнерс', NULL, NULL, 1, NULL, NULL, NULL, 1),
('20378ec0-7b98-8e25-06e9-46e5232bb652', '2007-09-10 11:00:33', '2007-09-18 08:55:41', '1', '1', '1', 'Книга Компанията на паяците-4', '', '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', NULL, 'a4cb4337-447a-2e72-b569-464d64ac31bf', NULL, 'PRD10003-4', 'PRD', 4, 'Хартия - Мат - 70х100 -170гр', 'Body', 'GTO', 35, 50, 'GTO', 'GTO', 35, 50, 35, 50, NULL, 0, 0, NULL, 0, 0, 20, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1),
('e7840f84-fe38-1b71-4ce4-4705f47ed801', '2007-10-05 08:22:54', '2007-10-05 08:43:18', '1', '1', '1', 'Листовки ДЗИ-1', 'estimated', '41d748cf-adf4-69a7-60b8-4705f3c38a79', NULL, '1275003c-ecc0-48d5-aa67-46d7cab64165', 'No', 'PRD10004-1', 'PRD', 1, '60 х 90 - мат', 'Flayer', '-', 14, 207, 'A5', '-', 14.5, 20.7, 15, 21, '-', 45, 60, 'Shi', 50, 70, 2, 40000, 3, 3, NULL, '0.16', 'b501e3f9-7106-e981-1832-46d7ca305f77', '60 х 90 - мат', 'Лв 0.16', '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'К1 Партнерс', NULL, NULL, 1, NULL, NULL, NULL, 0),
('42999efc-5b2a-c093-f540-46f8e579100a', '2007-09-25 10:41:25', '2007-09-25 10:43:38', '1', '1', '1', 'Книга Компанията на паяците-3', '', '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', NULL, '', NULL, 'PRD10003-3', 'PRD', 3, NULL, 'Form', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1),
('40757223-4089-a067-db22-470614470ba6', '2007-10-05 10:39:28', '2007-10-05 10:42:47', '1', '1', '1', 'Книга Компанията на паяците-3', 'estimated', '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', NULL, '13dfa91a-0374-7e5a-f194-46d568e8137b', 'No', 'PRD10003-3', 'PRD', 3, '70 x 100 - офсет', 'Form', '-', 11, 18, '-', '-', 11, 18, 11, 18, 'GTO', 35, 50, 'GTO', 35, 50, 56, 500, 1, 1, NULL, '0.1', '146cb4fd-b430-8dd3-9673-46d5683fc5dd', '70 x 100 - офсет', 'Лв 0.10', '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'К1 Партнерс', '1', 'admin', 1, NULL, NULL, NULL, 0),
('dc72a139-71cc-4680-0e8b-4709ea86b5fd', '2007-10-08 08:29:35', '2007-10-08 08:48:21', '1', '1', '1', 'Стикери "LAVAZZA"-1', 'draft', '8e2b6aa8-2783-1ceb-2b1b-4709e9a8b951', '3 броя стикери', 'a4cb4337-447a-2e72-b569-464d64ac31bf', 'No', 'PRD10005-1', 'PRD', 1, 'Хартия - Мат - 70х100 -170гр', 'Form', '-', 48, 32, '-', '-', 48, 33, 49, 33, 'GTO', 35, 50, 'GTO', 35, 50, 6, 200, 4, 0, NULL, '0.33', NULL, NULL, NULL, '5e0b1f19-edac-32da-c0ee-45cf3dd3f612', 'Славей 91', NULL, NULL, 1, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

-- 
-- Структура на таблица `products_components_audit`
-- 

CREATE TABLE `products_components_audit` (
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
-- Дъмп (схема) на данните в таблицата `products_components_audit`
-- 

INSERT INTO `products_components_audit` (`id`, `parent_id`, `date_created`, `created_by`, `field_name`, `data_type`, `before_value_string`, `after_value_string`, `before_value_text`, `after_value_text`) VALUES 
('a13b6f07-f056-31d3-b42a-46e93b00e75a', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '2007-09-13 13:31:59', '1', 'name', 'name', 'Корица - Книга Компанията на паяците', 'Корица - Книг Компанията на паяците', NULL, NULL),
('ecca7442-e0f1-27c9-9312-46e93be3928b', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '2007-09-13 13:32:44', '1', 'name', 'name', 'Корица - Книг Компанията на паяците', 'Корица - Книга Компанията на паяците', NULL, NULL),
('42d107ee-b58b-f97e-3ccf-46e93df42c3c', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '2007-09-13 13:37:33', '1', 'name', 'name', 'Корица - Книга Компанията на паяците', 'Корица - Книг Компанията на паяците', NULL, NULL),
('db83d130-1a22-0a8e-3677-46e93d999bf7', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '2007-09-13 13:38:31', '1', 'name', 'name', 'Корица - Книг Компанията на паяците', 'Корица - Книга Компанията на паяците', NULL, NULL),
('833006ea-dd07-90d7-2f0b-46ee86f59c2c', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '2007-09-17 13:51:15', '1', 'status', 'enum', '', 'draft', NULL, NULL),
('1b46571f-bf5e-9a53-e9f8-46ee862479f3', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '2007-09-17 13:53:55', '1', 'status', 'enum', '', 'waiting_estimate', NULL, NULL),
('d0135fa9-0bdd-4808-fa04-46ee8735bede', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '2007-09-17 13:56:04', '1', 'status', 'enum', '', 'waiting_estimate', NULL, NULL),
('e3d0a6d8-ce27-3575-1d68-46ee87ff4b53', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '2007-09-17 13:57:54', '1', 'status', 'enum', '', 'waiting_estimate', NULL, NULL),
('700d4ff7-83be-a89b-ea48-46ee870e5889', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '2007-09-17 13:58:06', '1', 'status', 'enum', '', 'waiting_estimate', NULL, NULL),
('759f9ca6-32c9-343f-700e-46ee8884a23e', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '2007-09-17 13:58:30', '1', 'status', 'enum', '', 'waiting_estimate', NULL, NULL),
('ab7b1e57-be10-a603-358d-46ee8a53f046', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '2007-09-17 14:11:10', '1', 'status', 'enum', '', 'draft', NULL, NULL),
('be7c56c8-97d6-2b6d-2aa3-46ef88da706c', 'c8a58adb-cda5-467b-3c4a-46d686d1c111', '2007-09-18 08:10:58', '1', 'status', 'enum', '', 'draft', NULL, NULL),
('5d6d5b7d-987d-7fb5-0a3a-46efbb8aae25', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', '2007-09-18 11:52:26', '1', 'status', 'enum', '', 'waiting_estimate', NULL, NULL),
('9aa3422b-331f-ce80-d713-46f10e053f6f', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', '2007-09-19 11:54:55', '1', 'status', 'enum', 'estimated', 'draft', NULL, NULL),
('e4df10f8-b07e-be64-9614-46f11c4beb3d', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', '2007-09-19 12:55:44', '1', 'status', 'enum', 'draft', 'waiting_estimate', NULL, NULL),
('7df1e933-5664-820a-7d96-46f8e85c3777', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', '2007-09-25 10:51:05', '1', 'status', 'enum', 'closed', 'waiting_estimate', NULL, NULL),
('b91c0cee-a39e-e8bb-a500-4705f9b92f7c', 'e7840f84-fe38-1b71-4ce4-4705f47ed801', '2007-10-05 08:43:19', '1', 'status', 'enum', 'draft', 'waiting_estimate', NULL, NULL),
('e2f1582a-460a-6cbd-e8ca-4709eda48f02', 'dc72a139-71cc-4680-0e8b-4709ea86b5fd', '2007-10-08 08:44:06', '1', 'status', 'enum', '', 'draft', NULL, NULL);

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

INSERT INTO `products_relation` (`id`, `product_id`, `relation_id`, `relation_type`, `deleted`, `date_modified`) VALUES 
('54b014a3-bde0-c79e-6100-46543f8debaa', 'a5a08eeb-0be7-f066-2677-464d699203bc', '1ae804e8-06a5-ed75-94d3-45d194878ef8', 'Contacts', 1, '2007-08-30 07:41:44'),
('28720907-315f-6de8-cf5a-4678f3712a96', 'dceaf769-3f1a-e605-2df3-4678f3dbd10b', '67ef6d1c-cd37-03b8-0d82-4678e72f46e8', 'Contacts', 1, '2007-08-30 07:41:44'),
('7af6dec9-15a2-f37f-a5ad-467945679bf3', 'dceaf769-3f1a-e605-2df3-4678f3dbd10b', '67ef6d1c-cd37-03b8-0d82-4678e72f46e8', 'Contacts', 1, '2007-08-30 07:41:44'),
('a0e28ae8-d3bc-9883-dad3-46d5672b047e', '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', '7449dc44-5cfa-cec1-9a86-46d566c72c6e', 'Contacts', 1, '2007-09-18 13:30:23'),
('dff15e5a-0223-f097-65b4-46d7c925f3dc', 'ccc6aadc-4f3c-33b3-7fad-46d7c97e3ec4', '80f6ca47-d6b2-401e-9135-46d7c9d84a0f', 'Contacts', 1, '2007-09-25 07:35:09'),
('2dbe80b1-050a-799f-0675-46f8cd1cd516', '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', '7449dc44-5cfa-cec1-9a86-46d566c72c6e', 'Contacts', 0, '2007-09-25 08:56:11'),
('224a3986-1577-ea81-2ae7-47039d66a36c', '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', '7449dc44-5cfa-cec1-9a86-46d566c72c6e', 'Contacts', 0, '2007-10-03 13:48:30'),
('6df0456b-c996-8e66-e395-47039d804f97', '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', '7449dc44-5cfa-cec1-9a86-46d566c72c6e', 'Contacts', 0, '2007-10-03 13:48:30'),
('85f3e208-60f2-6d7d-db2a-47039f27571f', '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', '7449dc44-5cfa-cec1-9a86-46d566c72c6e', 'Contacts', 0, '2007-10-03 13:56:03'),
('31953123-8cc6-06e1-4ae9-4703a3fc5bed', '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', '7449dc44-5cfa-cec1-9a86-46d566c72c6e', 'Contacts', 0, '2007-10-03 14:14:58'),
('3e13c9cb-a66f-b837-c778-4703a5241ca9', '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', '7449dc44-5cfa-cec1-9a86-46d566c72c6e', 'Contacts', 0, '2007-10-03 14:22:01'),
('157eb5c5-1a9a-4804-100a-4703a7f966ef', '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', '7449dc44-5cfa-cec1-9a86-46d566c72c6e', 'Contacts', 0, '2007-10-03 14:32:00'),
('c0a651de-e6fa-43d8-631a-4703a827001b', '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', '7449dc44-5cfa-cec1-9a86-46d566c72c6e', 'Contacts', 0, '2007-10-03 14:34:57'),
('126adc0d-06cc-8767-c68c-4703aba4e7c0', '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', '7449dc44-5cfa-cec1-9a86-46d566c72c6e', 'Contacts', 0, '2007-10-03 14:45:45'),
('5f323cab-8167-e3c9-60ee-4705f36f8a77', '41d748cf-adf4-69a7-60b8-4705f3c38a79', '80f6ca47-d6b2-401e-9135-46d7c9d84a0f', 'Contacts', 0, '2007-10-05 08:20:32'),
('6c2703f5-1d35-b515-111c-4705f86434a3', '41d748cf-adf4-69a7-60b8-4705f3c38a79', '80f6ca47-d6b2-401e-9135-46d7c9d84a0f', 'Contacts', 0, '2007-10-05 08:41:55'),
('a395fef0-a3ea-7fe0-785f-4709e9b8bc3a', '8e2b6aa8-2783-1ceb-2b1b-4709e9a8b951', 'f0ad7d17-b2ad-342f-cb50-4709e9cb9715', 'Contacts', 0, '2007-10-08 08:26:13'),
('2931b004-2647-f9b1-d954-471314ea64d8', '8e2b6aa8-2783-1ceb-2b1b-4709e9a8b951', 'f0ad7d17-b2ad-342f-cb50-4709e9cb9715', 'Contacts', 0, '2007-10-15 07:18:25');

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

INSERT INTO `project` (`id`, `date_entered`, `date_modified`, `assigned_user_id`, `modified_user_id`, `created_by`, `name`, `description`, `deleted`) VALUES 
('de0999f7-ba02-5cd5-7ded-45dd5c61727b', '2007-02-22 09:05:13', '2007-02-23 08:21:48', '1', '1', '1', ' Хоремаг бр.9', NULL, 1),
('a50d0064-056e-9a25-a090-465404e7d193', '2007-05-23 09:10:20', '2007-05-23 13:19:48', '1', '1', '1', 'as', NULL, 1);

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

INSERT INTO `project_relation` (`id`, `project_id`, `relation_id`, `relation_type`, `deleted`, `date_modified`) VALUES 
('83e09c08-81bc-1caa-9b75-45ab8c4bee73', 'bf06ff96-299f-9e51-2a8f-45ab8caafa90', '745993fd-6032-8635-ce12-459e75c3c42e', 'Accounts', 1, '2007-02-05 13:17:40'),
('a4edd575-bd27-9777-0c7c-45ab8df5e775', 'bf06ff96-299f-9e51-2a8f-45ab8caafa90', 'af1043aa-69c5-a0ed-61ff-45ab42c669a3', 'Accounts', 1, '2007-08-30 08:17:15');

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

INSERT INTO `project_task` (`id`, `date_entered`, `date_modified`, `assigned_user_id`, `modified_user_id`, `created_by`, `name`, `status`, `date_due`, `time_due`, `date_start`, `time_start`, `parent_id`, `priority`, `description`, `order_number`, `task_number`, `depends_on_id`, `milestone_flag`, `estimated_effort`, `actual_effort`, `utilization`, `percent_complete`, `deleted`) VALUES 
('cb5d0044-28a1-8936-507f-459b94b74d07', '2007-01-03 11:35:00', '2007-01-12 13:59:04', '1', '1', '1', 'pro task 1', 'Not Started', NULL, NULL, NULL, NULL, '', 'High', NULL, 1, NULL, NULL, 'off', NULL, NULL, 100, 0, 1),
('1e7d4f0a-4788-a437-7301-45dd5cc7f101', '2007-02-22 09:05:28', '2007-02-23 08:21:48', '1', '1', '1', ' Хоремаг бр.9', 'Not Started', NULL, NULL, NULL, NULL, '', 'High', NULL, 1, NULL, NULL, 'off', NULL, NULL, 100, 0, 1);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Дъмп (схема) на данните в таблицата `prospects`
-- 

INSERT INTO `prospects` (`id`, `tracker_key`, `deleted`, `date_entered`, `date_modified`, `modified_user_id`, `assigned_user_id`, `created_by`, `salutation`, `first_name`, `last_name`, `title`, `department`, `birthdate`, `do_not_call`, `phone_home`, `phone_mobile`, `phone_work`, `phone_other`, `phone_fax`, `email1`, `email2`, `assistant`, `assistant_phone`, `email_opt_out`, `primary_address_street`, `primary_address_city`, `primary_address_state`, `primary_address_postalcode`, `primary_address_country`, `alt_address_street`, `alt_address_city`, `alt_address_state`, `alt_address_postalcode`, `alt_address_country`, `description`, `invalid_email`, `lead_id`, `account_name`) VALUES 
('704a24d7-19aa-355b-1078-45dd6830fcd1', 1, 1, '2007-02-22 09:53:48', '2007-02-22 09:54:01', '1', '1', '1', NULL, NULL, 'Administrator', NULL, NULL, NULL, 'on', NULL, NULL, NULL, NULL, NULL, 'lord_pgp@abv.bg', NULL, NULL, NULL, 'on', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL);

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

INSERT INTO `purchaseorderlines` (`id`, `purchaseorderid`, `materialid`, `paperid`, `materialname`, `measure`, `number`, `quantity`, `deleted`, `date_entered`, `date_modified`, `created_by`, `price`, `singlep`, `unit`) VALUES 
('a73a0e38-7f5d-579e-71e8-469331199ad1', '9ff46cc1-c26c-f6bc-4dfa-46933145d897', NULL, 'a4cb4337-447a-2e72-b569-464d64ac31bf', 'Хартия - Мат - 70х100 -170гр', NULL, '2', NULL, 0, '2007-07-10 07:14:27', '2007-07-10 07:14:27', '1', NULL, NULL, NULL);

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

INSERT INTO `purchaseorders` (`id`, `name`, `num`, `num_pref`, `num_suf`, `total_price`, `supplier_name`, `supplier_id`, `order_date`, `delivery_date`, `delivered_date`, `supplier_contact_name`, `supplier_contact_id`, `sales_order_num`, `sales_order_id`, `payment_term`, `supplier_address`, `shipping_address`, `assigned_user_id`, `note`, `status`, `deleted`, `date_entered`, `date_modified`, `created_by`) VALUES 
('9ff46cc1-c26c-f6bc-4dfa-46933145d897', 'POR10000', 'POR10000', 'POR', '10000', NULL, 'К1 Партнерс', '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', NULL, NULL, NULL, 'Петър Петров', '1ae804e8-06a5-ed75-94d3-45d194878ef8', NULL, NULL, NULL, NULL, NULL, '1', NULL, 0, 0, '2007-07-10 07:14:27', '2007-07-10 07:14:27', '1');

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

INSERT INTO `quotelines` (`id`, `quoteid`, `productid`, `productname`, `productnum`, `quantity`, `status`, `deleted`, `date_entered`, `date_modified`, `created_by`, `price`, `estp`, `pages`) VALUES 
('8ebf7f9c-0f06-1c83-afab-4666bddac054', '8744347e-fd60-6b8e-d9a1-4666bd16fcb4', 'a5a08eeb-0be7-f066-2677-464d699203bc', 'Каталог Пресфото', 'PRD10000', 3000, 0, 1, '2007-06-06 13:58:16', '2007-06-15 14:01:13', '1', 1000, 0.5, 100),
('321794a1-5a5a-9cc4-43be-46729ba82fe4', '8744347e-fd60-6b8e-d9a1-4666bd16fcb4', 'a5a08eeb-0be7-f066-2677-464d699203bc', 'Каталог Пресфото', 'PRD10000', 3000, 0, 1, '2007-06-15 14:01:13', '2007-06-15 14:51:10', '1', 1000, 0.5, 100),
('4f48faa8-e2b4-59e2-ef3a-4672a7a62c66', '8744347e-fd60-6b8e-d9a1-4666bd16fcb4', 'a5a08eeb-0be7-f066-2677-464d699203bc', 'Каталог Пресфото', 'PRD10000', 3000, 0, 1, '2007-06-15 14:51:10', '2007-06-15 14:52:03', '1', 1000, 0.5, 100),
('2602a68e-dbba-a0ff-7dfd-4672a7b71ef8', '8744347e-fd60-6b8e-d9a1-4666bd16fcb4', 'a5a08eeb-0be7-f066-2677-464d699203bc', 'Каталог Пресфото', 'PRD10000', 3000, 0, 1, '2007-06-15 14:52:03', '2007-06-15 14:53:45', '1', 1000, 0.5, 100),
('95437eac-6aa4-2e71-624d-4672a76ab830', '8744347e-fd60-6b8e-d9a1-4666bd16fcb4', 'a5a08eeb-0be7-f066-2677-464d699203bc', 'Каталог Пресфото', 'PRD10000', 3000, 0, 1, '2007-06-15 14:53:45', '2007-06-15 14:54:33', '1', 1000, 0.5, 100),
('71dd1970-abc4-d7cf-b6cf-4672a8b89c86', '8744347e-fd60-6b8e-d9a1-4666bd16fcb4', 'a5a08eeb-0be7-f066-2677-464d699203bc', 'Каталог Пресфото', 'PRD10000', 3000, 0, 1, '2007-06-15 14:54:33', '2007-06-15 14:54:49', '1', 1000, 0.5, 100),
('f384a6ed-2f04-d893-95a4-4672a8dabb98', '8744347e-fd60-6b8e-d9a1-4666bd16fcb4', 'a5a08eeb-0be7-f066-2677-464d699203bc', 'Каталог Пресфото', 'PRD10000', 3000, 0, 1, '2007-06-15 14:54:50', '2007-06-18 08:17:41', '1', 1000, 0.5, 100),
('83638a06-8fca-dbe1-95c8-46763ff1388f', '8744347e-fd60-6b8e-d9a1-4666bd16fcb4', 'a5a08eeb-0be7-f066-2677-464d699203bc', 'Каталог Пресфото', 'PRD10000', 3000, 0, 1, '2007-06-18 08:17:41', '2007-07-04 12:42:02', '1', 1000, 0.5, 100),
('3b25c55e-bfdd-6286-2696-468b791f3ffa', '32efa8ec-e7c3-543b-ddb4-468b79379fb4', 'a5a08eeb-0be7-f066-2677-464d699203bc', 'Каталог Пресфото', 'PRD10000', 3000, 0, 1, '2007-07-04 10:40:13', '2007-08-20 14:19:58', '1', NULL, NULL, NULL),
('3bbf6a4e-5e84-cbcf-e054-468b7998ee13', '32efa8ec-e7c3-543b-ddb4-468b79379fb4', 'dceaf769-3f1a-e605-2df3-4678f3dbd10b', 'Първо издание', 'PRD10001', 10000, 0, 1, '2007-07-04 10:40:13', '2007-08-20 14:19:58', '1', NULL, NULL, NULL),
('9bd4fd85-f8c7-a379-f1a5-468b95e5c8bc', '8744347e-fd60-6b8e-d9a1-4666bd16fcb4', 'a5a08eeb-0be7-f066-2677-464d699203bc', 'Каталог Пресфото', 'PRD10000', 3000, 0, 0, '2007-07-04 12:42:02', '2007-07-04 12:42:02', '1', 1000, 0.5, 100),
('9c52d453-1178-6257-c122-468b95eb6b6e', '8744347e-fd60-6b8e-d9a1-4666bd16fcb4', 'dceaf769-3f1a-e605-2df3-4678f3dbd10b', 'Първо издание', 'PRD10001', 10000, 0, 0, '2007-07-04 12:42:02', '2007-07-04 12:42:02', '1', NULL, NULL, 100),
('504e87be-f965-5eaf-199d-46c9a30db5d3', '32efa8ec-e7c3-543b-ddb4-468b79379fb4', 'a5a08eeb-0be7-f066-2677-464d699203bc', 'Каталог Пресфото', 'PRD10000', 3000, 0, 1, '2007-08-20 14:19:58', '2007-08-20 14:20:09', '1', NULL, NULL, NULL),
('52f59046-fd04-8b0d-00ef-46c9a3ebaf96', '32efa8ec-e7c3-543b-ddb4-468b79379fb4', 'dceaf769-3f1a-e605-2df3-4678f3dbd10b', 'Първо издание', 'PRD10001', NULL, 0, 1, '2007-08-20 14:19:58', '2007-08-20 14:20:09', '1', NULL, NULL, NULL),
('512bf800-5c74-540c-1182-46c9a3aaf6ae', '32efa8ec-e7c3-543b-ddb4-468b79379fb4', 'a5a08eeb-0be7-f066-2677-464d699203bc', 'Каталог Пресфото', 'PRD10000', 3000, 0, 1, '2007-08-20 14:20:09', '2007-08-20 14:20:27', '1', NULL, NULL, NULL),
('5423d279-060a-e677-9899-46c9a3cca159', '32efa8ec-e7c3-543b-ddb4-468b79379fb4', 'dceaf769-3f1a-e605-2df3-4678f3dbd10b', 'Първо издание', 'PRD10001', 0, 0, 1, '2007-08-20 14:20:09', '2007-08-20 14:20:27', '1', NULL, NULL, NULL),
('6d144486-cfcc-6ca5-0878-46c9a3434256', '32efa8ec-e7c3-543b-ddb4-468b79379fb4', 'a5a08eeb-0be7-f066-2677-464d699203bc', 'Каталог Пресфото', 'PRD10000', 3000, 0, 0, '2007-08-20 14:20:27', '2007-08-20 14:20:27', '1', 0, 0, 0),
('70156293-352f-0897-0d18-46c9a3d375fd', '32efa8ec-e7c3-543b-ddb4-468b79379fb4', 'dceaf769-3f1a-e605-2df3-4678f3dbd10b', 'Първо издание', 'PRD10001', 0, 0, 0, '2007-08-20 14:20:27', '2007-08-20 14:20:27', '1', 0, 0, 0),
('1946b894-7409-82d6-fb37-46e525a1385c', 'fbf0034f-a2f6-b509-372f-46e5254a1ad7', '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците', 'PRD10003', 500, 0, 0, '2007-09-10 11:07:58', '2007-09-10 11:07:58', '1', 1000, 1000, 1002),
('8de7a0bf-c717-7482-de5c-4704d2703ba5', '85fb4b77-975f-498a-3687-4704d22457ad', '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците', 'PRD10003', 500, 0, 0, '2007-10-04 11:45:14', '2007-10-04 11:45:14', '1', 1724, 1724, 204),
('46112271-617e-553f-8ab1-4704d207e887', '3b06b805-cd37-4aa3-3cbf-4704d2d4ff5b', '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците', 'PRD10003', 500, 0, 0, '2007-10-04 11:47:14', '2007-10-04 11:47:14', '1', 1724, 1724, 204),
('75e52e62-a137-410b-3a3c-4704d24eac29', '6e15324d-037e-e9ea-f037-4704d26c2018', '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците', 'PRD10003', 500, 0, 0, '2007-10-04 11:47:44', '2007-10-04 11:47:44', '1', 1724, 1724, 204),
('6574eef3-e1fb-a9b6-5c63-4705f94ce8a4', '59bf655e-eede-04ac-5791-4705f9f30944', '41d748cf-adf4-69a7-60b8-4705f3c38a79', 'Листовки ДЗИ', 'PRD10004', 40000, 0, 0, '2007-10-05 08:45:56', '2007-10-05 08:45:56', '1', 917, 917, 2),
('a0391cb6-fc5e-55fe-36b6-4706014d1d7a', '98940ce1-0741-96a4-ef8a-4706019db901', '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците', 'PRD10003', 500, 0, 0, '2007-10-05 09:20:32', '2007-10-05 09:20:32', '1', 1451, 1451, 204),
('e65709e7-c4eb-e291-3f76-4706153ab2ad', 'de547fd3-7773-f8aa-0e11-47061554bfc2', '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците', 'PRD10003', 500, 0, 0, '2007-10-05 10:44:58', '2007-10-05 10:44:58', '1', 1553, 1553, 260),
('4c278024-625d-5c1e-1b55-4709e8adec82', '4b240465-290f-9cd4-3210-4709e853959b', '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците', 'PRD10003', 500, 0, 0, '2007-10-08 08:20:07', '2007-10-08 08:20:07', '1', 1553, 1553, 260);

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

INSERT INTO `quotes` (`id`, `name`, `quotenum`, `num_pref`, `num_suf`, `opportunity_id`, `opportunity_name`, `account_id`, `account_name`, `currency_id`, `payment_method`, `payment_term`, `shipping_term`, `stage`, `ordernum`, `validuntil`, `assigned_user_id`, `billtocontactname`, `billtocontactid`, `billtoaddress`, `billtocity`, `billpostalcode`, `billtostate`, `billtocountry`, `description`, `status`, `deleted`, `date_entered`, `date_modified`, `created_by`) VALUES 
('8744347e-fd60-6b8e-d9a1-4666bd16fcb4', 'Субект', 'QTE10000', 'QTE', '10000', NULL, NULL, NULL, 'Format Vision', '-99', 'Cash', 'Net 15', 'CIF', 'Draft', NULL, '2007-06-29', '1', 'Петър Петров', '1ae804e8-06a5-ed75-94d3-45d194878ef8', 'Бул. България №221', NULL, '4400', NULL, NULL, NULL, 0, 1, '2007-06-06 13:58:16', '2007-08-31 07:07:40', '1'),
('32efa8ec-e7c3-543b-ddb4-468b79379fb4', 'Оферта', 'QTE10001', 'QTE', '10001', NULL, NULL, NULL, 'Артком', '-99', NULL, NULL, NULL, 'Draft', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2007-07-04 10:40:13', '2007-08-31 07:07:40', '1'),
('fbf0034f-a2f6-b509-372f-46e5254a1ad7', 'Оферта', 'QTE10000', 'QTE', '10000', NULL, NULL, 'a4728179-5436-820e-3eaf-46d5667efb56', 'Капитал', '-99', NULL, NULL, NULL, 'Draft', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2007-09-10 11:07:58', '2007-10-04 11:47:25', '1'),
('85fb4b77-975f-498a-3687-4704d22457ad', 'Оферта-Книга Компанията на паяците', 'QTE10001', 'QTE', '10001', NULL, NULL, 'a4728179-5436-820e-3eaf-46d5667efb56', 'Капитал', '-99', 'Cash', NULL, NULL, 'Draft', NULL, '2007-11-03', '1', 'Марио Коев', '7449dc44-5cfa-cec1-9a86-46d566c72c6e', 'ул. Пенчо Славейков 23', 'София', '1000', 'София', 'България', NULL, 0, 1, '2007-10-04 11:45:14', '2007-10-04 11:47:25', '1'),
('3b06b805-cd37-4aa3-3cbf-4704d2d4ff5b', 'Оферта-Книга Компанията на паяците', 'QTE10001', 'QTE', '10001', NULL, NULL, 'a4728179-5436-820e-3eaf-46d5667efb56', 'Капитал', '-99', 'Cash', NULL, NULL, 'Draft', NULL, '2007-11-03', '1', 'Марио Коев', '7449dc44-5cfa-cec1-9a86-46d566c72c6e', 'ул. Пенчо Славейков 23', 'София', '1000', 'София', 'България', NULL, 0, 1, '2007-10-04 11:47:14', '2007-10-04 11:47:25', '1'),
('6e15324d-037e-e9ea-f037-4704d26c2018', 'Оферта-Книга Компанията на паяците', 'QTE10000', 'QTE', '10000', NULL, NULL, 'a4728179-5436-820e-3eaf-46d5667efb56', 'Капитал', '-99', 'Cash', NULL, NULL, 'Draft', NULL, '2007-11-03', '1', 'Марио Коев', '7449dc44-5cfa-cec1-9a86-46d566c72c6e', 'ул. Пенчо Славейков 23', 'София', '1000', 'София', 'България', NULL, 0, 1, '2007-10-04 11:47:44', '2007-10-05 09:19:59', '1'),
('59bf655e-eede-04ac-5791-4705f9f30944', 'Оферта-Листовки ДЗИ', 'QTE10001', 'QTE', '10001', NULL, NULL, 'eb2e4078-4422-c298-5679-46d7c9e0919f', 'Начо', '-99', 'Cash', NULL, NULL, 'Draft', NULL, '2007-11-04', '1', 'Николай Рачев', '80f6ca47-d6b2-401e-9135-46d7c9d84a0f', 'ул. Иван Вазов 24', 'София', '1000', 'София', 'София', NULL, 0, 0, '2007-10-05 08:45:56', '2007-10-05 08:45:56', '1'),
('98940ce1-0741-96a4-ef8a-4706019db901', 'Оферта-Книга Компанията на паяците', 'QTE10002', 'QTE', '10002', NULL, NULL, 'a4728179-5436-820e-3eaf-46d5667efb56', 'Капитал', '-99', 'Cash', NULL, NULL, 'Draft', NULL, '2007-11-04', '1', 'Марио Коев', '7449dc44-5cfa-cec1-9a86-46d566c72c6e', 'ул. Пенчо Славейков 23', 'София', '1000', 'София', 'България', NULL, 0, 1, '2007-10-05 09:20:32', '2007-10-05 10:44:31', '1'),
('de547fd3-7773-f8aa-0e11-47061554bfc2', 'Оферта-Книга Компанията на паяците', 'QTE10002', 'QTE', '10002', NULL, NULL, 'a4728179-5436-820e-3eaf-46d5667efb56', 'Капитал', '-99', 'Cash', NULL, NULL, 'Draft', NULL, '2007-11-04', '1', 'Марио Коев', '7449dc44-5cfa-cec1-9a86-46d566c72c6e', 'ул. Пенчо Славейков 23', 'София', '1000', 'София', 'България', NULL, 0, 0, '2007-10-05 10:44:58', '2007-10-05 10:44:58', '1'),
('4b240465-290f-9cd4-3210-4709e853959b', 'Оферта-Книга Компанията на паяците', 'QTE10003', 'QTE', '10003', NULL, NULL, 'a4728179-5436-820e-3eaf-46d5667efb56', 'Капитал', '-99', 'Cash', NULL, NULL, 'Draft', NULL, '2007-11-07', '1', 'Марио Коев', '7449dc44-5cfa-cec1-9a86-46d566c72c6e', 'ул. Пенчо Славейков 23', 'София', '1000', 'София', 'България', NULL, 0, 0, '2007-10-08 08:20:07', '2007-10-08 08:20:07', '1');

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
  `default` varchar(36) default NULL,
  `description` text,
  `deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 PACK_KEYS=0;

-- 
-- Дъмп (схема) на данните в таблицата `ratefilm`
-- 

INSERT INTO `ratefilm` (`id`, `date_entered`, `date_modified`, `assigned_user_id`, `modified_user_id`, `created_by`, `name`, `price`, `format`, `size_x`, `size_y`, `default`, `description`, `deleted`) VALUES 
('16a2984b-87a1-9f2f-a88e-469618434ca2', '2007-07-12 12:04:51', '2007-07-12 12:06:37', '1', '1', '1', 'asd', 0, '', 0, 0, 'off', NULL, 1),
('319a1633-aa9f-6b4e-df98-469628a1c043', '2007-07-12 13:11:04', '2007-09-27 08:48:54', '1', '1', '1', 'ФИЛМ 35х50', 3.75, 'GTO', 35, 50, 'on', NULL, 0),
('7e06052d-2e00-981e-a279-46d676109bb1', '2007-08-30 07:50:42', '2007-09-27 08:54:54', '1', '1', '1', 'ФИЛМ 50х70', 7.5, 'Shi', 50, 70, 'on', NULL, 0);

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
  `default` varchar(36) default NULL,
  `description` text,
  `deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 PACK_KEYS=0;

-- 
-- Дъмп (схема) на данните в таблицата `rateplate`
-- 

INSERT INTO `rateplate` (`id`, `date_entered`, `date_modified`, `assigned_user_id`, `modified_user_id`, `created_by`, `name`, `price`, `gauge`, `format`, `size_x`, `size_y`, `default`, `description`, `deleted`) VALUES 
('a9e3e5d3-24e9-ec5e-e8c3-469632a9b232', '2007-07-12 13:52:57', '2007-09-27 08:55:30', '1', '1', '1', 'CTP 35x50x10', 7.5, 10, 'GTO', 35, 50, 'on', NULL, 0),
('3f7e93cd-3491-675f-3186-46d56ac29df0', '2007-08-29 12:47:28', '2007-09-27 08:55:13', '1', '1', '1', 'CTP 50х70х10', 15, 10, 'Shi', 50, 70, 'off', NULL, 0),
('e5fe5458-fe8d-bdc1-d227-46d6b9dd62e7', '2007-08-30 12:35:39', '2007-09-27 08:47:46', '1', '1', '1', 'CTP 50х70х10 A', 17, 10, 'Shi', 50, 70, 'on', NULL, 0);

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

INSERT INTO `relationships` (`id`, `relationship_name`, `lhs_module`, `lhs_table`, `lhs_key`, `rhs_module`, `rhs_table`, `rhs_key`, `join_table`, `join_key_lhs`, `join_key_rhs`, `relationship_type`, `relationship_role_column`, `relationship_role_column_value`, `reverse`, `deleted`) VALUES 
('257e0658-81f3-37ff-2272-458d3e586136', 'acl_roles_users', 'ACLRoles', 'acl_roles', 'id', 'Users', 'users', 'id', 'acl_roles_users', 'role_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('2f860cf6-a384-3ed5-2912-458d3ebfe5aa', 'acl_roles_actions', 'ACLRoles', 'acl_role', 'id', 'ACLActions', 'acl_action', 'id', 'acl_roles_actions', 'role_id', 'action_id', 'many-to-many', NULL, NULL, 0, 0),
('269eba76-bc35-83a2-4310-458d3e2f51a2', 'lead_direct_reports', 'Leads', 'leads', 'id', 'Leads', 'leads', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('26f2448e-f0fb-1915-123d-458d3ea52dbb', 'lead_tasks', 'Leads', 'leads', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('274b2cb8-bde8-4188-9f17-458d3ee36b04', 'lead_notes', 'Leads', 'leads', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('27aa5502-cc43-2e13-a4a8-458d3e622fde', 'lead_meetings', 'Leads', 'leads', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('28152ef5-34bd-34a4-3248-458d3eef14bb', 'lead_calls', 'Leads', 'leads', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('286aa21a-f097-8894-d55e-458d3e125615', 'lead_emails', 'Leads', 'leads', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('28c7d3c1-2161-94bb-d1f7-458d3e88a2fc', 'lead_campaign_log', 'Leads', 'leads', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('292d15bc-e3ae-d376-2c2f-458d3e968404', 'leads_assigned_user', 'Users', 'users', 'id', 'Leads', 'leads', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('298003d9-a989-1fbf-9c17-458d3ed9820a', 'leads_modified_user', 'Users', 'users', 'id', 'Leads', 'leads', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('29d2a0fd-e1ad-059e-ccd9-458d3e1f6f30', 'leads_created_by', 'Users', 'users', 'id', 'Leads', 'leads', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('42488632-7a4a-5538-ca7c-458d3e342aee', 'contact_direct_reports', 'Contacts', 'contacts', 'id', 'Contacts', 'contacts', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('42a53c7b-ef7f-cd11-b762-458d3e7a168c', 'contact_leads', 'Contacts', 'contacts', 'id', 'Leads', 'leads', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('42f439c1-6bff-a7c4-f617-458d3ecbde00', 'contact_notes', 'Contacts', 'contacts', 'id', 'Notes', 'notes', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4351aef3-ebe0-b119-65f3-458d3e1115b9', 'contact_tasks', 'Contacts', 'contacts', 'id', 'Tasks', 'tasks', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('43a79902-fd1b-99d7-138e-458d3eb4e707', 'contacts_assigned_user', 'Users', 'users', 'id', 'Contacts', 'contacts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('43f89378-2b2f-081e-0359-458d3eca9102', 'contacts_modified_user', 'Users', 'users', 'id', 'Contacts', 'contacts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('444d5963-ae44-c3ee-8410-458d3e625dc1', 'contacts_created_by', 'Users', 'users', 'id', 'Contacts', 'contacts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('44adcace-de9c-b0a5-bcc2-458d3e766bd2', 'contact_campaign_log', 'Contacts', 'contacts', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5f94d601-c91f-5373-5576-458d3e7405b3', 'member_accounts', 'Accounts', 'accounts', 'id', 'Accounts', 'accounts', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5ff494e6-4ac8-8143-937e-458d3e08fd1a', 'account_cases', 'Accounts', 'accounts', 'id', 'Cases', 'cases', 'account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('604e7b48-fb97-a608-20a0-458d3e145193', 'account_tasks', 'Accounts', 'accounts', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('60a37d6b-9838-a9ba-e021-458d3e409955', 'account_notes', 'Accounts', 'accounts', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('60f993d5-c59f-43b8-db29-458d3e726615', 'account_meetings', 'Accounts', 'accounts', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('616571bd-71d8-6c09-c61f-458d3e453d9f', 'account_calls', 'Accounts', 'accounts', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('61bd3622-1a94-03cb-f46f-458d3ef9326f', 'account_emails', 'Accounts', 'accounts', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('6216ab77-92e6-6b5a-0afa-458d3ed775af', 'account_leads', 'Accounts', 'accounts', 'id', 'Leads', 'leads', 'account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('626460d8-4d66-f3e2-9ac2-458d3ef62941', 'accounts_assigned_user', 'Users', 'users', 'id', 'Accounts', 'accounts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('62c8af8a-83eb-f85e-b7e3-458d3e7bbd34', 'accounts_modified_user', 'Users', 'users', 'id', 'Accounts', 'accounts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('63694577-d0d3-5e0e-cb01-458d3ed6eeb7', 'accounts_created_by', 'Users', 'users', 'id', 'Accounts', 'accounts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7c7b50b1-ba64-e3eb-2274-458d3e2404a8', 'opportunity_calls', 'Opportunities', 'opportunities', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('7cf34ff4-5832-aee0-cb7c-458d3e67c549', 'opportunity_meetings', 'Opportunities', 'opportunities', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('7d4f5886-c41b-6b1c-acc7-458d3e0c201a', 'opportunity_tasks', 'Opportunities', 'opportunities', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('7da29768-1533-ba41-e06c-458d3e0d8317', 'opportunity_notes', 'Opportunities', 'opportunities', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('7df8ef23-3f66-5af1-b66e-458d3ef8869d', 'opportunity_emails', 'Opportunities', 'opportunities', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('7eae0015-2e3a-8aa9-0545-458d3e65ee36', 'opportunity_leads', 'Opportunities', 'opportunities', 'id', 'Leads', 'leads', 'opportunity_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7efdbe4d-0930-901c-df15-458d3e907353', 'opportunities_assigned_user', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7f54bb8f-547d-147d-9f59-458d3e76935d', 'opportunities_modified_user', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7fafed50-5d07-6854-43bf-458d3e3b7c33', 'opportunities_created_by', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('97baee38-5950-f0fe-e1f9-458d3efc6477', 'case_calls', 'Cases', 'cases', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('980bb0eb-a902-a9a2-3950-458d3e2e559b', 'case_tasks', 'Cases', 'cases', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('98678479-d33b-554b-4e2a-458d3e20f4bb', 'case_notes', 'Cases', 'cases', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('98c5fe4b-0e2e-7764-32b5-458d3e7ef675', 'case_meetings', 'Cases', 'cases', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('9916fa77-ac3c-a259-ba63-458d3e92dc80', 'case_emails', 'Cases', 'cases', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('99bdc803-56df-2ce3-3763-458d3e7e1a2a', 'cases_assigned_user', 'Users', 'users', 'id', 'Cases', 'cases', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9a0f6674-c21d-b863-bf73-458d3e2f634c', 'cases_modified_user', 'Users', 'users', 'id', 'Cases', 'cases', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9a5d5838-479c-f1f4-a146-458d3eb23446', 'cases_created_by', 'Users', 'users', 'id', 'Cases', 'cases', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ac79c673-db60-4c12-80b1-458d3e62a351', 'notes_modified_user', 'Users', 'users', 'id', 'Notes', 'notes', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('acca67d8-0ac8-55fc-e8f7-458d3e40b6b5', 'notes_created_by', 'Users', 'users', 'id', 'Notes', 'notes', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e7c17b76-6cc0-4789-4a2f-458d3e8eae89', 'calls_assigned_user', 'Users', 'users', 'id', 'Calls', 'calls', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e81140c3-f8a2-b479-c9d2-458d3eea85a2', 'calls_modified_user', 'Users', 'users', 'id', 'Calls', 'calls', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e869f8cd-2fef-0190-e888-458d3e88beda', 'calls_created_by', 'Users', 'users', 'id', 'Calls', 'calls', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e8bdeeb4-3971-324e-5f15-458d3ec81593', 'calls_notes', 'Calls', 'calls', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('81170fae-ee64-45b6-76ff-458d3e189e3e', 'emails_assigned_user', 'Users', 'users', 'id', 'Emails', 'emails', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('862404ee-3c51-bdac-23ca-458d3ea223e4', 'emails_modified_user', 'Users', 'users', 'id', 'Emails', 'emails', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8b300613-c10a-c5fa-145d-458d3e766ce4', 'emails_created_by', 'Users', 'users', 'id', 'Emails', 'emails', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('92b3053c-0d75-5cca-faaa-458d3e0584e2', 'emails_notes_rel', 'Emails', 'emails', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1ce87cb8-2e41-234c-71bf-458d3e0f3da4', 'meetings_assigned_user', 'Users', 'users', 'id', 'Meetings', 'meetings', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1d8ea7fe-8696-f563-1c34-458d3e240e1f', 'meetings_modified_user', 'Users', 'users', 'id', 'Meetings', 'meetings', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1e3ccd71-2636-3d0e-9fb7-458d3e1c8c98', 'meetings_created_by', 'Users', 'users', 'id', 'Meetings', 'meetings', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1e93fa44-a8dc-81cc-52be-458d3e14eab9', 'meetings_notes', 'Meetings', 'meetings', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Meetings', 0, 0),
('3cf38ad1-e151-a980-94ec-458d3e46bf36', 'tasks_assigned_user', 'Users', 'users', 'id', 'Tasks', 'tasks', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3d4a3bbc-683e-5551-bd04-458d3e69df68', 'tasks_modified_user', 'Users', 'users', 'id', 'Tasks', 'tasks', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3da20a83-443b-1ab8-7daf-458d3e91b6e8', 'tasks_created_by', 'Users', 'users', 'id', 'Tasks', 'tasks', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4921a198-9f4b-9790-ccd2-458d3e580a8d', 'user_direct_reports', 'Users', 'users', 'id', 'Users', 'users', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a1694031-853f-02b2-9871-458d3e0eb2c7', 'bug_tasks', 'Bugs', 'bugs', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('a202af23-b592-4c21-67da-458d3e4bc446', 'bug_meetings', 'Bugs', 'bugs', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('a2644932-161e-9b7a-8502-458d3ecce01f', 'bug_calls', 'Bugs', 'bugs', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('a30101e2-d6ed-0ebd-35f5-458d3eaad4a3', 'bug_emails', 'Bugs', 'bugs', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('a3591e89-4088-889a-fbd8-458d3e62bcf4', 'bug_notes', 'Bugs', 'bugs', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('a3acfb9f-2e1b-2203-3eff-458d3e15220f', 'bugs_assigned_user', 'Users', 'users', 'id', 'Bugs', 'bugs', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a405a096-11a5-abb3-b4b9-458d3e610cce', 'bugs_modified_user', 'Users', 'users', 'id', 'Bugs', 'bugs', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a45f3e29-31d1-bb1e-4277-458d3e0337ac', 'bugs_created_by', 'Users', 'users', 'id', 'Bugs', 'bugs', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a4af2a89-fa77-4685-c88c-458d3ee0bfd5', 'bugs_release', 'Releases', 'releases', 'id', 'Bugs', 'bugs', 'found_in_release', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a4fe0de1-0cdf-569b-0586-458d3ea4c1d6', 'bugs_fixed_in_release', 'Releases', 'releases', 'id', 'Bugs', 'bugs', 'fixed_in_release', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f37762a1-8dde-5ff5-1b29-458d3e1d6ada', 'feeds_assigned_user', 'Users', 'users', 'id', 'Feeds', 'feeds', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f3ca3a77-6cc2-a7cf-45ab-458d3e3d7dac', 'feeds_modified_user', 'Users', 'users', 'id', 'Feeds', 'feeds', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f41a35ca-cfd3-d327-42ac-458d3e825d47', 'feeds_created_by', 'Users', 'users', 'id', 'Feeds', 'feeds', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('120bbd1b-7fc9-3aa0-fd6c-458d3e36a5a8', 'project_notes', 'Project', 'project', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('12cc2b45-8fcd-a682-8ea7-458d3ef81b33', 'project_meetings', 'Project', 'project', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('13efa3bd-e3fe-d98a-1253-458d3e5a295a', 'project_calls', 'Project', 'project', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('144cf68d-c064-93d3-b202-458d3ec644e6', 'project_emails', 'Project', 'project', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('14aacd00-af9b-f386-3bcb-458d3e8cdc41', 'project_project_tasks', 'Project', 'project', 'id', 'ProjectTask', 'project_task', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('151f77bf-14ab-f3cc-c496-458d3ef8ad45', 'projects_assigned_user', 'Users', 'users', 'id', 'Project', 'project', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1580a1db-180d-051a-d105-458d3e755533', 'projects_modified_user', 'Users', 'users', 'id', 'Project', 'project', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('15e50d20-4dbd-63fc-0239-458d3e3399c2', 'projects_created_by', 'Users', 'users', 'id', 'Project', 'project', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2f672c66-57ab-26d8-732f-458d3efe92c2', 'project_task_notes', 'ProjectTask', 'project_task', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('2fbbbfd2-c1eb-efa9-c954-458d3e8ae539', 'project_task_meetings', 'ProjectTask', 'project_task', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('3014d4cd-cd83-a9bb-a2b3-458d3ec39ad8', 'project_task_calls', 'ProjectTask', 'project_task', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('30739c75-91b0-9a88-a933-458d3ee91bb6', 'project_task_emails', 'ProjectTask', 'project_task', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('30caccf8-2934-1116-4f5b-458d3e67cf20', 'project_task_assigned_user', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('31381212-44e6-9ea9-9963-458d3e0ff88a', 'project_task_modified_user', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('318e3d1a-b57a-c648-0cb0-458d3e3352a7', 'project_task_created_by', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4e976031-f67d-bf60-ab1b-458d3ea1bb5e', 'email_template_email_marketings', 'EmailTemplates', 'email_templates', 'id', 'EmailMarketing', 'email_marketing', 'template_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6e76e6fb-fa61-7ba7-35d6-458d3e2c52f5', 'campaign_email_marketing', 'Campaigns', 'campaigns', 'id', 'EmailMarketing', 'email_marketing', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6ecf7ca5-5202-1af9-1b31-458d3e0718d7', 'campaign_emailman', 'Campaigns', 'campaigns', 'id', 'EmailMan', 'emailman', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6f210099-2b35-c076-6674-458d3ed381fa', 'campaign_campaignlog', 'Campaigns', 'campaigns', 'id', 'CampaignLog', 'campaign_log', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6f826c46-fd32-74d8-5598-458d3e74b782', 'campaign_assigned_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6fd45429-4cb8-76f4-5ebc-458d3e8cc0e6', 'campaign_modified_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('975da0ea-3b71-3032-1702-458d3ed0dc10', 'prospect_campaign_log', 'Prospects', 'prospects', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ae100b1d-79d2-5827-b863-458d3e486a30', 'document_revisions', 'Documents', 'documents', 'id', 'Documents', 'document_revisions', 'document_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ae6928c8-b25a-26a7-ee65-458d3e376a78', 'documents_modified_user', 'Users', 'users', 'id', 'Documents', 'documents', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('af0a837e-59ea-fe03-4985-458d3e83ccdc', 'documents_created_by', 'Users', 'users', 'id', 'Documents', 'documents', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c0f75bea-e097-221d-7e77-458d3efd46ed', 'revisions_created_by', 'Users', 'users', 'id', 'DocumentRevisions', 'document_revisions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('dd838419-3247-6875-8f8c-458d3e6afab5', 'schedulers_created_by_rel', 'Users', 'users', 'id', 'Schedulers', 'schedulers', 'created_by', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0),
('dddacb33-0222-315b-b5fc-458d3e802481', 'schedulers_modified_user_id_rel', 'Users', 'users', 'id', 'Schedulers', 'schedulers', 'modified_user_id', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0),
('de2fd5ed-abaf-0a11-3d74-458d3e1bcc73', 'schedulers_jobs_rel', 'Schedulers', 'schedulers', 'id', 'SchedulersJobs', 'schedulers_times', 'scheduler_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9ded04e9-81bc-c284-e0d9-458d3efa74fd', 'inbound_email_created_by', 'Users', 'users', 'id', 'InboundEmail', 'inbound_email', 'created_by', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0),
('a3b80a18-bce7-a418-734d-458d3e7f614a', 'inbound_email_modified_user_id', 'Users', 'users', 'id', 'InboundEmail', 'inbound_email', 'modified_user_id', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0),
('206d628e-afb4-a99c-c8b7-458d3ed71dfd', 'dashboards_assigned_user', 'Users', 'users', 'id', 'Dashboards', 'dashboards', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('20bfe428-100e-f2df-1572-458d3e680354', 'dashboards_modified_user', 'Users', 'users', 'id', 'Dashboards', 'dashboards', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('211321a2-2816-5b19-2170-458d3ed0c294', 'dashboards_created_by', 'Users', 'users', 'id', 'Dashboards', 'dashboards', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('27f6d1d2-e85f-d3b2-2920-458d3e2ab47f', 'campaign_campaigntrakers', 'Campaigns', 'campaigns', 'id', 'CampaignTrackers', 'campaign_trkrs', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('354fe790-9c1e-3ca5-c7c2-458d3e676a63', 'saved_search_assigned_user', 'Users', 'users', 'id', 'SavedSearch', 'saved_search', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('548c9f64-ab22-6083-f631-458d3ee64e70', 'accounts_bugs', 'Accounts', 'accounts', 'id', 'Bugs', 'bugs', 'id', 'accounts_bugs', 'account_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('5d2ba72a-9d80-d2c2-d6bd-458d3e2259ea', 'accounts_contacts', 'Accounts', 'accounts', 'id', 'Contacts', 'contacts', 'id', 'accounts_contacts', 'account_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('60ff47bb-b4f6-a136-9e60-458d3e0b7099', 'accounts_opportunities', 'Accounts', 'accounts', 'id', 'Opportunities', 'opportunities', 'id', 'accounts_opportunities', 'account_id', 'opportunity_id', 'many-to-many', NULL, NULL, 0, 0),
('6e419e3f-fbc0-0656-20dd-458d3e8579a7', 'calls_contacts', 'Calls', 'calls', 'id', 'Contacts', 'contacts', 'id', 'calls_contacts', 'call_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('72480e56-d1e0-0d57-6248-458d3e00d119', 'calls_users', 'Calls', 'calls', 'id', 'Users', 'users', 'id', 'calls_users', 'call_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('774eaa0b-9ff8-353b-2fec-458d3ea0c4e5', 'cases_bugs', 'Cases', 'cases', 'id', 'Bugs', 'bugs', 'id', 'cases_bugs', 'case_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('7b6fc3e3-6c67-4173-0bf2-458d3ed53cb3', 'contacts_bugs', 'Contacts', 'contacts', 'id', 'Bugs', 'bugs', 'id', 'contacts_bugs', 'contact_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('7f87870f-fc71-a6f4-5e29-458d3e8dcee5', 'contacts_cases', 'Contacts', 'contacts', 'id', 'Cases', 'cases', 'id', 'contacts_cases', 'contact_id', 'case_id', 'many-to-many', NULL, NULL, 0, 0),
('8382b824-929c-c7e1-8f4c-458d3ed01f3a', 'contacts_users', 'Contacts', 'contacts', 'id', 'Users', 'users', 'id', 'contacts_users', 'contact_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('8cdcf33f-6806-78fc-cb12-458d3ec989cc', 'email_marketing_prospect_lists', 'EmailMarketing', 'email_marketing', 'id', 'ProspectLists', 'prospect_lists', 'id', 'email_marketing_prospect_lists', 'email_marketing_id', 'prospect_list_id', 'many-to-many', NULL, NULL, 0, 0),
('9180b44a-dceb-b1e2-0443-458d3ebeb3d8', 'emails_accounts_rel', 'Emails', 'emails', 'id', 'Accounts', 'accounts', 'id', 'emails_accounts', 'email_id', 'account_id', 'many-to-many', NULL, NULL, 0, 0),
('959275c2-ad6d-ce9c-be61-458d3e38e4ea', 'emails_bugs_rel', 'Emails', 'emails', 'id', 'Bugs', 'bugs', 'id', 'emails_bugs', 'email_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('995a0bfc-67fc-0e26-5f33-458d3e2e31f3', 'emails_cases_rel', 'Emails', 'emails', 'id', 'Cases', 'cases', 'id', 'emails_cases', 'email_id', 'case_id', 'many-to-many', NULL, NULL, 0, 0),
('9da5a88c-ceaf-bed9-cd9e-458d3ec62d5f', 'emails_contacts_rel', 'Emails', 'emails', 'id', 'Contacts', 'contacts', 'id', 'emails_contacts', 'email_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('a1b636ef-d70f-ddc2-02a9-458d3e87e76f', 'emails_leads_rel', 'Emails', 'emails', 'id', 'Leads', 'leads', 'id', 'emails_leads', 'email_id', 'lead_id', 'many-to-many', NULL, NULL, 0, 0),
('a6750bac-9156-bdd6-c1a3-458d3e7202eb', 'emails_opportunities_rel', 'Emails', 'emails', 'id', 'Opportunities', 'opportunities', 'id', 'emails_opportunities', 'email_id', 'opportunity_id', 'many-to-many', NULL, NULL, 0, 0),
('aa18c181-beb4-9b5b-a893-458d3e38321a', 'emails_project_task_rel', 'Emails', 'emails', 'id', 'ProjectTask', 'project_task', 'id', 'emails_project_tasks', 'email_id', 'project_task_id', 'many-to-many', NULL, NULL, 0, 0),
('af44abd3-9dce-95ea-375d-458d3e5d4faa', 'emails_projects_rel', 'Emails', 'emails', 'id', 'Project', 'project', 'id', 'emails_projects', 'email_id', 'project_id', 'many-to-many', NULL, NULL, 0, 0),
('b36b27a1-ea92-5102-54e5-458d3eb07995', 'emails_prospects_rel', 'Emails', 'emails', 'id', 'Prospect', 'prospects', 'id', 'emails_prospects', 'email_id', 'prospect_id', 'many-to-many', NULL, NULL, 0, 0),
('b7cb0d80-aa03-431f-bc12-458d3e66db02', 'emails_tasks_rel', 'Emails', 'emails', 'id', 'Tasks', 'tasks', 'id', 'emails_tasks', 'email_id', 'task_id', 'many-to-many', NULL, NULL, 0, 0),
('bbcb6406-56a8-53bc-c143-458d3e9aff98', 'emails_users_rel', 'Emails', 'emails', 'id', 'Users', 'users', 'id', 'emails_users', 'email_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('c1a131c3-495e-0ae6-94b5-458d3e6e3b26', 'contracts_documents', 'contracts', 'contracts', 'id', 'documents', 'documents', 'id', 'linked_documents', 'parent_id', 'document_id', 'many-to-many', 'parent_type', 'Contracts', 0, 0),
('c1f5b781-03ed-1037-1ff1-458d3eaaf4cc', 'leads_documents', 'leads', 'leads', 'id', 'documents', 'documents', 'id', 'linked_documents', 'parent_id', 'document_id', 'many-to-many', 'parent_type', 'Leads', 0, 0),
('c252f558-f414-8cbc-cd4b-458d3e329ece', 'contracttype_documents', 'ContracTemplates', 'contract_types', 'id', 'documents', 'documents', 'id', 'linked_documents', 'parent_id', 'document_id', 'many-to-many', 'parent_type', 'ContracTemplates', 0, 0),
('c66aed8c-90cd-ce61-f96d-458d3eb38047', 'meetings_contacts', 'Meetings', 'meetings', 'id', 'Contacts', 'contacts', 'id', 'meetings_contacts', 'meeting_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('ca6a02f1-c402-a386-bde7-458d3e1c223d', 'meetings_users', 'Meetings', 'meetings', 'id', 'Users', 'users', 'id', 'meetings_users', 'meeting_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('cea21baa-10a6-2ee8-2536-458d3eeb7107', 'opportunities_contacts', 'Opportunities', 'opportunities', 'id', 'Contacts', 'contacts', 'id', 'opportunities_contacts', 'opportunity_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('d3957f8d-72f6-b181-4155-458d3ea4624b', 'projects_accounts', 'Accounts', 'accounts', 'id', 'Project', 'project', 'id', 'project_relation', 'relation_id', 'project_id', 'many-to-many', 'relation_type', 'Accounts', 0, 0),
('d3e91180-51e0-6a03-3836-458d3e7ba2d1', 'projects_contacts', 'Project', 'project', 'id', 'Contacts', 'contacts', 'id', 'project_relation', 'project_id', 'relation_id', 'many-to-many', 'relation_type', 'Contacts', 0, 0),
('d451ee7f-3b0e-cfd4-0f00-458d3e4e9a71', 'projects_opportunities', 'Project', 'project', 'id', 'Opportunities', 'opportunities', 'id', 'project_relation', 'project_id', 'relation_id', 'many-to-many', 'relation_type', 'Opportunities', 0, 0),
('d4a57c02-3b7b-49c3-d522-458d3ef17299', 'projects_quotes', 'Project', 'project', 'id', 'Quotes', 'quotes', 'id', 'project_relation', 'project_id', 'relation_id', 'many-to-many', 'relation_type', 'Quotes', 0, 0),
('d9bde23e-23ea-c5da-4dc7-458d3e8f556e', 'prospect_list_campaigns', 'ProspectLists', 'prospect_lists', 'id', 'Campaigns', 'campaigns', 'id', 'prospect_list_campaigns', 'prospect_list_id', 'campaign_id', 'many-to-many', NULL, NULL, 0, 0),
('dd9b08e2-cf0c-ebad-bbe4-458d3eaefe75', 'prospect_list_contacts', 'ProspectLists', 'prospect_lists', 'id', 'Contacts', 'contacts', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Contacts', 0, 0),
('ddfa7009-18ec-b347-59d8-458d3e4cd7ea', 'prospect_list_prospects', 'ProspectLists', 'prospect_lists', 'id', 'Prospects', 'prospects', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Prospects', 0, 0),
('deb4ab2d-a060-b063-8f37-458d3eec6241', 'prospect_list_leads', 'ProspectLists', 'prospect_lists', 'id', 'Leads', 'leads', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Leads', 0, 0),
('df1113fa-0527-d454-5254-458d3e75459f', 'prospect_list_users', 'ProspectLists', 'prospect_lists', 'id', 'Users', 'users', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Users', 0, 0),
('e6a29177-9b59-b4a7-0ec9-458d3e910ab2', 'roles_users', 'Roles', 'roles', 'id', 'Users', 'users', 'id', 'roles_users', 'role_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('c27728ee-bcfb-51a3-0238-458d4077f31f', 'products_products_components', 'Products', 'products', 'id', 'ProductComponents', 'products_components', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c2cc06eb-672d-8273-e3de-458d40d0a0e9', 'products_assigned_user', 'Users', 'users', 'id', 'Products', 'products', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c329f24d-bcd4-44cc-d793-458d40b731b8', 'products_modified_user', 'Users', 'users', 'id', 'Products', 'products', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c37b14a8-4cda-831c-6d64-458d400830ce', 'products_created_by', 'Users', 'users', 'id', 'Products', 'products', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3461e394-e16d-9dc1-2b72-459b83c9926b', 'product_component_modified_user', 'Users', 'users', 'id', 'ProductComponents', 'products_components', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('34dd1d21-dfa1-ae7b-8a52-459b83122185', 'product_component__created_by', 'Users', 'users', 'id', 'ProductComponents', 'products_components', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('55e2e4cc-3d8b-dff9-845a-459cdf23395d', 'products_components_notes', 'ProductComponents', 'products_components', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProductComponents', 0, 0),
('561e1605-ac49-b053-eb3a-459cdfb9ca5e', 'products_components_meetings', 'ProductComponents', 'products_components', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProductComponents', 0, 0),
('56518856-e641-e58c-ffd4-459cdf391667', 'products_components_calls', 'ProductComponents', 'products_components', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProductComponents', 0, 0),
('56848b25-9337-011f-5413-459cdf2461c5', 'products_components_emails', 'ProductComponents', 'products_components', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProductComponents', 0, 0),
('56b7922f-ce8e-579a-fab1-459cdfa94593', 'products_components_assigned_user', 'Users', 'users', 'id', 'ProductComponents', 'products_components', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('56e9cebb-27c4-d11d-5401-459cdf18c45f', 'products_components_modified_user', 'Users', 'users', 'id', 'ProductComponents', 'products_components', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('571c845e-03ee-fd5f-9fbb-459cdf6664de', 'products_components_created_by', 'Users', 'users', 'id', 'ProductComponents', 'products_components', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('97c7fd0c-db3d-c7d0-a3f6-45ab8759fc6d', 'accounts_products', 'Accounts', 'accounts', 'id', 'Products', 'products', 'account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4da2ec6a-b79a-52d1-bcc1-45aba2fd80c5', 'account_quotes', 'Accounts', 'accounts', 'id', 'Quotes', 'quotes', 'account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('17e40641-51d6-8117-ad98-458d3e6c5793', 'suppliers_assigned_user', 'Users', 'users', 'id', 'Suppliers', 'suppliers', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('980c8d72-e5d2-318c-1a8c-45b913290de4', 'suppliers_modified_user', 'Users', 'users', 'id', 'Suppliers', 'suppliers', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9fb34068-b4cc-521f-a28c-45b914d69c39', 'suppliers_created_by', 'Users', 'users', 'id', 'Suppliers', 'suppliers', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2f6005f1-3512-2335-ead7-45be1258a5ae', 'materials_assigned_user', 'Users', 'users', 'id', 'Materials', 'materials', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9b099f85-0573-e6b0-327b-45be12412c0c', 'materials_modified_user', 'Users', 'users', 'id', 'Materials', 'materials', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c755220f-7fde-3212-3196-45be127f2743', 'materials_created_by', 'Users', 'users', 'id', 'Materials', 'materials', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9a902f8f-af8a-2691-1b6d-45b8daaeb1e8', 'materials_suppliers', 'Suppliers', 'suppliers', 'id', 'Materials', 'materials', 'id', 'materials_relation', 'relation_id', 'material_id', 'many-to-many', 'relation_type', 'Suppliers', 0, 0),
('67833b09-a2b2-1acf-15b0-45cc629b986f', 'materials_prices', 'Materials', 'materials', 'id', 'Prices', 'prices', 'material_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d1d6e35c-4bd1-d549-8919-45cc7f9e34a8', 'papers_prices', 'Paper', 'paper', 'id', 'Prices', 'prices', 'paper_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ec08ef3b-14a4-4e5e-c42d-459b9455fb6c', 'materials_supplies', 'Materials', 'materials', 'id', 'Supplylines', 'supplylines', 'materialid', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ac7d5068-23e2-fb83-f178-45cb3c86b462', 'prices_assigned_user', 'Users', 'users', 'id', 'Prices', 'prices', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('60fad945-0057-e7af-021a-45cb3ce6fa8d', 'prices_modified_user', 'Users', 'users', 'id', 'Prices', 'prices', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cab53899-5635-6145-5fe9-45cb3cd91113', 'prices_created_by', 'Users', 'users', 'id', 'Prices', 'prices', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3cd7e136-50fe-ee67-1812-45d01c11e8be', 'papers_supplies', 'Paper', 'paper', 'id', 'Supplylines', 'supplylines', 'paperid', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('94d458da-7599-f492-610a-45d04413dd5e', 'papers_suppliers', 'Suppliers', 'suppliers', 'id', 'Paper', 'paper', 'id', 'papers_relation', 'relation_id', 'paper_id', 'many-to-many', 'relation_type', 'Suppliers', 0, 0),
('762e840b-8bdb-e487-f26e-45dd53509d9c', 'operations_assigned_user', 'Users', 'users', 'id', 'Operations', 'operations', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('81ce03a4-d16b-884e-66f9-45dd53232e3d', 'operations_modified_user', 'Users', 'users', 'id', 'Operations', 'operations', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a1cd038c-59f3-6475-3740-45dd5353189c', 'operations_created_by', 'Users', 'users', 'id', 'Operations', 'operations', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c22cab9b-ae5a-338e-4d06-45e29fd061fa', 'productoperations_assigned_user', 'Users', 'users', 'id', 'ProductOperations', 'productoperations', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ef50a922-11fe-45ab-84bf-45e29f0bf790', 'productoperations_modified_user', 'Users', 'users', 'id', 'ProductOperations', 'productoperations', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ce10c40d-9558-4e3c-723d-45e29f8e521a', 'productoperations_created_by', 'Users', 'users', 'id', 'ProductOperations', 'productoperations', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('26c204ec-4918-6ac3-d985-45e3f342fee5', 'products_operations', 'Products', 'products', 'id', 'ProductOperations', 'productoperations', 'product_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d72cfbcd-acc2-b375-7844-45e406f8f6c8', 'productcomponents_operations', 'ProductComponents', 'products_components', 'id', 'ProductOperations', 'productoperations', 'component_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6be98900-9a08-e374-0324-45e3e393fb1a', 'machines_assigned_user', 'Users', 'users', 'id', 'Machines', 'machines', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('aa2474b2-b283-a077-a520-45e3e3ba2076', 'machines_modified_user', 'Users', 'users', 'id', 'Machines', 'machines', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('455000c5-56a6-6c76-9d97-45e3e3a5916e', 'machines_created_by', 'Users', 'users', 'id', 'Machines', 'machines', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c592eeac-58e4-cbd0-c472-462483758eeb', 'estimates_assigned_user', 'Users', 'users', 'id', 'Estimates', 'estimate', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c5a176c2-7119-ba0e-6889-462483a68230', 'estimates_modified_user', 'Users', 'users', 'id', 'Estimates', 'estimate', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c5a920d7-e16b-b5a1-2e2b-462483311cd5', 'estimates_created_by', 'Users', 'users', 'id', 'Estimates', 'estimate', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3c43cf69-70b6-1a1a-bfe8-46287d58657f', 'productlogs_assigned_user', 'Users', 'users', 'id', 'ProductLogs', 'productlog', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3c5a0a50-60eb-c998-e871-46287d0cec6f', 'productlogs_modified_user', 'Users', 'users', 'id', 'ProductLogs', 'productlog', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3c6daf54-e306-13f7-3e06-46287d7ee5c8', 'productlogs_created_by', 'Users', 'users', 'id', 'ProductLogs', 'productlog', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7d128ed9-2c5b-72f5-1a99-4629d530dcea', 'products_productlogs', 'Products', 'products', 'id', 'ProductLogs', 'productlog', 'product_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b36b258b-e5fa-6a8f-f755-463056970cd7', 'products_estimates', 'Products', 'products', 'id', 'ProductEstimate', 'productestimate', 'product_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('15a49dd0-4f2c-a32f-b7b8-46399341fa22', 'printing_assigned_user', 'Users', 'users', 'id', 'Printing', 'printing', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('15b258a4-b419-da52-ff3b-46399337315c', 'printing_modified_user', 'Users', 'users', 'id', 'Printing', 'printing', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('15ba1a85-ae4b-3264-cfad-4639931ad19f', 'printing_created_by', 'Users', 'users', 'id', 'Printing', 'printing', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a76ec53a-cb21-432e-8136-463a1c6cbc13', 'products_printing', 'Products', 'products', 'id', 'Printing', 'printing', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c4cd18f0-2aa3-b63c-04bb-463a29082ea3', 'components_printing', 'ProductComponents', 'products_components', 'id', 'Printing', 'printing', 'product_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('568475ae-30e1-b714-c080-46540ce6b1df', 'products_contacts', 'Products', 'products', 'id', 'Contacts', 'contacts', 'id', 'products_relation', 'product_id', 'relation_id', 'many-to-many', 'relation_type', 'Contacts', 0, 0),
('56927072-88ec-3999-f929-46540cc3a8a1', 'products_opportunities', 'Products', 'products', 'id', 'Opportunities', 'opportunities', 'id', 'products_relation', 'product_id', 'relation_id', 'many-to-many', 'relation_type', 'Opportunities', 0, 0),
('bbdc572b-0aa3-9adf-5f2b-46543db2b324', 'products_notes', 'Products', 'products', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Products', 0, 0),
('bbf41024-19e0-cba5-740a-46543dc4a2a4', 'products_meetings', 'Products', 'products', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Products', 0, 0),
('bbfc37b4-da05-82b9-7d5c-46543d68e31f', 'products_calls', 'Products', 'products', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Products', 0, 0),
('bc03e285-16fb-6fbb-0198-46543d85bcab', 'products_emails', 'Products', 'products', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Products', 0, 0),
('6fb32b75-b017-0cc3-3485-4680dbabd441', 'inks_assigned_user', 'Users', 'users', 'id', 'Ink', 'ink', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6fca6a7e-9926-f5d4-7510-4680db26eeda', 'inks_modified_user', 'Users', 'users', 'id', 'Ink', 'ink', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6fd27e82-db8a-d0b1-74bb-4680dbbb1d3f', 'inks_created_by', 'Users', 'users', 'id', 'Ink', 'ink', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d5c0b002-86f9-a2a4-498b-46825aabcc6e', 'pressmachines_assigned_user', 'Users', 'users', 'id', 'Pressmachine', 'pressmachine', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d5ceecc1-8fa3-6ac9-80a0-46825a8dc5b5', 'pressmachines_modified_user', 'Users', 'users', 'id', 'Pressmachine', 'pressmachine', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d5d6ee8c-306f-400c-f5da-46825a6d3d3f', 'pressmachines_created_by', 'Users', 'users', 'id', 'Pressmachine', 'pressmachine', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3888ad68-16d7-a617-0a2a-468a09789f77', 'pricelists_assigned_user', 'Users', 'users', 'id', 'Pricelist', 'pricelist', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('38a46822-df5c-cc25-c7a3-468a09c9ec14', 'pricelists_modified_user', 'Users', 'users', 'id', 'Pricelist', 'pricelist', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('38ac86c3-5c3b-2024-8ec6-468a095b18d4', 'pricelists_created_by', 'Users', 'users', 'id', 'Pricelist', 'pricelist', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('443367e8-c8a4-0266-4061-469246689c13', 'layouts_assigned_user', 'Users', 'users', 'id', 'Layout', 'layout', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('444104b4-83fb-1ce9-7fcb-46924626b9e1', 'layouts_modified_user', 'Users', 'users', 'id', 'Layout', 'layout', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('44490b20-c828-7d62-0435-469246c2857e', 'layouts_created_by', 'Users', 'users', 'id', 'Layout', 'layout', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4450900a-1777-af9b-326a-4692466ee0c1', 'paperwaste_assigned_user', 'Users', 'users', 'id', 'Paperwaste', 'paperwaste', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('44583813-07a6-73cb-db07-46924624a745', 'paperwaste_modified_user', 'Users', 'users', 'id', 'Paperwaste', 'paperwaste', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('445fc34d-4559-f3fa-c2b7-46924618b64f', 'paperwaste_created_by', 'Users', 'users', 'id', 'Paperwaste', 'paperwaste', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9898ec7c-1244-8ca5-3add-46960c3e2e2c', 'press_assigned_user', 'Users', 'users', 'id', 'Press', 'press', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('98adec95-03cb-b924-0fa2-46960ce4f12b', 'press_modified_user', 'Users', 'users', 'id', 'Press', 'press', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('98b5d979-6ae2-363c-16af-46960c988afe', 'press_created_by', 'Users', 'users', 'id', 'Press', 'press', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('98bdab15-f2de-4a41-95ea-46960c61942d', 'ratefilms_assigned_user', 'Users', 'users', 'id', 'Ratefilm', 'ratefilm', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('98c55094-01b2-950d-61be-46960c22a440', 'ratefilms_modified_user', 'Users', 'users', 'id', 'Ratefilm', 'ratefilm', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('98cd04dd-8676-184d-a3b8-46960c218eee', 'ratefilms_created_by', 'Users', 'users', 'id', 'Ratefilm', 'ratefilm', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('190add40-f7cd-02d2-2516-46bb277ed3ea', 'productestimates_assigned_user', 'Users', 'users', 'id', 'ProductEstimate', 'productestimate', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('191f6480-9698-f876-da1b-46bb27635c85', 'productestimates_modified_user', 'Users', 'users', 'id', 'ProductEstimate', 'productestimate', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('192755c3-11f6-8a2b-e835-46bb27210e89', 'productestimates_created_by', 'Users', 'users', 'id', 'ProductEstimate', 'productestimate', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d86350b2-fead-20d0-62aa-46c0359bea34', 'componentestimates_assigned_user', 'Users', 'users', 'id', 'ComponentEstimate', 'componentestimate', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d87137c5-7d38-7ae3-5484-46c035373e42', 'componentestimates_modified_user', 'Users', 'users', 'id', 'ComponentEstimate', 'componentestimate', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d878dcbd-60fd-bb73-4db3-46c035337576', 'componentestimates_created_by', 'Users', 'users', 'id', 'ComponentEstimate', 'componentestimate', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a40851ee-aa77-8893-482a-46f8e6bb5a20', 'productcomponents_estimate', 'ProductComponents', 'products_components', 'id', 'ComponentEstimate', 'componentestimate', 'component_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ee487d2b-bbc0-6494-7410-4706053b37e2', 'products_quotes', 'Products', 'products', 'id', 'QuoteLines', 'quotelines', 'productid', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('76423776-dd70-03e5-6575-47166a3fb3b5', 'paperformats_assigned_user', 'Users', 'users', 'id', 'Paperformat', 'paperformat', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7651e96f-4528-204a-5089-47166ab8ed63', 'paperformats_modified_user', 'Users', 'users', 'id', 'Paperformat', 'paperformat', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('765e5df9-44c4-5d0c-9a47-47166aefe02c', 'paperformats_created_by', 'Users', 'users', 'id', 'Paperformat', 'paperformat', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);

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

INSERT INTO `schedulers` (`id`, `deleted`, `date_entered`, `date_modified`, `created_by`, `modified_user_id`, `name`, `job`, `date_time_start`, `date_time_end`, `job_interval`, `time_from`, `time_to`, `last_run`, `status`, `catch_up`) VALUES 
('d680020d-c3fe-7b15-63e2-458d3ef9bc2a', 0, '2006-12-23 14:35:31', '2006-12-23 14:35:31', NULL, '1', 'Check Inbound Mailboxes', 'function::pollMonitoredInboxes', '2004-12-31 22:00:00', '2020-12-31 21:59:00', '*::*::*::*::*', NULL, NULL, NULL, 'Active', 0),
('36a202b3-5201-4418-c50c-458d3ee39298', 0, '2006-12-23 14:35:31', '2006-12-23 14:35:31', NULL, '1', 'Run Nightly Process Bounced Campaign Emails', 'function::pollMonitoredInboxesForBouncedCampaignEmails', '2004-12-31 22:00:00', '2020-12-31 21:59:00', '0::2-6::*::*::*', NULL, NULL, NULL, 'Active', 1),
('5f8d0e1a-e5da-581b-5d5e-458d3e715c74', 0, '2006-12-23 14:35:31', '2006-12-23 14:35:31', NULL, '1', 'Run Nightly Mass Email Campaigns', 'function::runMassEmailCampaign', '2004-12-31 22:00:00', '2020-12-31 21:59:00', '0::2-6::*::*::*', NULL, NULL, NULL, 'Active', 1),
('830401b9-06e7-9930-a6cd-458d3e71ca22', 0, '2006-12-23 14:35:31', '2006-12-23 14:35:31', NULL, '1', 'Prune Database on 1st of Month', 'function::pruneDatabase', '2004-12-31 22:00:00', '2020-12-31 21:59:00', '0::4::1::*::*', NULL, NULL, NULL, 'Inactive', 0);

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

INSERT INTO `suppliers` (`id`, `acc_id`, `acc_name`, `date_entered`, `date_modified`, `modified_user_id`, `assigned_user_id`, `created_by`, `name`, `parent_id`, `category`, `num`, `num_suf`, `phone_fax`, `billing_address_street`, `billing_address_city`, `billing_address_state`, `billing_address_postalcode`, `billing_address_country`, `description`, `num_pref`, `phone_office`, `phone_alternate`, `email1`, `email2`, `website`, `cid`, `ctid`, `iban`, `pay_terms`, `shipping_address_street`, `shipping_address_city`, `shipping_address_state`, `shipping_address_postalcode`, `shipping_address_country`, `deleted`) VALUES 
('5e0b1f19-edac-32da-c0ee-45cf3dd3f612', NULL, NULL, '2007-02-11 16:01:04', '2007-05-22 16:37:13', '1', '177bd6bb-665d-cc61-4d82-45ab422290d3', '177bd6bb-665d-cc61-4d82-45ab422290d3', 'Славей 91', NULL, 'Finishing', 'SUP10001', 10001, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SUP', NULL, NULL, NULL, NULL, 'http://', NULL, NULL, NULL, 'Cash', NULL, NULL, NULL, NULL, NULL, 0),
('56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', NULL, NULL, '2007-02-11 16:01:26', '2007-02-11 16:01:26', '177bd6bb-665d-cc61-4d82-45ab422290d3', '177bd6bb-665d-cc61-4d82-45ab422290d3', '177bd6bb-665d-cc61-4d82-45ab422290d3', 'К1 Партнерс', NULL, 'Finishing', 'SUP10000', 10000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SUP', NULL, NULL, NULL, NULL, 'http://', NULL, NULL, NULL, 'Cash', NULL, NULL, NULL, NULL, NULL, 0);

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

INSERT INTO `supplies` (`id`, `name`, `supplynum`, `category`, `status`, `num_pref`, `num_suf`, `total_price`, `supplier_id`, `supplier_name`, `purchaseorder_id`, `purchaseorder_num`, `delivery_date`, `delivered_date`, `assigned_user_id`, `sales_order_id`, `sales_order_num`, `note`, `deleted`, `date_entered`, `date_modified`, `created_by`) VALUES 
('ca5f7364-bc69-fa1c-aa4d-46531b96bfe9', 'SPL10000', 'SPL10000', NULL, 'In Progress', 'SPL', '10000', '5.00', '56b7b65d-12cd-3eb3-61b3-45cf3d7ad32f', 'К1 Партнерс', NULL, NULL, '2007-05-31', NULL, '1', NULL, NULL, NULL, 0, '2007-05-22 16:35:39', '2007-05-22 16:35:39', '1');

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

INSERT INTO `supplylines` (`id`, `supplyid`, `supplynum`, `delivery_date`, `delivered_date`, `status`, `materialid`, `paperid`, `materialname`, `number`, `measure`, `deleted`, `date_entered`, `date_modified`, `created_by`, `price`, `singlep`, `unit`) VALUES 
('cbedcbc2-61cd-a8f6-606d-46531b240628', 'ca5f7364-bc69-fa1c-aa4d-46531b96bfe9', 'SPL10000', '2007-05-31', NULL, 'In Progress', NULL, NULL, 'Chantellor 100', '1', NULL, 0, '2007-05-22 16:35:39', '2007-08-30 07:43:41', '1', '5.00', '0.5', '10');

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

INSERT INTO `tasks` (`id`, `date_entered`, `date_modified`, `assigned_user_id`, `modified_user_id`, `created_by`, `name`, `status`, `date_due_flag`, `date_due`, `time_due`, `date_start_flag`, `date_start`, `time_start`, `parent_type`, `parent_id`, `contact_id`, `priority`, `description`, `deleted`) VALUES 
('4f19c87b-f578-7544-95ba-45e80e218576', '2007-03-02 11:47:30', '2007-08-30 08:17:14', '1', '1', '1', 'Test Task', 'Completed', 'off', '2007-03-03', '10:00:00', 'off', NULL, NULL, NULL, NULL, NULL, 'High', NULL, 1),
('a61a035f-cbd6-ef78-870c-45e824d88fa8', '2007-03-02 13:18:46', '2007-03-05 08:18:10', '1', '1', '1', 'Task1_P1', 'In Progress', 'off', '2007-03-02', '13:47:00', 'off', NULL, NULL, 'Accounts', NULL, NULL, 'Medium', NULL, 1),
('4009343b-d142-6a52-efd3-45ebebfa38cd', '0000-00-00 00:00:00', '2007-05-18 07:40:22', '1', NULL, '1', 'PRD10005-Estimate', 'In Progress', 'off', NULL, NULL, 'off', NULL, NULL, NULL, NULL, NULL, 'Medium', 'PRD10005 is waiting for estimate', 1),
('4bc343a5-6b37-424a-e4c0-45ebecab6727', '0000-00-00 00:00:00', '2007-05-18 07:43:29', '177bd6bb-665d-cc61-4d82-45ab422290d3', NULL, '1', 'PRD10001-Estimate', 'In Progress', 'off', NULL, NULL, 'off', NULL, NULL, NULL, NULL, NULL, 'Medium', 'PRD10001 is waiting for estimate', 1),
('6a34bfc2-ab1c-c79d-87f5-45f12a4bfdfd', '0000-00-00 00:00:00', '2007-05-18 07:43:29', '177bd6bb-665d-cc61-4d82-45ab422290d3', NULL, '1', 'PRD10000-Estimate', 'In Progress', 'off', NULL, NULL, 'off', NULL, NULL, NULL, NULL, NULL, 'Medium', 'PRD10000 is waiting for estimate', 1),
('847dea88-fbc2-7208-78f1-46287c93ff6a', '0000-00-00 00:00:00', '2007-05-18 07:43:29', '1', NULL, '1', 'PRD10007-Estimate', 'In Progress', 'off', NULL, NULL, 'off', NULL, NULL, NULL, NULL, NULL, 'Medium', 'PRD10007 is waiting for estimate', 1),
('71a23fab-a15e-e273-1ffb-464d6979e53b', '0000-00-00 00:00:00', '2007-09-24 12:28:36', '1', '1', '1', 'PRD10000-Estimate', 'Completed', 'off', NULL, NULL, 'off', NULL, NULL, 'Cases', NULL, NULL, 'Medium', 'PRD10000 is waiting for estimate', 1),
('8c2bf347-5728-636b-e1e4-4678f330880a', '0000-00-00 00:00:00', '2007-09-24 12:28:36', '1', NULL, '1', 'PRD10001-Estimate', 'In Progress', 'off', NULL, NULL, 'off', NULL, NULL, NULL, NULL, NULL, 'Medium', 'PRD10001 is waiting for estimate', 1),
('40a0e8b1-b75b-da06-1819-46c9403aa84d', '0000-00-00 00:00:00', '2007-09-24 12:28:36', '1', NULL, '1', 'PRD10002-Estimate', 'In Progress', 'off', NULL, NULL, 'off', NULL, NULL, NULL, NULL, NULL, 'Medium', 'PRD10002 is waiting for estimate', 1),
('4a927be6-eb08-be76-ed15-46c9430c6317', '0000-00-00 00:00:00', '2007-09-24 12:28:36', '1', NULL, '1', 'PRD10003-Estimate', 'In Progress', 'off', NULL, NULL, 'off', NULL, NULL, NULL, NULL, NULL, 'Medium', 'PRD10003 is waiting for estimate', 1),
('94883148-0b2d-3aee-1270-46c9438a3cbd', '0000-00-00 00:00:00', '2007-09-24 12:28:36', '1', NULL, '1', 'PRD10004-Estimate', 'In Progress', 'off', NULL, NULL, 'off', NULL, NULL, NULL, NULL, NULL, 'Medium', 'PRD10004 is waiting for estimate', 1),
('e4a32ca1-e258-66f3-bec7-46cec7c0744a', '2007-08-24 11:54:49', '2007-09-24 12:28:36', '1', '1', '1', 'ояао', 'Not Started', 'off', NULL, NULL, 'off', NULL, NULL, NULL, NULL, NULL, 'High', NULL, 1),
('78432699-d1e4-13a0-e23c-46f7acc38cc6', '2007-09-24 12:22:31', '2007-09-24 12:28:24', '1', '1', '1', ' Хоремаг бр.10', 'Not Started', 'on', NULL, NULL, 'on', NULL, NULL, 'Leads', NULL, NULL, 'High', NULL, 1),
('21c2ec2b-73d6-1533-e5dc-46f7c11738f7', '2007-09-24 13:53:28', '2007-09-24 14:54:08', NULL, '1', '1', 'Component estimate:PRD10003-1', 'Not Started', 'off', NULL, NULL, 'off', NULL, NULL, NULL, NULL, NULL, 'High', 'Component estimate:PRD10003-1', 1),
('c097b7e8-9ce8-31de-1309-46f7c294f932', '2007-09-24 13:59:40', '2007-09-24 14:54:08', NULL, '1', '1', 'Component estimate:PRD10003-1', 'Not Started', 'off', NULL, NULL, 'off', NULL, NULL, NULL, NULL, NULL, 'High', 'Component estimate:PRD10003-1', 1),
('66d92cb0-c583-78fa-3750-46f7c34c52c6', '2007-09-24 14:03:16', '2007-09-24 14:54:08', NULL, '1', '1', 'Component estimate:PRD10003-1', 'Not Started', 'off', NULL, NULL, 'off', NULL, NULL, NULL, NULL, NULL, 'High', 'Component estimate:PRD10003-1', 1),
('938c0188-04eb-f7b3-8c75-46f7cf757e1f', '2007-09-24 14:52:43', '2007-09-24 14:54:08', NULL, '1', '1', 'Component estimate:PRD10003-1', 'Not Started', 'off', NULL, NULL, 'off', NULL, NULL, NULL, NULL, NULL, 'High', 'Component estimate:PRD10003-1', 1),
('d13d8e6a-93b3-190e-e800-46f7cfbdea9e', '2007-09-24 14:53:30', '2007-09-24 14:54:08', '177bd6bb-665d-cc61-4d82-45ab422290d3', '1', '1', 'Component estimate:PRD10003-1', 'Not Started', 'off', NULL, NULL, 'off', NULL, NULL, NULL, NULL, NULL, 'High', 'Component estimate:PRD10003-1', 1),
('de790818-8e5e-8355-5974-46f8baca2bb2', '0000-00-00 00:00:00', '2007-10-05 08:47:44', '1', NULL, '1', 'PRD10004-Estimate', 'In Progress', 'off', NULL, NULL, 'off', NULL, NULL, NULL, NULL, NULL, 'Medium', 'PRD10004 is waiting for estimate', 1);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5663 ;

-- 
-- Дъмп (схема) на данните в таблицата `tracker`
-- 

INSERT INTO `tracker` (`id`, `user_id`, `module_name`, `item_id`, `item_summary`, `date_modified`) VALUES 
(26, '1', 'ProductComponents', '7aca0f09-6eb9-3564-1d83-459e69bba094', 'comp3', '2007-01-08 14:02:16'),
(1916, '177bd6bb-665d-cc61-4d82-45ab422290d3', 'Employees', '177bd6bb-665d-cc61-4d82-45ab422290d3', 'Demo User', '2007-03-02 14:42:35'),
(5484, '177bd6bb-665d-cc61-4d82-45ab422290d3', 'ProductComponents', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', 'Тяло - Книга Компанията на паяците', '2007-10-08 06:56:10'),
(5638, 'db72618d-35da-19ad-1b67-46f37f819f41', 'Users', 'db72618d-35da-19ad-1b67-46f37f819f41', 'Nick Rachev', '2007-10-15 07:19:52'),
(5653, '1', 'Users', 'e6215035-1bef-82fe-0c85-470a0358b1fb', 'Panayot Panayotov', '2007-10-15 08:08:58'),
(5660, '28d2f82e-0aec-0640-54b7-4716657084fd', 'Products', '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците', '2007-10-17 20:23:12'),
(5651, '1', 'Products', '8e2b6aa8-2783-1ceb-2b1b-4709e9a8b951', 'Стикери "LAVAZZA"', '2007-10-15 08:08:46'),
(5540, 'e6215035-1bef-82fe-0c85-470a0358b1fb', 'Users', 'db72618d-35da-19ad-1b67-46f37f819f41', 'Nick Rachev', '2007-10-08 10:24:07'),
(5649, '1', 'ProductComponents', 'dc72a139-71cc-4680-0e8b-4709ea86b5fd', 'Стикери "LAVAZZA"-1', '2007-10-15 08:08:37'),
(5632, 'db72618d-35da-19ad-1b67-46f37f819f41', 'Products', '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците', '2007-10-15 07:18:14'),
(5481, '177bd6bb-665d-cc61-4d82-45ab422290d3', 'Products', '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците', '2007-10-08 06:25:01'),
(5652, '1', 'Users', '141f1064-8e78-f58f-ee5f-46f37e56bb1a', 'Emil Koralov', '2007-10-15 08:08:53'),
(5639, 'db72618d-35da-19ad-1b67-46f37f819f41', 'Paper', 'a4cb4337-447a-2e72-b569-464d64ac31bf', 'Хартия - Мат - 70х100 -170гр', '2007-10-15 07:33:01'),
(5485, '177bd6bb-665d-cc61-4d82-45ab422290d3', 'ComponentEstimate', 'e4c27e8a-fe9d-2145-9b97-4703ab2b5502', 'Калкулация-Тяло - Книга Компанията на паяците', '2007-10-08 06:56:16'),
(5620, 'db72618d-35da-19ad-1b67-46f37f819f41', 'ProductComponents', 'dc72a139-71cc-4680-0e8b-4709ea86b5fd', 'Стикери "LAVAZZA"-1', '2007-10-15 07:02:22'),
(5636, 'db72618d-35da-19ad-1b67-46f37f819f41', 'ComponentEstimate', '9ca50715-d5f9-86a6-7948-47131459a5e0', 'Калкулация-Стикери "LAVAZZA"-1', '2007-10-15 07:18:55'),
(5635, 'db72618d-35da-19ad-1b67-46f37f819f41', 'ProductEstimate', 'b0720e16-f3b0-7c75-9cfd-4713145f9e40', 'Калкулация-Стикери "LAVAZZA"', '2007-10-15 07:18:26'),
(5659, '1', 'Users', '1', 'Administrator', '2007-10-17 19:42:50'),
(5538, 'e6215035-1bef-82fe-0c85-470a0358b1fb', 'Users', 'e6215035-1bef-82fe-0c85-470a0358b1fb', 'Panayot Panayotov', '2007-10-08 10:23:50'),
(5640, 'db72618d-35da-19ad-1b67-46f37f819f41', 'Products', '8e2b6aa8-2783-1ceb-2b1b-4709e9a8b951', 'Стикери "LAVAZZA"', '2007-10-15 07:33:14'),
(5613, 'db72618d-35da-19ad-1b67-46f37f819f41', 'ProductEstimate', 'f19db0a1-5256-923b-94cb-4703ab576909', 'Калкулация-Книга Компанията на паяците', '2007-10-15 06:50:22'),
(5548, 'db72618d-35da-19ad-1b67-46f37f819f41', 'ProductComponents', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', 'Тяло - Книга Компанията на паяците', '2007-10-08 10:28:20'),
(5617, 'db72618d-35da-19ad-1b67-46f37f819f41', 'Pressmachine', '7709512d-3380-6f6e-a4c0-4688c89520cf', 'GTO', '2007-10-15 06:52:49'),
(5654, '1', 'Users', 'd7b7db22-0179-aa25-3a55-46f37f9d8175', 'Vera Valkova', '2007-10-15 08:09:02'),
(5656, '1', 'Paper', 'a8948502-cea9-500a-0d8c-464d6305dfdc', 'Хартия 70x100 - мат - гланц', '2007-10-15 08:09:33'),
(5650, '1', 'ProductEstimate', 'b0720e16-f3b0-7c75-9cfd-4713145f9e40', 'Калкулация-Стикери "LAVAZZA"', '2007-10-15 08:08:42'),
(5657, '1', 'Products', '87d3a4c4-2ffd-c48d-6bfb-46d5673c2117', 'Книга Компанията на паяците', '2007-10-17 19:07:47'),
(5662, '28d2f82e-0aec-0640-54b7-4716657084fd', 'ProductComponents', 'a4512284-554b-cd49-c7ca-46d568fa0e6c', 'Тяло - Книга Компанията на паяците', '2007-10-17 20:50:23');

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

INSERT INTO `upgrade_history` (`id`, `filename`, `md5sum`, `type`, `status`, `version`, `date_entered`) VALUES 
('c5f1a9d7-4380-1b69-67a1-458d4028e709', 'cache/upload/upgrades/module/Products-v0.2.1b.zip', 'ab789afadd622840712953cc03dcf079', 'module', 'installed', '0.2.1b', '2006-12-23 14:42:20'),
('c0cb39cb-ea18-0cb8-16d6-459cdfac7123', 'cache/upload/upgrades/module/ProductComponents-0.1b.zip', '2a3131a50a4622792bc24d9416b6fa7e', 'module', 'installed', '0.1b', '2007-01-04 11:04:50'),
('7e410add-8dbc-3d7e-b21d-45a251f14a2f', 'cache/upload/upgrades/module/Paper.2006-12-01-v0.2.zip', 'd246ee537005fd93963a31db7027f538', 'module', 'installed', '0.2b', '2007-01-08 14:12:05');

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

INSERT INTO `users` (`id`, `user_name`, `user_hash`, `authenticate_id`, `sugar_login`, `first_name`, `last_name`, `reports_to_id`, `is_admin`, `receive_notifications`, `description`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `title`, `department`, `phone_home`, `phone_mobile`, `phone_work`, `phone_other`, `phone_fax`, `email1`, `email2`, `status`, `address_street`, `address_city`, `address_state`, `address_country`, `address_postalcode`, `user_preferences`, `deleted`, `portal_only`, `employee_status`, `messenger_id`, `messenger_type`, `is_group`) VALUES 
('1', 'admin', 'cd3c3621a18bef2bcb2cc568833aa0a5', NULL, 1, NULL, 'Administrator', NULL, 1, 1, NULL, '2006-12-23 14:35:30', '2007-10-11 13:27:06', '1', NULL, 'Administrator', NULL, NULL, NULL, NULL, NULL, NULL, 'info@livesoft-bg.com', NULL, 'Active', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Active', NULL, NULL, 0),
('177bd6bb-665d-cc61-4d82-45ab422290d3', 'Demo', 'f0258b6685684c113bad94d91b8fa02a', NULL, 1, 'Demo', 'User', NULL, 0, 1, NULL, '2007-01-15 09:01:47', '2007-09-24 11:43:05', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'petar.peshev@liveerp.org', NULL, 'Active', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Active', NULL, NULL, 0),
('726c1497-7af4-510a-d56e-46f37dc5a170', 'Nikolina', '425163aef4f6d6cc55020149027c22e7', NULL, 1, 'Nikolina', 'Stoyanova', NULL, 0, 1, NULL, '2007-09-21 08:15:03', '2007-09-21 08:17:19', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Active', NULL, NULL, 0),
('141f1064-8e78-f58f-ee5f-46f37e56bb1a', 'Emil', 'a615b19358fba76194f28754194f2794', NULL, 1, 'Emil', 'Koralov', NULL, 0, 1, NULL, '2007-09-21 08:19:59', '2007-10-15 07:16:29', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'emil.koralov@liveerp.org', NULL, 'Active', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Active', NULL, NULL, 0),
('d7b7db22-0179-aa25-3a55-46f37f9d8175', 'Vera', '74fdd90e54461399c878caeb90b3d2e2', NULL, 1, 'Vera', 'Valkova', NULL, 0, 1, NULL, '2007-09-21 08:21:56', '2007-10-15 07:07:32', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'vera.valkova@liveerp.org', NULL, 'Active', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Active', NULL, NULL, 0),
('db72618d-35da-19ad-1b67-46f37f819f41', 'Nick', 'fd144f65f19df1c7adaa116c44ce2617', NULL, 1, 'Nick', 'Rachev', NULL, 0, 1, NULL, '2007-09-21 08:24:00', '2007-10-11 12:49:04', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'nick.rachev@liveerp.org', NULL, 'Active', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Active', NULL, NULL, 0),
('e6215035-1bef-82fe-0c85-470a0358b1fb', 'Panayot', '88849274de5870ced9e711db7cc2efec', NULL, 1, 'Panayot', 'Panayotov', NULL, 1, 1, NULL, '2007-10-08 10:14:35', '2007-10-08 10:22:10', 'e6215035-1bef-82fe-0c85-470a0358b1fb', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'panayot.panayotov@liveerp.org', NULL, 'Active', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Active', NULL, NULL, 0),
('28d2f82e-0aec-0640-54b7-4716657084fd', 'peter', 'f638a06f95ed9e485715a0d1e0d62fbe', NULL, 1, 'Peter', 'Peshev', NULL, 1, 1, NULL, '2007-10-17 19:43:22', '2007-10-17 19:43:22', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Active', NULL, NULL, 0);

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

INSERT INTO `users_feeds` (`user_id`, `feed_id`, `rank`, `date_modified`, `deleted`) VALUES 
('1', '4bbca87f-2017-5488-d8e0-41e7808c2553', 1, NULL, 0),
('177bd6bb-665d-cc61-4d82-45ab422290d3', '3a68ade5-eba9-dcf7-b8bc-41e2df75bea6', 1, NULL, 0);

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

INSERT INTO `user_preferences` (`id`, `category`, `deleted`, `date_entered`, `date_modified`, `assigned_user_id`, `contents`) VALUES 
('b9648400-d123-afa0-57e2-46c02b650609', 'ComponentEstimate2_COMPONENTESTIMATE', 0, '2007-08-13 10:00:23', '2007-08-13 10:00:23', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('6c21d3ee-32c3-7b08-8649-4709d0ad5546', 'Ratefilm2_RATEFILM', 0, '2007-10-08 06:36:57', '2007-10-08 06:36:57', '177bd6bb-665d-cc61-4d82-45ab422290d3', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('ec060a59-7055-9c69-67cf-4709d0cc3537', 'Paperwaste2_PAPERWASTE', 0, '2007-10-08 06:36:55', '2007-10-08 06:36:55', '177bd6bb-665d-cc61-4d82-45ab422290d3', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('815874d9-140c-e1b0-6d97-4709d0995db1', 'Presspricelist2_PRESSPRICELIST', 0, '2007-10-08 06:36:53', '2007-10-08 06:36:53', '177bd6bb-665d-cc61-4d82-45ab422290d3', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('457f0dc8-ecfb-c478-162b-4709cf659b6a', 'ProductOperations2_PRODUCTOPERATION', 0, '2007-10-08 06:36:45', '2007-10-08 06:36:45', '177bd6bb-665d-cc61-4d82-45ab422290d3', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('b96f1404-3ec4-c459-f29f-4709cfc15295', 'Operations2_OPERATION', 0, '2007-10-08 06:36:42', '2007-10-08 06:36:42', '177bd6bb-665d-cc61-4d82-45ab422290d3', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('94db8477-c463-59a6-3a2f-4709cfd9bdfe', 'Prices2_PRICE', 0, '2007-10-08 06:36:25', '2007-10-08 06:36:25', '177bd6bb-665d-cc61-4d82-45ab422290d3', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('2e7af823-509e-b862-fa18-4709cf3337c8', 'Bugs2_BUG', 0, '2007-10-08 06:36:16', '2007-10-08 06:36:16', '177bd6bb-665d-cc61-4d82-45ab422290d3', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('ad9dce36-baea-e7ab-5478-4709cdda77d7', 'Products2_PRODUCTS', 0, '2007-10-08 06:24:57', '2007-10-08 06:24:57', '177bd6bb-665d-cc61-4d82-45ab422290d3', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('1b54bcd5-4224-2c31-c5f6-4709cd96449b', 'Rateplate2_RATEPLATE', 0, '2007-10-08 06:24:43', '2007-10-08 06:24:43', '177bd6bb-665d-cc61-4d82-45ab422290d3', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('7f32957e-91d0-2bd4-e63d-4709cd96278d', 'Home2_ACCOUNT', 0, '2007-10-08 06:24:27', '2007-10-08 06:24:27', '177bd6bb-665d-cc61-4d82-45ab422290d3', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('ba027cfe-86ab-a9f2-6569-4709cdc90a23', 'Pressmachine2_PRESSMACHINE', 0, '2007-10-08 06:24:34', '2007-10-08 06:24:34', '177bd6bb-665d-cc61-4d82-45ab422290d3', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('485f1eab-97eb-5710-8aaf-46fb61887780', 'Rateplate2_RATEPLATE', 0, '2007-09-27 07:54:30', '2007-09-27 07:54:30', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('ed09ba2f-a5fc-0df1-ccab-4705fa6c44fa', 'Tasks2_TASK', 0, '2007-10-05 08:47:46', '2007-10-05 08:47:46', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('862a0a33-cc61-3a47-c2fc-4706140f07ec', 'ProductOperations2_PRODUCTOPERATION', 0, '2007-10-05 10:40:19', '2007-10-05 10:40:19', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('68c5c81a-55e6-aeda-32e0-4709cd8d9c61', 'home', 0, '2007-10-08 06:24:27', '2007-10-08 06:24:27', '177bd6bb-665d-cc61-4d82-45ab422290d3', 'YToyOntzOjg6ImRhc2hsZXRzIjthOjg6e3M6MzY6Ijk0YzE1OTE5LTlmNmUtOWIxZS0xN2YxLTQ3MDljZGY0ZTlhYSI7YToyOntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1ODoiLi9tb2R1bGVzL0NhbGxzL0Rhc2hsZXRzL015Q2FsbHNEYXNobGV0L015Q2FsbHNEYXNobGV0LnBocCI7fXM6MzY6Ijk0ZTNkZWU4LThmYTMtNTUwNS1mNDJhLTQ3MDljZGM1ZTE4NyI7YToyOntzOjk6ImNsYXNzTmFtZSI7czoxMzoiSm90UGFkRGFzaGxldCI7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU1OiIuL21vZHVsZXMvSG9tZS9EYXNobGV0cy9Kb3RQYWREYXNobGV0L0pvdFBhZERhc2hsZXQucGhwIjt9czozNjoiOTUwNTdhZjQtYjg3Yi1hZmY1LWEzMmEtNDcwOWNkZTFiNTkwIjthOjI6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeU1lZXRpbmdzRGFzaGxldCI7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY3OiIuL21vZHVsZXMvTWVldGluZ3MvRGFzaGxldHMvTXlNZWV0aW5nc0Rhc2hsZXQvTXlNZWV0aW5nc0Rhc2hsZXQucGhwIjt9czozNjoiOTUyNjJhNzQtYmQ0YS0wNjJiLWUwODgtNDcwOWNkYzc0NmQxIjthOjI6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUNhc2VzRGFzaGxldCI7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU4OiIuL21vZHVsZXMvQ2FzZXMvRGFzaGxldHMvTXlDYXNlc0Rhc2hsZXQvTXlDYXNlc0Rhc2hsZXQucGhwIjt9czozNjoiOTU0NzMxOGItNmNkYS1jODczLTc1ZGEtNDcwOWNkYWE0ZGMzIjthOjI6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUxlYWRzRGFzaGxldCI7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU4OiIuL21vZHVsZXMvTGVhZHMvRGFzaGxldHMvTXlMZWFkc0Rhc2hsZXQvTXlMZWFkc0Rhc2hsZXQucGhwIjt9czozNjoiOTU2N2UxMTgtNjE4MC0zYzVjLWM4NmMtNDcwOWNkNjFlNjFiIjthOjI6e3M6OToiY2xhc3NOYW1lIjtzOjIyOiJNeU9wcG9ydHVuaXRpZXNEYXNobGV0IjtzOjEyOiJmaWxlTG9jYXRpb24iO3M6ODI6Ii4vbW9kdWxlcy9PcHBvcnR1bml0aWVzL0Rhc2hsZXRzL015T3Bwb3J0dW5pdGllc0Rhc2hsZXQvTXlPcHBvcnR1bml0aWVzRGFzaGxldC5waHAiO31zOjM2OiI5NTg4YmUyMi1lN2U1LTM0NmUtNmUyYS00NzA5Y2Q0YWViYjkiO2E6Mjp7czo5OiJjbGFzc05hbWUiO3M6Mjk6Ik15UGlwZWxpbmVCeVNhbGVzU3RhZ2VEYXNobGV0IjtzOjEyOiJmaWxlTG9jYXRpb24iO3M6ODk6Ii4vbW9kdWxlcy9DaGFydHMvRGFzaGxldHMvTXlQaXBlbGluZUJ5U2FsZXNTdGFnZURhc2hsZXQvTXlQaXBlbGluZUJ5U2FsZXNTdGFnZURhc2hsZXQucGhwIjt9czozNjoiOTVhOTI2Y2ItY2ViMy0xOTY2LWYxZWEtNDcwOWNkNGM5ZmVhIjthOjI6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeUFjY291bnRzRGFzaGxldCI7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY3OiIuL21vZHVsZXMvQWNjb3VudHMvRGFzaGxldHMvTXlBY2NvdW50c0Rhc2hsZXQvTXlBY2NvdW50c0Rhc2hsZXQucGhwIjt9fXM6NzoiY29sdW1ucyI7YToyOntpOjA7YToyOntzOjU6IndpZHRoIjtzOjM6IjYwJSI7czo4OiJkYXNobGV0cyI7YTo0OntpOjA7czozNjoiOTRjMTU5MTktOWY2ZS05YjFlLTE3ZjEtNDcwOWNkZjRlOWFhIjtpOjE7czozNjoiOTUwNTdhZjQtYjg3Yi1hZmY1LWEzMmEtNDcwOWNkZTFiNTkwIjtpOjI7czozNjoiOTU0NzMxOGItNmNkYS1jODczLTc1ZGEtNDcwOWNkYWE0ZGMzIjtpOjM7czozNjoiOTU4OGJlMjItZTdlNS0zNDZlLTZlMmEtNDcwOWNkNGFlYmI5Ijt9fWk6MTthOjI6e3M6NToid2lkdGgiO3M6MzoiNDAlIjtzOjg6ImRhc2hsZXRzIjthOjQ6e2k6MDtzOjM2OiI5NGUzZGVlOC04ZmEzLTU1MDUtZjQyYS00NzA5Y2RjNWUxODciO2k6MTtzOjM2OiI5NTI2MmE3NC1iZDRhLTA2MmItZTA4OC00NzA5Y2RjNzQ2ZDEiO2k6MjtzOjM2OiI5NTY3ZTExOC02MTgwLTNjNWMtYzg2Yy00NzA5Y2Q2MWU2MWIiO2k6MztzOjM2OiI5NWE5MjZjYi1jZWIzLTE5NjYtZjFlYS00NzA5Y2Q0YzlmZWEiO319fX0='),
('d03ce8da-53b4-6ecd-3c15-46f920c1aec6', 'Ink2_INK', 0, '2007-09-25 14:50:32', '2007-09-25 14:50:32', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('ab3c92eb-2dd8-211e-59a1-46f92087e536', 'Presspricelist2_PRESSPRICELIST', 0, '2007-09-25 14:50:37', '2007-09-25 14:50:37', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('5fe616b6-6e16-0f77-cb60-46f8ec35c8bc', 'ProductEstimate2_PRODUCTESTIMATE', 0, '2007-09-25 11:07:54', '2007-09-25 11:07:54', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('9495ea83-cecb-f849-9306-46f8f6daaf7b', 'Materials2_MATERIAL', 0, '2007-09-25 11:51:02', '2007-09-25 11:51:02', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('6e870b04-98c0-3246-64f5-46f8eb6c4624', 'Estimates2_ESTIMATE', 0, '2007-09-25 11:07:35', '2007-09-25 11:07:35', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('798504ed-61bd-3a7a-852a-46f8caf361b2', 'Accounts', 0, '2007-09-25 08:44:37', '2007-09-25 08:44:51', '1', 'YToxOntzOjE0OiJzdWJwYW5lbExheW91dCI7YToxMTp7aTowO3M6ODoicHJvZHVjdHMiO2k6MTtzOjY6InF1b3RlcyI7aToyO3M6MTA6ImFjdGl2aXRpZXMiO2k6MztzOjc6Imhpc3RvcnkiO2k6NDtzOjg6ImNvbnRhY3RzIjtpOjU7czoxMzoib3Bwb3J0dW5pdGllcyI7aTo2O3M6NToibGVhZHMiO2k6NztzOjU6ImNhc2VzIjtpOjg7czo4OiJhY2NvdW50cyI7aTo5O3M6NDoiYnVncyI7aToxMDtzOjc6InByb2plY3QiO319'),
('ac9a38c5-a910-4813-d4f4-46f8ce553e46', 'Calls2_CALL', 0, '2007-09-25 09:03:30', '2007-09-25 09:03:30', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('dd48a557-f2b4-9786-3afa-46f8cf8cfa16', 'Meetings2_MEETING', 0, '2007-09-25 09:05:33', '2007-09-25 09:05:33', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('2c19365b-c112-eb0d-dbd4-46f8d0f17208', 'Products', 0, '2007-09-25 09:09:05', '2007-10-11 12:42:37', '1', 'YToxOntzOjE0OiJzdWJwYW5lbExheW91dCI7YTo3OntpOjA7czoxNzoicHJvZHVjdGNvbXBvbmVudHMiO2k6MTtzOjE3OiJwcm9kdWN0b3BlcmF0aW9ucyI7aToyO3M6MTY6InByb2R1Y3Rlc3RpbWF0ZXMiO2k6MztzOjEwOiJhY3Rpdml0aWVzIjtpOjQ7czo3OiJoaXN0b3J5IjtpOjU7czo4OiJjb250YWN0cyI7aTo2O3M6MTM6Im9wcG9ydHVuaXRpZXMiO319'),
('628f9315-eb91-a5ff-4b25-46f8c86db9bc', 'Accounts2_ACCOUNT', 0, '2007-09-25 08:37:22', '2007-09-25 08:37:22', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('9546e33a-a677-5044-53b6-46f8c5439b70', 'ProductComponents2_PRODUCTCOMPONENTS', 0, '2007-09-25 08:24:08', '2007-09-25 08:24:08', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('8c8aa749-b5c0-a7a8-2e6d-46f8b9048353', 'Home2_ACCOUNT', 0, '2007-09-25 07:33:26', '2007-10-11 12:42:37', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('7eb3e900-2f5a-391d-bc70-46f8b9ef4c6d', 'Products2_PRODUCTS', 0, '2007-09-25 07:33:42', '2007-09-25 07:33:42', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('8a5545a3-0110-73e6-b899-46f8b9841405', 'Home2_OPPORTUNITY', 0, '2007-09-25 07:33:26', '2007-10-11 12:42:37', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMToiZGF0ZV9jbG9zZWQiO3M6OToic29ydE9yZGVyIjtzOjM6IkFTQyI7fX0='),
('881d8302-83d0-1567-7484-46f8b945a5f4', 'Home2_CASE', 0, '2007-09-25 07:33:26', '2007-10-11 12:42:37', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('7fbfbdf6-fc6f-f224-5b22-46f8b92a82c0', 'Home2_LEAD', 0, '2007-09-25 07:33:26', '2007-10-11 12:42:37', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('7d8eb34d-2619-bad8-796c-46f8b91058a2', 'Home2_MEETING', 0, '2007-09-25 07:33:26', '2007-10-11 12:42:37', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('7b5943d5-6de3-50b7-fdac-46f8b93d6d1d', 'Home2_CALL', 0, '2007-09-25 07:33:26', '2007-10-11 12:42:37', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('7738c49d-d27c-b07a-19b2-46f37dcc2a51', 'global', 0, '2007-09-21 08:15:03', '2007-09-21 08:17:19', '726c1497-7af4-510a-d56e-46f37dc5a170', 'YTo0MTp7czo4OiJncmlkbGluZSI7czozOiJvZmYiO3M6MTI6Im1haWxtZXJnZV9vbiI7czozOiJvZmYiO3M6ODoibWF4X3RhYnMiO3M6MjoiMTIiO3M6MTE6Im1heF9zdWJ0YWJzIjtzOjI6IjEyIjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtzOjA6IiI7czoxNDoic3dhcF9zaG9ydGN1dHMiO3M6MDoiIjtzOjEzOiJzdWJwYW5lbF90YWJzIjtzOjI6Im9uIjtzOjE0OiJzdWJwYW5lbF9saW5rcyI7czowOiIiO3M6MTk6Im5hdmlnYXRpb25fcGFyYWRpZ20iO3M6MToibSI7czoxMjoiZGlzcGxheV90YWJzIjthOjM3OntpOjA7czo0OiJIb21lIjtpOjE7czo3OiJpRnJhbWVzIjtpOjI7czo4OiJDYWxlbmRhciI7aTozO3M6MTA6IkFjdGl2aXRpZXMiO2k6NDtzOjg6IkNvbnRhY3RzIjtpOjU7czo4OiJBY2NvdW50cyI7aTo2O3M6NToiTGVhZHMiO2k6NztzOjEzOiJPcHBvcnR1bml0aWVzIjtpOjg7czo1OiJDYXNlcyI7aTo5O3M6NDoiQnVncyI7aToxMDtzOjk6IkRvY3VtZW50cyI7aToxMTtzOjY6IkVtYWlscyI7aToxMjtzOjk6IkNhbXBhaWducyI7aToxMztzOjc6IlByb2plY3QiO2k6MTQ7czo4OiJQcm9kdWN0cyI7aToxNTtzOjk6IlN1cHBsaWVycyI7aToxNjtzOjU6IkZlZWRzIjtpOjE3O3M6ODoiU3VwcGxpZXMiO2k6MTg7czo2OiJQcmljZXMiO2k6MTk7czoxNDoiUHVyY2hhc2VPcmRlcnMiO2k6MjA7czo5OiJNYXRlcmlhbHMiO2k6MjE7czo2OiJRdW90ZXMiO2k6MjI7czoxMDoiT3BlcmF0aW9ucyI7aToyMztzOjE3OiJQcm9kdWN0T3BlcmF0aW9ucyI7aToyNDtzOjg6Ik1hY2hpbmVzIjtpOjI1O3M6OToiRXN0aW1hdGVzIjtpOjI2O3M6MTE6IlByb2R1Y3RMb2dzIjtpOjI3O3M6MzoiSW5rIjtpOjI4O3M6MTI6IlByZXNzbWFjaGluZSI7aToyOTtzOjE0OiJQcmVzc3ByaWNlbGlzdCI7aTozMDtzOjEwOiJQYXBlcndhc3RlIjtpOjMxO3M6NToiUHJlc3MiO2k6MzI7czo4OiJSYXRlZmlsbSI7aTozMztzOjk6IlJhdGVwbGF0ZSI7aTozNDtzOjE3OiJDb21wb25lbnRFc3RpbWF0ZSI7aTozNTtzOjE1OiJQcm9kdWN0RXN0aW1hdGUiO2k6MzY7czo5OiJEYXNoYm9hcmQiO31zOjk6ImhpZGVfdGFicyI7YTowOnt9czoxMToicmVtb3ZlX3RhYnMiO2E6MDp7fXM6Nzoibm9fb3BwcyI7czozOiJvZmYiO3M6MTM6InJlbWluZGVyX3RpbWUiO2k6LTE7czo4OiJ0aW1lem9uZSI7czoxMzoiRXVyb3BlL0F0aGVucyI7czoyOiJ1dCI7czoxOiIwIjtzOjg6ImN1cnJlbmN5IjtzOjM6Ii05OSI7czozNToiZGVmYXVsdF9jdXJyZW5jeV9zaWduaWZpY2FudF9kaWdpdHMiO3M6MToiMiI7czoxMToibnVtX2dycF9zZXAiO3M6MToiLCI7czo3OiJkZWNfc2VwIjtzOjE6Ii4iO3M6NToiZGF0ZWYiO3M6NToiWS1tLWQiO3M6NToidGltZWYiO3M6MzoiSDppIjtzOjEzOiJtYWlsX2Zyb21uYW1lIjtzOjA6IiI7czoxNjoibWFpbF9mcm9tYWRkcmVzcyI7czowOiIiO3M6MTM6Im1haWxfc2VuZHR5cGUiO3M6ODoic2VuZG1haWwiO3M6MTU6Im1haWxfc210cHNlcnZlciI7czowOiIiO3M6MTM6Im1haWxfc210cHBvcnQiO3M6MjoiMjUiO3M6MTM6Im1haWxfc210cHVzZXIiO3M6MDoiIjtzOjEzOiJtYWlsX3NtdHBwYXNzIjtzOjA6IiI7czoyNjoiZGVmYXVsdF9sb2NhbGVfbmFtZV9mb3JtYXQiO3M6NToicyBmIGwiO3M6MTY6ImV4cG9ydF9kZWxpbWl0ZXIiO3M6MToiLCI7czoyMjoiZGVmYXVsdF9leHBvcnRfY2hhcnNldCI7czo2OiJDUDEyNTIiO3M6MTQ6InVzZV9yZWFsX25hbWVzIjtzOjM6Im9mZiI7czoxNzoibWFpbF9zbXRwYXV0aF9yZXEiO3M6MDoiIjtzOjE3OiJzaWduYXR1cmVfZGVmYXVsdCI7czowOiIiO3M6MTc6InNpZ25hdHVyZV9wcmVwZW5kIjtzOjA6IiI7czoxNToiZW1haWxfbGlua190eXBlIjtzOjA6IiI7czoxNzoiZW1haWxfc2hvd19jb3VudHMiO2k6MDtzOjE5OiJlbWFpbF9lZGl0b3Jfb3B0aW9uIjtzOjA6IiI7czoyMToiZGVmYXVsdF9lbWFpbF9jaGFyc2V0IjtzOjU6IlVURi04IjtzOjIwOiJjYWxlbmRhcl9wdWJsaXNoX2tleSI7czowOiIiO30='),
('7cf06093-00f5-4b9c-21a6-4709cd118c3d', 'Home2_OPPORTUNITY', 0, '2007-10-08 06:24:27', '2007-10-08 06:24:27', '177bd6bb-665d-cc61-4d82-45ab422290d3', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMToiZGF0ZV9jbG9zZWQiO3M6OToic29ydE9yZGVyIjtzOjM6IkFTQyI7fX0='),
('1912df08-dea5-a69a-1fa9-46f37e5bbbe9', 'global', 0, '2007-09-21 08:19:59', '2007-10-15 07:43:10', '141f1064-8e78-f58f-ee5f-46f37e56bb1a', 'YTo0Mjp7czo4OiJncmlkbGluZSI7czozOiJvZmYiO3M6MTI6Im1haWxtZXJnZV9vbiI7czozOiJvZmYiO3M6ODoibWF4X3RhYnMiO3M6MjoiMTIiO3M6MTE6Im1heF9zdWJ0YWJzIjtzOjI6IjEyIjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtzOjA6IiI7czoxNDoic3dhcF9zaG9ydGN1dHMiO3M6MDoiIjtzOjEzOiJzdWJwYW5lbF90YWJzIjtzOjI6Im9uIjtzOjE0OiJzdWJwYW5lbF9saW5rcyI7czowOiIiO3M6MTk6Im5hdmlnYXRpb25fcGFyYWRpZ20iO3M6MToibSI7czoxMjoiZGlzcGxheV90YWJzIjthOjM3OntpOjA7czo0OiJIb21lIjtpOjE7czo3OiJpRnJhbWVzIjtpOjI7czo4OiJDYWxlbmRhciI7aTozO3M6MTA6IkFjdGl2aXRpZXMiO2k6NDtzOjg6IkNvbnRhY3RzIjtpOjU7czo4OiJBY2NvdW50cyI7aTo2O3M6NToiTGVhZHMiO2k6NztzOjEzOiJPcHBvcnR1bml0aWVzIjtpOjg7czo1OiJDYXNlcyI7aTo5O3M6NDoiQnVncyI7aToxMDtzOjk6IkRvY3VtZW50cyI7aToxMTtzOjY6IkVtYWlscyI7aToxMjtzOjk6IkNhbXBhaWducyI7aToxMztzOjc6IlByb2plY3QiO2k6MTQ7czo4OiJQcm9kdWN0cyI7aToxNTtzOjk6IlN1cHBsaWVycyI7aToxNjtzOjU6IkZlZWRzIjtpOjE3O3M6ODoiU3VwcGxpZXMiO2k6MTg7czo2OiJQcmljZXMiO2k6MTk7czoxNDoiUHVyY2hhc2VPcmRlcnMiO2k6MjA7czo5OiJNYXRlcmlhbHMiO2k6MjE7czo2OiJRdW90ZXMiO2k6MjI7czoxMDoiT3BlcmF0aW9ucyI7aToyMztzOjE3OiJQcm9kdWN0T3BlcmF0aW9ucyI7aToyNDtzOjg6Ik1hY2hpbmVzIjtpOjI1O3M6OToiRXN0aW1hdGVzIjtpOjI2O3M6MTE6IlByb2R1Y3RMb2dzIjtpOjI3O3M6MzoiSW5rIjtpOjI4O3M6MTI6IlByZXNzbWFjaGluZSI7aToyOTtzOjE0OiJQcmVzc3ByaWNlbGlzdCI7aTozMDtzOjEwOiJQYXBlcndhc3RlIjtpOjMxO3M6NToiUHJlc3MiO2k6MzI7czo4OiJSYXRlZmlsbSI7aTozMztzOjk6IlJhdGVwbGF0ZSI7aTozNDtzOjE3OiJDb21wb25lbnRFc3RpbWF0ZSI7aTozNTtzOjE1OiJQcm9kdWN0RXN0aW1hdGUiO2k6MzY7czo5OiJEYXNoYm9hcmQiO31zOjk6ImhpZGVfdGFicyI7YTowOnt9czoxMToicmVtb3ZlX3RhYnMiO2E6MDp7fXM6Nzoibm9fb3BwcyI7czozOiJvZmYiO3M6MTM6InJlbWluZGVyX3RpbWUiO2k6LTE7czo4OiJ0aW1lem9uZSI7czoxMzoiRXVyb3BlL0F0aGVucyI7czoyOiJ1dCI7aToxO3M6ODoiY3VycmVuY3kiO3M6MzoiLTk5IjtzOjM1OiJkZWZhdWx0X2N1cnJlbmN5X3NpZ25pZmljYW50X2RpZ2l0cyI7czoxOiIyIjtzOjExOiJudW1fZ3JwX3NlcCI7czoxOiIsIjtzOjc6ImRlY19zZXAiO3M6MToiLiI7czo1OiJkYXRlZiI7czo1OiJZLW0tZCI7czo1OiJ0aW1lZiI7czozOiJIOmkiO3M6MTM6Im1haWxfZnJvbW5hbWUiO3M6MTI6IkVtaWwgS29yYWxvdiI7czoxNjoibWFpbF9mcm9tYWRkcmVzcyI7czowOiIiO3M6MTM6Im1haWxfc2VuZHR5cGUiO3M6ODoic2VuZG1haWwiO3M6MTU6Im1haWxfc210cHNlcnZlciI7czowOiIiO3M6MTM6Im1haWxfc210cHBvcnQiO3M6MjoiMjUiO3M6MTM6Im1haWxfc210cHVzZXIiO3M6MDoiIjtzOjEzOiJtYWlsX3NtdHBwYXNzIjtzOjA6IiI7czoyNjoiZGVmYXVsdF9sb2NhbGVfbmFtZV9mb3JtYXQiO3M6NToicyBmIGwiO3M6MTY6ImV4cG9ydF9kZWxpbWl0ZXIiO3M6MToiLCI7czoyMjoiZGVmYXVsdF9leHBvcnRfY2hhcnNldCI7czo2OiJDUDEyNTIiO3M6MTQ6InVzZV9yZWFsX25hbWVzIjtzOjM6Im9mZiI7czoxNzoibWFpbF9zbXRwYXV0aF9yZXEiO3M6MDoiIjtzOjE3OiJzaWduYXR1cmVfZGVmYXVsdCI7czowOiIiO3M6MTc6InNpZ25hdHVyZV9wcmVwZW5kIjtzOjA6IiI7czoxNToiZW1haWxfbGlua190eXBlIjtzOjA6IiI7czoxNzoiZW1haWxfc2hvd19jb3VudHMiO2k6MDtzOjE5OiJlbWFpbF9lZGl0b3Jfb3B0aW9uIjtzOjA6IiI7czoyMToiZGVmYXVsdF9lbWFpbF9jaGFyc2V0IjtzOjU6IlVURi04IjtzOjIwOiJjYWxlbmRhcl9wdWJsaXNoX2tleSI7czowOiIiO3M6MTI6InVzZXJQcml2R3VpZCI7czozNjoiOWJiNTI4YTAtNjQwNy0xNDVmLTY0MWEtNDcxMzFhNzUxNWM1Ijt9'),
('e41b122a-d1f7-3a30-794f-46f37fac7d06', 'global', 0, '2007-09-21 08:21:56', '2007-10-15 07:39:17', 'd7b7db22-0179-aa25-3a55-46f37f9d8175', 'YTo0Mjp7czo4OiJncmlkbGluZSI7czozOiJvZmYiO3M6MTI6Im1haWxtZXJnZV9vbiI7czozOiJvZmYiO3M6ODoibWF4X3RhYnMiO3M6MjoiMTIiO3M6MTE6Im1heF9zdWJ0YWJzIjtzOjI6IjEyIjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtzOjA6IiI7czoxNDoic3dhcF9zaG9ydGN1dHMiO3M6MDoiIjtzOjEzOiJzdWJwYW5lbF90YWJzIjtzOjI6Im9uIjtzOjE0OiJzdWJwYW5lbF9saW5rcyI7czowOiIiO3M6MTk6Im5hdmlnYXRpb25fcGFyYWRpZ20iO3M6MToibSI7czoxMjoiZGlzcGxheV90YWJzIjthOjM3OntpOjA7czo0OiJIb21lIjtpOjE7czo3OiJpRnJhbWVzIjtpOjI7czo4OiJDYWxlbmRhciI7aTozO3M6MTA6IkFjdGl2aXRpZXMiO2k6NDtzOjg6IkNvbnRhY3RzIjtpOjU7czo4OiJBY2NvdW50cyI7aTo2O3M6NToiTGVhZHMiO2k6NztzOjEzOiJPcHBvcnR1bml0aWVzIjtpOjg7czo1OiJDYXNlcyI7aTo5O3M6NDoiQnVncyI7aToxMDtzOjk6IkRvY3VtZW50cyI7aToxMTtzOjY6IkVtYWlscyI7aToxMjtzOjk6IkNhbXBhaWducyI7aToxMztzOjc6IlByb2plY3QiO2k6MTQ7czo4OiJQcm9kdWN0cyI7aToxNTtzOjk6IlN1cHBsaWVycyI7aToxNjtzOjU6IkZlZWRzIjtpOjE3O3M6ODoiU3VwcGxpZXMiO2k6MTg7czo2OiJQcmljZXMiO2k6MTk7czoxNDoiUHVyY2hhc2VPcmRlcnMiO2k6MjA7czo5OiJNYXRlcmlhbHMiO2k6MjE7czo2OiJRdW90ZXMiO2k6MjI7czoxMDoiT3BlcmF0aW9ucyI7aToyMztzOjE3OiJQcm9kdWN0T3BlcmF0aW9ucyI7aToyNDtzOjg6Ik1hY2hpbmVzIjtpOjI1O3M6OToiRXN0aW1hdGVzIjtpOjI2O3M6MTE6IlByb2R1Y3RMb2dzIjtpOjI3O3M6MzoiSW5rIjtpOjI4O3M6MTI6IlByZXNzbWFjaGluZSI7aToyOTtzOjE0OiJQcmVzc3ByaWNlbGlzdCI7aTozMDtzOjEwOiJQYXBlcndhc3RlIjtpOjMxO3M6NToiUHJlc3MiO2k6MzI7czo4OiJSYXRlZmlsbSI7aTozMztzOjk6IlJhdGVwbGF0ZSI7aTozNDtzOjE3OiJDb21wb25lbnRFc3RpbWF0ZSI7aTozNTtzOjE1OiJQcm9kdWN0RXN0aW1hdGUiO2k6MzY7czo5OiJEYXNoYm9hcmQiO31zOjk6ImhpZGVfdGFicyI7YTowOnt9czoxMToicmVtb3ZlX3RhYnMiO2E6MDp7fXM6Nzoibm9fb3BwcyI7czozOiJvZmYiO3M6MTM6InJlbWluZGVyX3RpbWUiO2k6LTE7czo4OiJ0aW1lem9uZSI7czoxMzoiRXVyb3BlL0F0aGVucyI7czoyOiJ1dCI7aToxO3M6ODoiY3VycmVuY3kiO3M6MzoiLTk5IjtzOjM1OiJkZWZhdWx0X2N1cnJlbmN5X3NpZ25pZmljYW50X2RpZ2l0cyI7czoxOiIyIjtzOjExOiJudW1fZ3JwX3NlcCI7czoxOiIsIjtzOjc6ImRlY19zZXAiO3M6MToiLiI7czo1OiJkYXRlZiI7czo1OiJZLW0tZCI7czo1OiJ0aW1lZiI7czozOiJIOmkiO3M6MTM6Im1haWxfZnJvbW5hbWUiO3M6MTM6IlZlcmEgVmFsa292YSAiO3M6MTY6Im1haWxfZnJvbWFkZHJlc3MiO3M6MDoiIjtzOjEzOiJtYWlsX3NlbmR0eXBlIjtzOjg6InNlbmRtYWlsIjtzOjE1OiJtYWlsX3NtdHBzZXJ2ZXIiO3M6MDoiIjtzOjEzOiJtYWlsX3NtdHBwb3J0IjtzOjI6IjI1IjtzOjEzOiJtYWlsX3NtdHB1c2VyIjtzOjA6IiI7czoxMzoibWFpbF9zbXRwcGFzcyI7czowOiIiO3M6MjY6ImRlZmF1bHRfbG9jYWxlX25hbWVfZm9ybWF0IjtzOjU6InMgZiBsIjtzOjE2OiJleHBvcnRfZGVsaW1pdGVyIjtzOjE6IiwiO3M6MjI6ImRlZmF1bHRfZXhwb3J0X2NoYXJzZXQiO3M6NjoiQ1AxMjUyIjtzOjE0OiJ1c2VfcmVhbF9uYW1lcyI7czozOiJvZmYiO3M6MTc6Im1haWxfc210cGF1dGhfcmVxIjtzOjA6IiI7czoxNzoic2lnbmF0dXJlX2RlZmF1bHQiO3M6MDoiIjtzOjE3OiJzaWduYXR1cmVfcHJlcGVuZCI7czowOiIiO3M6MTU6ImVtYWlsX2xpbmtfdHlwZSI7czowOiIiO3M6MTc6ImVtYWlsX3Nob3dfY291bnRzIjtpOjA7czoxOToiZW1haWxfZWRpdG9yX29wdGlvbiI7czowOiIiO3M6MjE6ImRlZmF1bHRfZW1haWxfY2hhcnNldCI7czo1OiJVVEYtOCI7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MDoiIjtzOjEyOiJ1c2VyUHJpdkd1aWQiO3M6MzY6ImRkYWQ0YjAxLTUzYjktZWRlMS0yMDIzLTQ3MTMxOTMwNjRlNSI7fQ=='),
('e0559c40-288a-fbb9-b0cf-46f37fa74913', 'global', 0, '2007-09-21 08:24:00', '2007-10-11 12:49:04', 'db72618d-35da-19ad-1b67-46f37f819f41', 'YTo1MDp7czo4OiJncmlkbGluZSI7czozOiJvZmYiO3M6MTI6Im1haWxtZXJnZV9vbiI7czozOiJvZmYiO3M6ODoibWF4X3RhYnMiO3M6MjoiMTIiO3M6MTE6Im1heF9zdWJ0YWJzIjtzOjI6IjEyIjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtzOjA6IiI7czoxNDoic3dhcF9zaG9ydGN1dHMiO3M6MDoiIjtzOjEzOiJzdWJwYW5lbF90YWJzIjtzOjI6Im9uIjtzOjE0OiJzdWJwYW5lbF9saW5rcyI7czoyOiJvbiI7czoxOToibmF2aWdhdGlvbl9wYXJhZGlnbSI7czoyOiJnbSI7czoxMjoiZGlzcGxheV90YWJzIjthOjM1OntpOjA7czo0OiJIb21lIjtpOjE7czo3OiJpRnJhbWVzIjtpOjI7czo4OiJQcm9kdWN0cyI7aTozO3M6ODoiQ2FsZW5kYXIiO2k6NDtzOjEwOiJBY3Rpdml0aWVzIjtpOjU7czo4OiJDb250YWN0cyI7aTo2O3M6ODoiQWNjb3VudHMiO2k6NztzOjU6IkxlYWRzIjtpOjg7czoxMzoiT3Bwb3J0dW5pdGllcyI7aTo5O3M6NToiQ2FzZXMiO2k6MTA7czo0OiJCdWdzIjtpOjExO3M6OToiRG9jdW1lbnRzIjtpOjEyO3M6NjoiRW1haWxzIjtpOjEzO3M6OToiQ2FtcGFpZ25zIjtpOjE0O3M6NzoiUHJvamVjdCI7aToxNTtzOjk6IlN1cHBsaWVycyI7aToxNjtzOjU6IkZlZWRzIjtpOjE3O3M6ODoiU3VwcGxpZXMiO2k6MTg7czo2OiJQcmljZXMiO2k6MTk7czoxNDoiUHVyY2hhc2VPcmRlcnMiO2k6MjA7czo5OiJNYXRlcmlhbHMiO2k6MjE7czo2OiJRdW90ZXMiO2k6MjI7czoxMDoiT3BlcmF0aW9ucyI7aToyMztzOjE3OiJQcm9kdWN0T3BlcmF0aW9ucyI7aToyNDtzOjExOiJQcm9kdWN0TG9ncyI7aToyNTtzOjM6IkluayI7aToyNjtzOjEyOiJQcmVzc21hY2hpbmUiO2k6Mjc7czoxNDoiUHJlc3NwcmljZWxpc3QiO2k6Mjg7czoxMDoiUGFwZXJ3YXN0ZSI7aToyOTtzOjU6IlByZXNzIjtpOjMwO3M6ODoiUmF0ZWZpbG0iO2k6MzE7czo5OiJSYXRlcGxhdGUiO2k6MzI7czoxNzoiQ29tcG9uZW50RXN0aW1hdGUiO2k6MzM7czoxNToiUHJvZHVjdEVzdGltYXRlIjtpOjM0O3M6OToiRGFzaGJvYXJkIjt9czo5OiJoaWRlX3RhYnMiO2E6Mjp7aTowO3M6ODoiTWFjaGluZXMiO2k6MTtzOjk6IkVzdGltYXRlcyI7fXM6MTE6InJlbW92ZV90YWJzIjthOjA6e31zOjc6Im5vX29wcHMiO3M6Mzoib2ZmIjtzOjEzOiJyZW1pbmRlcl90aW1lIjtpOi0xO3M6ODoidGltZXpvbmUiO3M6MTI6IkV1cm9wZS9Tb2ZpYSI7czoyOiJ1dCI7czoxOiIxIjtzOjg6ImN1cnJlbmN5IjtzOjM6Ii05OSI7czozNToiZGVmYXVsdF9jdXJyZW5jeV9zaWduaWZpY2FudF9kaWdpdHMiO3M6MToiMiI7czoxMToibnVtX2dycF9zZXAiO3M6MToiLCI7czo3OiJkZWNfc2VwIjtzOjE6Ii4iO3M6NToiZGF0ZWYiO3M6NToiWS1tLWQiO3M6NToidGltZWYiO3M6MzoiSDppIjtzOjEzOiJtYWlsX2Zyb21uYW1lIjtzOjExOiJOaWNrIFJhY2hldiI7czoxNjoibWFpbF9mcm9tYWRkcmVzcyI7czowOiIiO3M6MTM6Im1haWxfc2VuZHR5cGUiO3M6ODoic2VuZG1haWwiO3M6MTU6Im1haWxfc210cHNlcnZlciI7czowOiIiO3M6MTM6Im1haWxfc210cHBvcnQiO3M6MjoiMjUiO3M6MTM6Im1haWxfc210cHVzZXIiO3M6MDoiIjtzOjEzOiJtYWlsX3NtdHBwYXNzIjtzOjA6IiI7czoyNjoiZGVmYXVsdF9sb2NhbGVfbmFtZV9mb3JtYXQiO3M6NToicyBmIGwiO3M6MTY6ImV4cG9ydF9kZWxpbWl0ZXIiO3M6MToiLCI7czoyMjoiZGVmYXVsdF9leHBvcnRfY2hhcnNldCI7czo2OiJDUDEyNTIiO3M6MTQ6InVzZV9yZWFsX25hbWVzIjtzOjM6Im9mZiI7czoxNzoibWFpbF9zbXRwYXV0aF9yZXEiO3M6MDoiIjtzOjE3OiJzaWduYXR1cmVfZGVmYXVsdCI7czowOiIiO3M6MTc6InNpZ25hdHVyZV9wcmVwZW5kIjtzOjA6IiI7czoxNToiZW1haWxfbGlua190eXBlIjtzOjA6IiI7czoxNzoiZW1haWxfc2hvd19jb3VudHMiO2k6MDtzOjE5OiJlbWFpbF9lZGl0b3Jfb3B0aW9uIjtzOjA6IiI7czoyMToiZGVmYXVsdF9lbWFpbF9jaGFyc2V0IjtzOjU6IlVURi04IjtzOjIwOiJjYWxlbmRhcl9wdWJsaXNoX2tleSI7czowOiIiO3M6MTI6InVzZXJQcml2R3VpZCI7czozNjoiMmY5NTk3Y2QtZWEyMi02NGQyLTFhMWEtNDcwOWRiNWU0NTc2IjtzOjI1OiJBY2NvdW50c19BQ0NPVU5UX09SREVSX0JZIjtzOjQ6Im5hbWUiO3M6MjE6IkVtYWlsc19FTUFJTF9PUkRFUl9CWSI7czoyODoiZGF0ZV9zZW50LCBkYXRlX2VudGVyZWQgREVTQyI7czoxOToiVXNlcnNfVVNFUl9PUkRFUl9CWSI7czo5OiJ1c2VyX25hbWUiO3M6MjU6IkNvbnRhY3RzX0NPTlRBQ1RfT1JERVJfQlkiO3M6Mzk6ImNvbnRhY3RzLmZpcnN0X25hbWUsIGNvbnRhY3RzLmxhc3RfbmFtZSI7czoyMToiUXVvdGVzX1FVT1RFX09SREVSX0JZIjtzOjE4OiJkYXRlX21vZGlmaWVkIGRlc2MiO3M6Mzc6IlB1cmNoYXNlT3JkZXJzX1BVUkNIQVNFT1JERVJfT1JERVJfQlkiO3M6MTg6ImRhdGVfbW9kaWZpZWQgZGVzYyI7czoyNDoiU3VwcGxpZXNfU1VQUExZX09SREVSX0JZIjtzOjE4OiJkYXRlX21vZGlmaWVkIGRlc2MiO3M6Mjc6IkVtcGxveWVlc19FTVBMT1lFRV9PUkRFUl9CWSI7czozMzoidXNlcnMubGFzdF9uYW1lLCB1c2Vycy5maXJzdF9uYW1lIjt9'),
('6af9ccaf-c0e6-0c87-f5c7-4709cd4e7198', 'Home2_CALL', 0, '2007-10-08 06:24:27', '2007-10-08 06:24:27', '177bd6bb-665d-cc61-4d82-45ab422290d3', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('6ff2bbc4-c4a2-8b2f-03df-4709cdfc1f06', 'Home2_MEETING', 0, '2007-10-08 06:24:27', '2007-10-08 06:24:27', '177bd6bb-665d-cc61-4d82-45ab422290d3', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('723063ec-3195-c33d-e229-4709cd58b78a', 'Home2_LEAD', 0, '2007-10-08 06:24:27', '2007-10-08 06:24:27', '177bd6bb-665d-cc61-4d82-45ab422290d3', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('7acb15d5-ebc0-c5c9-432f-4709cdb52c18', 'Home2_CASE', 0, '2007-10-08 06:24:27', '2007-10-08 06:24:27', '177bd6bb-665d-cc61-4d82-45ab422290d3', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('431c6bb4-cf99-cc23-ca4a-46f7a2e01731', 'global', 0, '2007-09-24 11:43:05', '2007-10-08 06:36:40', '177bd6bb-665d-cc61-4d82-45ab422290d3', 'YTo0NTp7czo4OiJ0aW1lem9uZSI7czoxMjoiRXVyb3BlL1NvZmlhIjtzOjg6ImdyaWRsaW5lIjtzOjM6Im9mZiI7czoxMjoibWFpbG1lcmdlX29uIjtzOjM6Im9mZiI7czo4OiJtYXhfdGFicyI7czoyOiIxMiI7czoxMToibWF4X3N1YnRhYnMiO3M6MjoiMTIiO3M6MTY6InN3YXBfbGFzdF92aWV3ZWQiO3M6MDoiIjtzOjE0OiJzd2FwX3Nob3J0Y3V0cyI7czowOiIiO3M6MTM6InN1YnBhbmVsX3RhYnMiO3M6Mjoib24iO3M6MTQ6InN1YnBhbmVsX2xpbmtzIjtzOjA6IiI7czoxOToibmF2aWdhdGlvbl9wYXJhZGlnbSI7czoxOiJtIjtzOjEyOiJkaXNwbGF5X3RhYnMiO2E6Mzc6e2k6MDtzOjQ6IkhvbWUiO2k6MTtzOjc6ImlGcmFtZXMiO2k6MjtzOjg6IkNhbGVuZGFyIjtpOjM7czoxMDoiQWN0aXZpdGllcyI7aTo0O3M6ODoiQ29udGFjdHMiO2k6NTtzOjg6IkFjY291bnRzIjtpOjY7czo1OiJMZWFkcyI7aTo3O3M6MTM6Ik9wcG9ydHVuaXRpZXMiO2k6ODtzOjU6IkNhc2VzIjtpOjk7czo0OiJCdWdzIjtpOjEwO3M6OToiRG9jdW1lbnRzIjtpOjExO3M6NjoiRW1haWxzIjtpOjEyO3M6OToiQ2FtcGFpZ25zIjtpOjEzO3M6NzoiUHJvamVjdCI7aToxNDtzOjg6IlByb2R1Y3RzIjtpOjE1O3M6OToiU3VwcGxpZXJzIjtpOjE2O3M6NToiRmVlZHMiO2k6MTc7czo4OiJTdXBwbGllcyI7aToxODtzOjY6IlByaWNlcyI7aToxOTtzOjE0OiJQdXJjaGFzZU9yZGVycyI7aToyMDtzOjk6Ik1hdGVyaWFscyI7aToyMTtzOjY6IlF1b3RlcyI7aToyMjtzOjEwOiJPcGVyYXRpb25zIjtpOjIzO3M6MTc6IlByb2R1Y3RPcGVyYXRpb25zIjtpOjI0O3M6ODoiTWFjaGluZXMiO2k6MjU7czo5OiJFc3RpbWF0ZXMiO2k6MjY7czoxMToiUHJvZHVjdExvZ3MiO2k6Mjc7czozOiJJbmsiO2k6Mjg7czoxMjoiUHJlc3NtYWNoaW5lIjtpOjI5O3M6MTQ6IlByZXNzcHJpY2VsaXN0IjtpOjMwO3M6MTA6IlBhcGVyd2FzdGUiO2k6MzE7czo1OiJQcmVzcyI7aTozMjtzOjg6IlJhdGVmaWxtIjtpOjMzO3M6OToiUmF0ZXBsYXRlIjtpOjM0O3M6MTc6IkNvbXBvbmVudEVzdGltYXRlIjtpOjM1O3M6MTU6IlByb2R1Y3RFc3RpbWF0ZSI7aTozNjtzOjk6IkRhc2hib2FyZCI7fXM6OToiaGlkZV90YWJzIjthOjA6e31zOjExOiJyZW1vdmVfdGFicyI7YTowOnt9czo3OiJub19vcHBzIjtzOjM6Im9mZiI7czoxMzoicmVtaW5kZXJfdGltZSI7aTotMTtzOjI6InV0IjtpOjE7czo4OiJjdXJyZW5jeSI7czozOiItOTkiO3M6MzU6ImRlZmF1bHRfY3VycmVuY3lfc2lnbmlmaWNhbnRfZGlnaXRzIjtzOjE6IjIiO3M6MTE6Im51bV9ncnBfc2VwIjtzOjE6IiwiO3M6NzoiZGVjX3NlcCI7czoxOiIuIjtzOjU6ImRhdGVmIjtzOjU6IlktbS1kIjtzOjU6InRpbWVmIjtzOjM6Ikg6aSI7czoxMzoibWFpbF9mcm9tbmFtZSI7czowOiIiO3M6MTY6Im1haWxfZnJvbWFkZHJlc3MiO3M6MDoiIjtzOjEzOiJtYWlsX3NlbmR0eXBlIjtzOjg6InNlbmRtYWlsIjtzOjE1OiJtYWlsX3NtdHBzZXJ2ZXIiO3M6MDoiIjtzOjEzOiJtYWlsX3NtdHBwb3J0IjtzOjI6IjI1IjtzOjEzOiJtYWlsX3NtdHB1c2VyIjtzOjI5OiJwZXRhci5wZXNoZXZAa2FydGluZy16b25lLm5ldCI7czoxMzoibWFpbF9zbXRwcGFzcyI7czowOiIiO3M6MjY6ImRlZmF1bHRfbG9jYWxlX25hbWVfZm9ybWF0IjtzOjU6InMgZiBsIjtzOjE2OiJleHBvcnRfZGVsaW1pdGVyIjtzOjE6IiwiO3M6MjI6ImRlZmF1bHRfZXhwb3J0X2NoYXJzZXQiO3M6NjoiQ1AxMjUyIjtzOjE0OiJ1c2VfcmVhbF9uYW1lcyI7czozOiJvZmYiO3M6MTc6Im1haWxfc210cGF1dGhfcmVxIjtzOjA6IiI7czoxNzoic2lnbmF0dXJlX2RlZmF1bHQiO3M6MDoiIjtzOjE3OiJzaWduYXR1cmVfcHJlcGVuZCI7czowOiIiO3M6MTU6ImVtYWlsX2xpbmtfdHlwZSI7czowOiIiO3M6MTc6ImVtYWlsX3Nob3dfY291bnRzIjtpOjA7czoxOToiZW1haWxfZWRpdG9yX29wdGlvbiI7czowOiIiO3M6MjE6ImRlZmF1bHRfZW1haWxfY2hhcnNldCI7czo1OiJVVEYtOCI7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MDoiIjtzOjEyOiJ1c2VyUHJpdkd1aWQiO3M6MzY6ImY0MTM0ZDhkLWRlYzAtNzVjZS1kZTY2LTQ3MDljZGY4ODY0MiI7czoyMzoiaUZyYW1lc19JRlJBTUVfT1JERVJfQlkiO3M6NDoibmFtZSI7czozNzoiUHVyY2hhc2VPcmRlcnNfUFVSQ0hBU0VPUkRFUl9PUkRFUl9CWSI7czoxODoiZGF0ZV9tb2RpZmllZCBkZXNjIjtzOjIxOiJRdW90ZXNfUVVPVEVfT1JERVJfQlkiO3M6MTg6ImRhdGVfbW9kaWZpZWQgZGVzYyI7fQ=='),
('78d09d8c-5b3e-fbf0-ac49-46f8b95f334e', 'home', 0, '2007-09-25 07:33:26', '2007-10-11 12:42:37', '1', 'YToyOntzOjg6ImRhc2hsZXRzIjthOjg6e3M6MzY6IjI1YTdmODdiLTk4OWItNTFhOC1hZTA1LTQ2ZjhiOTA4NGU1ZiI7YTozOntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1ODoiLi9tb2R1bGVzL0NhbGxzL0Rhc2hsZXRzL015Q2FsbHNEYXNobGV0L015Q2FsbHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjU6e3M6NzoiZmlsdGVycyI7YToyOntzOjEwOiJkYXRlX3N0YXJ0IjthOjA6e31zOjY6InN0YXR1cyI7YToxOntpOjA7czo3OiJQbGFubmVkIjt9fXM6NToidGl0bGUiO3M6Mjk6ItCc0L7QuNGC0LUg0L7QsdCw0LbQtNCw0L3QuNGPIjtzOjExOiJteUl0ZW1zT25seSI7czo0OiJ0cnVlIjtzOjExOiJkaXNwbGF5Um93cyI7czoxOiI1IjtzOjE0OiJkaXNwbGF5Q29sdW1ucyI7YTo1OntpOjA7czoxMjoic2V0X2NvbXBsZXRlIjtpOjE7czo0OiJuYW1lIjtpOjI7czo4OiJkdXJhdGlvbiI7aTozO3M6MTA6ImRhdGVfc3RhcnQiO2k6NDtzOjEwOiJ0aW1lX3N0YXJ0Ijt9fX1zOjM2OiIyNWM5ZDNkZi02Y2Y4LTIxMWEtYjQ3ZC00NmY4Yjk0NTNmYjMiO2E6Mjp7czo5OiJjbGFzc05hbWUiO3M6MTM6IkpvdFBhZERhc2hsZXQiO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NToiLi9tb2R1bGVzL0hvbWUvRGFzaGxldHMvSm90UGFkRGFzaGxldC9Kb3RQYWREYXNobGV0LnBocCI7fXM6MzY6IjI1ZWI5N2RhLWRjYWQtNjQ1Mi0wYWY0LTQ2ZjhiOTNhNGU1OCI7YTozOntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NzoiLi9tb2R1bGVzL01lZXRpbmdzL0Rhc2hsZXRzL015TWVldGluZ3NEYXNobGV0L015TWVldGluZ3NEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjU6e3M6NzoiZmlsdGVycyI7YToyOntzOjEwOiJkYXRlX3N0YXJ0IjthOjA6e31zOjY6InN0YXR1cyI7YToxOntpOjA7czo3OiJQbGFubmVkIjt9fXM6NToidGl0bGUiO3M6MjE6ItCc0L7QuNGC0LUg0YHRgNC10YnQuCI7czoxMToibXlJdGVtc09ubHkiO3M6NDoidHJ1ZSI7czoxMToiZGlzcGxheVJvd3MiO3M6MToiNSI7czoxNDoiZGlzcGxheUNvbHVtbnMiO2E6NTp7aTowO3M6MTI6InNldF9jb21wbGV0ZSI7aToxO3M6NDoibmFtZSI7aToyO3M6ODoiZHVyYXRpb24iO2k6MztzOjEwOiJkYXRlX3N0YXJ0IjtpOjQ7czoxMDoidGltZV9zdGFydCI7fX19czozNjoiMjYwYzNiMWUtMTU1Yy04ZmZjLWU2M2ItNDZmOGI5NTdiMDYzIjthOjI6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUNhc2VzRGFzaGxldCI7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU4OiIuL21vZHVsZXMvQ2FzZXMvRGFzaGxldHMvTXlDYXNlc0Rhc2hsZXQvTXlDYXNlc0Rhc2hsZXQucGhwIjt9czozNjoiMjYyY2M0MTctZWJlYi1jZjI4LTA4NmUtNDZmOGI5MjdkZjMyIjthOjI6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUxlYWRzRGFzaGxldCI7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU4OiIuL21vZHVsZXMvTGVhZHMvRGFzaGxldHMvTXlMZWFkc0Rhc2hsZXQvTXlMZWFkc0Rhc2hsZXQucGhwIjt9czozNjoiMjY0ZDdiZGYtZGRlMy00M2Q4LTQ0NmItNDZmOGI5NWRmMjM5IjthOjI6e3M6OToiY2xhc3NOYW1lIjtzOjIyOiJNeU9wcG9ydHVuaXRpZXNEYXNobGV0IjtzOjEyOiJmaWxlTG9jYXRpb24iO3M6ODI6Ii4vbW9kdWxlcy9PcHBvcnR1bml0aWVzL0Rhc2hsZXRzL015T3Bwb3J0dW5pdGllc0Rhc2hsZXQvTXlPcHBvcnR1bml0aWVzRGFzaGxldC5waHAiO31zOjM2OiIyNjZkZmZhYS0yYmU5LTMzZjYtYTU2ZC00NmY4YjkyYzA2YTIiO2E6Mjp7czo5OiJjbGFzc05hbWUiO3M6Mjk6Ik15UGlwZWxpbmVCeVNhbGVzU3RhZ2VEYXNobGV0IjtzOjEyOiJmaWxlTG9jYXRpb24iO3M6ODk6Ii4vbW9kdWxlcy9DaGFydHMvRGFzaGxldHMvTXlQaXBlbGluZUJ5U2FsZXNTdGFnZURhc2hsZXQvTXlQaXBlbGluZUJ5U2FsZXNTdGFnZURhc2hsZXQucGhwIjt9czozNjoiMjY4ZTgwNDEtMjkwNC1lY2VmLTJjMWYtNDZmOGI5MTg0MjFlIjthOjI6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeUFjY291bnRzRGFzaGxldCI7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY3OiIuL21vZHVsZXMvQWNjb3VudHMvRGFzaGxldHMvTXlBY2NvdW50c0Rhc2hsZXQvTXlBY2NvdW50c0Rhc2hsZXQucGhwIjt9fXM6NzoiY29sdW1ucyI7YToyOntpOjA7YToyOntzOjU6IndpZHRoIjtzOjM6IjYwJSI7czo4OiJkYXNobGV0cyI7YTo0OntpOjA7czozNjoiMjVhN2Y4N2ItOTg5Yi01MWE4LWFlMDUtNDZmOGI5MDg0ZTVmIjtpOjE7czozNjoiMjVlYjk3ZGEtZGNhZC02NDUyLTBhZjQtNDZmOGI5M2E0ZTU4IjtpOjI7czozNjoiMjYyY2M0MTctZWJlYi1jZjI4LTA4NmUtNDZmOGI5MjdkZjMyIjtpOjM7czozNjoiMjY2ZGZmYWEtMmJlOS0zM2Y2LWE1NmQtNDZmOGI5MmMwNmEyIjt9fWk6MTthOjI6e3M6NToid2lkdGgiO3M6MzoiNDAlIjtzOjg6ImRhc2hsZXRzIjthOjQ6e2k6MDtzOjM2OiIyNWM5ZDNkZi02Y2Y4LTIxMWEtYjQ3ZC00NmY4Yjk0NTNmYjMiO2k6MTtzOjM2OiIyNjBjM2IxZS0xNTVjLThmZmMtZTYzYi00NmY4Yjk1N2IwNjMiO2k6MjtzOjM2OiIyNjRkN2JkZi1kZGUzLTQzZDgtNDQ2Yi00NmY4Yjk1ZGYyMzkiO2k6MztzOjM2OiIyNjhlODA0MS0yOTA0LWVjZWYtMmMxZi00NmY4YjkxODQyMWUiO319fX0='),
('9aa5f44a-e827-9e31-298c-46f9209e805d', 'Paperwaste2_PAPERWASTE', 0, '2007-09-25 14:50:39', '2007-09-25 14:50:39', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('e8b0eafa-906e-aa59-4e99-46fb6148265c', 'Ratefilm2_RATEFILM', 0, '2007-09-27 07:53:27', '2007-09-27 07:53:27', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('a3f33a0a-c3b5-f9a8-e991-46f8b99a6d84', 'global', 0, '2007-09-25 07:33:23', '2007-10-17 19:43:01', '1', 'YToxNzp7czo4OiJ0aW1lem9uZSI7czoxMzoiRXVyb3BlL0F0aGVucyI7czoyOiJ1dCI7aToxO3M6MTI6InVzZXJQcml2R3VpZCI7czozNjoiYmZjMGZkZjAtYzRhMy1hMzA4LWUwYTQtNDZmOGI5Yzg4NTlmIjtzOjI1OiJBY2NvdW50c19BQ0NPVU5UX09SREVSX0JZIjtzOjQ6Im5hbWUiO3M6MjU6IkNvbnRhY3RzX0NPTlRBQ1RfT1JERVJfQlkiO3M6Mzk6ImNvbnRhY3RzLmZpcnN0X25hbWUsIGNvbnRhY3RzLmxhc3RfbmFtZSI7czoxOToiVXNlcnNfVVNFUl9PUkRFUl9CWSI7czoyMToibGFzdF9uYW1lLCBmaXJzdF9uYW1lIjtzOjIwOiJQYXBlcl9QQVBFUl9PUkRFUl9CWSI7czo1OiJwbmFtZSI7czoyMToiUHJpY2VzX1BSSUNFX09SREVSX0JZIjtzOjQ6Im5hbWUiO3M6Mjc6IlN1cHBsaWVyc19TVVBQTElFUl9PUkRFUl9CWSI7czo0OiJuYW1lIjtzOjE2OiJJbmtfSU5LX09SREVSX0JZIjtzOjQ6Im5hbWUiO3M6Mjk6Ik9wZXJhdGlvbnNfT1BFUkFUSU9OX09SREVSX0JZIjtzOjQ6Im5hbWUiO3M6MjY6IlJhdGVmaWxtX1JBVEVGSUxNX09SREVSX0JZIjtzOjQ6Im5hbWUiO3M6Mjg6IlJhdGVwbGF0ZV9SQVRFUExBVEVfT1JERVJfQlkiO3M6NDoibmFtZSI7czozNDoiUHJlc3NtYWNoaW5lX1BSRVNTTUFDSElORV9PUkRFUl9CWSI7czo0OiJuYW1lIjtzOjM4OiJQcmVzc3ByaWNlbGlzdF9QUkVTU1BSSUNFTElTVF9PUkRFUl9CWSI7czo0OiJuYW1lIjtzOjMwOiJQYXBlcndhc3RlX1BBUEVSV0FTVEVfT1JERVJfQlkiO3M6NDoibmFtZSI7czoyMjoiQUNMUm9sZXNfUk9MRV9PUkRFUl9CWSI7czo0OiJuYW1lIjt9'),
('697f2d12-b321-c5da-9427-471664c86558', 'Campaigns2_CAMPAIGN', 0, '2007-10-17 19:37:02', '2007-10-17 19:37:02', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('6baf91e4-c823-52c9-58e7-4716651f2a90', 'Bugs2_BUG', 0, '2007-10-17 19:42:04', '2007-10-17 19:42:04', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('31f83540-49ed-6351-b49e-471665453669', 'global', 0, '2007-10-17 19:43:22', '2007-10-17 20:14:40', '28d2f82e-0aec-0640-54b7-4716657084fd', 'YTo0Mzp7czo4OiJncmlkbGluZSI7czozOiJvZmYiO3M6MTI6Im1haWxtZXJnZV9vbiI7czozOiJvZmYiO3M6ODoibWF4X3RhYnMiO3M6MjoiMTIiO3M6MTE6Im1heF9zdWJ0YWJzIjtzOjI6IjEyIjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtzOjA6IiI7czoxNDoic3dhcF9zaG9ydGN1dHMiO3M6MDoiIjtzOjEzOiJzdWJwYW5lbF90YWJzIjtzOjI6Im9uIjtzOjE0OiJzdWJwYW5lbF9saW5rcyI7czowOiIiO3M6MTk6Im5hdmlnYXRpb25fcGFyYWRpZ20iO3M6MToibSI7czoxMjoiZGlzcGxheV90YWJzIjthOjMzOntpOjA7czo0OiJIb21lIjtpOjE7czo3OiJpRnJhbWVzIjtpOjI7czo4OiJDYWxlbmRhciI7aTozO3M6MTA6IkFjdGl2aXRpZXMiO2k6NDtzOjg6IkNvbnRhY3RzIjtpOjU7czo4OiJBY2NvdW50cyI7aTo2O3M6NToiTGVhZHMiO2k6NztzOjEzOiJPcHBvcnR1bml0aWVzIjtpOjg7czo1OiJDYXNlcyI7aTo5O3M6NDoiQnVncyI7aToxMDtzOjk6IkRvY3VtZW50cyI7aToxMTtzOjY6IkVtYWlscyI7aToxMjtzOjk6IkNhbXBhaWducyI7aToxMztzOjc6IlByb2plY3QiO2k6MTQ7czo1OiJGZWVkcyI7aToxNTtzOjg6IlByb2R1Y3RzIjtpOjE2O3M6MTc6IkNvbXBvbmVudEVzdGltYXRlIjtpOjE3O3M6MTU6IlByb2R1Y3RFc3RpbWF0ZSI7aToxODtzOjk6IlN1cHBsaWVycyI7aToxOTtzOjg6IlN1cHBsaWVzIjtpOjIwO3M6MTQ6IlB1cmNoYXNlT3JkZXJzIjtpOjIxO3M6OToiTWF0ZXJpYWxzIjtpOjIyO3M6NjoiUXVvdGVzIjtpOjIzO3M6MTA6Ik9wZXJhdGlvbnMiO2k6MjQ7czoxNzoiUHJvZHVjdE9wZXJhdGlvbnMiO2k6MjU7czozOiJJbmsiO2k6MjY7czoxMjoiUHJlc3NtYWNoaW5lIjtpOjI3O3M6NjoiUHJpY2VzIjtpOjI4O3M6MTQ6IlByZXNzcHJpY2VsaXN0IjtpOjI5O3M6ODoiUmF0ZWZpbG0iO2k6MzA7czo5OiJSYXRlcGxhdGUiO2k6MzE7czoxMDoiUGFwZXJ3YXN0ZSI7aTozMjtzOjk6IkRhc2hib2FyZCI7fXM6OToiaGlkZV90YWJzIjthOjA6e31zOjExOiJyZW1vdmVfdGFicyI7YTowOnt9czo3OiJub19vcHBzIjtzOjM6Im9mZiI7czoxMzoicmVtaW5kZXJfdGltZSI7aTotMTtzOjg6InRpbWV6b25lIjtzOjEzOiJFdXJvcGUvQXRoZW5zIjtzOjI6InV0IjtpOjE7czo4OiJjdXJyZW5jeSI7czozOiItOTkiO3M6MzU6ImRlZmF1bHRfY3VycmVuY3lfc2lnbmlmaWNhbnRfZGlnaXRzIjtzOjE6IjIiO3M6MTE6Im51bV9ncnBfc2VwIjtzOjE6IiwiO3M6NzoiZGVjX3NlcCI7czoxOiIuIjtzOjU6ImRhdGVmIjtzOjU6IlktbS1kIjtzOjU6InRpbWVmIjtzOjM6Ikg6aSI7czoxMzoibWFpbF9mcm9tbmFtZSI7czowOiIiO3M6MTY6Im1haWxfZnJvbWFkZHJlc3MiO3M6MDoiIjtzOjEzOiJtYWlsX3NlbmR0eXBlIjtzOjg6InNlbmRtYWlsIjtzOjE1OiJtYWlsX3NtdHBzZXJ2ZXIiO3M6MDoiIjtzOjEzOiJtYWlsX3NtdHBwb3J0IjtzOjI6IjI1IjtzOjEzOiJtYWlsX3NtdHB1c2VyIjtzOjA6IiI7czoxMzoibWFpbF9zbXRwcGFzcyI7czowOiIiO3M6MjY6ImRlZmF1bHRfbG9jYWxlX25hbWVfZm9ybWF0IjtzOjU6InMgZiBsIjtzOjE2OiJleHBvcnRfZGVsaW1pdGVyIjtzOjE6IiwiO3M6MjI6ImRlZmF1bHRfZXhwb3J0X2NoYXJzZXQiO3M6NjoiQ1AxMjUyIjtzOjE0OiJ1c2VfcmVhbF9uYW1lcyI7czozOiJvZmYiO3M6MTc6Im1haWxfc210cGF1dGhfcmVxIjtzOjA6IiI7czoxNzoic2lnbmF0dXJlX2RlZmF1bHQiO3M6MDoiIjtzOjE3OiJzaWduYXR1cmVfcHJlcGVuZCI7czowOiIiO3M6MTU6ImVtYWlsX2xpbmtfdHlwZSI7czowOiIiO3M6MTc6ImVtYWlsX3Nob3dfY291bnRzIjtpOjA7czoxOToiZW1haWxfZWRpdG9yX29wdGlvbiI7czowOiIiO3M6MjE6ImRlZmF1bHRfZW1haWxfY2hhcnNldCI7czo1OiJVVEYtOCI7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MDoiIjtzOjEyOiJ1c2VyUHJpdkd1aWQiO3M6MzY6IjM5ODgyZDZiLTQ4ZjMtYzBkMy04MzJkLTQ3MTY2NWRiOTcwOCI7czoyMToiUXVvdGVzX1FVT1RFX09SREVSX0JZIjtzOjE4OiJkYXRlX21vZGlmaWVkIGRlc2MiO30='),
('5641853d-d2e9-4e6c-6069-4709d0deee0d', 'ComponentEstimate2_COMPONENTESTIMATE', 0, '2007-10-08 06:37:00', '2007-10-08 06:37:00', '177bd6bb-665d-cc61-4d82-45ab422290d3', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('268bb2f4-372e-faa7-5404-4709d081335c', 'ProductEstimate2_PRODUCTESTIMATE', 0, '2007-10-08 06:37:02', '2007-10-08 06:37:02', '177bd6bb-665d-cc61-4d82-45ab422290d3', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('3c74baf4-5668-4b19-fa78-4709db3f3b8c', 'home', 0, '2007-10-08 07:25:17', '2007-10-11 11:46:33', 'db72618d-35da-19ad-1b67-46f37f819f41', 'YToyOntzOjg6ImRhc2hsZXRzIjthOjg6e3M6MzY6IjIwOGJmNmI4LTQ4YWEtNTFmOS1hNjRhLTQ3MDlkYjk4NzAzOSI7YToyOntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1ODoiLi9tb2R1bGVzL0NhbGxzL0Rhc2hsZXRzL015Q2FsbHNEYXNobGV0L015Q2FsbHNEYXNobGV0LnBocCI7fXM6MzY6IjIwOTAwZTI3LTFlNDctZDNkOC0wY2JiLTQ3MDlkYjYzNjgxZSI7YTozOntzOjk6ImNsYXNzTmFtZSI7czoxMzoiSm90UGFkRGFzaGxldCI7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU1OiIuL21vZHVsZXMvSG9tZS9EYXNobGV0cy9Kb3RQYWREYXNobGV0L0pvdFBhZERhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MTp7czo5OiJzYXZlZFRleHQiO3M6NjY6ItCU0L7QsdGA0LUg0LTQvtGI0LvQuCDQsiDRgdC40YHRgtC10LzQsCBBbHBoYVByaW50PGJyIC8+DQo8YnIgLz4NCiI7fX1zOjM2OiIyMDkzMzFhNi0xNWJlLTBkMzMtNmQxMy00NzA5ZGI5NTYwMzciO2E6Mjp7czo5OiJjbGFzc05hbWUiO3M6MTc6Ik15TWVldGluZ3NEYXNobGV0IjtzOjEyOiJmaWxlTG9jYXRpb24iO3M6Njc6Ii4vbW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO31zOjM2OiIyMDk2NWIxYy1iNDliLTcwNDgtM2ExNC00NzA5ZGI5ZDI5MjgiO2E6Mjp7czo5OiJjbGFzc05hbWUiO3M6MTQ6Ik15Q2FzZXNEYXNobGV0IjtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NTg6Ii4vbW9kdWxlcy9DYXNlcy9EYXNobGV0cy9NeUNhc2VzRGFzaGxldC9NeUNhc2VzRGFzaGxldC5waHAiO31zOjM2OiIyMDk5ODQ3My00NWRhLWMxMzMtMjQ3MC00NzA5ZGI1ZTRkNTkiO2E6Mjp7czo5OiJjbGFzc05hbWUiO3M6MTQ6Ik15TGVhZHNEYXNobGV0IjtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NTg6Ii4vbW9kdWxlcy9MZWFkcy9EYXNobGV0cy9NeUxlYWRzRGFzaGxldC9NeUxlYWRzRGFzaGxldC5waHAiO31zOjM2OiIyMDljYTgzYS01M2M5LTk2MGItNjc4OS00NzA5ZGI0MjUyNWEiO2E6Mjp7czo5OiJjbGFzc05hbWUiO3M6MjI6Ik15T3Bwb3J0dW5pdGllc0Rhc2hsZXQiO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo4MjoiLi9tb2R1bGVzL09wcG9ydHVuaXRpZXMvRGFzaGxldHMvTXlPcHBvcnR1bml0aWVzRGFzaGxldC9NeU9wcG9ydHVuaXRpZXNEYXNobGV0LnBocCI7fXM6MzY6IjIwOWZkZDgzLThkZmUtMjdjNi0wNWQ1LTQ3MDlkYjE0NzE3ZCI7YToyOntzOjk6ImNsYXNzTmFtZSI7czoyOToiTXlQaXBlbGluZUJ5U2FsZXNTdGFnZURhc2hsZXQiO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo4OToiLi9tb2R1bGVzL0NoYXJ0cy9EYXNobGV0cy9NeVBpcGVsaW5lQnlTYWxlc1N0YWdlRGFzaGxldC9NeVBpcGVsaW5lQnlTYWxlc1N0YWdlRGFzaGxldC5waHAiO31zOjM2OiIyMGEzMDY5Mi03Zjg5LTFlMWMtZTRmYi00NzA5ZGJiZGQ1NjUiO2E6Mjp7czo5OiJjbGFzc05hbWUiO3M6MTc6Ik15QWNjb3VudHNEYXNobGV0IjtzOjEyOiJmaWxlTG9jYXRpb24iO3M6Njc6Ii4vbW9kdWxlcy9BY2NvdW50cy9EYXNobGV0cy9NeUFjY291bnRzRGFzaGxldC9NeUFjY291bnRzRGFzaGxldC5waHAiO319czo3OiJjb2x1bW5zIjthOjI6e2k6MDthOjI6e3M6ODoiZGFzaGxldHMiO2E6NDp7aTowO3M6MzY6IjIwOTMzMWE2LTE1YmUtMGQzMy02ZDEzLTQ3MDlkYjk1NjAzNyI7aToxO3M6MzY6IjIwOGJmNmI4LTQ4YWEtNTFmOS1hNjRhLTQ3MDlkYjk4NzAzOSI7aToyO3M6MzY6IjIwOTk4NDczLTQ1ZGEtYzEzMy0yNDcwLTQ3MDlkYjVlNGQ1OSI7aTozO3M6MzY6IjIwOWZkZDgzLThkZmUtMjdjNi0wNWQ1LTQ3MDlkYjE0NzE3ZCI7fXM6NToid2lkdGgiO3M6MzoiNjAlIjt9aToxO2E6Mjp7czo4OiJkYXNobGV0cyI7YTo0OntpOjA7czozNjoiMjA5MDBlMjctMWU0Ny1kM2Q4LTBjYmItNDcwOWRiNjM2ODFlIjtpOjE7czozNjoiMjA5NjViMWMtYjQ5Yi03MDQ4LTNhMTQtNDcwOWRiOWQyOTI4IjtpOjI7czozNjoiMjA5Y2E4M2EtNTNjOS05NjBiLTY3ODktNDcwOWRiNDI1MjVhIjtpOjM7czozNjoiMjBhMzA2OTItN2Y4OS0xZTFjLWU0ZmItNDcwOWRiYmRkNTY1Ijt9czo1OiJ3aWR0aCI7czozOiI0MCUiO319fQ=='),
('3cc017f5-ae60-2373-9701-4709dba2e42f', 'Home2_CALL', 0, '2007-10-08 07:25:17', '2007-10-11 11:46:33', 'db72618d-35da-19ad-1b67-46f37f819f41', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('3cfb7f31-58d7-36da-4553-4709db65dc46', 'Home2_MEETING', 0, '2007-10-08 07:25:17', '2007-10-11 11:46:33', 'db72618d-35da-19ad-1b67-46f37f819f41', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('3d361c1f-23c2-616b-b051-4709dbe2f382', 'Home2_LEAD', 0, '2007-10-08 07:25:17', '2007-10-11 11:46:33', 'db72618d-35da-19ad-1b67-46f37f819f41', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('3e302055-3b73-dc21-09e1-4709db9fc49c', 'Home2_CASE', 0, '2007-10-08 07:25:17', '2007-10-11 11:46:33', 'db72618d-35da-19ad-1b67-46f37f819f41', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('3e6cb13d-ac6f-935e-420f-4709db14e53d', 'Home2_OPPORTUNITY', 0, '2007-10-08 07:25:17', '2007-10-11 11:46:33', 'db72618d-35da-19ad-1b67-46f37f819f41', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMToiZGF0ZV9jbG9zZWQiO3M6OToic29ydE9yZGVyIjtzOjM6IkFTQyI7fX0='),
('3ea77039-5866-9986-ee94-4709dbb00250', 'Home2_ACCOUNT', 0, '2007-10-08 07:25:17', '2007-10-11 11:46:34', 'db72618d-35da-19ad-1b67-46f37f819f41', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('6dbdfa0b-382d-b8b4-6146-4709db15ecf0', 'Products2_PRODUCTS', 0, '2007-10-08 07:27:20', '2007-10-08 07:27:20', 'db72618d-35da-19ad-1b67-46f37f819f41', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('eca5ad36-1e42-99e0-487b-4709dcbe605c', 'Calls2_CALL', 0, '2007-10-08 07:31:03', '2007-10-08 07:31:03', 'db72618d-35da-19ad-1b67-46f37f819f41', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('c0230d70-458d-7727-fc43-4709dce6d277', 'Tasks2_TASK', 0, '2007-10-08 07:31:10', '2007-10-08 07:31:10', 'db72618d-35da-19ad-1b67-46f37f819f41', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('2b0ff5de-822f-d0f0-75ab-4709dc363d76', 'Contacts2_CONTACT', 0, '2007-10-08 07:31:16', '2007-10-08 07:31:16', 'db72618d-35da-19ad-1b67-46f37f819f41', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('4e198dc2-3388-a4e1-7df4-4709df3b5f37', 'Pressmachine2_PRESSMACHINE', 0, '2007-10-08 07:41:27', '2007-10-08 07:41:27', 'db72618d-35da-19ad-1b67-46f37f819f41', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('6984f0da-5296-5ba9-86e3-4709df827e6b', 'Pressmachine2_PRESSMACHINE', 0, '2007-10-08 07:42:10', '2007-10-08 07:42:10', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('1e4152c5-9c7a-6f63-49c2-4709e4711150', 'Operations2_OPERATION', 0, '2007-10-08 08:04:25', '2007-10-08 08:04:25', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('67829d80-eeff-bfc6-43d2-4709feaadc78', 'Paperwaste2_PAPERWASTE', 0, '2007-10-08 09:55:27', '2007-10-08 09:55:27', 'db72618d-35da-19ad-1b67-46f37f819f41', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('b8d7edfa-df35-43fb-f54a-4709fe84edc6', 'Machines2_MACHINE', 0, '2007-10-08 09:55:45', '2007-10-08 09:55:45', 'db72618d-35da-19ad-1b67-46f37f819f41', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('91d4dee0-f792-6a19-1f48-4709fed1d570', 'Rateplate2_RATEPLATE', 0, '2007-10-08 09:55:57', '2007-10-08 09:55:57', 'db72618d-35da-19ad-1b67-46f37f819f41', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('196df34d-1b17-66e7-93d6-4709fe985b47', 'Operations2_OPERATION', 0, '2007-10-08 09:56:36', '2007-10-08 09:56:36', 'db72618d-35da-19ad-1b67-46f37f819f41', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('5a5ae2c8-f990-449a-76bb-4709fe70c2ec', 'ProductEstimate2_PRODUCTESTIMATE', 0, '2007-10-08 09:56:43', '2007-10-08 09:56:43', 'db72618d-35da-19ad-1b67-46f37f819f41', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('5d8fe3f9-9af4-6aa5-2ab8-4709fe8dab51', 'ComponentEstimate2_COMPONENTESTIMATE', 0, '2007-10-08 09:56:59', '2007-10-08 09:56:59', 'db72618d-35da-19ad-1b67-46f37f819f41', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('8e184c96-7611-dc5e-1407-4709fea6b195', 'Ink2_INK', 0, '2007-10-08 09:57:10', '2007-10-08 09:57:10', 'db72618d-35da-19ad-1b67-46f37f819f41', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('fa7f0dda-ae2d-2835-10d9-4709fff0b176', 'Materials2_MATERIAL', 0, '2007-10-08 09:57:28', '2007-10-08 09:57:28', 'db72618d-35da-19ad-1b67-46f37f819f41', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('2329ae4a-5758-96cd-333e-4709ff4d540c', 'Prices2_PRICE', 0, '2007-10-08 09:57:34', '2007-10-08 09:57:34', 'db72618d-35da-19ad-1b67-46f37f819f41', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('2f664636-fdb3-a8d2-5a9f-470a0139281d', 'Contacts2_CONTACT', 0, '2007-10-08 10:09:03', '2007-10-08 10:09:03', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('e6f1408d-eed1-0299-8cd6-470a032aae28', 'global', 0, '2007-10-08 10:14:35', '2007-10-08 10:23:54', 'e6215035-1bef-82fe-0c85-470a0358b1fb', 'YTo0Njp7czo4OiJncmlkbGluZSI7czozOiJvZmYiO3M6MTI6Im1haWxtZXJnZV9vbiI7czozOiJvZmYiO3M6ODoibWF4X3RhYnMiO3M6MjoiMTIiO3M6MTE6Im1heF9zdWJ0YWJzIjtzOjI6IjEyIjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtzOjA6IiI7czoxNDoic3dhcF9zaG9ydGN1dHMiO3M6MDoiIjtzOjEzOiJzdWJwYW5lbF90YWJzIjtzOjI6Im9uIjtzOjE0OiJzdWJwYW5lbF9saW5rcyI7czowOiIiO3M6MTk6Im5hdmlnYXRpb25fcGFyYWRpZ20iO3M6MToibSI7czoxMjoiZGlzcGxheV90YWJzIjthOjM3OntpOjA7czo0OiJIb21lIjtpOjE7czo3OiJpRnJhbWVzIjtpOjI7czo4OiJDYWxlbmRhciI7aTozO3M6MTA6IkFjdGl2aXRpZXMiO2k6NDtzOjg6IkNvbnRhY3RzIjtpOjU7czo4OiJBY2NvdW50cyI7aTo2O3M6NToiTGVhZHMiO2k6NztzOjEzOiJPcHBvcnR1bml0aWVzIjtpOjg7czo1OiJDYXNlcyI7aTo5O3M6NDoiQnVncyI7aToxMDtzOjk6IkRvY3VtZW50cyI7aToxMTtzOjY6IkVtYWlscyI7aToxMjtzOjk6IkNhbXBhaWducyI7aToxMztzOjc6IlByb2plY3QiO2k6MTQ7czo4OiJQcm9kdWN0cyI7aToxNTtzOjk6IlN1cHBsaWVycyI7aToxNjtzOjU6IkZlZWRzIjtpOjE3O3M6ODoiU3VwcGxpZXMiO2k6MTg7czo2OiJQcmljZXMiO2k6MTk7czoxNDoiUHVyY2hhc2VPcmRlcnMiO2k6MjA7czo5OiJNYXRlcmlhbHMiO2k6MjE7czo2OiJRdW90ZXMiO2k6MjI7czoxMDoiT3BlcmF0aW9ucyI7aToyMztzOjE3OiJQcm9kdWN0T3BlcmF0aW9ucyI7aToyNDtzOjg6Ik1hY2hpbmVzIjtpOjI1O3M6OToiRXN0aW1hdGVzIjtpOjI2O3M6MTE6IlByb2R1Y3RMb2dzIjtpOjI3O3M6MzoiSW5rIjtpOjI4O3M6MTI6IlByZXNzbWFjaGluZSI7aToyOTtzOjE0OiJQcmVzc3ByaWNlbGlzdCI7aTozMDtzOjEwOiJQYXBlcndhc3RlIjtpOjMxO3M6NToiUHJlc3MiO2k6MzI7czo4OiJSYXRlZmlsbSI7aTozMztzOjk6IlJhdGVwbGF0ZSI7aTozNDtzOjE3OiJDb21wb25lbnRFc3RpbWF0ZSI7aTozNTtzOjE1OiJQcm9kdWN0RXN0aW1hdGUiO2k6MzY7czo5OiJEYXNoYm9hcmQiO31zOjk6ImhpZGVfdGFicyI7YTowOnt9czoxMToicmVtb3ZlX3RhYnMiO2E6MDp7fXM6Nzoibm9fb3BwcyI7czozOiJvZmYiO3M6MTM6InJlbWluZGVyX3RpbWUiO2k6LTE7czo4OiJ0aW1lem9uZSI7czoxMjoiRXVyb3BlL1NvZmlhIjtzOjI6InV0IjtzOjE6IjEiO3M6ODoiY3VycmVuY3kiO3M6MzoiLTk5IjtzOjM1OiJkZWZhdWx0X2N1cnJlbmN5X3NpZ25pZmljYW50X2RpZ2l0cyI7czoxOiIyIjtzOjExOiJudW1fZ3JwX3NlcCI7czoxOiIsIjtzOjc6ImRlY19zZXAiO3M6MToiLiI7czo1OiJkYXRlZiI7czo1OiJZLW0tZCI7czo1OiJ0aW1lZiI7czozOiJIOmkiO3M6MTM6Im1haWxfZnJvbW5hbWUiO3M6MTc6IlBhbmF5b3QgUGFuYXlvdG92IjtzOjE2OiJtYWlsX2Zyb21hZGRyZXNzIjtzOjA6IiI7czoxMzoibWFpbF9zZW5kdHlwZSI7czo4OiJzZW5kbWFpbCI7czoxNToibWFpbF9zbXRwc2VydmVyIjtzOjA6IiI7czoxMzoibWFpbF9zbXRwcG9ydCI7czoyOiIyNSI7czoxMzoibWFpbF9zbXRwdXNlciI7czowOiIiO3M6MTM6Im1haWxfc210cHBhc3MiO3M6MDoiIjtzOjI2OiJkZWZhdWx0X2xvY2FsZV9uYW1lX2Zvcm1hdCI7czo1OiJzIGYgbCI7czoxNjoiZXhwb3J0X2RlbGltaXRlciI7czoxOiIsIjtzOjIyOiJkZWZhdWx0X2V4cG9ydF9jaGFyc2V0IjtzOjY6IkNQMTI1MiI7czoxNDoidXNlX3JlYWxfbmFtZXMiO3M6Mzoib2ZmIjtzOjE3OiJtYWlsX3NtdHBhdXRoX3JlcSI7czowOiIiO3M6MTc6InNpZ25hdHVyZV9kZWZhdWx0IjtzOjA6IiI7czoxNzoic2lnbmF0dXJlX3ByZXBlbmQiO3M6MDoiIjtzOjE1OiJlbWFpbF9saW5rX3R5cGUiO3M6NToic3VnYXIiO3M6MTc6ImVtYWlsX3Nob3dfY291bnRzIjtpOjA7czoxOToiZW1haWxfZWRpdG9yX29wdGlvbiI7czowOiIiO3M6MjE6ImRlZmF1bHRfZW1haWxfY2hhcnNldCI7czo1OiJVVEYtOCI7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MDoiIjtzOjEyOiJ1c2VyUHJpdkd1aWQiO3M6MzY6Ijk1MGNiMGViLThlNDEtYTNiNS05YWUzLTQ3MGEwNGY5ZTBmYyI7czoyNToiQ29udGFjdHNfQ09OVEFDVF9PUkRFUl9CWSI7czozOToiY29udGFjdHMuZmlyc3RfbmFtZSwgY29udGFjdHMubGFzdF9uYW1lIjtzOjIxOiJFbWFpbHNfRU1BSUxfT1JERVJfQlkiO3M6Mjg6ImRhdGVfc2VudCwgZGF0ZV9lbnRlcmVkIERFU0MiO3M6Mjc6IkVtcGxveWVlc19FTVBMT1lFRV9PUkRFUl9CWSI7czozMzoidXNlcnMubGFzdF9uYW1lLCB1c2Vycy5maXJzdF9uYW1lIjtzOjE5OiJVc2Vyc19VU0VSX09SREVSX0JZIjtzOjIxOiJsYXN0X25hbWUsIGZpcnN0X25hbWUiO30=');
INSERT INTO `user_preferences` (`id`, `category`, `deleted`, `date_entered`, `date_modified`, `assigned_user_id`, `contents`) VALUES 
('a286c869-1558-87a6-dc19-470a046457c6', 'home', 0, '2007-10-08 10:19:37', '2007-10-08 10:19:37', 'e6215035-1bef-82fe-0c85-470a0358b1fb', 'YToyOntzOjg6ImRhc2hsZXRzIjthOjg6e3M6MzY6Ijc3MDAzMjIxLTNmMjAtOTU5YS1kOTljLTQ3MGEwNGM4ZWI5OCI7YToyOntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1ODoiLi9tb2R1bGVzL0NhbGxzL0Rhc2hsZXRzL015Q2FsbHNEYXNobGV0L015Q2FsbHNEYXNobGV0LnBocCI7fXM6MzY6Ijc3MDRhZDU2LWE0ZjUtNDZiOC1mNGMzLTQ3MGEwNDk5Mjk5NyI7YToyOntzOjk6ImNsYXNzTmFtZSI7czoxMzoiSm90UGFkRGFzaGxldCI7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU1OiIuL21vZHVsZXMvSG9tZS9EYXNobGV0cy9Kb3RQYWREYXNobGV0L0pvdFBhZERhc2hsZXQucGhwIjt9czozNjoiNzcwN2U3NmItZmIyMy00MzU0LTQ5ZTktNDcwYTA0ZjdiZDlkIjthOjI6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeU1lZXRpbmdzRGFzaGxldCI7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY3OiIuL21vZHVsZXMvTWVldGluZ3MvRGFzaGxldHMvTXlNZWV0aW5nc0Rhc2hsZXQvTXlNZWV0aW5nc0Rhc2hsZXQucGhwIjt9czozNjoiNzcwYjEyMDQtNjY1YS03MTY0LTc4NmUtNDcwYTA0YjM3ZjQ2IjthOjI6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUNhc2VzRGFzaGxldCI7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU4OiIuL21vZHVsZXMvQ2FzZXMvRGFzaGxldHMvTXlDYXNlc0Rhc2hsZXQvTXlDYXNlc0Rhc2hsZXQucGhwIjt9czozNjoiNzcwZTRmZDItM2ZmYi05Zjc2LTFmNzQtNDcwYTA0Y2JmOTZhIjthOjI6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUxlYWRzRGFzaGxldCI7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU4OiIuL21vZHVsZXMvTGVhZHMvRGFzaGxldHMvTXlMZWFkc0Rhc2hsZXQvTXlMZWFkc0Rhc2hsZXQucGhwIjt9czozNjoiNzcxMTdiMjMtOGE3Mi05NzdiLTk0YTItNDcwYTA0YjZjNWIyIjthOjI6e3M6OToiY2xhc3NOYW1lIjtzOjIyOiJNeU9wcG9ydHVuaXRpZXNEYXNobGV0IjtzOjEyOiJmaWxlTG9jYXRpb24iO3M6ODI6Ii4vbW9kdWxlcy9PcHBvcnR1bml0aWVzL0Rhc2hsZXRzL015T3Bwb3J0dW5pdGllc0Rhc2hsZXQvTXlPcHBvcnR1bml0aWVzRGFzaGxldC5waHAiO31zOjM2OiI3NzE0OWQwMC04MDBlLTdiOTAtZmJlZS00NzBhMDQ0YjRlNGMiO2E6Mjp7czo5OiJjbGFzc05hbWUiO3M6Mjk6Ik15UGlwZWxpbmVCeVNhbGVzU3RhZ2VEYXNobGV0IjtzOjEyOiJmaWxlTG9jYXRpb24iO3M6ODk6Ii4vbW9kdWxlcy9DaGFydHMvRGFzaGxldHMvTXlQaXBlbGluZUJ5U2FsZXNTdGFnZURhc2hsZXQvTXlQaXBlbGluZUJ5U2FsZXNTdGFnZURhc2hsZXQucGhwIjt9czozNjoiNzcxN2M3OTctYWY1YS0xZjgzLWViNzMtNDcwYTA0YmVlMGViIjthOjI6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeUFjY291bnRzRGFzaGxldCI7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY3OiIuL21vZHVsZXMvQWNjb3VudHMvRGFzaGxldHMvTXlBY2NvdW50c0Rhc2hsZXQvTXlBY2NvdW50c0Rhc2hsZXQucGhwIjt9fXM6NzoiY29sdW1ucyI7YToyOntpOjA7YToyOntzOjU6IndpZHRoIjtzOjM6IjYwJSI7czo4OiJkYXNobGV0cyI7YTo0OntpOjA7czozNjoiNzcwMDMyMjEtM2YyMC05NTlhLWQ5OWMtNDcwYTA0YzhlYjk4IjtpOjE7czozNjoiNzcwN2U3NmItZmIyMy00MzU0LTQ5ZTktNDcwYTA0ZjdiZDlkIjtpOjI7czozNjoiNzcwZTRmZDItM2ZmYi05Zjc2LTFmNzQtNDcwYTA0Y2JmOTZhIjtpOjM7czozNjoiNzcxNDlkMDAtODAwZS03YjkwLWZiZWUtNDcwYTA0NGI0ZTRjIjt9fWk6MTthOjI6e3M6NToid2lkdGgiO3M6MzoiNDAlIjtzOjg6ImRhc2hsZXRzIjthOjQ6e2k6MDtzOjM2OiI3NzA0YWQ1Ni1hNGY1LTQ2YjgtZjRjMy00NzBhMDQ5OTI5OTciO2k6MTtzOjM2OiI3NzBiMTIwNC02NjVhLTcxNjQtNzg2ZS00NzBhMDRiMzdmNDYiO2k6MjtzOjM2OiI3NzExN2IyMy04YTcyLTk3N2ItOTRhMi00NzBhMDRiNmM1YjIiO2k6MztzOjM2OiI3NzE3Yzc5Ny1hZjVhLTFmODMtZWI3My00NzBhMDRiZWUwZWIiO319fX0='),
('a2dbd393-c4a0-f853-7938-470a04d2cc15', 'Home2_CALL', 0, '2007-10-08 10:19:37', '2007-10-08 10:19:37', 'e6215035-1bef-82fe-0c85-470a0358b1fb', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('a31f5d0c-3330-d700-1d3b-470a04a501f1', 'Home2_MEETING', 0, '2007-10-08 10:19:37', '2007-10-08 10:19:37', 'e6215035-1bef-82fe-0c85-470a0358b1fb', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('a35c8fa0-3492-b615-da3c-470a04e7474b', 'Home2_LEAD', 0, '2007-10-08 10:19:37', '2007-10-08 10:19:37', 'e6215035-1bef-82fe-0c85-470a0358b1fb', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('a461ad06-ad97-84e5-41b5-470a0493ff2b', 'Home2_CASE', 0, '2007-10-08 10:19:37', '2007-10-08 10:19:37', 'e6215035-1bef-82fe-0c85-470a0358b1fb', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('a4a0e7bb-ff0a-d6e3-c45e-470a04f9b0d9', 'Home2_OPPORTUNITY', 0, '2007-10-08 10:19:37', '2007-10-08 10:19:37', 'e6215035-1bef-82fe-0c85-470a0358b1fb', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMToiZGF0ZV9jbG9zZWQiO3M6OToic29ydE9yZGVyIjtzOjM6IkFTQyI7fX0='),
('a4e18eb7-8fd7-17d4-ad80-470a04ce3ad6', 'Home2_ACCOUNT', 0, '2007-10-08 10:19:37', '2007-10-08 10:19:37', 'e6215035-1bef-82fe-0c85-470a0358b1fb', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('ea944e78-0862-cc3f-5af8-470dc4e66e28', 'ProductOperations2_PRODUCTOPERATION', 0, '2007-10-11 06:38:46', '2007-10-11 06:38:46', 'db72618d-35da-19ad-1b67-46f37f819f41', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('217c816f-9ce1-8676-736f-470dc411c04a', 'Estimates2_ESTIMATE', 0, '2007-10-11 06:38:55', '2007-10-11 06:38:55', 'db72618d-35da-19ad-1b67-46f37f819f41', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('5f1d1339-20c2-2ea6-d906-470dc5fb3b46', 'Press2_PRESS', 0, '2007-10-11 06:39:06', '2007-10-11 06:39:06', 'db72618d-35da-19ad-1b67-46f37f819f41', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('1ac28bd5-ad15-11ab-b7f5-470dfc03b315', 'Ratefilm2_RATEFILM', 0, '2007-10-11 10:35:43', '2007-10-11 10:35:43', 'db72618d-35da-19ad-1b67-46f37f819f41', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('66934858-331a-d93a-035c-470e0e082a10', 'Accounts2_ACCOUNT', 0, '2007-10-11 11:51:59', '2007-10-11 11:51:59', 'db72618d-35da-19ad-1b67-46f37f819f41', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('26f0f5c5-0bfa-84e2-f795-470e20f89d21', 'Campaigns2_CAMPAIGN', 0, '2007-10-11 13:07:20', '2007-10-11 13:07:20', 'db72618d-35da-19ad-1b67-46f37f819f41', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('14227648-6a9b-3438-3d8f-470e209c008f', 'Cases2_CASE', 0, '2007-10-11 13:07:32', '2007-10-11 13:07:32', 'db72618d-35da-19ad-1b67-46f37f819f41', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('50b7009b-1610-db48-a8e0-470e24233bc0', 'Machines2_MACHINE', 0, '2007-10-11 13:27:29', '2007-10-11 13:27:29', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('c739d4c0-6666-84a2-41f2-47131037e09f', 'Prices2_PRICE', 0, '2007-10-15 07:03:22', '2007-10-15 07:03:22', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('a8b0ebf1-1cea-dc32-139f-47131a5b5849', 'home', 0, '2007-10-15 07:43:10', '2007-10-15 07:43:16', '141f1064-8e78-f58f-ee5f-46f37e56bb1a', 'YToyOntzOjg6ImRhc2hsZXRzIjthOjg6e3M6MzY6IjhiZTNlZmY4LTkyOTctZDJlMi1kODllLTQ3MTMxYWY2NmVkZSI7YToyOntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1ODoiLi9tb2R1bGVzL0NhbGxzL0Rhc2hsZXRzL015Q2FsbHNEYXNobGV0L015Q2FsbHNEYXNobGV0LnBocCI7fXM6MzY6IjhiZTgzOTk0LTYxYjktMGUyZi03MDVlLTQ3MTMxYTkyMmY3MiI7YTozOntzOjk6ImNsYXNzTmFtZSI7czoxMzoiSm90UGFkRGFzaGxldCI7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU1OiIuL21vZHVsZXMvSG9tZS9EYXNobGV0cy9Kb3RQYWREYXNobGV0L0pvdFBhZERhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MTp7czo5OiJzYXZlZFRleHQiO3M6NjY6ItCU0L7QsdGA0LUg0LTQvtGI0LvQuCDQsiDRgdC40YHRgtC10LzQsCBBbHBoYVByaW50PGJyIC8+DQo8YnIgLz4NCiI7fX1zOjM2OiI4YmViN2VmMC0wOTdhLWE4YTEtMWQ0Ny00NzEzMWExMzFiODEiO2E6Mjp7czo5OiJjbGFzc05hbWUiO3M6MTc6Ik15TWVldGluZ3NEYXNobGV0IjtzOjEyOiJmaWxlTG9jYXRpb24iO3M6Njc6Ii4vbW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO31zOjM2OiI4YmVlYWNkNS0zZTJhLWE5ZjItOGU1ZS00NzEzMWFlOTdhMTciO2E6Mjp7czo5OiJjbGFzc05hbWUiO3M6MTQ6Ik15Q2FzZXNEYXNobGV0IjtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NTg6Ii4vbW9kdWxlcy9DYXNlcy9EYXNobGV0cy9NeUNhc2VzRGFzaGxldC9NeUNhc2VzRGFzaGxldC5waHAiO31zOjM2OiI4YmYxY2MwNi1mYmIxLTQxZjctMTVlYS00NzEzMWE2Njc3NzkiO2E6Mjp7czo5OiJjbGFzc05hbWUiO3M6MTQ6Ik15TGVhZHNEYXNobGV0IjtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NTg6Ii4vbW9kdWxlcy9MZWFkcy9EYXNobGV0cy9NeUxlYWRzRGFzaGxldC9NeUxlYWRzRGFzaGxldC5waHAiO31zOjM2OiI4YmY0ZmUzOS01ZTJjLWZhYzAtMGU4Zi00NzEzMWFhMDMxOWIiO2E6Mjp7czo5OiJjbGFzc05hbWUiO3M6MjI6Ik15T3Bwb3J0dW5pdGllc0Rhc2hsZXQiO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo4MjoiLi9tb2R1bGVzL09wcG9ydHVuaXRpZXMvRGFzaGxldHMvTXlPcHBvcnR1bml0aWVzRGFzaGxldC9NeU9wcG9ydHVuaXRpZXNEYXNobGV0LnBocCI7fXM6MzY6IjhiZjgzODdlLWIzNzQtNTAzYS05NzA5LTQ3MTMxYTJkMmZjMCI7YToyOntzOjk6ImNsYXNzTmFtZSI7czoyOToiTXlQaXBlbGluZUJ5U2FsZXNTdGFnZURhc2hsZXQiO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo4OToiLi9tb2R1bGVzL0NoYXJ0cy9EYXNobGV0cy9NeVBpcGVsaW5lQnlTYWxlc1N0YWdlRGFzaGxldC9NeVBpcGVsaW5lQnlTYWxlc1N0YWdlRGFzaGxldC5waHAiO31zOjM2OiI4YmZiNjE0NC1jNTI0LTUyNzctOGViMy00NzEzMWEzOTRlNjEiO2E6Mjp7czo5OiJjbGFzc05hbWUiO3M6MTc6Ik15QWNjb3VudHNEYXNobGV0IjtzOjEyOiJmaWxlTG9jYXRpb24iO3M6Njc6Ii4vbW9kdWxlcy9BY2NvdW50cy9EYXNobGV0cy9NeUFjY291bnRzRGFzaGxldC9NeUFjY291bnRzRGFzaGxldC5waHAiO319czo3OiJjb2x1bW5zIjthOjI6e2k6MDthOjI6e3M6NToid2lkdGgiO3M6MzoiNjAlIjtzOjg6ImRhc2hsZXRzIjthOjQ6e2k6MDtzOjM2OiI4YmUzZWZmOC05Mjk3LWQyZTItZDg5ZS00NzEzMWFmNjZlZGUiO2k6MTtzOjM2OiI4YmViN2VmMC0wOTdhLWE4YTEtMWQ0Ny00NzEzMWExMzFiODEiO2k6MjtzOjM2OiI4YmYxY2MwNi1mYmIxLTQxZjctMTVlYS00NzEzMWE2Njc3NzkiO2k6MztzOjM2OiI4YmY4Mzg3ZS1iMzc0LTUwM2EtOTcwOS00NzEzMWEyZDJmYzAiO319aToxO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI0MCUiO3M6ODoiZGFzaGxldHMiO2E6NDp7aTowO3M6MzY6IjhiZTgzOTk0LTYxYjktMGUyZi03MDVlLTQ3MTMxYTkyMmY3MiI7aToxO3M6MzY6IjhiZWVhY2Q1LTNlMmEtYTlmMi04ZTVlLTQ3MTMxYWU5N2ExNyI7aToyO3M6MzY6IjhiZjRmZTM5LTVlMmMtZmFjMC0wZThmLTQ3MTMxYWEwMzE5YiI7aTozO3M6MzY6IjhiZmI2MTQ0LWM1MjQtNTI3Ny04ZWIzLTQ3MTMxYTM5NGU2MSI7fX19fQ=='),
('19ce6f88-8536-a0b7-02c9-47131992129a', 'home', 0, '2007-10-15 07:39:17', '2007-10-15 07:39:37', 'd7b7db22-0179-aa25-3a55-46f37f9d8175', 'YToyOntzOjg6ImRhc2hsZXRzIjthOjg6e3M6MzY6ImNjYTVlODFjLWMwN2YtN2IwYi1jZDE2LTQ3MTMxOWNiODRjOCI7YToyOntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1ODoiLi9tb2R1bGVzL0NhbGxzL0Rhc2hsZXRzL015Q2FsbHNEYXNobGV0L015Q2FsbHNEYXNobGV0LnBocCI7fXM6MzY6ImNjYWE4NTJiLWE3OGQtMTg3Zi0wODY1LTQ3MTMxOTU0MzMzYyI7YTozOntzOjk6ImNsYXNzTmFtZSI7czoxMzoiSm90UGFkRGFzaGxldCI7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU1OiIuL21vZHVsZXMvSG9tZS9EYXNobGV0cy9Kb3RQYWREYXNobGV0L0pvdFBhZERhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MTp7czo5OiJzYXZlZFRleHQiO3M6NTg6ItCU0L7QsdGA0LUg0LTQvtGI0LvQuCDQsiDRgdC40YHRgtC10LzQsCBBbHBoYVByaW50PGJyIC8+DQoiO319czozNjoiY2NhZGQzZDktNDk2MC1kYjFlLTE2MTYtNDcxMzE5OWNiOWI0IjthOjI6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeU1lZXRpbmdzRGFzaGxldCI7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY3OiIuL21vZHVsZXMvTWVldGluZ3MvRGFzaGxldHMvTXlNZWV0aW5nc0Rhc2hsZXQvTXlNZWV0aW5nc0Rhc2hsZXQucGhwIjt9czozNjoiY2NiMTJhZjUtYzJkZC0xODM3LTRkMzAtNDcxMzE5ZTEyMjA2IjthOjI6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUNhc2VzRGFzaGxldCI7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU4OiIuL21vZHVsZXMvQ2FzZXMvRGFzaGxldHMvTXlDYXNlc0Rhc2hsZXQvTXlDYXNlc0Rhc2hsZXQucGhwIjt9czozNjoiY2NiNDY2ODctNWNkYS05ZDFmLTk1ZGEtNDcxMzE5NTkyMTIxIjthOjI6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUxlYWRzRGFzaGxldCI7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU4OiIuL21vZHVsZXMvTGVhZHMvRGFzaGxldHMvTXlMZWFkc0Rhc2hsZXQvTXlMZWFkc0Rhc2hsZXQucGhwIjt9czozNjoiY2NiODY3MGQtYWY2OS0xYTMwLTE5NjUtNDcxMzE5Mjg4M2Q5IjthOjI6e3M6OToiY2xhc3NOYW1lIjtzOjIyOiJNeU9wcG9ydHVuaXRpZXNEYXNobGV0IjtzOjEyOiJmaWxlTG9jYXRpb24iO3M6ODI6Ii4vbW9kdWxlcy9PcHBvcnR1bml0aWVzL0Rhc2hsZXRzL015T3Bwb3J0dW5pdGllc0Rhc2hsZXQvTXlPcHBvcnR1bml0aWVzRGFzaGxldC5waHAiO31zOjM2OiJjY2JiYzdmNy1iMjM2LThhZjgtNzNhOC00NzEzMTk2NDczZmEiO2E6Mjp7czo5OiJjbGFzc05hbWUiO3M6Mjk6Ik15UGlwZWxpbmVCeVNhbGVzU3RhZ2VEYXNobGV0IjtzOjEyOiJmaWxlTG9jYXRpb24iO3M6ODk6Ii4vbW9kdWxlcy9DaGFydHMvRGFzaGxldHMvTXlQaXBlbGluZUJ5U2FsZXNTdGFnZURhc2hsZXQvTXlQaXBlbGluZUJ5U2FsZXNTdGFnZURhc2hsZXQucGhwIjt9czozNjoiY2NiZjA4ZWMtOTRjYS02YmRmLWQ3NWEtNDcxMzE5NTMwMGM0IjthOjI6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeUFjY291bnRzRGFzaGxldCI7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY3OiIuL21vZHVsZXMvQWNjb3VudHMvRGFzaGxldHMvTXlBY2NvdW50c0Rhc2hsZXQvTXlBY2NvdW50c0Rhc2hsZXQucGhwIjt9fXM6NzoiY29sdW1ucyI7YToyOntpOjA7YToyOntzOjU6IndpZHRoIjtzOjM6IjYwJSI7czo4OiJkYXNobGV0cyI7YTo0OntpOjA7czozNjoiY2NhNWU4MWMtYzA3Zi03YjBiLWNkMTYtNDcxMzE5Y2I4NGM4IjtpOjE7czozNjoiY2NhZGQzZDktNDk2MC1kYjFlLTE2MTYtNDcxMzE5OWNiOWI0IjtpOjI7czozNjoiY2NiNDY2ODctNWNkYS05ZDFmLTk1ZGEtNDcxMzE5NTkyMTIxIjtpOjM7czozNjoiY2NiYmM3ZjctYjIzNi04YWY4LTczYTgtNDcxMzE5NjQ3M2ZhIjt9fWk6MTthOjI6e3M6NToid2lkdGgiO3M6MzoiNDAlIjtzOjg6ImRhc2hsZXRzIjthOjQ6e2k6MDtzOjM2OiJjY2FhODUyYi1hNzhkLTE4N2YtMDg2NS00NzEzMTk1NDMzM2MiO2k6MTtzOjM2OiJjY2IxMmFmNS1jMmRkLTE4MzctNGQzMC00NzEzMTllMTIyMDYiO2k6MjtzOjM2OiJjY2I4NjcwZC1hZjY5LTFhMzAtMTk2NS00NzEzMTkyODgzZDkiO2k6MztzOjM2OiJjY2JmMDhlYy05NGNhLTZiZGYtZDc1YS00NzEzMTk1MzAwYzQiO319fX0='),
('1a1c89a5-ccab-52a4-690e-4713196a733c', 'Home2_CALL', 0, '2007-10-15 07:39:17', '2007-10-15 07:39:17', 'd7b7db22-0179-aa25-3a55-46f37f9d8175', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('1a5a9b12-b68f-be22-fe10-471319888413', 'Home2_MEETING', 0, '2007-10-15 07:39:17', '2007-10-15 07:39:17', 'd7b7db22-0179-aa25-3a55-46f37f9d8175', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('1a9cb8f8-2206-fcab-b329-471319a3d8fb', 'Home2_LEAD', 0, '2007-10-15 07:39:17', '2007-10-15 07:39:17', 'd7b7db22-0179-aa25-3a55-46f37f9d8175', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('1cbd2919-01c6-be6c-c2df-471319d8b94a', 'Home2_CASE', 0, '2007-10-15 07:39:17', '2007-10-15 07:39:17', 'd7b7db22-0179-aa25-3a55-46f37f9d8175', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('1fc6010c-a4f6-aa52-0885-471319f0b7b7', 'Home2_OPPORTUNITY', 0, '2007-10-15 07:39:17', '2007-10-15 07:39:17', 'd7b7db22-0179-aa25-3a55-46f37f9d8175', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMToiZGF0ZV9jbG9zZWQiO3M6OToic29ydE9yZGVyIjtzOjM6IkFTQyI7fX0='),
('200fd89e-773e-a3c0-9025-471319ee895c', 'Home2_ACCOUNT', 0, '2007-10-15 07:39:17', '2007-10-15 07:39:17', 'd7b7db22-0179-aa25-3a55-46f37f9d8175', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('ab9f902a-d66f-b687-57b5-4713199531b0', 'Pressmachine2_PRESSMACHINE', 0, '2007-10-15 07:39:47', '2007-10-15 07:39:47', 'd7b7db22-0179-aa25-3a55-46f37f9d8175', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('a90f70cd-4a91-da3a-c6c3-47131a797fbc', 'Home2_CALL', 0, '2007-10-15 07:43:10', '2007-10-15 07:43:10', '141f1064-8e78-f58f-ee5f-46f37e56bb1a', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('a950e935-4840-1b3b-fe55-47131aef5a25', 'Home2_MEETING', 0, '2007-10-15 07:43:10', '2007-10-15 07:43:10', '141f1064-8e78-f58f-ee5f-46f37e56bb1a', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('a9921d89-b77f-3444-5025-47131abd69ae', 'Home2_LEAD', 0, '2007-10-15 07:43:10', '2007-10-15 07:43:10', '141f1064-8e78-f58f-ee5f-46f37e56bb1a', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('aa9e846a-beaa-26dd-9b34-47131af946bb', 'Home2_CASE', 0, '2007-10-15 07:43:10', '2007-10-15 07:43:10', '141f1064-8e78-f58f-ee5f-46f37e56bb1a', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('aaddd8ba-57ce-f2d0-25ba-47131ab3b1e8', 'Home2_OPPORTUNITY', 0, '2007-10-15 07:43:10', '2007-10-15 07:43:10', '141f1064-8e78-f58f-ee5f-46f37e56bb1a', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMToiZGF0ZV9jbG9zZWQiO3M6OToic29ydE9yZGVyIjtzOjM6IkFTQyI7fX0='),
('ab1acddc-e58d-93aa-0eea-47131a9c3920', 'Home2_ACCOUNT', 0, '2007-10-15 07:43:10', '2007-10-15 07:43:10', '141f1064-8e78-f58f-ee5f-46f37e56bb1a', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('b165fca5-da48-32f6-a00e-47131a34dc42', 'Estimates2_ESTIMATE', 0, '2007-10-15 07:43:24', '2007-10-15 07:43:24', '141f1064-8e78-f58f-ee5f-46f37e56bb1a', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('ef3515a0-95a1-4bb4-5b76-47131a422e44', 'Press2_PRESS', 0, '2007-10-15 07:43:35', '2007-10-15 07:43:35', '141f1064-8e78-f58f-ee5f-46f37e56bb1a', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('743567b4-0ac3-8c2f-b0ba-471320655ea3', 'ProductLogs2_PRODUCTLOG', 0, '2007-10-15 08:09:15', '2007-10-15 08:09:15', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('edb57b1e-6f1f-722f-8bc3-47166575e423', 'home', 0, '2007-10-17 19:43:50', '2007-10-17 19:43:50', '28d2f82e-0aec-0640-54b7-4716657084fd', 'YToyOntzOjg6ImRhc2hsZXRzIjthOjg6e3M6MzY6Ijg0YjZmNjBiLTEwZWUtNzdjYS0zM2E5LTQ3MTY2NWQ3YmViMyI7YToyOntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1ODoiLi9tb2R1bGVzL0NhbGxzL0Rhc2hsZXRzL015Q2FsbHNEYXNobGV0L015Q2FsbHNEYXNobGV0LnBocCI7fXM6MzY6Ijg0ZDdhMDViLTcwMjQtZjE0Zi1hZGZlLTQ3MTY2NTUyZWNiMCI7YToyOntzOjk6ImNsYXNzTmFtZSI7czoxMzoiSm90UGFkRGFzaGxldCI7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU1OiIuL21vZHVsZXMvSG9tZS9EYXNobGV0cy9Kb3RQYWREYXNobGV0L0pvdFBhZERhc2hsZXQucGhwIjt9czozNjoiODRmNWZhOGEtNTExNi0wNWU5LTE0OWQtNDcxNjY1ZTVjZWVjIjthOjI6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeU1lZXRpbmdzRGFzaGxldCI7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY3OiIuL21vZHVsZXMvTWVldGluZ3MvRGFzaGxldHMvTXlNZWV0aW5nc0Rhc2hsZXQvTXlNZWV0aW5nc0Rhc2hsZXQucGhwIjt9czozNjoiODUxNDgxZWYtZWI3My0wZDNhLTE2OGYtNDcxNjY1OTliNjgxIjthOjI6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUNhc2VzRGFzaGxldCI7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU4OiIuL21vZHVsZXMvQ2FzZXMvRGFzaGxldHMvTXlDYXNlc0Rhc2hsZXQvTXlDYXNlc0Rhc2hsZXQucGhwIjt9czozNjoiODUzNTNlYjAtZDIxNC1hNjI4LTliZmMtNDcxNjY1MWEwZmZjIjthOjI6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUxlYWRzRGFzaGxldCI7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU4OiIuL21vZHVsZXMvTGVhZHMvRGFzaGxldHMvTXlMZWFkc0Rhc2hsZXQvTXlMZWFkc0Rhc2hsZXQucGhwIjt9czozNjoiODU5NWJkYzctNThkMS0wMzBmLWVjOGMtNDcxNjY1ZDQwYTQxIjthOjI6e3M6OToiY2xhc3NOYW1lIjtzOjIyOiJNeU9wcG9ydHVuaXRpZXNEYXNobGV0IjtzOjEyOiJmaWxlTG9jYXRpb24iO3M6ODI6Ii4vbW9kdWxlcy9PcHBvcnR1bml0aWVzL0Rhc2hsZXRzL015T3Bwb3J0dW5pdGllc0Rhc2hsZXQvTXlPcHBvcnR1bml0aWVzRGFzaGxldC5waHAiO31zOjM2OiI4NWI0OThhOS1jZGE5LTBjNWYtOWQ0MS00NzE2NjUyNDc3N2IiO2E6Mjp7czo5OiJjbGFzc05hbWUiO3M6Mjk6Ik15UGlwZWxpbmVCeVNhbGVzU3RhZ2VEYXNobGV0IjtzOjEyOiJmaWxlTG9jYXRpb24iO3M6ODk6Ii4vbW9kdWxlcy9DaGFydHMvRGFzaGxldHMvTXlQaXBlbGluZUJ5U2FsZXNTdGFnZURhc2hsZXQvTXlQaXBlbGluZUJ5U2FsZXNTdGFnZURhc2hsZXQucGhwIjt9czozNjoiODVkNDcyYmQtZWVkYi1mYzlkLTUxY2QtNDcxNjY1YWZiZTk3IjthOjI6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeUFjY291bnRzRGFzaGxldCI7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY3OiIuL21vZHVsZXMvQWNjb3VudHMvRGFzaGxldHMvTXlBY2NvdW50c0Rhc2hsZXQvTXlBY2NvdW50c0Rhc2hsZXQucGhwIjt9fXM6NzoiY29sdW1ucyI7YToyOntpOjA7YToyOntzOjU6IndpZHRoIjtzOjM6IjYwJSI7czo4OiJkYXNobGV0cyI7YTo0OntpOjA7czozNjoiODRiNmY2MGItMTBlZS03N2NhLTMzYTktNDcxNjY1ZDdiZWIzIjtpOjE7czozNjoiODRmNWZhOGEtNTExNi0wNWU5LTE0OWQtNDcxNjY1ZTVjZWVjIjtpOjI7czozNjoiODUzNTNlYjAtZDIxNC1hNjI4LTliZmMtNDcxNjY1MWEwZmZjIjtpOjM7czozNjoiODViNDk4YTktY2RhOS0wYzVmLTlkNDEtNDcxNjY1MjQ3NzdiIjt9fWk6MTthOjI6e3M6NToid2lkdGgiO3M6MzoiNDAlIjtzOjg6ImRhc2hsZXRzIjthOjQ6e2k6MDtzOjM2OiI4NGQ3YTA1Yi03MDI0LWYxNGYtYWRmZS00NzE2NjU1MmVjYjAiO2k6MTtzOjM2OiI4NTE0ODFlZi1lYjczLTBkM2EtMTY4Zi00NzE2NjU5OWI2ODEiO2k6MjtzOjM2OiI4NTk1YmRjNy01OGQxLTAzMGYtZWM4Yy00NzE2NjVkNDBhNDEiO2k6MztzOjM2OiI4NWQ0NzJiZC1lZWRiLWZjOWQtNTFjZC00NzE2NjVhZmJlOTciO319fX0='),
('f085fb1b-b2ee-1148-814b-4716653aada5', 'Home2_CALL', 0, '2007-10-17 19:43:50', '2007-10-17 19:43:50', '28d2f82e-0aec-0640-54b7-4716657084fd', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('bfd00678-5382-75ed-725b-471665f0fc0a', 'Home2_MEETING', 0, '2007-10-17 19:43:50', '2007-10-17 19:43:51', '28d2f82e-0aec-0640-54b7-4716657084fd', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('9f400d3d-f742-728b-4c8e-471665b29d44', 'Home2_LEAD', 0, '2007-10-17 19:43:50', '2007-10-17 19:43:51', '28d2f82e-0aec-0640-54b7-4716657084fd', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('19076c4e-1307-a794-5628-47166575673e', 'Home2_CASE', 0, '2007-10-17 19:43:51', '2007-10-17 19:43:51', '28d2f82e-0aec-0640-54b7-4716657084fd', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('1bbbe1d1-2017-23d9-bd20-471665c90848', 'Home2_OPPORTUNITY', 0, '2007-10-17 19:43:51', '2007-10-17 19:43:51', '28d2f82e-0aec-0640-54b7-4716657084fd', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMToiZGF0ZV9jbG9zZWQiO3M6OToic29ydE9yZGVyIjtzOjM6IkFTQyI7fX0='),
('1f29b451-9c28-a980-795b-4716652a367d', 'Home2_ACCOUNT', 0, '2007-10-17 19:43:51', '2007-10-17 19:43:51', '28d2f82e-0aec-0640-54b7-4716657084fd', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('72ddbc40-59f9-6985-fd33-4716663bfe52', 'Paperformat2_PAPERFORMAT', 0, '2007-10-17 19:47:59', '2007-10-17 19:47:59', '28d2f82e-0aec-0640-54b7-4716657084fd', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('c85756f4-d407-0ba6-3bd4-47166f47029a', 'Products2_PRODUCTS', 0, '2007-10-17 20:23:07', '2007-10-17 20:23:07', '28d2f82e-0aec-0640-54b7-4716657084fd', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('b1d20ab1-4124-acbd-5d4d-47168d3c69b1', 'Paperformat2_PAPERFORMAT', 0, '2007-10-17 22:30:37', '2007-10-17 22:30:37', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0=');

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

INSERT INTO `vcals` (`id`, `deleted`, `date_entered`, `date_modified`, `user_id`, `type`, `source`, `content`) VALUES 
('812e0287-58e2-81a3-e2b9-45e82bf6ca44', 0, '2007-03-02 13:49:33', '2007-09-25 09:06:25', '1', 'vfb', 'sugar', 'BEGIN:VCALENDAR\nVERSION:2.0\nPRODID:-//SugarCRM//SugarCRM Calendar//EN\nBEGIN:VFREEBUSY\nORGANIZER;CN= Administrator:lord_pgp@abv.bg\nDTSTART:20070924T090600Z\nDTEND:20071124T090600Z\nDTSTAMP:20070925T090600Z\nEND:VFREEBUSY\nEND:VCALENDAR\n');

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

INSERT INTO `versions` (`id`, `deleted`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `name`, `file_version`, `db_version`) VALUES 
('fd82040a-71b3-ae25-661b-458d3ecce76f', 0, '2006-12-23 14:35:31', '2006-12-23 14:35:31', '1', NULL, 'Custom Labels', '3.0', '3.0'),
('11323113-1d08-3e1d-c115-458d3e8763dd', 0, '2006-12-23 14:35:31', '2006-12-23 14:35:31', '1', NULL, 'Chart Data Cache', '3.5.1', '3.5.1'),
('130960f7-7232-8ad7-67e0-458d3e6c10fb', 0, '2006-12-23 14:35:31', '2006-12-23 14:35:31', '1', NULL, 'htaccess', '3.5.1', '3.5.1'),
('13b084d4-e21b-f167-e857-458d3ef68c50', 0, '2006-12-23 14:35:31', '2006-12-23 14:35:31', '1', NULL, 'DST Fix', '3.5.1b', '3.5.1b'),
('14aa99be-db6e-c6cd-4ef2-458d3ea2db6b', 0, '2006-12-23 14:35:31', '2006-12-23 14:35:31', '1', NULL, 'Rebuild Relationships', '4.0.0', '4.0.0'),
('154d9aab-a36a-c0b1-e5fd-458d3e9e873d', 0, '2006-12-23 14:35:31', '2006-12-23 14:35:31', '1', NULL, 'Rebuild Extensions', '4.0.0', '4.0.0'),
('16572cfe-4764-9b0c-fc5a-458d3e02a20c', 0, '2006-12-23 14:35:31', '2006-12-23 14:35:31', '1', NULL, 'Studio Files', '4.5.0', '4.5.0');
