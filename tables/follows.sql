-USE toon;

CREATE TABLE `follows` (
  `id` integer NOT NULL UNIQUE AUTO_INCREMENT,
  `followerId` integer NOT NULL,
  `followingId` integer NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY(followerId) REFERENCES users(id),
  FOREIGN KEY(followingId) REFERENCES users(id)
);

INSERT INTO `follows` (`id`,`followerId`,`followingId`) VALUES (1,9,35),(2,30,36),(3,4,22),(4,43,7),(5,47,14),(6,2,5),(7,32,36),(8,15,21),(9,39,31),(10,3,21);
INSERT INTO `follows` (`id`,`followerId`,`followingId`) VALUES (11,2,14),(12,50,20),(13,24,24),(14,15,6),(15,29,6),(16,39,2),(17,46,1),(18,19,46),(19,28,13),(20,28,5);
INSERT INTO `follows` (`id`,`followerId`,`followingId`) VALUES (21,5,4),(22,13,9),(23,8,2),(24,50,29),(25,43,20),(26,42,28),(27,12,42),(28,35,47),(29,27,17),(30,47,15);
INSERT INTO `follows` (`id`,`followerId`,`followingId`) VALUES (31,44,26),(32,29,32),(33,25,29),(34,18,20),(35,10,32),(36,32,25),(37,44,17),(38,1,14),(39,17,10),(40,13,19);
INSERT INTO `follows` (`id`,`followerId`,`followingId`) VALUES (41,43,20),(42,6,31),(43,16,40),(44,42,24),(45,36,27),(46,8,8),(47,20,41),(48,10,32),(49,23,48),(50,38,4);