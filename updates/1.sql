CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) DEFAULT CHARSET=utf8;


CREATE TABLE IF NOT EXISTS  `groups_users` (
	`user_id` int(11) DEFAULT NULL,
	`group_id` int(11) DEFAULT NULL,
	KEY `group_id` (`group_id`),
	KEY `user_id` (`user_id`)
) DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(30) NOT NULL DEFAULT '',
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `timeZone` varchar(255) DEFAULT NULL,
  `middleName` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_user_id` int(11) DEFAULT NULL,
  `updated_user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `shop_role_id` int(11) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `password_restore_hash` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login` (`login`),
  KEY `firstName` (`firstName`),
  KEY `lastName` (`lastName`),
  KEY `email` (`email`),
  KEY `password_restore_hash` (`password_restore_hash`),
  KEY `middleName` (`middleName`)
) DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `rights` (
  `group_id` int(11) NOT NULL DEFAULT '0',
  `module` varchar(50) NOT NULL DEFAULT '',
  `resource` varchar(50) NOT NULL DEFAULT '',
  `object` varchar(50) NOT NULL DEFAULT '',
  `value` int(11) DEFAULT NULL,
  PRIMARY KEY (`group_id`,`module`,`resource`,`object`),
  KEY `module` (`module`),
  KEY `group_id` (`group_id`)
) DEFAULT CHARSET=utf8;


insert into groups(code, name, description) values ('administrator', 'Administrator', 'Administrators can manage user accounts, system settings and any other objects in the system.');