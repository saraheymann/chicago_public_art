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

# Dump of table art
# ------------------------------------------------------------

DROP TABLE IF EXISTS `art`;

CREATE TABLE `art` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `work` varchar(250) DEFAULT 'untitled',
  `artist` varchar(250) DEFAULT 'unkown',
  `media` varchar(250) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `geolat` float(10,6) DEFAULT NULL,
  `geolng` float(10,6) DEFAULT NULL,
  `img` blob NOT NULL,
  `path` char(1) DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
