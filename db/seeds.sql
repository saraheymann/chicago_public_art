

INSERT INTO `api` (`id`, `key`, `owner`, `url`)
VALUES
	(1,'b19cf4c559204e82bb7d2ff12172bacf','Helen','https://spotify.com'),
	(2,'AIzaSyCf-3z1vv2pgDOcWmZnH6yKB0ZV06eLfCQ','Helen','https://www.google.com/maps');


INSERT INTO `art` (`id`, `title`, `artist`, `media`, `description`, `viewable`, `img_file_path`, `geolat`, `geolng`, `google_geo`, `street_number`, `route`, `city`, `state`, `zip`, `user_id`, `date`)
VALUES
	(1,'untitled','Murakami','Mural','happy faces on garage on south side of building',0,'public/assets/img/artworks/1.jpg',41.895676,-87.621887,X'7B226C6174223A2034312E383935363737332C20226C6E67223A2038372E363231383835317D',220,'E Chicago Avenue','Chicago','IL',60611,NULL,NULL),
	(2,'untitled','unkown','Mixed','semi nude image, paper on stone',0,'public/assets/img/artworks/2.jpg',41.930141,87.637466,X'7B226C6174223A2034312E393330313432372C20226C6E67223A202D38372E363337343636337D',NULL,NULL,'Chicago','IL',60614,NULL,NULL),
	(3,'Steel Roots','Steve Tobin','Sculpture','large sculpture of recycled metal',0,'public/assets/img/artworks/3.jpg',41.926403,-87.634583,X'7B226C6174223A2034312E393236343031392C20226C6E67223A202D38372E3633343537397D',230,'N Cannon Drive','Chicago','IL',60614,NULL,NULL);


INSERT INTO `user` (`id`, `name`, `email`, `password`, `login_name`, `timestamp`)
VALUES
	(1,'Helen Smith','intaglioplate','crashtestdummy','crashtestdummy','2017-08-25 12:22:26');
