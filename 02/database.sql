CREATE DATABASE IF NOT EXISTS `eba_db`
/*!40100 DEFAULT CHARACTER SET utf8 */
;
USE `eba_db`;
-- MySQL dump 10.13  Distrib 8.0.20, for macos10.15 (x86_64)
--
-- Host: localhost    Database: eba_db
-- ------------------------------------------------------
-- Server version	5.7.26
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */
;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */
;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */
;
/*!50503 SET NAMES utf8 */
;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */
;
/*!40103 SET TIME_ZONE='+00:00' */
;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */
;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */
;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */
;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */
;
--
-- Table structure for table `claps`
--
DROP TABLE IF EXISTS `claps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!50503 SET character_set_client = utf8mb4 */
;
CREATE TABLE `claps` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `post_id` int(11) NOT NULL,
    `user_id` int(11) NOT NULL,
    PRIMARY KEY (`id`),
    KEY `post_id` (`post_id`),
    KEY `user_id` (`user_id`),
    CONSTRAINT `claps_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
    CONSTRAINT `claps_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 51 DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */
;
--
-- Dumping data for table `claps`
--
LOCK TABLES `claps` WRITE;
/*!40000 ALTER TABLE `claps` DISABLE KEYS */
;
INSERT INTO `claps`
VALUES (1, 2, 1),
    (2, 14, 1),
    (3, 25, 8),
    (4, 36, 2),
    (5, 47, 5),
    (6, 4, 1),
    (7, 15, 1),
    (8, 26, 9),
    (9, 37, 1),
    (10, 50, 1),
    (11, 5, 1),
    (12, 16, 1),
    (13, 27, 9),
    (14, 38, 1),
    (15, 46, 5),
    (16, 6, 1),
    (17, 17, 1),
    (18, 28, 1),
    (19, 39, 1),
    (20, 5, 1),
    (21, 7, 22),
    (22, 18, 1),
    (23, 29, 8),
    (24, 40, 1),
    (25, 15, 5),
    (26, 8, 1),
    (27, 19, 22),
    (28, 30, 8),
    (29, 45, 1),
    (30, 16, 1),
    (31, 9, 22),
    (32, 20, 1),
    (33, 38, 1),
    (34, 42, 1),
    (35, 46, 1),
    (36, 10, 4),
    (37, 22, 2),
    (38, 32, 1),
    (39, 43, 2),
    (40, 35, 1),
    (41, 14, 1),
    (42, 22, 1),
    (43, 33, 8),
    (44, 44, 1),
    (45, 24, 1),
    (46, 12, 1),
    (47, 23, 4),
    (48, 34, 8),
    (49, 45, 1),
    (50, 13, 1);
/*!40000 ALTER TABLE `claps` ENABLE KEYS */
;
UNLOCK TABLES;
--
-- Table structure for table `comments`
--
DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!50503 SET character_set_client = utf8mb4 */
;
CREATE TABLE `comments` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `user_id` int(11) NOT NULL,
    `post_id` int(11) NOT NULL,
    `messages` varchar(255) DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `user_id` (`user_id`),
    KEY `post_id` (`post_id`),
    CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
    CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `users` (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 51 DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */
;
--
-- Dumping data for table `comments`
--
LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */
;
INSERT INTO `comments`
VALUES (1, 1, 2, 'ยอมแล้ววว'),
    (2, 1, 14, 'ยอมแล้ววว'),
    (3, 1, 25, 'ยอมแล้ววว'),
    (4, 1, 36, 'ยอมแล้ววว'),
    (5, 1, 47, 'ยอมแล้ววว'),
    (6, 1, 4, 'ยอมแล้ววว'),
    (7, 1, 15, 'ยอมแล้ววว'),
    (8, 1, 26, 'ยอมแล้ววว'),
    (9, 1, 37, 'ยอมแล้ววว'),
    (10, 1, 5, 'ยอมแล้ววว'),
    (11, 1, 5, 'ยอมแล้ววว'),
    (12, 1, 16, 'ยอมแล้ววว'),
    (13, 1, 27, 'ยอมแล้ววว'),
    (14, 1, 38, 'ยอมแล้ววว'),
    (15, 4, 46, 'ยอมแล้ววว'),
    (16, 1, 6, 'ยอมแล้ววว'),
    (17, 1, 17, 'ยอมแล้ววว'),
    (18, 1, 28, 'ยอมแล้ววว'),
    (19, 1, 39, 'ยอมแล้ววว'),
    (20, 16, 5, 'ยอมแล้ววว'),
    (21, 1, 7, 'ยอมแล้ววว'),
    (22, 1, 18, 'ยอมแล้ววว'),
    (23, 1, 29, 'ยอมแล้ววว'),
    (24, 1, 40, 'ยอมแล้ววว'),
    (25, 4, 15, 'ยอมแล้ววว'),
    (26, 1, 8, 'ยอมแล้ววว'),
    (27, 1, 19, 'ยอมแล้ววว'),
    (28, 1, 30, 'ยอมแล้ววว'),
    (29, 1, 41, 'ยอมแล้ววว'),
    (30, 1, 16, 'ยอมแล้ววว'),
    (31, 1, 9, 'ยอมแล้ววว'),
    (32, 1, 20, 'ยอมแล้ววว'),
    (33, 1, 31, 'ยอมแล้ววว'),
    (34, 1, 42, 'ยอมแล้ววว'),
    (35, 1, 46, 'ยอมแล้ววว'),
    (36, 1, 1, 'ยอมแล้ววว'),
    (37, 1, 21, 'ยอมแล้ววว'),
    (38, 1, 32, 'ยอมแล้ววว'),
    (39, 1, 43, 'ยอมแล้ววว'),
    (40, 1, 35, 'ยอมแล้ววว'),
    (41, 1, 11, 'ยอมแล้ววว'),
    (42, 1, 22, 'ยอมแล้ววว'),
    (43, 1, 33, 'ยอมแล้ววว'),
    (44, 1, 44, 'ยอมแล้ววว'),
    (45, 1, 24, 'ยอมแล้ววว'),
    (46, 1, 12, 'ยอมแล้ววว'),
    (47, 1, 23, 'ยอมแล้ววว'),
    (48, 1, 34, 'ยอมแล้ววว'),
    (49, 1, 45, 'ยอมแล้ววว'),
    (50, 1, 13, 'ยอมแล้ววว');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */
;
UNLOCK TABLES;
--
-- Table structure for table `follow`
--
DROP TABLE IF EXISTS `follow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!50503 SET character_set_client = utf8mb4 */
;
CREATE TABLE `follow` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `following_user_id` int(11) DEFAULT NULL,
    `user_id` int(11) NOT NULL,
    PRIMARY KEY (`id`),
    KEY `following_user_id` (`following_user_id`),
    KEY `user_id` (`user_id`),
    CONSTRAINT `follow_ibfk_1` FOREIGN KEY (`following_user_id`) REFERENCES `users` (`id`),
    CONSTRAINT `follow_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 101 DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */
;
--
-- Dumping data for table `follow`
--
LOCK TABLES `follow` WRITE;
/*!40000 ALTER TABLE `follow` DISABLE KEYS */
;
INSERT INTO `follow`
VALUES (1, 2, 1),
    (2, 11, 1),
    (3, 8, 21),
    (4, 39, 1),
    (5, 38, 32),
    (6, 39, 20),
    (7, 37, 1),
    (8, 38, 32),
    (9, 45, 14),
    (10, 24, 1),
    (11, 30, 29),
    (12, 8, 9),
    (13, 31, 26),
    (14, 17, 11),
    (15, 10, 1),
    (16, 48, 7),
    (17, 24, 8),
    (18, 24, 41),
    (19, 7, 1),
    (20, 29, 44),
    (21, 15, 47),
    (22, 29, 1),
    (23, 23, 31),
    (24, 22, 6),
    (25, 17, 49),
    (26, 15, 1),
    (27, 19, 39),
    (28, 32, 1),
    (29, 46, 39),
    (30, 40, 30),
    (31, 3, 17),
    (32, 6, 9),
    (33, 20, 8),
    (34, 39, 18),
    (35, 8, 42),
    (36, 25, 21),
    (37, 2, 23),
    (38, 24, 21),
    (39, 9, 14),
    (40, 22, 1),
    (41, 1, 27),
    (42, 41, 1),
    (43, 2, 12),
    (44, 48, 20),
    (45, 45, 1),
    (46, 37, 38),
    (47, 42, 1),
    (48, 36, 9),
    (49, 30, 14),
    (50, 41, 31),
    (51, 41, 12),
    (52, 3, 1),
    (53, 22, 25),
    (54, 10, 1),
    (55, 28, 31),
    (56, 1, 31),
    (57, 20, 17),
    (58, 1, 31),
    (59, 48, 1),
    (60, 23, 15),
    (61, 23, 38),
    (62, 18, 5),
    (63, 28, 39),
    (64, 2, 7),
    (65, 41, 17),
    (66, 8, 1),
    (67, 17, 21),
    (68, 38, 1),
    (69, 27, 20),
    (70, 23, 15),
    (71, 1, 6),
    (72, 34, 1),
    (73, 22, 1),
    (74, 47, 48),
    (75, 49, 40),
    (76, 39, 12),
    (77, 44, 2),
    (78, 39, 1),
    (79, 35, 1),
    (80, 44, 36),
    (81, 40, 8),
    (82, 36, 18),
    (83, 1, 12),
    (84, 30, 2),
    (85, 32, 21),
    (86, 47, 1),
    (87, 13, 23),
    (88, 48, 16),
    (89, 48, 9),
    (90, 31, 29),
    (91, 1, 42),
    (92, 29, 26),
    (93, 35, 37),
    (94, 15, 8),
    (95, 37, 14),
    (96, 14, 23),
    (97, 33, 15),
    (98, 13, 34),
    (99, 31, 16),
    (100, 41, 8);
/*!40000 ALTER TABLE `follow` ENABLE KEYS */
;
UNLOCK TABLES;
--
-- Table structure for table `hidden_users`
--
DROP TABLE IF EXISTS `hidden_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!50503 SET character_set_client = utf8mb4 */
;
CREATE TABLE `hidden_users` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `post_id` int(11) NOT NULL,
    `user_id` int(11) NOT NULL,
    PRIMARY KEY (`id`),
    KEY `post_id` (`post_id`),
    KEY `user_id` (`user_id`),
    CONSTRAINT `hidden_users_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
    CONSTRAINT `hidden_users_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 14 DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */
