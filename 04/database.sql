/*
 Navicat MySQL Data Transfer
 
 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100411
 Source Host           : localhost:3306
 Source Schema         : eba_db
 
 Target Server Type    : MySQL
 Target Server Version : 100411
 File Encoding         : 65001
 
 Date: 10/06/2020 15:52:23
 */
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;
-- ----------------------------
-- Table structure for claps
-- ----------------------------
DROP TABLE IF EXISTS `claps`;
CREATE TABLE `claps` (
    `clap_id` int(11) NOT NULL AUTO_INCREMENT,
    `feed_id` int(11) NOT NULL,
    `user_id` int(11) NOT NULL,
    PRIMARY KEY (`clap_id`) USING BTREE,
    INDEX `feed_id`(`feed_id`) USING BTREE,
    INDEX `user_id`(`user_id`) USING BTREE,
    CONSTRAINT `claps_ibfk_1` FOREIGN KEY (`feed_id`) REFERENCES `feeds` (`feed_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT `claps_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;
-- ----------------------------
-- Records of claps
-- ----------------------------
INSERT INTO `claps`
VALUES (1, 1, 2);
INSERT INTO `claps`
VALUES (2, 1, 3);
INSERT INTO `claps`
VALUES (3, 2, 3);
INSERT INTO `claps`
VALUES (4, 3, 1);
-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
    `comment_id` int(11) NOT NULL AUTO_INCREMENT,
    `message` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
    `feed_id` int(11) NOT NULL,
    `user_id` int(11) NOT NULL,
    PRIMARY KEY (`comment_id`) USING BTREE,
    INDEX `feed_id`(`feed_id`) USING BTREE,
    INDEX `user_id`(`user_id`) USING BTREE,
    CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`feed_id`) REFERENCES `feeds` (`feed_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;
-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments`
VALUES (1, 'เม้นแรก', 1, 2);
INSERT INTO `comments`
VALUES (2, 'มาเม้นไม', 1, 2);
-- ----------------------------
-- Table structure for feeds
-- ----------------------------
DROP TABLE IF EXISTS `feeds`;
CREATE TABLE `feeds` (
    `feed_id` int(11) NOT NULL AUTO_INCREMENT,
    `post_id` int(11) NOT NULL,
    `user_id` int(11) NOT NULL,
    PRIMARY KEY (`feed_id`) USING BTREE,
    INDEX `post_id`(`post_id`) USING BTREE,
    INDEX `user_id`(`user_id`) USING BTREE,
    CONSTRAINT `feeds_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `posts` (`post_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT `feeds_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;
-- ----------------------------
-- Records of feeds
-- ----------------------------
INSERT INTO `feeds`
VALUES (1, 1, 1);
INSERT INTO `feeds`
VALUES (2, 2, 1);
INSERT INTO `feeds`
VALUES (3, 3, 2);
INSERT INTO `feeds`
VALUES (4, 4, 2);
INSERT INTO `feeds`
VALUES (5, 5, 3);
INSERT INTO `feeds`
VALUES (6, 6, 3);
INSERT INTO `feeds`
VALUES (7, 3, 1);
-- ----------------------------
-- Table structure for follows
-- ----------------------------
DROP TABLE IF EXISTS `follows`;
CREATE TABLE `follows` (
    `follow_id` int(11) NOT NULL AUTO_INCREMENT,
    `following_id` int(11) NOT NULL,
    `follower_id` int(11) NOT NULL,
    PRIMARY KEY (`follow_id`) USING BTREE,
    INDEX `following_id`(`following_id`) USING BTREE,
    INDEX `follower_id`(`follower_id`) USING BTREE,
    CONSTRAINT `follows_ibfk_1` FOREIGN KEY (`following_id`) REFERENCES `users` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT `follows_ibfk_2` FOREIGN KEY (`follower_id`) REFERENCES `users` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;
-- ----------------------------
-- Records of follows
-- ----------------------------
INSERT INTO `follows`
VALUES (1, 1, 2);
INSERT INTO `follows`
VALUES (2, 3, 1);
INSERT INTO `follows`
VALUES (3, 2, 1);
INSERT INTO `follows`
VALUES (5, 3, 1);
-- ----------------------------
-- Table structure for hiddens
-- ----------------------------
DROP TABLE IF EXISTS `hiddens`;
CREATE TABLE `hiddens` (
    `hidden_id` int(11) NOT NULL AUTO_INCREMENT,
    `feed_id` int(11) NOT NULL,
    `user_id` int(11) NOT NULL,
    PRIMARY KEY (`hidden_id`) USING BTREE,
    INDEX `feed_id`(`feed_id`) USING BTREE,
    INDEX `user_id`(`user_id`) USING BTREE,
    CONSTRAINT `hiddens_ibfk_1` FOREIGN KEY (`feed_id`) REFERENCES `feeds` (`feed_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT `hiddens_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;
-- ----------------------------
-- Records of hiddens
-- ----------------------------
INSERT INTO `hiddens`
VALUES (1, 3, 1);
-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
    `post_id` int(11) NOT NULL AUTO_INCREMENT,
    `message` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
    `status` tinyint(1) NULL DEFAULT NULL,
    `user_id` int(11) NOT NULL,
    PRIMARY KEY (`post_id`) USING BTREE,
    INDEX `user_id`(`user_id`) USING BTREE,
    CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;
-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts`
VALUES (1, 'โพส1คนที่1', 1, 1);
INSERT INTO `posts`
VALUES (2, 'โพส2คนที่1', 1, 1);
INSERT INTO `posts`
VALUES (3, 'โพส1คนที่2', 1, 2);
INSERT INTO `posts`
VALUES (4, 'โพส2คนที่2', 0, 2);
INSERT INTO `posts`
VALUES (5, 'โพส1ครที่3', 1, 3);
INSERT INTO `posts`
VALUES (6, 'โพส2คนที่3', 1, 3);
-- ----------------------------
-- Table structure for shares
-- ----------------------------
DROP TABLE IF EXISTS `shares`;
CREATE TABLE `shares` (
    `share_id` int(11) NOT NULL AUTO_INCREMENT,
    `user_id` int(11) NOT NULL,
    `feed_id` int(11) NOT NULL,
    PRIMARY KEY (`share_id`) USING BTREE,
    INDEX `user_id`(`user_id`) USING BTREE,
    INDEX `feed_id`(`feed_id`) USING BTREE,
    CONSTRAINT `shares_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT `shares_ibfk_2` FOREIGN KEY (`feed_id`) REFERENCES `feeds` (`feed_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;
-- ----------------------------
-- Records of shares
-- ----------------------------
INSERT INTO `shares`
VALUES (1, 1, 3);
-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
    `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
    `user_id` int(11) NOT NULL AUTO_INCREMENT,
    `img` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
    `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
    `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
    PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;
-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users`
VALUES ('do', 1, NULL, 'dojisjis22@gmail.com', 'qwerty');
INSERT INTO `users`
VALUES ('nai', 2, NULL, 'zosoakdoa@mail.com', 'qwerty');
INSERT INTO `users`
VALUES ('22', 3, NULL, '22@mail.com', 'qwerty');
-- ----------------------------
-- View structure for feed_view
-- ----------------------------
DROP VIEW IF EXISTS `feed_view`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `feed_view` AS
SELECT DISTINCTROW(feeds.feed_id),
    users.user_id,
    follows.follow_id,
    follows.following_id,
    follows.follower_id,
    users.name,
    posts.post_id,
    posts.status AS PostStatus,
    posts.message AS Post_Text,
    (
        SELECT Count(clap_id)
        FROM claps
        WHERE feed_id = feeds.feed_id
    ) AS ClapCount,
    (
        SELECT Count(comment_id)
        FROM comments
        WHERE feed_id = feeds.feed_id
    ) AS CommentCount,
    (
        SELECT Count(share_id)
        FROM shares
        WHERE feed_id = feeds.feed_id
    ) AS ShareCount,
    hidden_id
FROM users
    LEFT JOIN follows ON follows.following_id = users.user_id
    or follows.follower_id = users.user_id
    LEFT JOIN feeds ON users.user_id = feeds.user_id
    LEFT JOIN posts ON feeds.post_id = posts.post_id
    LEFT JOIN claps ON feeds.feed_id = claps.feed_id
    LEFT JOIN shares ON feeds.feed_id = shares.feed_id
    LEFT JOIN hiddens ON feeds.feed_id = hiddens.feed_id
WHERE posts.status = 1
    AND hiddens.feed_id IS NULL
    AND (
        follower_id = 2
        OR feeds.user_id = 2
    )
GROUP BY feeds.feed_id
LIMIT 5 OFFSET 0;
SET FOREIGN_KEY_CHECKS = 1;