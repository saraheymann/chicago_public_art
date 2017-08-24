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

DROP TABLE IF EXISTS `api`;

CREATE TABLE `api` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(250) DEFAULT '',
  `owner` varchar(250) DEFAULT NULL,
  `url` varchar(250) DEFAULT NULL,
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
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `geolat` float(10,6) DEFAULT NULL,
  `geolng` float(10,6) DEFAULT NULL,
  `path` varchar(250) DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `location` json NOT NULL,
  `address` varchar(250) DEFAULT '',
  `desciption` mediumtext,
  PRIMARY KEY (`id`)
) ;

# Dump of table user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL DEFAULT '',
  `email` varchar(250) NOT NULL DEFAULT '',
  `password` varchar(15) NOT NULL DEFAULT '',
  `login_name` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
);
