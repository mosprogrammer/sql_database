-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2020 at 07:10 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eba`
--

-- --------------------------------------------------------

--
-- Table structure for table `claps`
--

CREATE TABLE `claps` (
  `clap_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `clap_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `claps`
--

INSERT INTO `claps` (`clap_id`, `user_id`, `post_id`, `clap_count`) VALUES
(1, 1, 1, 2),
(2, 2, 2, 3),
(3, 1, 1, 11),
(4, 1, 2, 13),
(5, 1, 3, 13),
(6, 1, 4, 14),
(7, 1, 5, 15),
(8, 1, 6, 16),
(9, 1, 7, 17),
(10, 1, 8, 18),
(11, 1, 9, 19),
(12, 1, 10, 20),
(13, 1, 11, 21),
(14, 1, 12, 22),
(15, 1, 13, 23),
(16, 1, 14, 24),
(17, 1, 15, 25),
(18, 1, 16, 26),
(19, 1, 17, 27),
(20, 1, 18, 28),
(21, 1, 19, 29),
(22, 1, 20, 30),
(23, 1, 21, 31),
(24, 1, 22, 32),
(25, 1, 23, 33),
(26, 1, 24, 34),
(27, 1, 25, 35),
(28, 1, 26, 36),
(29, 1, 27, 37),
(30, 1, 28, 38),
(31, 1, 29, 39),
(32, 1, 30, 40),
(33, 1, 31, 41),
(34, 1, 32, 42),
(35, 1, 33, 43),
(36, 1, 34, 44),
(37, 1, 35, 45),
(38, 1, 36, 46),
(39, 1, 37, 47),
(40, 1, 38, 48),
(41, 1, 39, 49),
(42, 1, 40, 50),
(43, 1, 41, 51),
(44, 1, 42, 52),
(45, 1, 43, 53),
(46, 1, 44, 54),
(47, 1, 45, 55),
(48, 1, 46, 56),
(49, 1, 47, 57),
(50, 1, 48, 58),
(51, 1, 49, 59),
(52, 1, 50, 60),
(53, 2, 52, 62),
(54, 2, 53, 63),
(55, 2, 54, 64),
(56, 2, 55, 65),
(57, 2, 56, 66),
(58, 2, 57, 67),
(59, 2, 58, 68),
(60, 2, 59, 69),
(61, 2, 60, 70),
(62, 2, 61, 71),
(63, 2, 62, 72),
(64, 2, 63, 73),
(65, 2, 64, 74),
(66, 2, 65, 75),
(67, 2, 66, 76),
(68, 2, 67, 77),
(69, 2, 68, 78),
(70, 2, 69, 79),
(71, 2, 70, 80),
(72, 2, 71, 81),
(73, 2, 72, 82),
(74, 2, 73, 83),
(75, 2, 74, 84),
(76, 2, 75, 85),
(77, 2, 76, 86),
(78, 2, 77, 87),
(79, 2, 78, 88),
(80, 2, 79, 89),
(81, 2, 80, 90),
(82, 2, 81, 91),
(83, 2, 82, 92),
(84, 2, 83, 93),
(85, 2, 84, 94),
(86, 2, 85, 95),
(87, 2, 86, 96),
(88, 2, 87, 97),
(89, 2, 88, 98),
(90, 2, 89, 99),
(91, 2, 90, 100),
(92, 2, 91, 101),
(93, 2, 92, 102),
(94, 2, 93, 103),
(95, 2, 94, 104),
(96, 2, 95, 105),
(97, 2, 96, 106),
(98, 2, 97, 107),
(99, 2, 98, 108),
(100, 2, 99, 109),
(101, 2, 100, 110),
(103, 2, 52, 62),
(104, 2, 53, 63),
(105, 2, 54, 64),
(106, 2, 55, 65),
(107, 2, 56, 66),
(108, 2, 57, 67),
(109, 2, 58, 68),
(110, 2, 59, 69),
(111, 2, 60, 70),
(112, 2, 61, 71),
(113, 2, 62, 72),
(114, 2, 63, 73),
(115, 2, 64, 74),
(116, 2, 65, 75),
(117, 2, 66, 76),
(118, 2, 67, 77),
(119, 2, 68, 78),
(120, 2, 69, 79),
(121, 2, 70, 80),
(122, 2, 71, 81),
(123, 2, 72, 82),
(124, 2, 73, 83),
(125, 2, 74, 84),
(126, 2, 75, 85),
(127, 2, 76, 86),
(128, 2, 77, 87),
(129, 2, 78, 88),
(130, 2, 79, 89),
(131, 2, 80, 90),
(132, 2, 81, 91),
(133, 2, 82, 92),
(134, 2, 83, 93),
(135, 2, 84, 94),
(136, 2, 85, 95),
(137, 2, 86, 96),
(138, 2, 87, 97),
(139, 2, 88, 98),
(140, 2, 89, 99),
(141, 2, 90, 100),
(142, 2, 91, 101),
(143, 2, 92, 102),
(144, 2, 93, 103),
(145, 2, 94, 104),
(146, 2, 95, 105),
(147, 2, 96, 106),
(148, 2, 97, 107),
(149, 2, 98, 108);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `message` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `user_id`, `post_id`, `status`, `message`) VALUES
(1, 1, 1, 1, '1111111111111'),
(2, 2, 2, 1, '222222222222'),
(3, 1, 1, 1, 'ลำดับที่1'),
(4, 1, 2, 1, 'ลำดับที่2'),
(5, 1, 3, 1, 'ลำดับที่3'),
(6, 1, 4, 1, 'ลำดับที่4'),
(7, 1, 5, 1, 'ลำดับที่5'),
(8, 1, 6, 1, 'ลำดับที่6'),
(9, 1, 7, 1, 'ลำดับที่7'),
(10, 1, 8, 1, 'ลำดับที่8'),
(11, 1, 9, 1, 'ลำดับที่9'),
(12, 1, 10, 1, 'ลำดับที่10'),
(13, 1, 11, 1, 'ลำดับที่11'),
(14, 1, 12, 1, 'ลำดับที่12'),
(15, 1, 13, 1, 'ลำดับที่13'),
(16, 1, 14, 1, 'ลำดับที่14'),
(17, 1, 15, 1, 'ลำดับที่15'),
(18, 1, 16, 1, 'ลำดับที่16'),
(19, 1, 17, 1, 'ลำดับที่17'),
(20, 1, 18, 1, 'ลำดับที่18'),
(21, 1, 19, 1, 'ลำดับที่19'),
(22, 1, 20, 1, 'ลำดับที่20'),
(23, 1, 21, 1, 'ลำดับที่21'),
(24, 1, 22, 1, 'ลำดับที่22'),
(25, 1, 23, 1, 'ลำดับที่23'),
(26, 1, 24, 1, 'ลำดับที่24'),
(27, 1, 25, 1, 'ลำดับที่25'),
(28, 1, 26, 1, 'ลำดับที่26'),
(29, 1, 27, 1, 'ลำดับที่27'),
(30, 1, 28, 1, 'ลำดับที่28'),
(31, 1, 29, 1, 'ลำดับที่29'),
(32, 1, 30, 1, 'ลำดับที่30'),
(33, 1, 31, 1, 'ลำดับที่31'),
(34, 1, 32, 1, 'ลำดับที่32'),
(35, 1, 33, 1, 'ลำดับที่33'),
(36, 1, 34, 1, 'ลำดับที่34'),
(37, 1, 35, 1, 'ลำดับที่35'),
(38, 1, 36, 1, 'ลำดับที่36'),
(39, 1, 37, 1, 'ลำดับที่37'),
(40, 1, 38, 1, 'ลำดับที่38'),
(41, 1, 39, 1, 'ลำดับที่39'),
(42, 1, 40, 1, 'ลำดับที่40'),
(43, 1, 41, 1, 'ลำดับที่41'),
(44, 1, 42, 1, 'ลำดับที่42'),
(45, 1, 43, 1, 'ลำดับที่43'),
(46, 1, 44, 1, 'ลำดับที่44'),
(47, 1, 45, 1, 'ลำดับที่45'),
(48, 1, 46, 1, 'ลำดับที่46'),
(49, 1, 47, 1, 'ลำดับที่47'),
(50, 1, 48, 1, 'ลำดับที่48'),
(51, 1, 49, 1, 'ลำดับที่49'),
(52, 2, 52, 1, 'ลำดับที่52'),
(53, 2, 53, 1, 'ลำดับที่53'),
(54, 2, 54, 1, 'ลำดับที่54'),
(55, 2, 55, 1, 'ลำดับที่55'),
(56, 2, 56, 1, 'ลำดับที่56'),
(57, 2, 57, 1, 'ลำดับที่57'),
(58, 2, 58, 1, 'ลำดับที่58'),
(59, 2, 59, 1, 'ลำดับที่59'),
(60, 2, 60, 1, 'ลำดับที่60'),
(61, 2, 61, 1, 'ลำดับที่61'),
(62, 2, 62, 1, 'ลำดับที่62'),
(63, 2, 63, 1, 'ลำดับที่63'),
(64, 2, 64, 1, 'ลำดับที่64'),
(65, 2, 65, 1, 'ลำดับที่65'),
(66, 2, 66, 1, 'ลำดับที่66'),
(67, 2, 67, 1, 'ลำดับที่67'),
(68, 2, 68, 1, 'ลำดับที่68'),
(69, 2, 69, 1, 'ลำดับที่69'),
(70, 2, 70, 1, 'ลำดับที่70'),
(71, 2, 71, 1, 'ลำดับที่71'),
(72, 2, 72, 1, 'ลำดับที่72'),
(73, 2, 73, 1, 'ลำดับที่73'),
(74, 2, 74, 1, 'ลำดับที่74'),
(75, 2, 75, 1, 'ลำดับที่75'),
(76, 2, 76, 1, 'ลำดับที่76'),
(77, 2, 77, 1, 'ลำดับที่77'),
(78, 2, 78, 1, 'ลำดับที่78'),
(79, 2, 79, 1, 'ลำดับที่79'),
(80, 2, 80, 1, 'ลำดับที่80'),
(81, 2, 81, 1, 'ลำดับที่81'),
(82, 2, 82, 1, 'ลำดับที่82'),
(83, 2, 83, 1, 'ลำดับที่83'),
(84, 2, 84, 1, 'ลำดับที่84'),
(85, 2, 85, 1, 'ลำดับที่85'),
(86, 2, 86, 1, 'ลำดับที่86'),
(87, 2, 87, 1, 'ลำดับที่87'),
(88, 2, 88, 1, 'ลำดับที่88'),
(89, 2, 89, 1, 'ลำดับที่89'),
(90, 2, 90, 1, 'ลำดับที่90'),
(91, 2, 91, 1, 'ลำดับที่91'),
(92, 2, 92, 1, 'ลำดับที่92'),
(93, 2, 93, 1, 'ลำดับที่93'),
(94, 2, 94, 1, 'ลำดับที่94'),
(95, 2, 95, 1, 'ลำดับที่95'),
(96, 2, 96, 1, 'ลำดับที่96'),
(97, 2, 97, 1, 'ลำดับที่97'),
(98, 2, 98, 1, 'ลำดับที่98'),
(99, 2, 99, 1, 'ลำดับที่99'),
(100, 2, 100, 1, 'ลำดับที่100');

-- --------------------------------------------------------

--
-- Table structure for table `feeds`
--

CREATE TABLE `feeds` (
  `feed_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `follow_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feeds`
