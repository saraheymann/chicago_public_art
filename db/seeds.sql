# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.5.15)
# Database: chicago_public
# Generation Time: 2017-08-23 18:25:20 +0000
# ************************************************************


# Seed of table art
# ------------------------------------------------------------


INSERT INTO `art` (`id`, `work`, `artist`, `media`, `status`, `geolat`, `geolng`, `img`, `path`, `date`, `user_id`)
VALUES
	(1,'John Peter Altgeld','Gutzon Borglum','Sculpture',1,41.932850,-87.637337,'','public/assets/img/artworks/6.jpg','2017-08-23 13:22:28',1),
	(3,'Untitled','Murakami','Painting',0,41.896908,-87.620232,'','public/assets/img/artworks/1.jpg','2017-08-23 13:18:48',1),
	(4,'Untitled','unkown','Mixed',0,41.930370,87.636658,'','public/assets/img/artworks/2.jpg','2017-08-23 13:23:07',1),
	(5,'Steel Roots','Steve Tobin','Sculpture',0,41.926498,-87.635063,'','public/assets/img/artworks/3.jpg','2017-08-23 13:23:55',1),
	(6,'Bison','Chris Williams','Sculpture',0,41.926723,-87.635101,'','public/assets/img/artworks/4.jpg','2017-08-23 13:24:08',1),
	(7,'Untitled','unkown','Mixed',0,41.930370,87.636658,'','public/assets/img/artworks/7.jpg','2017-08-23 13:24:10',1);



# Seed of table user
# ------------------------------------------------------------


/*!40000 ALTER TABLE `user` DISABLE KEYS */;

INSERT INTO `user` (`id`, `name`, `email`, `password`, `login_name`)
VALUES
	(1,'Helen Smith','intagliopplate','crashtestdummy','crashtestdummy');
