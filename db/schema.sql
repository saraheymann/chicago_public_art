# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.5.15)
# Database: chicago_public
# Generation Time: 2017-08-23 14:37:11 +0000
# ************************************************************


DROP DATABASE IF EXISTS chicago_public;
CREATE database chicago_public;

USE chicago_public;

# Dump of table api
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL DEFAULT '',
  `email` varchar(250) NOT NULL DEFAULT '',
  `password` varchar(15) NOT NULL DEFAULT '',
  `login_name` varchar(15) NOT NULL DEFAULT '',
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
); 

# Dump of table art
# ------------------------------------------------------------

DROP TABLE IF EXISTS `art`;

CREATE TABLE `art` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) DEFAULT 'untitled',
  `artist` varchar(250) DEFAULT 'unkown',
  `media` varchar(250) DEFAULT NULL,
  `description` mediumtext,
  `viewable` tinyint(1) NOT NULL DEFAULT '0',
  `img_file_path` varchar(250) DEFAULT NULL,
  `geolat` float(10,6) DEFAULT NULL,
  `geolng` float(10,6) DEFAULT NULL,
  `google_geo` json NOT NULL,
  `street_number` int(15) DEFAULT NULL,
  `route` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `zip` int(6) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
);

# Dump of table user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `api`;

CREATE TABLE `api` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(250) DEFAULT '',
  `owner` varchar(250) DEFAULT NULL,
  `url` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
);