--

INSERT INTO `feeds` (`feed_id`, `user_id`, `post_id`, `follow_id`) VALUES
(1, 1, 1, 1),
(2, 2, 2, 2),
(3, 1, 1, 1),
(4, 1, 2, 1),
(5, 1, 3, 1),
(6, 1, 4, 1),
(7, 1, 5, 1),
(8, 1, 6, 1),
(9, 1, 7, 1),
(10, 1, 8, 1),
(11, 1, 9, 1),
(12, 1, 10, 1),
(13, 1, 11, 1),
(14, 1, 12, 1),
(15, 1, 13, 1),
(16, 1, 14, 1),
(17, 1, 15, 1),
(18, 1, 16, 1),
(19, 1, 17, 1),
(20, 1, 18, 1),
(21, 1, 19, 1),
(22, 1, 20, 1),
(23, 1, 21, 1),
(24, 1, 22, 1),
(25, 1, 23, 1),
(26, 1, 24, 1),
(27, 1, 25, 1),
(28, 1, 26, 1),
(29, 1, 27, 1),
(30, 1, 28, 1),
(31, 1, 29, 1),
(32, 1, 30, 1),
(33, 1, 31, 1),
(34, 1, 32, 1),
(35, 1, 33, 1),
(36, 1, 34, 1),
(37, 1, 35, 1),
(38, 1, 36, 1),
(39, 1, 37, 1),
(40, 1, 38, 1),
(41, 1, 39, 1),
(42, 1, 40, 1),
(43, 1, 41, 1),
(44, 1, 42, 1),
(45, 1, 43, 1),
(46, 1, 44, 1),
(47, 1, 45, 1),
(48, 1, 46, 1),
(49, 1, 47, 1),
(50, 1, 48, 1),
(51, 1, 49, 1),
(52, 2, 51, 2),
(53, 2, 52, 2),
(54, 2, 53, 2),
(55, 2, 54, 2),
(56, 2, 55, 2),
(57, 2, 56, 2),
(58, 2, 57, 2),
(59, 2, 58, 2),
(60, 2, 59, 2),
(61, 2, 60, 2),
(62, 2, 61, 2),
(63, 2, 62, 2),
(64, 2, 63, 2),
(65, 2, 64, 2),
(66, 2, 65, 2),
(67, 2, 66, 2),
(68, 2, 67, 2),
(69, 2, 68, 2),
(70, 2, 69, 2),
(71, 2, 70, 2),
(72, 2, 71, 2),
(73, 2, 72, 2),
(74, 2, 73, 2),
(75, 2, 74, 2),
(76, 2, 75, 2),
(77, 2, 76, 2),
(78, 2, 77, 2),
(79, 2, 78, 2),
(80, 2, 79, 2),
(81, 2, 80, 2),
(82, 2, 81, 2),
(83, 2, 82, 2),
(84, 2, 83, 2),
(85, 2, 84, 2),
(86, 2, 85, 2),
(87, 2, 86, 2),
(88, 2, 87, 2),
(89, 2, 88, 2),
(90, 2, 89, 2),
(91, 2, 90, 2),
(92, 2, 91, 2),
(93, 2, 92, 2),
(94, 2, 93, 2),
(95, 2, 94, 2),
(96, 2, 95, 2),
(97, 2, 96, 2),
(98, 2, 97, 2),
(99, 2, 98, 2),
(100, 2, 99, 2);

