
SET FOREIGN_KEY_CHECKS=OFF;

# Dump of table movies
# ------------------------------------------------------------

DROP TABLE IF EXISTS `movies`;

CREATE TABLE `movies` (
  `movie_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `movie_name` varchar(255) NOT NULL DEFAULT '',
  `movie_year` int(4) NOT NULL,
  `movie_rating` varchar(10) NOT NULL DEFAULT '',
  `movie_bio` varchar(255) DEFAULT NULL,
  `movie_img` varchar(200) NOT NULL,
  PRIMARY KEY (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;

INSERT INTO `movies` (`movie_id`, `movie_name`, `movie_year`, `movie_rating`, `movie_bio`, `movie_img`)
VALUES
	(1,'Brahmastra: Part One – Shiva',2022,'','A young man on the brink of falling in love gets his world turned upside down when he discovers he has the power to control fire and a connection to a secret society of guardians','assets/img/brahmastra1.jpg'),
	(2,'Ek Villain Returns',2022,'','When a singer disappears during a serial killer spree, a taxidriver and a businessmans son cross paths in a disturbing tale where the lines between good and evil are blurred.','assets/img/Ekvillian.jpg'),
	(3,'3 Idiots',2009,'','In college, Farhan and Raju form a great bond with Rancho due to his positive and refreshing outlook to life. Years later, a bet gives them a chance to look for their long-lost friend whose existence seems rather elusive.','assets/img/3Idiot.jpg'),
	(4,'K.G.F: Chapter 1',2018,'','Rocky, a young man, seeks power and wealth in order to fulfil a promise to his dying mother. His quest takes him to Mumbai, where he becomes involved with the notorious gold mafia.','assets/img/KGF.jpg'),
	(5,'K.G.F: Chapter 2',2022,'','The blood-soaked land of Kolar Gold Fields has a new overlord now, Rocky, whose name strikes fear in the heart of his foes. His allies look up to him as their Savior, the government sees him as a threat, and his enemies are clamouring for revenge.','assets/img/KGF2.jpg'),
	(6,'Shershaah',2021,'','Vikram Batra, a young man, dreams of becoming a soldier and falls in love with Dimple. Soon after his training, he climbs the military ranks and contributes to India victory in the Kargil war.','assets/img/Shershaah.jpg'),
	(7,'War',2019,'','It is the third installment in the YRF Spy Universe and stars Hrithik Roshan, Tiger Shroff, and Vaani Kapoor. In the film, Khalid Rahmani (Shroff), an Indian soldier, is assigned to eliminate his former mentor Kabir Dhaliwal (Roshan), who has inexplicably gone rogue.','assets/img/war2.jpg'),
	(8,'Fanaa',2006,'','Rehan (Aamir Khan), a tour guide and notorious flirt, meets Zooni (Kajol), a blind Kashmiri woman. She determines to live independently and disregards her friends advice to ignore Rehan. He teaches her how to experience life to the fullest but, at the same time, he withholds a terrible secret that could destroy them both.','assets/img/Fanaa.jpg'),
	(9,'Aashiqui 2',2013,'','Rahul, a singing sensation, falls in love with Aarohi, a girl who sings in the bar. He helps her accomplish her dream of becoming a famous singer, but his own shortcomings jeopardize their future.','assets/img/aashiqui2.jpg'),
	(10,'Thor',2011,'','As the son of Odin (Anthony Hopkins), king of the Norse gods, Thor (Chris Hemsworth) will soon inherit the throne of Asgard from his aging father. However, on the day that he is to be crowned, Thor reacts with brutality when the gods enemies, the Frost Giants, enter the palace in violation of their treaty. As punishment, Odin banishes Thor to Earth. While Loki (Tom Hiddleston), Thors brother, plots mischief in Asgard, Thor, now stripped of his powers, faces his greatest threat.','assets/img/Thor.jpg'),
	(11,'The Avengers',2012,'','When Thor evil brother, Loki (Tom Hiddleston), gains access to the unlimited power of the energy cube called the Tesseract, Nick Fury (Samuel L. Jackson), director of S.H.I.E.L.D., initiates a superhero recruitment effort to defeat the unprecedented threat to Earth. Joining Fury "dream team" are Iron Man (Robert Downey Jr.), Captain America (Chris Evans), the Hulk (Mark Ruffalo), Thor (Chris Hemsworth), the Black Widow (Scarlett Johansson) and Hawkeye (Jeremy Renner).','assets/img/The_Avengers.jpg'),
	(12,'Avengers: Age of Ultron',2015,'','When Tony Stark (Robert Downey Jr.) jump-starts a dormant peacekeeping program, things go terribly awry, forcing him, Thor (Chris Hemsworth), the Incredible Hulk (Mark Ruffalo) and the rest of the Avengers to reassemble. As the fate of Earth hangs in the balance, the team is put to the ultimate test as they battle Ultron, a technological terror hell-bent on human extinction. Along the way, they encounter two mysterious and powerful newcomers, Pietro and Wanda Maximoff.','assets/img/ageofultron.jpg'),
	(13,'Thor: The Dark World',2013,'','In ancient times, the gods of Asgard fought and won a war against an evil race known as the Dark Elves. The survivors were neutralized, and their ultimate weapon -- the Aether -- was buried in a secret location. Hundreds of years later, Jane Foster (Natalie Portman) finds the Aether and becomes its host, forcing Thor (Chris Hemsworth) to bring her to Asgard before Dark Elf Malekith (Christopher Eccleston) captures her and uses the weapon to destroy the Nine Realms -- including Earth.','assets/img/Thor_The_Dark_World.jpg'),
	(14,'Thor: Ragnarok',2017,'','Imprisoned on the other side of the universe, the mighty Thor finds himself in a deadly gladiatorial contest that pits him against the Hulk, his former ally and fellow Avenger. Thor quest for survival leads him in a race against time to prevent the all-powerful Hela from destroying his home world and the Asgardian civilization.','assets/img/Thor_ragnarok.jpg'),
	(15,'Thor: Love and Thunder',2022,'','Thor embarks on a journey unlike anything he ever faced -- a quest for inner peace. However, his retirement gets interrupted by Gorr the God Butcher, a galactic killer who seeks the extinction of the gods. To combat the threat, Thor enlists the help of King Valkyrie, Korg and ex-girlfriend Jane Foster, who -- to his surprise -- inexplicably wields his magical hammer. Together, they set out on a harrowing cosmic adventure to uncover the mystery of the God Butchers vengeance.','assets/img/Thor_Love_and_Thunder.jpg');

/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `user_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) NOT NULL DEFAULT '',
  `user_full_name` varchar(150) NOT NULL DEFAULT '',
  `user_email` varchar(255) NOT NULL DEFAULT '',
  `user_password` varchar(255) NOT NULL DEFAULT '',
  `user_role` int(11) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`user_id`, `user_name`, `user_full_name`, `user_email`, `user_password`, `user_role`)
VALUES
  (37,'Satyam','Raj Satyam','Satyam@admin.com','Satyam',1),
  (38,'admin','Admin 1','admin@admin.com','admin',1),
  (39,'test','Test','test@test.com','test',2);

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table reviews
# ------------------------------------------------------------

DROP TABLE IF EXISTS `reviews`;

CREATE TABLE `reviews` (
  `review_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `review_movie_id` int(11) unsigned NOT NULL,
  `review_user_id` int(11) unsigned NOT NULL,
  `review_rating` int(11) NOT NULL,
  `review_content` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`review_id`),
  KEY `users_foreign_key` (`review_user_id`),
  KEY `movies_foreign_key` (`review_movie_id`),
  CONSTRAINT `movies_foreign_key` FOREIGN KEY (`review_movie_id`) REFERENCES `movies` (`movie_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `users_foreign_key` FOREIGN KEY (`review_user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;

INSERT INTO `reviews` (`review_id`, `review_movie_id`, `review_user_id`, `review_rating`, `review_content`)
VALUES
	(6,1,39,4,'This is one of my favorite movies of all time!'),
	(7,1,39,1,'On second thought, this was awful.');

/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

SET FOREIGN_KEY_CHECKS=ON;


/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
