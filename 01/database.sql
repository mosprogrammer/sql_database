-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Jun 10, 2020 at 11:37 AM
-- Server version: 5.7.29
-- PHP Version: 7.4.4
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */
;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */
;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */
;
/*!40101 SET NAMES utf8mb4 */
;
--
-- Database: `eba_db`
--
-- --------------------------------------------------------
--
-- Table structure for table `addresses`
--
CREATE TABLE `addresses` (
    `userId` int(11) NOT NULL,
    `address_1` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `address_2` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `province` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `city` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `country` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `postcode` int(5) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
--
-- Dumping data for table `addresses`
--
INSERT INTO `addresses` (
        `userId`,
        `address_1`,
        `address_2`,
        `province`,
        `city`,
        `country`,
        `postcode`
    )
VALUES (
        1,
        '38/3 soi chalermket 1',
        NULL,
        'Bangkok',
        'Klongtoey',
        'Thailand',
        10110
    ),
    (
        3,
        '99/397 At President Park Sukhumvit 24 Road Klongton',
        NULL,
        'Bangkok',
        'Klongtoey',
        'Thailand',
        10110
    ),
    (
        5,
        '2/1 Chumporn Road',
        NULL,
        'Phuket',
        'Phuket',
        'Thailand',
        83100
    ),
    (
        6,
        '29-30 floor Bangkok City Tower, 179/120-179/125 South Sathorn Road, Thungmahamek',
        NULL,
        'Bangkok',
        'Thungmahamek',
        'Thailand',
        10120
    );
-- --------------------------------------------------------
--
-- Table structure for table `claps`
--
CREATE TABLE `claps` (
    `id` int(11) NOT NULL,
    `create_date` datetime DEFAULT NULL,
    `feedId` int(11) DEFAULT NULL,
    `userId` int(11) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
--
-- Dumping data for table `claps`
--
INSERT INTO `claps` (`id`, `create_date`, `feedId`, `userId`)
VALUES (1, '2010-05-17 22:52:21', 3, 20),
    (3, '2010-03-02 22:52:21', 3, 15),
    (4, '2010-04-17 22:52:21', 3, 16),
    (5, '2010-10-15 22:52:21', 4, 20);
-- --------------------------------------------------------
--
-- Table structure for table `comments`
--
CREATE TABLE `comments` (
    `id` int(11) NOT NULL,
    `create_date` datetime DEFAULT NULL,
    `detail` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `userId` int(11) DEFAULT NULL,
    `feedId` int(11) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
--
-- Dumping data for table `comments`
--
INSERT INTO `comments` (
        `id`,
        `create_date`,
        `detail`,
        `userId`,
        `feedId`
    )
VALUES (
        1,
        '2010-04-17 12:52:00',
        'unknown printer took',
        20,
        1
    ),
    (
        2,
        '2010-04-18 21:52:21',
        'Lorem Ipsum is that it has a more-or-less',
        20,
        1
    ),
    (
        3,
        '2010-05-17 22:00:21',
        'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in',
        20,
        1
    ),
    (
        4,
        '2010-05-03 13:52:21',
        'injected humour and the like',
        20,
        4
    ),
    (
        5,
        '2010-01-17 22:52:21',
        'unknown printer took',
        30,
        1
    );
-- --------------------------------------------------------
--
-- Table structure for table `feeds`
--
CREATE TABLE `feeds` (
    `id` int(11) NOT NULL,
    `content` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `userId` int(11) DEFAULT NULL,
    `create_date` datetime DEFAULT NULL,
    `status` int(1) DEFAULT '1'
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
--
-- Dumping data for table `feeds`
--
INSERT INTO `feeds` (
        `id`,
        `content`,
        `userId`,
        `create_date`,
        `status`
    )
VALUES (
        1,
        'Lorem Ipsum has been',
        20,
        '2010-05-17 22:52:21',
        1
    ),
    (
        3,
        'PageMaker including versions of Lorem Ipsum.',
        20,
        '2010-03-02 22:52:21',
        1
    ),
    (
        4,
        'Various versions have evolved over the years',
        20,
        '2010-04-17 22:52:21',
        1
    ),
    (
        5,
        'There are many variations of passages of Lorem Ipsum',
        25,
        '2010-10-15 22:52:21',
        1
    ),
    (
        6,
        'Lorem Ipsum has been',
        20,
        '2010-05-17 22:52:21',
        1
    ),
    (
        7,
        'when an unknown printer took',
        20,
        '2010-05-20 22:52:21',
        1
    ),
    (
        8,
        'PageMaker including versions of Lorem Ipsum.',
        20,
        '2010-03-02 22:52:21',
        1
    ),
    (
        9,
        'Various versions have evolved over the years',
        20,
        '2010-04-17 22:52:21',
        1
    ),
    (
        10,
        'There are many variations of passages of Lorem Ipsum',
        18,
        '2010-10-15 22:52:21',
        1
    ),
    (
        11,
        'Lorem Ipsum has been',
        20,
        '2010-05-17 22:52:21',
        1
    ),
    (
        12,
        'when an unknown printer took',
        20,
        '2010-05-20 22:52:21',
        1
    ),
    (
        13,
        'PageMaker including versions of Lorem Ipsum.',
        20,
        '2010-03-02 22:52:21',
        1
    ),
    (
        14,
        'Various versions have evolved over the years',
        10,
        '2010-04-17 22:52:21',
        1
    ),
    (
        15,
        'There are many variations of passages of Lorem Ipsum',
        18,
        '2010-10-15 22:52:21',
        1
    ),
    (
        16,
        'Lorem Ipsum has been',
        20,
        '2010-05-17 22:52:21',
        1
    ),
    (
        17,
        'when an unknown printer took',
        20,
        '2010-05-20 22:52:21',
        1
    ),
    (
        18,
        'PageMaker including versions of Lorem Ipsum.',
        20,
        '2010-03-02 22:52:21',
        1
    ),
    (
        19,
        'Various versions have evolved over the years',
        10,
        '2010-04-17 22:52:21',
        1
    ),
    (
        20,
        'There are many variations of passages of Lorem Ipsum',
        18,
        '2010-10-15 22:52:21',
        1
    ),
    (
        21,
        'Lorem Ipsum has been',
        20,
        '2010-05-17 22:52:21',
        1
    ),
    (
        22,
        'when an unknown printer took',
        20,
        '2010-05-20 22:52:21',
        1
    ),
    (
        23,
        'PageMaker including versions of Lorem Ipsum.',
        20,
        '2010-03-02 22:52:21',
        1
    ),
    (
        24,
        'Various versions have evolved over the years',
        10,
        '2010-04-17 22:52:21',
        1
    ),
    (
        25,
        'There are many variations of passages of Lorem Ipsum',
        18,
        '2010-10-15 22:52:21',
        1
    );
-- --------------------------------------------------------
--
-- Table structure for table `feed_shares`
--
CREATE TABLE `feed_shares` (
    `id` int(11) NOT NULL,
    `create_date` datetime DEFAULT NULL,
    `feedId` int(11) DEFAULT NULL,
    `userId` int(11) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
--
-- Dumping data for table `feed_shares`
--
INSERT INTO `feed_shares` (`id`, `create_date`, `feedId`, `userId`)
VALUES (5, '2010-10-15 22:52:21', 1, 20);
-- --------------------------------------------------------
--
-- Table structure for table `likes`
--
CREATE TABLE `likes` (
    `id` int(11) NOT NULL,
    `create_date` datetime DEFAULT NULL,
    `feedId` int(11) DEFAULT NULL,
    `userId` int(11) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
--
-- Dumping data for table `likes`
--
INSERT INTO `likes` (`id`, `create_date`, `feedId`, `userId`)
VALUES (5, '2010-10-15 22:52:21', 1, 20),
    (11, '2010-05-17 22:52:21', 5, 20),
    (12, '2010-05-20 22:52:21', 5, 10),
    (13, '2010-03-02 22:52:21', 5, 15),
    (14, '2010-04-17 22:52:21', 5, 16),
    (15, '2010-10-15 22:52:21', 1, 20);
-- --------------------------------------------------------
--
-- Stand-in structure for view `NumberOfComments`
-- (See below for the actual view)
--
CREATE TABLE `NumberOfComments` (`NumberOfComments` bigint(21));
-- --------------------------------------------------------
--
-- Stand-in structure for view `number_comments`
-- (See below for the actual view)
--
CREATE TABLE `number_comments` (`NumberOfComments` bigint(21));
-- --------------------------------------------------------
--
-- Table structure for table `relationships`
--
CREATE TABLE `relationships` (
    `id` int(11) NOT NULL,
    `following_id` int(11) DEFAULT NULL,
    `follower_id` int(11) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
--
-- Dumping data for table `relationships`
--
INSERT INTO `relationships` (`id`, `following_id`, `follower_id`)
VALUES (1, 20, 4),
    (2, 20, 5),
    (3, 4, 20),
    (4, 4, 6),
    (5, 4, 8);
-- --------------------------------------------------------
--
-- Table structure for table `users`
--
CREATE TABLE `users` (
    `id` int(11) NOT NULL,
    `first_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `last_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `password` int(12) DEFAULT NULL,
    `profile_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
--
-- Dumping data for table `users`
--
INSERT INTO `users` (
        `id`,
        `first_name`,
        `last_name`,
        `password`,
        `profile_image`
    )
VALUES (
        1,
        'Milica',
        'Olvia',
        123456,
        '/user/profile.png'
    ),
    (
        3,
        'Pankratios',
        'Divya',
        123456,
        '/user/profile.png'
    ),
    (4, 'Sasha', 'Honig', 123456, '/user/profile.png'),
    (
        5,
        'Terrell ',
        'Prato',
        123456,
        '/user/profile.png'
    ),
    (
        6,
        'Lenore',
        'Lenart',
        123456,
        '/user/profile.png'
    ),
    (7, 'Amal', 'Hendon', 123456, '/user/profile.png'),
    (
        8,
        'Jannet',
        'Qualls',
        123456,
        '/user/profile.png'
    ),
    (
        9,
        'Milica',
        'Olvia',
        123456,
        '/user/profile.png'
    ),
    (
        10,
        'Milica',
        'Olvia',
        123456,
        '/user/profile.png'
    ),
    (
        11,
        'Milica',
        'Olvia',
        123456,
        '/user/profile.png'
    ),
    (
        12,
        'Milica',
        'Olvia',
        123456,
        '/user/profile.png'
    ),
    (
        13,
        'Milica',
        'Olvia',
        123456,
        '/user/profile.png'
    ),
    (
        14,
        'Milica',
        'Olvia',
        123456,
        '/user/profile.png'
    ),
    (
        15,
        'Milica',
        'Olvia',
        123456,
        '/user/profile.png'
    ),
    (
        16,
        'Milica',
        'Olvia',
        123456,
        '/user/profile.png'
    ),
    (
        17,
        'Milica',
        'Olvia',
        123456,
        '/user/profile.png'
    ),
    (
        18,
        'Milica',
        'Olvia',
        123456,
        '/user/profile.png'
    ),
    (
        19,
        'Milica',
        'Olvia',
        123456,
        '/user/profile.png'
    ),
    (
        20,
        'Milica',
        'Olvia',
        123456,
        '/user/profile.png'
    ),
    (
        21,
        'Milica',
        'Olvia',
        123456,
        '/user/profile.png'
    ),
    (
        22,
        'Milica',
        'Olvia',
        123456,
        '/user/profile.png'
    ),
    (
        23,
        'Milica',
        'Olvia',
        123456,
        '/user/profile.png'
    ),
    (
        24,
        'Milica',
        'Olvia',
        123456,
        '/user/profile.png'
    ),
    (
        25,
        'Milica',
        'Olvia',
        123456,
        '/user/profile.png'
    ),
    (
        26,
        'Milica',
        'Olvia',
        123456,
        '/user/profile.png'
    ),
    (
        27,
        'Milica',
        'Olvia',
        123456,
        '/user/profile.png'
    ),
    (
        28,
        'Milica',
        'Olvia',
        123456,
        '/user/profile.png'
    ),
    (
        29,
        'Milica',
        'Olvia',
        123456,
        '/user/profile.png'
    ),
    (
        30,
        'Milica',
        'Olvia',
        123456,
        '/user/profile.png'
    ),
    (
        31,
        'Milica',
        'Olvia',
        123456,
        '/user/profile.png'
    ),
    (
        32,
        'Milica',
        'Olvia',
        123456,
        '/user/profile.png'
    ),
    (
        33,
        'Milica',
        'Olvia',
        123456,
        '/user/profile.png'
    ),
    (
        34,
        'Milica',
        'Olvia',
        123456,
        '/user/profile.png'
    ),
    (
        35,
        'Milica',
        'Olvia',
        123456,
        '/user/profile.png'
    ),
    (
        36,
        'Milica',
        'Olvia',
        123456,
        '/user/profile.png'
    ),
    (
        37,
        'Milica',
        'Olvia',
        123456,
        '/user/profile.png'
    ),
    (
        38,
        'Milica',
        'Olvia',
        123456,
        '/user/profile.png'
    ),
    (
        39,
        'Milica',
        'Olvia',
        123456,
        '/user/profile.png'
    ),
    (
        40,
        'Milica',
        'Olvia',
        123456,
        '/user/profile.png'
    ),
    (
        41,
        'Milica',
        'Olvia',
        123456,
        '/user/profile.png'
    ),
    (
        42,
        'Milica',
        'Olvia',
        123456,
        '/user/profile.png'
    ),
    (
        43,
        'Milica',
        'Olvia',
        123456,
        '/user/profile.png'
    ),
    (
        44,
        'Milica',
        'Olvia',
        123456,
        '/user/profile.png'
    ),
    (
        45,
        'Milica',
        'Olvia',
        123456,
        '/user/profile.png'
    ),
    (
        46,
        'Milica',
        'Olvia',
        123456,
        '/user/profile.png'
    ),
    (
        47,
        'Milica',
        'Olvia',
        123456,
        '/user/profile.png'
    ),
    (
        48,
        'Milica',
        'Olvia',
        123456,
        '/user/profile.png'
    ),
    (
        49,
        'Milica',
        'Olvia',
        123456,
        '/user/profile.png'
    ),
    (
        50,
        'Milica',
        'Olvia',
        123456,
        '/user/profile.png'
    );
-- --------------------------------------------------------
--
-- Table structure for table `user_logins`
--
CREATE TABLE `user_logins` (
    `id` int(11) NOT NULL,
    `userId` int(11) DEFAULT NULL,
    `login_date` datetime DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
--
-- Dumping data for table `user_logins`
--
INSERT INTO `user_logins` (`id`, `userId`, `login_date`)
VALUES (1, 40, '2010-04-30 07:27:39'),
    (3, 40, '2010-05-17 22:52:21'),
    (4, 40, '2010-05-22 14:17:16'),
    (5, 40, '2010-05-26 03:26:56'),
    (6, 40, '2010-06-10 04:44:38');
-- --------------------------------------------------------
--
-- Table structure for table `verification`
--
CREATE TABLE `verification` (
    `id` int(11) NOT NULL,
    `token` int(12) DEFAULT NULL,
    `userId` int(11) DEFAULT NULL,
    `token_expire` datetime DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
--
-- Dumping data for table `verification`
--
INSERT INTO `verification` (`id`, `token`, `userId`, `token_expire`)
VALUES (1, 289061909, 40, '2010-05-17 22:52:21'),
    (3, 879231874, 11, '2010-03-02 22:52:21'),
    (4, 569705874, 28, '2010-04-17 22:52:21'),
    (5, 988558542, 12, '2010-10-15 22:52:21');
-- --------------------------------------------------------
--
-- Structure for view `NumberOfComments`
--
DROP TABLE IF EXISTS `NumberOfComments`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root` @`%` SQL SECURITY DEFINER VIEW `NumberOfComments` AS
select count(`comments`.`id`) AS `NumberOfComments`
from `comments`
where (`comments`.`feedId` = 1);
-- --------------------------------------------------------
--
-- Structure for view `number_comments`
--
DROP TABLE IF EXISTS `number_comments`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root` @`%` SQL SECURITY DEFINER VIEW `number_comments` AS
select count(`comments`.`id`) AS `NumberOfComments`
from `comments`
where (`comments`.`feedId` = 1);
--
-- Indexes for dumped tables
--
--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
ADD PRIMARY KEY (`userId`);
--
-- Indexes for table `claps`
--
ALTER TABLE `claps`
ADD PRIMARY KEY (`id`),
    ADD KEY `feedId` (`feedId`),
    ADD KEY `userId` (`userId`);
--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
ADD PRIMARY KEY (`id`),
    ADD KEY `feedId` (`feedId`),
    ADD KEY `userId` (`userId`);
--
-- Indexes for table `feeds`
--
ALTER TABLE `feeds`
ADD PRIMARY KEY (`id`),
    ADD KEY `userId` (`userId`);
--
-- Indexes for table `feed_shares`
--
ALTER TABLE `feed_shares`
ADD PRIMARY KEY (`id`),
    ADD KEY `feedId` (`feedId`),
    ADD KEY `userId` (`userId`);
--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
ADD PRIMARY KEY (`id`),
    ADD KEY `feedId` (`feedId`),
    ADD KEY `userId` (`userId`);
--
-- Indexes for table `relationships`
--
ALTER TABLE `relationships`
ADD PRIMARY KEY (`id`),
    ADD KEY `following_id` (`following_id`),
    ADD KEY `follower_id` (`follower_id`);
--
-- Indexes for table `users`
--
ALTER TABLE `users`
ADD PRIMARY KEY (`id`);
--
-- Indexes for table `user_logins`
--
ALTER TABLE `user_logins`
ADD PRIMARY KEY (`id`),
    ADD KEY `userId` (`userId`);
--
-- Indexes for table `verification`
--
ALTER TABLE `verification`
ADD PRIMARY KEY (`id`),
    ADD KEY `userId` (`userId`);
--
-- AUTO_INCREMENT for dumped tables
--
--
-- AUTO_INCREMENT for table `claps`
--
ALTER TABLE `claps`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 6;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 6;
--
-- AUTO_INCREMENT for table `feeds`
--
ALTER TABLE `feeds`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 26;
--
-- AUTO_INCREMENT for table `feed_shares`
--
ALTER TABLE `feed_shares`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 6;
--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 16;
--
-- AUTO_INCREMENT for table `relationships`
--
ALTER TABLE `relationships`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 6;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 51;
--
-- AUTO_INCREMENT for table `user_logins`
--
ALTER TABLE `user_logins`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 7;
--
-- AUTO_INCREMENT for table `verification`
--
ALTER TABLE `verification`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 6;
--
-- Constraints for dumped tables
--
--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
ADD CONSTRAINT `addresses_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;
--
-- Constraints for table `claps`
--
ALTER TABLE `claps`
ADD CONSTRAINT `claps_ibfk_3` FOREIGN KEY (`feedId`) REFERENCES `feeds` (`id`) ON DELETE CASCADE,
    ADD CONSTRAINT `claps_ibfk_4` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE
SET NULL;
--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
ADD CONSTRAINT `comments_ibfk_3` FOREIGN KEY (`feedId`) REFERENCES `feeds` (`id`) ON DELETE CASCADE,
    ADD CONSTRAINT `comments_ibfk_4` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE
SET NULL;
--
-- Constraints for table `feeds`
--
ALTER TABLE `feeds`
ADD CONSTRAINT `feeds_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE
SET NULL;
--
-- Constraints for table `feed_shares`
--
ALTER TABLE `feed_shares`
ADD CONSTRAINT `feed_shares_ibfk_3` FOREIGN KEY (`feedId`) REFERENCES `feeds` (`id`) ON DELETE CASCADE,
    ADD CONSTRAINT `feed_shares_ibfk_5` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE
SET NULL;
--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
ADD CONSTRAINT `likes_ibfk_3` FOREIGN KEY (`feedId`) REFERENCES `feeds` (`id`) ON DELETE CASCADE,
    ADD CONSTRAINT `likes_ibfk_4` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE
SET NULL;
--
-- Constraints for table `relationships`
--
ALTER TABLE `relationships`
ADD CONSTRAINT `relationships_ibfk_5` FOREIGN KEY (`following_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
    ADD CONSTRAINT `relationships_ibfk_6` FOREIGN KEY (`follower_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
--
-- Constraints for table `user_logins`
--
ALTER TABLE `user_logins`
ADD CONSTRAINT `user_logins_ibfk_3` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;
--
-- Constraints for table `verification`
--
ALTER TABLE `verification`
ADD CONSTRAINT `verification_ibfk_4` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */
;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */
;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */
;