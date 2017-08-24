
INSERT INTO `api` (`id`, `key`, `owner`, `url`)
VALUES
	(1,'b19cf4c559204e82bb7d2ff12172bacf','Helen','https://spotify.com');


INSERT INTO `art` (`id`, `title`, `artist`, `media`, `status`, `geolat`, `geolng`, `path`, `date`, `user_id`, `location`, `address`, `desciption`)
VALUES
	(1,'untitled','Murakami','Mural',0,NULL,NULL,'public/assets/img/artworks/1.jpg',NULL,NULL,X'7B226B31223A202276616C7565222C20226B32223A2031307D','300 E Chicago Avenue',NULL),
	(2,'untitled','unkown','Mixed',0,NULL,NULL,'public/assets/img/artworks/2.jpg',NULL,NULL,X'7B226B31223A202276616C7565222C20226B32223A2031307D','2800 Diversey Parkway',NULL),
	(3,'Steel Roots','Steve Tobin','Sculpture',0,NULL,NULL,'public/assets/img/artworks/3.jpg',NULL,NULL,X'7B226B31223A202276616C7565222C20226B32223A2031307D','1900 Fullerton Parkway',NULL);


INSERT INTO `user` (`id`, `name`, `email`, `password`, `login_name`)
VALUES
	(1,'Helen Smith','intaglioplate','crashtestdummy','crashtestdummy');
