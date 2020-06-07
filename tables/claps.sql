use toon;

CREATE TABLE claps(
    id integer NOT NULL PRIMARY KEY AUTO_INCREMENT,
    postId integer NOT NULL,
    userId integer NOT NULL,
    FOREIGN KEY(userId) REFERENCES users(id),
    FOREIGN KEY(postId) REFERENCES posts(id)
);

INSERT INTO `claps` (`id`,`postId`,`userId`) VALUES (1,39,27),(2,12,30),(3,36,12),(4,6,3),(5,3,25),(6,33,50),(7,34,39),(8,46,1),(9,36,25),(10,18,15);
INSERT INTO `claps` (`id`,`postId`,`userId`) VALUES (11,46,10),(12,27,6),(13,29,46),(14,23,13),(15,41,1),(16,41,42),(17,38,49),(18,8,30),(19,6,6),(20,3,43);
INSERT INTO `claps` (`id`,`postId`,`userId`) VALUES (21,29,44),(22,14,43),(23,5,48),(24,32,9),(25,9,19),(26,12,32),(27,20,33),(28,5,27),(29,28,22),(30,8,26);
INSERT INTO `claps` (`id`,`postId`,`userId`) VALUES (31,33,37),(32,41,5),(33,15,35),(34,21,27),(35,42,42),(36,36,34),(37,44,24),(38,22,26),(39,13,33),(40,10,32);
INSERT INTO `claps` (`id`,`postId`,`userId`) VALUES (41,49,27),(42,24,24),(43,46,47),(44,37,41),(45,26,48),(46,27,14),(47,6,40),(48,23,50),(49,49,43),(50,14,5);
