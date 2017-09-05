

INSERT INTO `api` (`id`, `key`, `owner`, `url`)
VALUES
	(1,'n21cf4c559204e82bb7d2ff12172bacf','Helen','https://spotify.com'),
	(2,'AIxsTyCf-3z1vv2pgDOcWmZnH6yKB0ZV06eLfCQ','Helen','https://www.google.com/maps');


	INSERT INTO `art` (`id`, `title`, `artist`, `media`, `description`, `viewable`, `path`, `lat`, `long`, `location`, `user_id`, `date`)
VALUES
	(1,'untitled','Murakami','Mural','happy faces on garage on south side of building',0,'/assets/img/artworks/1.jpg',000000000000041.895676,-87.621887,'{\"lat\": 41.8956773, \"lng\": 87.6218851}',NULL,NULL),
	(2,'untitled','unkown','Mixed','semi nude image, paper on stone',0,'/assets/img/artworks/2.jpg',000000000000041.930141,-87.637466,'{\"lat\": 41.9301427, \"lng\": -87.6374663}',NULL,NULL),
	(3,'Steel Roots','Steve Tobin','Sculpture','large sculpture of recycled metal',0,'/assets/img/artworks/3.jpg',000000000000041.926403,-87.634583,'{\"lat\": 41.9264019, \"lng\": -87.634579}',NULL,NULL),
	(4,'untitled','unkown',NULL,'cat',0,'/assets/img/Animals.jpg',0000041.95480999999999,-87.651029,'',NULL,'2017-08-28 14:20:23'),
	(5,'cat','unknown',NULL,'coloring page',0,'/assets/img/Animals.jpg',00000000000029.9946987,-90.1647455,'',NULL,'2017-08-29 07:22:38');


INSERT INTO `user` (`id`, `name`, `email`, `password`, `login_name`, `timestamp`)
VALUES
	(1,'Helen Smith','intaglioplate','crashtestdummy','crashtestdummy','2017-08-25 12:22:26');