-- --------------------------------------------------------

--
-- Table structure for table `follows`
--

CREATE TABLE `follows` (
  `follow_id` int(11) NOT NULL,
  `following_id` int(11) DEFAULT NULL,
  `follower_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `follows`
--

INSERT INTO `follows` (`follow_id`, `following_id`, `follower_id`) VALUES
(1, 1, 2),
(2, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hiddens`
--

CREATE TABLE `hiddens` (
  `hidden_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `feed_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hiddens`
--

INSERT INTO `hiddens` (`hidden_id`, `user_id`, `feed_id`) VALUES
(105, 1, 1),
(106, 2, 55);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `message` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `user_id`, `status`, `message`) VALUES
(1, 1, 1, '111111111111'),
(2, 2, 1, '22222222222222'),
(3, 1, 1, 'ลำดับที่0'),
(4, 1, 1, 'ลำดับที่1'),
(5, 1, 1, 'ลำดับที่2'),
(6, 1, 1, 'ลำดับที่3'),
(7, 1, 1, 'ลำดับที่4'),
(8, 1, 1, 'ลำดับที่5'),
(9, 1, 1, 'ลำดับที่6'),
(10, 1, 1, 'ลำดับที่7'),
(11, 1, 1, 'ลำดับที่8'),
(12, 1, 1, 'ลำดับที่9'),
(13, 1, 1, 'ลำดับที่10'),
(14, 1, 1, 'ลำดับที่11'),
(15, 1, 1, 'ลำดับที่12'),
(16, 1, 1, 'ลำดับที่13'),
(17, 1, 1, 'ลำดับที่14'),
(18, 1, 1, 'ลำดับที่15'),
(19, 1, 1, 'ลำดับที่16'),
(20, 1, 1, 'ลำดับที่17'),
(21, 1, 1, 'ลำดับที่18'),
(22, 1, 1, 'ลำดับที่19'),
(23, 1, 1, 'ลำดับที่20'),
(24, 1, 1, 'ลำดับที่21'),
(25, 1, 1, 'ลำดับที่22'),
(26, 1, 1, 'ลำดับที่23'),
(27, 1, 1, 'ลำดับที่24'),
(28, 1, 1, 'ลำดับที่25'),
(29, 1, 1, 'ลำดับที่26'),
(30, 1, 1, 'ลำดับที่27'),
(31, 1, 1, 'ลำดับที่28'),
(32, 1, 1, 'ลำดับที่29'),
(33, 1, 1, 'ลำดับที่30'),
(34, 1, 1, 'ลำดับที่31'),
(35, 1, 1, 'ลำดับที่32'),
(36, 1, 1, 'ลำดับที่33'),
(37, 1, 1, 'ลำดับที่34'),
(38, 1, 1, 'ลำดับที่35'),
(39, 1, 1, 'ลำดับที่36'),
(40, 1, 1, 'ลำดับที่37'),
(41, 1, 1, 'ลำดับที่38'),
(42, 1, 1, 'ลำดับที่39'),
(43, 1, 1, 'ลำดับที่40'),
(44, 1, 1, 'ลำดับที่41'),
(45, 1, 1, 'ลำดับที่42'),
(46, 1, 1, 'ลำดับที่43'),
(47, 1, 1, 'ลำดับที่44'),
(48, 1, 1, 'ลำดับที่45'),
(49, 1, 1, 'ลำดับที่46'),
(50, 1, 1, 'ลำดับที่47'),
(51, 1, 1, 'ลำดับที่48'),
(52, 2, 1, 'ลำดับที่0'),
(53, 2, 1, 'ลำดับที่1'),
(54, 2, 1, 'ลำดับที่2'),
(55, 2, 1, 'ลำดับที่3'),
(56, 2, 1, 'ลำดับที่4'),
(57, 2, 1, 'ลำดับที่5'),
(58, 2, 1, 'ลำดับที่6'),
(59, 2, 1, 'ลำดับที่7'),
(60, 2, 1, 'ลำดับที่8'),
(61, 2, 1, 'ลำดับที่9'),
(62, 2, 1, 'ลำดับที่10'),
(63, 2, 1, 'ลำดับที่11'),
(64, 2, 1, 'ลำดับที่12'),
(65, 2, 1, 'ลำดับที่13'),
(66, 2, 1, 'ลำดับที่14'),
(67, 2, 1, 'ลำดับที่15'),
(68, 2, 1, 'ลำดับที่16'),
(69, 2, 1, 'ลำดับที่17'),
(70, 2, 1, 'ลำดับที่18'),
(71, 2, 1, 'ลำดับที่19'),
(72, 2, 1, 'ลำดับที่20'),
(73, 2, 1, 'ลำดับที่21'),
(74, 2, 1, 'ลำดับที่22'),
(75, 2, 1, 'ลำดับที่23'),
(76, 2, 1, 'ลำดับที่24'),
(77, 2, 1, 'ลำดับที่25'),
(78, 2, 1, 'ลำดับที่26'),
(79, 2, 1, 'ลำดับที่27'),
(80, 2, 1, 'ลำดับที่28'),
(81, 2, 1, 'ลำดับที่29'),
(82, 2, 1, 'ลำดับที่30'),
(83, 2, 1, 'ลำดับที่31'),
(84, 2, 1, 'ลำดับที่32'),
(85, 2, 1, 'ลำดับที่33'),
(86, 2, 1, 'ลำดับที่34'),
(87, 2, 1, 'ลำดับที่35'),
(88, 2, 1, 'ลำดับที่36'),
(89, 2, 1, 'ลำดับที่37'),
(90, 2, 1, 'ลำดับที่38'),
(91, 2, 1, 'ลำดับที่39'),
(92, 2, 1, 'ลำดับที่40'),
(93, 2, 1, 'ลำดับที่41'),
(94, 2, 1, 'ลำดับที่42'),
(95, 2, 1, 'ลำดับที่43'),
(96, 2, 1, 'ลำดับที่44'),
(97, 2, 1, 'ลำดับที่45'),
(98, 2, 1, 'ลำดับที่46'),
(99, 2, 1, 'ลำดับที่47'),
(100, 2, 1, 'ลำดับที่48');

-- --------------------------------------------------------

--
-- Table structure for table `shares`
--

CREATE TABLE `shares` (
  `shares_id` int(11) NOT NULL,
  `share_count` int(11) DEFAULT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shares`
--

INSERT INTO `shares` (`shares_id`, `share_count`, `post_id`) VALUES
(1, 12, 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `img` text DEFAULT NULL,
  `createAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `email`, `name`, `img`, `createAt`) VALUES
(1, 'a1@mail.com', 'a1', NULL, '2020-06-04 22:33:41'),
(2, 'a2@mail.com', 'a2', NULL, '2020-06-04 22:33:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `claps`
--
ALTER TABLE `claps`
  ADD PRIMARY KEY (`clap_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `feeds`
--
ALTER TABLE `feeds`
  ADD PRIMARY KEY (`feed_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `follow_id` (`follow_id`);

--
-- Indexes for table `follows`
--
ALTER TABLE `follows`
  ADD PRIMARY KEY (`follow_id`),
  ADD KEY `following_id` (`following_id`),
  ADD KEY `follower_id` (`follower_id`);

--
-- Indexes for table `hiddens`
--
ALTER TABLE `hiddens`
  ADD PRIMARY KEY (`hidden_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `feed_id` (`feed_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `shares`
--
ALTER TABLE `shares`
  ADD PRIMARY KEY (`shares_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `claps`
--
ALTER TABLE `claps`
  MODIFY `clap_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `feeds`
--
ALTER TABLE `feeds`
  MODIFY `feed_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `follows`
--
ALTER TABLE `follows`
  MODIFY `follow_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `hiddens`
--
ALTER TABLE `hiddens`
  MODIFY `hidden_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `shares`
--
ALTER TABLE `shares`
  MODIFY `shares_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `claps`
--
ALTER TABLE `claps`
  ADD CONSTRAINT `claps_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `claps_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `posts` (`post_id`);

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `posts` (`post_id`);

--
-- Constraints for table `feeds`
--
ALTER TABLE `feeds`
  ADD CONSTRAINT `feeds_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `feeds_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `posts` (`post_id`),
  ADD CONSTRAINT `feeds_ibfk_3` FOREIGN KEY (`follow_id`) REFERENCES `follows` (`follow_id`);

--
-- Constraints for table `follows`
--
ALTER TABLE `follows`
  ADD CONSTRAINT `follows_ibfk_1` FOREIGN KEY (`following_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `follows_ibfk_2` FOREIGN KEY (`follower_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `hiddens`
--
ALTER TABLE `hiddens`
  ADD CONSTRAINT `hiddens_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `hiddens_ibfk_2` FOREIGN KEY (`feed_id`) REFERENCES `feeds` (`feed_id`);

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `shares`
--
ALTER TABLE `shares`
  ADD CONSTRAINT `shares_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`post_id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