;
--
-- Dumping data for table `hidden_users`
--
LOCK TABLES `hidden_users` WRITE;
/*!40000 ALTER TABLE `hidden_users` DISABLE KEYS */
;
INSERT INTO `hidden_users`
VALUES (1, 2, 1),
    (2, 4, 1),
    (3, 19, 8),
    (4, 11, 2),
    (5, 47, 2),
    (6, 3, 1),
    (7, 15, 15),
    (8, 26, 9),
    (9, 48, 11),
    (10, 11, 1),
    (11, 5, 1),
    (12, 49, 41),
    (13, 50, 29);
/*!40000 ALTER TABLE `hidden_users` ENABLE KEYS */
;
UNLOCK TABLES;
--
-- Table structure for table `posts`
--
DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!50503 SET character_set_client = utf8mb4 */
;
CREATE TABLE `posts` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `user_id` int(11) NOT NULL,
    `messages` varchar(255) DEFAULT NULL,
    `deleted` tinyint(1) DEFAULT '0',
    PRIMARY KEY (`id`),
    KEY `user_id` (`user_id`),
    CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 51 DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */
;
--
-- Dumping data for table `posts`
--
LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */
;
INSERT INTO `posts`
VALUES (1, 2, 'ในใจโยมมีอาตมาบ้างมั๊ย', 0),
    (2, 1, 'ฉันรักประเทศไทย', 1),
    (3, 1, 'ทวินCNX', 0),
    (4, 1, 'อยากเล่น', 0),
    (5, 1, 'Prayuth น่าร๊อค', 0),
    (6, 2, 'ก็มาดิค้าบ 456', 0),
    (7, 1, 'ฉันรักประเทศไทย', 0),
    (8, 22, 'ทวินCNX', 0),
    (9, 1, 'อยากเล่น', 0),
    (10, 1, 'Prayuth น่าร๊อค', 1),
    (11, 3, 'ไทยแลน', 1),
    (12, 1, 'ฉันรักประเทศไทย', 1),
    (13, 1, 'ทวินCNX', 0),
    (14, 1, 'อยากเล่น', 1),
    (15, 4, 'Prayuth น่าร๊อค', 0),
    (16, 40, 'ไทยแลน', 1),
    (17, 2, 'ฉันรักประเทศไทย', 0),
    (18, 1, 'ทวินCNX', 1),
    (19, 1, 'อยากเล่น', 1),
    (20, 16, 'Prayuth น่าร๊อค', 0),
    (21, 30, 'ไทยแลน', 0),
    (22, 1, 'ฉันรักประเทศไทย', 1),
    (23, 2, 'หิวข้าว', 0),
    (24, 1, 'ก้มาดิค้าบ', 1),
    (25, 4, 'Prayuth น่าร๊อค', 0),
    (26, 40, 'ไทยแลน', 1),
    (27, 1, 'ฉันรักประเทศไทย', 0),
    (28, 2, 'หิวข้าว', 0),
    (29, 2, 'ก้มาดิค้าบ', 0),
    (30, 1, 'Prayuth น่าร๊อค', 0),
    (31, 2, 'แดนกะลา', 0),
    (32, 2, 'อีบ้า คือ แอพที่ดีที่สุด', 1),
    (33, 2, 'หิวข้าว', 0),
    (34, 9, 'ก้มาดิค้าบ', 1),
    (35, 9, 'Prayuth น่าร๊อค', 0),
    (36, 1, 'แดนกะลา', 1),
    (37, 2, 'อีบ้า คือ แอพที่ดีที่สุด', 0),
    (38, 1, 'หิวข้าว', 1),
    (39, 1, 'ก้มาดิค้าบ', 0),
    (40, 1, 'Prayuth น่าร๊อค', 1),
    (41, 2, 'แดนกะลา', 0),
    (42, 1, 'อีบ้า คือ แอพที่ดีที่สุด', 1),
    (43, 2, 'อยากเล่น', 0),
    (44, 1, 'ก้มาดิค้าบ', 1),
    (45, 1, 'Prayuth น่าร๊อค', 1),
    (46, 1, 'แดนกะลา', 1),
    (47, 1, 'อีบ้า คือ แอพที่ดีที่สุด', 0),
    (48, 2, 'อยากเล่น', 0),
    (49, 1, 'ก้มาดิค้าบ', 0),
    (50, 1, 'Prayuth น่าร๊อค', 0);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */
