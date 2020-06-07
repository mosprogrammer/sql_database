-- CREATE DATABASE eba_db;

-- SELECT * FROM posts;

-- สร้าง table 

-- CREATE TABLE `users` (
--   `userid` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
--   `name` VARCHAR(50) NOT NULL,
--   `email` varchar(50) DEFAULT NULL
-- );

-- CREATE TABLE `follow` (
--   `followid` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
--   `follower_id` int(11) NOT NULL,
--   `following_id` int(11) NOT NULL
-- );

-- ALTER TABLE `follow`
--   ADD CONSTRAINT `fk_comments_user` FOREIGN KEY (`follower_id`) REFERENCES `users` (`userid`),
--   ADD CONSTRAINT `fk_comments_post` FOREIGN KEY (`following_id`) REFERENCES `users` (`userid`);

-- CREATE TABLE `comments` (
--   `commentid` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
--   `userid` int(11) NOT NULL,
--   `postid` int(11) NOT NULL,
--   `content_comment` text NOT NULL
--   `comment_count` int(11) DEFAULT 0
-- );

-- ALTER TABLE `comments`
--   ADD CONSTRAINT `fk_comm_user` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`),
--   ADD CONSTRAINT `fk_comm_post` FOREIGN KEY (`postid`) REFERENCES `posts` (`postid`);

-- CREATE TABLE `feeds` (
--   `feedid` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
--   `userid` int(11) NOT NULL,
--   `postid` int(11) NOT NULL,
--   `followid` int(11) NOT NULL
-- );

-- ALTER TABLE `feeds`
--   ADD CONSTRAINT `fk_feeds_user` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`),
--   ADD CONSTRAINT `fk_feeds_follow` FOREIGN KEY (`followid`) REFERENCES `follow` (`followid`),
--   ADD CONSTRAINT `fk_feeds_post` FOREIGN KEY (`postid`) REFERENCES `posts` (`postid`);

-- CREATE TABLE `shares` (
--   `shareid` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
--   `feedid` int(11) NOT NULL,
--   `postid` int(11) NOT NULL,
--   `share_count` int(11) DEFAULT 0
-- );

-- ALTER TABLE `shares`
--   ADD CONSTRAINT `fk_shares_feed` FOREIGN KEY (`feedid`) REFERENCES `feeds` (`feedid`),
--   ADD CONSTRAINT `fk_shares_post` FOREIGN KEY (`postid`) REFERENCES `posts` (`postid`);

-- CREATE TABLE `hide` (
--   `hideid` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
--   `feedid` int(11) NOT NULL,
--   `postid` int(11) NOT NULL
-- );

-- ALTER TABLE `hide`
--   ADD CONSTRAINT `fk_hide_feed` FOREIGN KEY (`feedid`) REFERENCES `feeds` (`feedid`),
--   ADD CONSTRAINT `fk_hide_post` FOREIGN KEY (`postid`) REFERENCES `posts` (`postid`);

-- CREATE TABLE `posts` (
--   `postid` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
--   `userid` int(11) NOT NULL,
--   `content_post` text NOT NULL,
--   `clap_count` int(11) DEFAULT 0
-- );

-- ALTER TABLE `posts`
--   ADD CONSTRAINT `fk_posts_user` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`);

-- CREATE TABLE `claps` (
--   `clapid` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
--   `postid` int(11) NOT NULL,
--   `userid` int(11) NOT NULL
-- );

-- ALTER TABLE `claps`
--   ADD CONSTRAINT `fk_claps_user` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`),
--   ADD CONSTRAINT `fk_claps_post` FOREIGN KEY (`postid`) REFERENCES `posts` (`postid`);



-- เพิ่มข้อมูล user 
-- INSERT INTO `users` VALUES 
-- (null,'marutthep','test1@test.com'),
-- (null,'JoJo','test2@test.com'),
-- (null,'worawit','test3@test.com'),
-- (null,'somchai','test4@test.com'),
-- (null,'somyeng','test5@test.com');


--เพิ่มข้อมูล follow
-- INSERT INTO `follow` VALUES
-- (null,1,2),
-- (null,2,1);


--เพิ่มข้อมูล post
-- (`postid`, `userid`, `content`, `clap_count`) 
-- INSERT INTO `posts` VALUES
-- (null, 1,'Number0',0),
-- (null, 2,'Number1',0),
-- (null, 1,'Number2',0),
-- (null, 2,'Number3',0),
-- (null, 1,'Number4',0),
-- (null, 2,'Number5',0),
-- (null, 1,'Number6',0),
-- (null, 2,'Number7',0),
-- (null, 1,'Number8',0),
-- (null, 2,'Number9',0),
-- (null, 1,'Number10',0),
-- (null, 2,'Number11',0),
-- (null, 1,'Number12',0),
-- (null, 2,'Number13',0),
-- (null, 1,'Number14',0),
-- (null, 2,'Number15',0),
-- (null, 1,'Number16',0),
-- (null, 2,'Number17',0),
-- (null, 1,'Number18',0),
-- (null, 2,'Number19',0),
-- (null, 1,'Number20',0);


-- (`clapid`, `postid`, `userid`) 
-- INSERT INTO `claps`  VALUES
-- (null, 1, 1),
-- (null, 1, 2),
-- (null, 1, 3),
-- (null, 1, 4),
-- (null, 1, 5),
-- (null, 2, 1),
-- (null, 2, 2),
-- (null, 2, 3),
-- (null, 2, 4),
-- (null, 3, 1),
-- (null, 3, 2),
-- (null, 4, 1),
-- (null, 4, 2),
-- (null, 5, 1),
-- (null, 5, 2),
-- (null, 6, 1),
-- (null, 6, 2),
-- (null, 7, 1),
-- (null, 7, 2),
-- (null, 8, 5);

USE eba_db;
-- (`commentid`, `user_id`, `post_id`, `content`, `comment_count`) 
INSERT INTO `comments` VALUES
(null, 1, 1, 'Hello1',0),
(null, 2, 1, 'Hello2',0),
(null, 3, 1, 'Hello3',0),
(null, 4, 2, 'Hello4',0),
(null, 5, 2, 'Hello5',0),
(null, 1, 3, 'Hello6',0),
(null, 2, 3, 'Hello7',0),
(null, 3, 4, 'Hello8',0),
(null, 4, 5, 'Hello9',0),
(null, 5, 6, 'Hello10',0);

-- (`feed_id`, `user_id`, `post_id`, `follow_id`) 
INSERT INTO `feeds` VALUES
(null, 1, 1, 1),
(null, 2, 2, 2),
(null, 1, 1, 2),
(null, 1, 2, 3),
(null, 1, 3, 2),
(null, 1, 4, 1),
(null, 1, 5, 1),
(null, 1, 6, 2),
(null, 1, 7, 2),
(null, 1, 8, 2),
(null, 1, 9, 3),
(null, 1, 10, 3),
(null, 1, 11, 4),
(null, 1, 12, 5),
(null, 1, 13, 5),
(null, 1, 14, 6),
(null, 1, 15, 7),
(null, 1, 16, 7),
(null, 1, 17, 7),
(null, 1, 18, 7);

-- (`hideid`, `feedid`, `postid`) 
INSERT INTO `hide` VALUES
(null,1,10),
(null,1,11),
(null,1,12);

-- (`shareid`, `feedid`, `postid`) 
INSERT INTO `shares` VALUES
(null,1,10),
(null,1,11),
(null,1,12),
(null,1,13),
(null,1,14);


