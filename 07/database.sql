-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jun 09, 2020 at 09:50 AM
-- Server version: 5.7.26
-- PHP Version: 7.4.2
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";
--
-- Database: `eba_db`
--
-- --------------------------------------------------------
--
-- Table structure for table `archivements`
--
CREATE TABLE `archivements` (
    `id` int(11) NOT NULL,
    `userID` int(11) NOT NULL,
    `createdAt` datetime DEFAULT NULL,
    `updatedAt` datetime DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
--
-- Dumping data for table `archivements`
--
INSERT INTO `archivements` (`id`, `userID`, `createdAt`, `updatedAt`)
VALUES (
        1,
        1,
        '2020-06-08 14:56:39',
        '2020-06-08 14:56:39'
    );
-- --------------------------------------------------------
--
-- Table structure for table `claps`
--
CREATE TABLE `claps` (
    `id` int(11) NOT NULL,
    `userID` int(11) NOT NULL,
    `feedID` int(11) NOT NULL,
    `createdAt` datetime DEFAULT NULL,
    `updateAt` datetime DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
--
-- Dumping data for table `claps`
--
INSERT INTO `claps` (
        `id`,
        `userID`,
        `feedID`,
        `createdAt`,
        `updateAt`
    )
VALUES (
        1,
        1,
        1,
        '2020-06-09 15:59:56',
        '2020-06-09 15:59:56'
    ),
    (
        2,
        1,
        16,
        '2020-06-09 16:11:50',
        '2020-06-09 16:11:50'
    );
-- --------------------------------------------------------
--
-- Table structure for table `comments`
--
CREATE TABLE `comments` (
    `id` int(11) NOT NULL,
    `detail` varchar(150) DEFAULT NULL,
    `userID` int(11) NOT NULL,
    `feedID` int(11) NOT NULL,
    `createdAt` datetime DEFAULT NULL,
    `updateAt` datetime DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
--
-- Dumping data for table `comments`
--
INSERT INTO `comments` (
        `id`,
        `detail`,
        `userID`,
        `feedID`,
        `createdAt`,
        `updateAt`
    )
VALUES (
        1,
        'ว่าไงเพื่อน',
        1,
        1,
        '2020-06-09 13:42:36',
        '2020-06-09 13:42:36'
    ),
    (
        2,
        'ไปกินที่ไหนกันดี',
        1,
        1,
        '2020-06-09 13:42:36',
        '2020-06-09 13:42:36'
    ),
    (
        3,
        'เอาร้านที่มีเด็กป่ะละ',
        2,
        1,
        '2020-06-09 13:42:36',
        '2020-06-09 13:42:36'
    ),
    (
        4,
        'จัดดิว่ะ ขอเด็ดๆ',
        1,
        1,
        '2020-06-09 13:42:36',
        '2020-06-09 13:42:36'
    );
-- --------------------------------------------------------
--
-- Table structure for table `feeds`
--
CREATE TABLE `feeds` (
    `id` int(11) NOT NULL,
    `detail` varchar(100) DEFAULT NULL,
    `userID` int(11) NOT NULL,
    `statusHide` tinyint(1) NOT NULL DEFAULT '0',
    `statusClap` tinyint(1) NOT NULL DEFAULT '0',
    `createdAt` datetime DEFAULT NULL,
    `updateAt` datetime DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
--
-- Dumping data for table `feeds`
--
INSERT INTO `feeds` (
        `id`,
        `detail`,
        `userID`,
        `statusHide`,
        `statusClap`,
        `createdAt`,
        `updateAt`
    )
VALUES (
        1,
        'A0001',
        1,
        0,
        0,
        '2020-06-09 11:35:41',
        '2020-06-09 11:35:41'
    ),
    (
        2,
        'B0001',
        2,
        0,
        0,
        '2020-06-09 11:35:41',
        '2020-06-09 11:35:41'
    ),
    (
        3,
        'C0001',
        3,
        0,
        0,
        '2020-06-09 11:35:41',
        '2020-06-09 11:35:41'
    ),
    (
        4,
        'D0001',
        4,
        0,
        0,
        '2020-06-09 11:35:41',
        '2020-06-09 11:35:41'
    ),
    (
        5,
        'E0001',
        5,
        0,
        0,
        '2020-06-09 11:35:41',
        '2020-06-09 11:35:41'
    ),
    (
        6,
        'F0001',
        6,
        0,
        0,
        '2020-06-09 11:35:41',
        '2020-06-09 11:35:41'
    ),
    (
        7,
        'G0001',
        7,
        0,
        0,
        '2020-06-09 11:35:41',
        '2020-06-09 11:35:41'
    ),
    (
        8,
        'H0001',
        8,
        0,
        0,
        '2020-06-09 11:35:41',
        '2020-06-09 11:35:41'
    ),
    (
        9,
        'I0001',
        9,
        0,
        0,
        '2020-06-09 11:35:41',
        '2020-06-09 11:35:41'
    ),
    (
        10,
        'J0001',
        10,
        0,
        0,
        '2020-06-09 11:35:41',
        '2020-06-09 11:35:41'
    ),
    (
        11,
        'A0002',
        1,
        1,
        0,
        '2020-06-09 11:39:34',
        '2020-06-09 11:39:34'
    ),
    (
        12,
        'B0002',
        2,
        0,
        0,
        '2020-06-09 11:51:25',
        '2020-06-09 11:51:25'
    ),
    (
        13,
        'B0003',
        2,
        0,
        0,
        '2020-06-09 13:11:57',
        '2020-06-09 13:11:57'
    ),
    (
        16,
        NULL,
        2,
        0,
        0,
        '2020-06-09 16:06:04',
        '2020-06-09 16:06:04'
    );
-- --------------------------------------------------------
--
-- Table structure for table `follows`
--
CREATE TABLE `follows` (
    `id` int(11) NOT NULL,
    `followerId` int(11) DEFAULT NULL,
    `followingId` int(11) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
--
-- Dumping data for table `follows`
--
INSERT INTO `follows` (`id`, `followerId`, `followingId`)
VALUES (1, 1, 2),
    (2, 1, 3),
    (3, 1, 4),
    (4, 1, 5),
    (5, 2, 1),
    (7, 1, 6);
-- --------------------------------------------------------
--
-- Table structure for table `hide_feeds`
--
CREATE TABLE `hide_feeds` (
    `id` int(11) NOT NULL,
    `userID` int(11) NOT NULL,
    `feedID` int(11) NOT NULL,
    `createdAt` datetime DEFAULT NULL,
    `updateAt` datetime DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
--
-- Dumping data for table `hide_feeds`
--
INSERT INTO `hide_feeds` (
        `id`,
        `userID`,
        `feedID`,
        `createdAt`,
        `updateAt`
    )
VALUES (
        1,
        2,
        16,
        '2020-06-09 16:15:48',
        '2020-06-09 16:15:48'
    ),
    (
        2,
        2,
        1,
        '2020-06-09 16:38:50',
        '2020-06-09 16:38:50'
    );
-- --------------------------------------------------------
--
-- Table structure for table `shares`
--
CREATE TABLE `shares` (
    `id` int(11) NOT NULL,
    `userID` int(11) NOT NULL,
    `feedID` int(11) NOT NULL,
    `user_feedID` int(11) NOT NULL,
    `createdAt` datetime DEFAULT NULL,
    `updateAt` datetime DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
--
-- Dumping data for table `shares`
--
INSERT INTO `shares` (
        `id`,
        `userID`,
        `feedID`,
        `user_feedID`,
        `createdAt`,
        `updateAt`
    )
VALUES (
        2,
        2,
        1,
        16,
        '2020-06-09 16:07:02',
        '2020-06-09 16:07:02'
    );
-- --------------------------------------------------------
--
-- Table structure for table `users`
--
CREATE TABLE `users` (
    `id` int(11) NOT NULL,
    `email` varchar(50) NOT NULL,
    `password` varchar(255) NOT NULL,
    `firstname` varchar(30) NOT NULL,
    `lastname` varchar(30) NOT NULL,
    `address` varchar(255) DEFAULT NULL,
    `profileImage` varchar(255) DEFAULT NULL,
    `archivementID` int(11) DEFAULT NULL,
    `birthdate` date DEFAULT NULL,
    `createdAt` datetime DEFAULT NULL,
    `updateAt` datetime DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
--
-- Dumping data for table `users`
--
INSERT INTO `users` (
        `id`,
        `email`,
        `password`,
        `firstname`,
        `lastname`,
        `address`,
        `profileImage`,
        `archivementID`,
        `birthdate`,
        `createdAt`,
        `updateAt`
    )
VALUES (
        1,
        'test01@gmail.com',
        '12345',
        'test01',
        'test01',
        'Address-001',
        'test.png',
        1,
        '2020-06-08',
        '2020-06-08 14:34:24',
        '2020-06-08 14:34:24'
    ),
    (
        2,
        'test02@gmail.com',
        '12345',
        'test02',
        'test02',
        'Address-002',
        'test.png',
        1,
        '2020-06-08',
        '2020-06-08 14:34:54',
        '2020-06-08 14:34:54'
    ),
    (
        3,
        'test03@gmail.com',
        '12345',
        'test03',
        'test03',
        'Address-003',
        'test.png',
        1,
        '2020-06-08',
        '2020-06-08 14:34:54',
        '2020-06-08 14:34:54'
    ),
    (
        4,
        'test04@gmail.com',
        '12345',
        'test04',
        'test04',
        'Address-004',
        'test.png',
        1,
        '2020-06-08',
        '2020-06-08 14:34:54',
        '2020-06-08 14:34:54'
    ),
    (
        5,
        'test05@gmail.com',
        '12345',
        'test05',
        'test05',
        'Address-005',
        'test.png',
        1,
        '2020-06-08',
        '2020-06-08 14:34:54',
        '2020-06-08 14:34:54'
    ),
    (
        6,
        'test06@gmail.com',
        '12345',
        'test06',
        'test06',
        'Address-006',
        'test.png',
        1,
        '2020-06-09',
        '2020-06-09 11:22:18',
        '2020-06-09 11:22:18'
    ),
    (
        7,
        'test07@gmail.com',
        '12345',
        'test07',
        'test07',
        'Address-007',
        'test.png',
        1,
        '2020-06-09',
        '2020-06-09 11:22:18',
        '2020-06-09 11:22:18'
    ),
    (
        8,
        'test08@gmail.com',
        '12345',
        'test08',
        'test08',
        'Address-008',
        'test.png',
        1,
        '2020-06-09',
        '2020-06-09 11:22:18',
        '2020-06-09 11:22:18'
    ),
    (
        9,
        'test09@gmail.com',
        '12345',
        'test09',
        'test09',
        'Address-009',
        'test.png',
        1,
        '2020-06-09',
        '2020-06-09 11:22:18',
        '2020-06-09 11:22:18'
    ),
    (
        10,
        'test10@gmail.com',
        '12345',
        'test10',
        'test10',
        'Address-010',
        'test.png',
        1,
        '2020-06-09',
        '2020-06-09 11:22:18',
        '2020-06-09 11:22:18'
    );
-- --------------------------------------------------------
--
-- Table structure for table `user_login`
--
CREATE TABLE `user_login` (
    `id` int(11) NOT NULL,
    `userID` int(11) NOT NULL,
    `loginAt` datetime DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
-- --------------------------------------------------------
--
-- Table structure for table `user_verifies`
--
CREATE TABLE `user_verifies` (
    `id` int(11) NOT NULL,
    `token` varchar(150) NOT NULL,
    `tokenExpire` datetime DEFAULT NULL,
    `status` tinyint(1) NOT NULL DEFAULT '0',
    `verifyDate` datetime DEFAULT NULL,
    `userID` int(11) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
--
-- Indexes for dumped tables
--
--
-- Indexes for table `archivements`
--
ALTER TABLE `archivements`
ADD PRIMARY KEY (`id`),
    ADD KEY `userID` (`userID`);
--
-- Indexes for table `claps`
--
ALTER TABLE `claps`
ADD PRIMARY KEY (`id`),
    ADD KEY `userID` (`userID`),
    ADD KEY `feedID` (`feedID`);
--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
ADD PRIMARY KEY (`id`),
    ADD KEY `userID` (`userID`),
    ADD KEY `feedID` (`feedID`);
--
-- Indexes for table `feeds`
--
ALTER TABLE `feeds`
ADD PRIMARY KEY (`id`),
    ADD KEY `userID` (`userID`);
--
-- Indexes for table `follows`
--
ALTER TABLE `follows`
ADD PRIMARY KEY (`id`),
    ADD KEY `followerId` (`followerId`),
    ADD KEY `followingId` (`followingId`);
--
-- Indexes for table `hide_feeds`
--
ALTER TABLE `hide_feeds`
ADD PRIMARY KEY (`id`),
    ADD KEY `userID` (`userID`),
    ADD KEY `feedID` (`feedID`);
--
-- Indexes for table `shares`
--
ALTER TABLE `shares`
ADD PRIMARY KEY (`id`),
    ADD KEY `userID` (`userID`),
    ADD KEY `feedID` (`feedID`),
    ADD KEY `user_feedID` (`user_feedID`);
--
-- Indexes for table `users`
--
ALTER TABLE `users`
ADD PRIMARY KEY (`id`);
--
-- Indexes for table `user_login`
--
ALTER TABLE `user_login`
ADD PRIMARY KEY (`id`),
    ADD KEY `userID` (`userID`);
--
-- Indexes for table `user_verifies`
--
ALTER TABLE `user_verifies`
ADD PRIMARY KEY (`id`),
    ADD KEY `userID` (`userID`);
--
-- AUTO_INCREMENT for dumped tables
--
--
-- AUTO_INCREMENT for table `archivements`
--
ALTER TABLE `archivements`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 2;
--
-- AUTO_INCREMENT for table `claps`
--
ALTER TABLE `claps`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 3;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 5;
--
-- AUTO_INCREMENT for table `feeds`
--
ALTER TABLE `feeds`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 17;
--
-- AUTO_INCREMENT for table `follows`
--
ALTER TABLE `follows`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 8;
--
-- AUTO_INCREMENT for table `hide_feeds`
--
ALTER TABLE `hide_feeds`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 3;
--
-- AUTO_INCREMENT for table `shares`
--
ALTER TABLE `shares`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 11;
--
-- AUTO_INCREMENT for table `user_login`
--
ALTER TABLE `user_login`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_verifies`
--
ALTER TABLE `user_verifies`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--
--
-- Constraints for table `archivements`
--
ALTER TABLE `archivements`
ADD CONSTRAINT `archivements_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `users` (`id`);
--
-- Constraints for table `claps`
--
ALTER TABLE `claps`
ADD CONSTRAINT `claps_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `users` (`id`),
    ADD CONSTRAINT `claps_ibfk_2` FOREIGN KEY (`feedID`) REFERENCES `feeds` (`id`);
--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `users` (`id`),
    ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`feedID`) REFERENCES `feeds` (`id`);
--
-- Constraints for table `feeds`
--
ALTER TABLE `feeds`
ADD CONSTRAINT `feeds_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `users` (`id`);
--
-- Constraints for table `follows`
--
ALTER TABLE `follows`
ADD CONSTRAINT `follows_ibfk_1` FOREIGN KEY (`followerId`) REFERENCES `users` (`id`),
    ADD CONSTRAINT `follows_ibfk_2` FOREIGN KEY (`followingId`) REFERENCES `users` (`id`);
--
-- Constraints for table `hide_feeds`
--
ALTER TABLE `hide_feeds`
ADD CONSTRAINT `hide_feeds_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `users` (`id`),
    ADD CONSTRAINT `hide_feeds_ibfk_2` FOREIGN KEY (`feedID`) REFERENCES `feeds` (`id`);
--
-- Constraints for table `shares`
--
ALTER TABLE `shares`
ADD CONSTRAINT `shares_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `users` (`id`),
    ADD CONSTRAINT `shares_ibfk_2` FOREIGN KEY (`feedID`) REFERENCES `feeds` (`id`),
    ADD CONSTRAINT `shares_ibfk_3` FOREIGN KEY (`user_feedID`) REFERENCES `feeds` (`id`);
--
-- Constraints for table `user_login`
--
ALTER TABLE `user_login`
ADD CONSTRAINT `user_login_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `users` (`id`);
--
-- Constraints for table `user_verifies`
--
ALTER TABLE `user_verifies`
ADD CONSTRAINT `user_verifies_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `users` (`id`);