;
UNLOCK TABLES;
--
-- Table structure for table `share_users`
--
DROP TABLE IF EXISTS `share_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!50503 SET character_set_client = utf8mb4 */
;
CREATE TABLE `share_users` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `post_id` int(11) NOT NULL,
    `user_id` int(11) NOT NULL,
    PRIMARY KEY (`id`),
    KEY `post_id` (`post_id`),
    KEY `user_id` (`user_id`),
    CONSTRAINT `share_users_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
    CONSTRAINT `share_users_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 51 DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */
;
--
-- Dumping data for table `share_users`
--
LOCK TABLES `share_users` WRITE;
/*!40000 ALTER TABLE `share_users` DISABLE KEYS */
;
INSERT INTO `share_users`
VALUES (1, 2, 1),
    (2, 3, 1),
    (3, 25, 8),
    (4, 36, 2),
    (5, 47, 2),
    (6, 4, 1),
    (7, 15, 15),
    (8, 26, 9),
    (9, 47, 11),
    (10, 11, 1),
    (11, 5, 1),
    (12, 47, 41),
    (13, 27, 29),
    (14, 38, 1),
    (15, 21, 25),
    (16, 6, 1),
    (17, 17, 31),
    (18, 28, 1),
    (19, 39, 31),
    (20, 5, 31),
    (21, 7, 22),
    (22, 18, 1),
    (23, 29, 8),
    (24, 40, 1),
    (25, 21, 5),
    (26, 8, 1),
    (27, 19, 22),
    (28, 42, 8),
    (29, 42, 10),
    (30, 16, 1),
    (31, 9, 22),
    (32, 20, 1),
    (33, 38, 21),
    (34, 42, 50),
    (35, 46, 31),
    (36, 10, 4),
    (37, 22, 2),
    (38, 10, 1),
    (39, 43, 2),
    (40, 35, 1),
    (41, 42, 1),
    (42, 22, 1),
    (43, 33, 8),
    (44, 40, 1),
    (45, 24, 1),
    (46, 12, 1),
    (47, 27, 4),
    (48, 34, 8),
    (49, 27, 1),
    (50, 13, 1);
/*!40000 ALTER TABLE `share_users` ENABLE KEYS */
;
UNLOCK TABLES;
--
-- Table structure for table `users`
--
DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!50503 SET character_set_client = utf8mb4 */
;
CREATE TABLE `users` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `email` varchar(50) DEFAULT NULL,
    `password` varchar(100) DEFAULT NULL,
    `fullname` varchar(50) DEFAULT NULL,
    `date_of_birth` date DEFAULT NULL,
    `createdAt` datetime DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 51 DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */
;
--
-- Dumping data for table `users`
--
LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */
;
INSERT INTO `users`
VALUES (
        1,
        'alia.kris@gmail.com',
        'z{2~Int*xQIX',
        'Layla Grady',
        '1986-10-09',
        '2017-07-23 13:10:11'
    ),
    (
        2,
        'fahey.emmy@lynch.com',
        'z{2~Int*xQIX',
        'Nelda Batz DVM',
        '1986-10-09',
        '2017-07-23 13:10:11'
    ),
    (
        3,
        'marion48@gmail.com',
        'z{2~Int*xQIX',
        'Price Kuphal DVM',
        '1986-10-09',
        '2017-07-23 13:10:11'
    ),
    (
        4,
        'terry.nicole@schaefer.biz',
        'z{2~Int*xQIX',
        'Vada Schuster',
        '1986-10-09',
        '2017-07-23 13:10:11'
    ),
    (
        5,
        'waldo71@krajcik.com',
        'z{2~Int*xQIX',
        'Petra Kuhic',
        '1986-10-09',
        '2017-07-23 13:10:11'
    ),
    (
        6,
        'jstehr@hotmail.com',
        'z{2~Int*xQIX',
        'Fanny Kreiger',
        '1986-10-09',
        '2017-07-23 13:10:11'
    ),
    (
        7,
        'spinka.marlene@hessel.com',
        'z{2~Int*xQIX',
        'Hellen Mohr',
        '1986-10-09',
        '2017-07-23 13:10:11'
    ),
    (
        8,
        'wehner.grant@hotmail.com',
        'z{2~Int*xQIX',
        'Kamille Hand',
        '1986-10-09',
        '2017-07-23 13:10:11'
    ),
    (
        9,
        'reinger.noah@considine.com',
        'z{2~Int*xQIX',
        'Pearlie Leffler',
        '1986-10-09',
        '2017-07-23 13:10:11'
    ),
    (
        10,
        'uhaley@gmail.com',
        'z{2~Int*xQIX',
        'Bianka Gerhold',
        '1986-10-09',
        '2017-07-23 13:10:11'
    ),
    (
        11,
        'wkirlin@gmail.com',
        'z{2~Int*xQIX',
        'Kadin Cartwright',
        '1986-10-09',
        '2017-07-23 13:10:11'
    ),
    (
        12,
        'kallie.leannon@kirlin.com',
        'z{2~Int*xQIX',
        'Denis Kertzmann',
        '1986-10-09',
        '2017-07-23 13:10:11'
    ),
    (
        13,
        'astanton.isom@hotmail.com',
        'z{2~Int*xQIX',
        'Rebekah Grady',
        '1986-10-09',
        '2017-07-23 13:10:11'
    ),
    (
        14,
        'giovanna.bednar@little.com',
        'z{2~Int*xQIX',
        'Jarvis Grimes',
        '1986-10-09',
        '2017-07-23 13:10:11'
    ),
    (
        15,
        'thad33@cruickshank.com',
        'z{2~Int*xQIX',
        'Prof. Jayne McDermott',
        '1986-10-09',
        '2017-07-23 13:10:11'
    ),
    (
        16,
        'zkemmer@hotmail.com',
        'z{2~Int*xQIX',
        'Laura Terry V',
        '1986-10-09',
        '2017-07-23 13:10:11'
    ),
    (
        17,
        'fritsch.martine@gmail.com',
        'z{2~Int*xQIX',
        'Rosamond Kautzer',
        '1986-10-09',
        '2017-07-23 13:10:11'
    ),
    (
        18,
        'oboyle@armstrong.com',
        'z{2~Int*xQIX',
        'Bridie Sipes',
        '1986-10-09',
        '2017-07-23 13:10:11'
    ),
    (
        19,
        'ehahn@gmail.com',
        'z{2~Int*xQIX',
        'Prof. Carlotta Leffler I',
        '1986-10-09',
        '2017-07-23 13:10:11'
    ),
    (
        20,
        'schumm.stacy@doyle.com',
        'z{2~Int*xQIX',
        'Harrison Shanahan',
        '1986-10-09',
        '2017-07-23 13:10:11'
    ),
    (
        21,
        'zola02@prosacco.net',
        'z{2~Int*xQIX',
        'Velva Boyle',
        '1986-10-09',
        '2017-07-23 13:10:11'
    ),
    (
        22,
        'kunde.terrill@crona.com',
        'z{2~Int*xQIX',
        'Layla Grady',
        '1986-10-09',
        '2017-07-23 13:10:11'
    ),
    (
        23,
        'alia.kris@gmail.com',
        'z{2~Int*xQIX',
        'Mr. Thaddeus Okuneva',
        '1986-10-09',
        '2017-07-23 13:10:11'
    ),
    (
        24,
        'henriette.mckenzie@kovacek.net',
        'z{2~Int*xQIX',
        'Dr. Gail Runte',
        '1986-10-09',
        '2017-07-23 13:10:11'
    ),
    (
        25,
        'tillman.josie@gmail.com',
        'z{2~Int*xQIX',
        'Mrs. Lonie Windler',
        '1986-10-09',
        '2017-07-23 13:10:11'
    ),
    (
        26,
        'yleffler@hotmail.com',
        'z{2~Int*xQIX',
        'Ms. Zora Fay',
        '1986-10-09',
        '2017-07-23 13:10:11'
    ),
    (
        27,
        'rachelle.pagac@kub.com',
        'z{2~Int*xQIX',
        'Libbie Bailey Sr.',
        '1986-10-09',
        '2017-07-23 13:10:11'
    ),
    (
        28,
        'gillian05@cole.com',
        'z{2~Int*xQIX',
        'Miss Thalia Greenholt Jr.',
        '1986-10-09',
        '2017-07-23 13:10:11'
    ),
    (
        29,
        'jakubowski.robert@gmail.com',
        'z{2~Int*xQIX',
        'Rodrigo Kemmer',
        '1986-10-09',
        '2017-07-23 13:10:11'
    ),
    (
        30,
        'icorwin@walsh.comicorwin@walsh.com',
        'z{2~Int*xQIX',
        'Miss Evangeline Kiehn III',
        '1986-10-09',
        '2017-07-23 13:10:11'
    ),
    (
        31,
        'price.mcglynn@stehr.com',
        'z{2~Int*xQIX',
        'Jacklyn Harris',
        '1986-10-09',
        '2017-07-23 13:10:11'
    ),
    (
        32,
        'walter.lilliana@berge.net',
        'z{2~Int*xQIX',
        'Reba Will PhD',
        '1986-10-09',
        '2017-07-23 13:10:11'
    ),
    (
        33,
        'lbosco@yahoo.com',
        'z{2~Int*xQIX',
        'Jodie Mann IV',
        '1986-10-09',
        '2017-07-23 13:10:11'
    ),
    (
        34,
        'nmoore@huels.net',
        'z{2~Int*xQIX',
        'Dejah Hettinger',
        '1986-10-09',
        '2017-07-23 13:10:11'
    ),
    (
        35,
        'raymond.boyer@yahoo.com',
        'z{2~Int*xQIX',
        'Elyssa McCullough',
        '1986-10-09',
        '2017-07-23 13:10:11'
    ),
    (
        36,
        'sincere69@hotmail.com',
        'z{2~Int*xQIX',
        'Heather Parker',
        '1986-10-09',
        '2017-07-23 13:10:11'
    ),
    (
        37,
        'silas26@ohara.com',
        'z{2~Int*xQIX',
        'Joannie Stracke',
        '1986-10-09',
        '2017-07-23 13:10:11'
    ),
    (
        38,
        'paula.hintz@hotmail.com',
        'z{2~Int*xQIX',
        'Deontae Champlin',
        '1986-10-09',
        '2017-07-23 13:10:11'
    ),
    (
        39,
        'cassin.ezra@gmail.com',
        'z{2~Int*xQIX',
        'Neha Hudson',
        '1986-10-09',
        '2017-07-23 13:10:11'
    ),
    (
        40,
        'hulda.thiel@yahoo.com',
        'z{2~Int*xQIX',
        'Sheldon Streich',
        '1986-10-09',
        '2017-07-23 13:10:11'
    ),
    (
        41,
        'daija.jaskolski@hotmail.com',
        'z{2~Int*xQIX',
        'Dean Kozey',
        '1986-10-09',
        '2017-07-23 13:10:11'
    ),
    (
        42,
        'terry.dandre@schoen.info',
        'z{2~Int*xQIX',
        'Ocie Effertz DVM',
        '1986-10-09',
        '2017-07-23 13:10:11'
    ),
    (
        43,
        'rex46@mclaughlin.info',
        'z{2~Int*xQIX',
        'Felton Nicolas',
        '1986-10-09',
        '2017-07-23 13:10:11'
    ),
    (
        44,
        'jadams@keebler.net',
        'z{2~Int*xQIX',
        'Erica Pagac IV',
        '1986-10-09',
        '2017-07-23 13:10:11'
    ),
    (
        45,
        'upton.susan@yahoo.com',
        'z{2~Int*xQIX',
        'Brice Batz',
        '1986-10-09',
        '2017-07-23 13:10:11'
    ),
    (
        46,
        'hettie10@gmail.com',
        'z{2~Int*xQIX',
        'Mireille Kilback',
        '1986-10-09',
        '2017-07-23 13:10:11'
    ),
    (
        47,
        'oran68@tremblay.com',
        'z{2~Int*xQIX',
        'Prof. Pietro Daugherty Jr.',
        '1986-10-09',
        '2017-07-23 13:10:11'
    ),
    (
        48,
        'stanford.ziemann@hotmail.com',
        'z{2~Int*xQIX',
        'Carmen Harber DVM',
        '1986-10-09',
        '2017-07-23 13:10:11'
    ),
    (
        49,
        'rae35@gmail.com',
        'z{2~Int*xQIX',
        'Jacey Simonis',
        '1986-10-09',
        '2017-07-23 13:10:11'
    ),
    (
        50,
        'ally.cartwright@kulas.com',
        'z{2~Int*xQIX',
        'Mikayla Mills',
        '1986-10-09',
        '2017-07-23 13:10:11'
    );
/*!40000 ALTER TABLE `users` ENABLE KEYS */
;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */
;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */
;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */
;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */
;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */
;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */
;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */
;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */
;
-- Dump completed on 2020-06-08 13:12:38