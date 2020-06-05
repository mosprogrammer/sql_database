-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 05, 2020 at 06:04 PM
-- Server version: 5.7.29-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `message`, `post_id`, `user_id`) VALUES
(5, '65qRKBn52z3IXkkTO7Wa', 35, 34),
(6, '0cFQsIqONueCUIRsD8wA', 14, 10),
(7, '8HWEyQkWxQniMPOec3QU', 41, 20),
(8, '5oDzgRkM9PMKyp1y17oN', 35, 48),
(9, 'S2NMSOnyEka7JaVj4I5S', 15, 2),
(10, 'uK95tuP8i4RQnjmLSpIt', 22, 34),
(11, 'JlgZrf3E8XZl3hq4GmXL', 46, 37),
(12, 'bm4uOEaWh3Ar7fiW2dds', 32, 29),
(13, 'w1M9gaO6ZReoVRJq2O8T', 36, 42),
(14, 'izjYvkrwjHmL1Yzph574', 22, 18),
(15, 'KhD1wZfpfFEd1MPT9Rk7', 23, 24),
(16, 'J7aAU2KvFrdS3nSat8jX', 49, 14),
(17, 'wzkjg6YuUKSvMd7IlBiw', 22, 19),
(18, 'D29mHiUFqu8ZFjm0UTV6', 8, 9),
(19, 'vWdpBiWYq1lPT2V9f2d4', 20, 17),
(20, 'xz5xxCIYDHjQnWGu8ld0', 41, 1),
(21, 'ILNAF6an7Ef2I2N62rx5', 8, 48),
(22, 'hjegSWdXCxTni0TCULOD', 13, 10),
(23, 'YTd4bmVDAzy4aK95vqsf', 24, 28),
(24, 'LqId0HdqLsS5eZAUhfRn', 11, 38),
(25, 'YhM8t8tgijBFuhGcz63q', 47, 48),
(26, 'UDjjM9GDh1HA8R5iC1VH', 39, 46),
(27, 'O9NWD66vK5L6LZObg1k5', 5, 47),
(28, 't5nwqMOK6m1kNLQiF654', 4, 27),
(29, 'NhfFB2yCos6u8v2veLMc', 16, 38),
(30, 'y4z9RzuPl3ByxgXO0cCo', 23, 39),
(31, 'pwevWQpzMmgNAGGQs6uv', 48, 45),
(32, 'JVreYiOX6BfEOQiORIWu', 19, 43),
(33, 'P0pr30OVNBi4iXNzcpVH', 36, 11),
(34, 'cj4emWeD0YMHXgQzlxOb', 11, 49),
(35, 'rTDHS0YvB974T20sW4wo', 46, 10),
(36, 'T7OSgJ4Vl6Vzb8nxtKD4', 14, 16),
(37, 'DBfROdzNRTWuxJxtCwWL', 18, 44),
(38, 'lHBOYKdXZtvfcKybxaDL', 7, 10),
(39, 'N2R6yudY7gJunmxl1USX', 32, 16),
(40, 'EDqwtAfLAxmQ4nzE3G9f', 49, 42),
(41, 'uEjSe3Szy1rNYs5YtoTY', 40, 40),
(42, 'kt8j7x9QoFDdqFRgnGcE', 20, 19),
(43, 'nMZNDDxcV44chEzuCdBD', 23, 36),
(44, '304ETjLtIwqfGi9usSAb', 24, 41),
(45, 'UPyjurSYbmcGFko6hQ0t', 34, 20),
(46, 'ZO9lZ3F3IdZU6C9JdnxK', 6, 9),
(47, 'JbYB3qoKu0roZ0XK2zZE', 33, 6),
(48, 'FsmNP6LgyJO4GJ1NyD5I', 1, 5),
(49, 'diU3t2gj3rkwZjdgak62', 22, 2),
(50, 'nqzx3lWrIEgoPL4AWG0M', 29, 45),
(51, 'ZheVlijRnniC0kXUse7s', 13, 45),
(52, '8w0taYhswLodEBoBc8HT', 7, 41),
(53, '6irdyjV1hjpZsEB0xvPw', 27, 6),
(54, 'J0IPZ1PQzUE41koDdXkc', 21, 47);

-- --------------------------------------------------------

--
-- Table structure for table `follows`
--

CREATE TABLE `follows` (
  `id` int(11) NOT NULL,
  `following` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `follows`
--

INSERT INTO `follows` (`id`, `following`, `user_id`) VALUES
(1, 39, 30),
(2, 30, 39),
(3, 11, 21),
(4, 10, 23),
(5, 8, 32),
(6, 39, 20),
(7, 37, 15),
(8, 38, 32),
(9, 45, 14),
(10, 24, 13),
(11, 30, 29),
(12, 8, 9),
(13, 31, 26),
(14, 17, 11),
(15, 10, 14),
(16, 48, 7),
(17, 24, 8),
(18, 24, 41),
(19, 7, 45),
(20, 29, 44),
(21, 15, 47),
(22, 29, 15),
(23, 23, 31),
(24, 22, 6),
(25, 17, 49),
(26, 15, 35),
(27, 19, 39),
(28, 32, 46),
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
(40, 22, 17),
(41, 1, 27),
(42, 41, 20),
(43, 2, 12),
(44, 48, 20),
(45, 45, 33),
(46, 37, 38),
(47, 42, 28),
(48, 36, 9),
(49, 30, 14),
(50, 41, 31),
(51, 41, 12),
(52, 3, 37),
(53, 22, 25),
(54, 10, 39),
(55, 28, 31),
(56, 1, 31),
(57, 20, 17),
(58, 1, 31),
(59, 48, 14),
(60, 23, 15),
(61, 23, 38),
(62, 18, 5),
(63, 28, 39),
(64, 2, 7),
(65, 41, 17),
(66, 8, 49),
(67, 17, 21),
(68, 38, 26),
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
(79, 35, 40),
(80, 44, 36),
(81, 40, 8),
(82, 36, 18),
(83, 1, 12),
(84, 30, 2),
(85, 32, 21),
(86, 47, 23),
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
(100, 41, 8),
(101, 20, 36),
(102, 4, 24),
(103, 41, 24),
(104, 23, 31),
(105, 19, 2),
(106, 44, 43),
(107, 42, 44),
(108, 48, 13),
(109, 47, 30),
(110, 45, 17),
(111, 32, 4),
(112, 13, 30),
(113, 25, 38),
(114, 39, 28),
(115, 44, 45),
(116, 35, 19),
(117, 20, 41),
(118, 18, 30),
(119, 31, 6),
(120, 37, 46),
(121, 41, 32),
(122, 1, 14),
(123, 25, 28),
(124, 33, 17),
(125, 49, 44),
(126, 26, 38),
(127, 43, 45),
(128, 40, 6),
(129, 46, 41),
(130, 35, 32),
(131, 38, 19),
(132, 6, 34),
(133, 28, 5),
(134, 6, 10),
(135, 38, 5),
(136, 33, 16),
(137, 10, 48),
(138, 14, 6),
(139, 31, 25),
(140, 35, 24),
(141, 25, 26),
(142, 42, 27),
(143, 19, 6),
(144, 1, 25),
(145, 37, 23),
(146, 14, 28),
(147, 46, 41),
(148, 13, 22),
(149, 37, 15),
(150, 45, 14);

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `post_id`, `user_id`) VALUES
(1, 16, 48),
(2, 4, 43),
(3, 43, 11),
(4, 32, 29),
(5, 11, 46),
(6, 21, 29),
(7, 25, 26),
(8, 13, 41),
(9, 11, 13),
(10, 15, 26),
(11, 45, 17),
(12, 46, 9),
(13, 28, 10),
(14, 1, 18),
(15, 10, 20),
(16, 7, 13),
(17, 9, 13),
(18, 28, 6),
(19, 16, 44),
(20, 24, 47),
(21, 25, 5),
(22, 45, 11),
(23, 38, 14),
(24, 39, 43),
(25, 44, 23),
(26, 12, 22),
(27, 48, 42),
(28, 23, 47),
(29, 18, 40),
(30, 9, 6),
(31, 25, 31),
(32, 3, 20),
(33, 15, 27),
(34, 31, 37),
(35, 10, 32),
(36, 42, 37),
(37, 4, 17),
(38, 2, 21),
(39, 14, 4),
(40, 46, 4),
(41, 13, 21),
(42, 43, 47),
(43, 43, 42),
(44, 9, 41),
(45, 42, 13),
(46, 2, 48),
(47, 46, 3),
(48, 30, 29),
(49, 36, 40),
(50, 42, 6);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `like_total` int(11) DEFAULT '0',
  `comment_total` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `message`, `user_id`, `deleted`, `like_total`, `comment_total`, `created_at`, `updated_at`) VALUES
(1, '6P8hCWixgPzJ7D1UrZtW', 3, 0, 0, 0, '2020-06-04 23:37:37', NULL),
(2, 'RJCx2irvXc4PQK3Cw2YY', 21, 0, 0, 0, '2020-06-04 23:37:37', NULL),
(3, '4hgvNqUVV5fG9yP0BD9y', 46, 0, 0, 0, '2020-06-04 23:37:37', NULL),
(4, 'jPRDAyUztru9nHgzSo95', 8, 0, 0, 0, '2020-06-04 23:37:37', NULL),
(5, 'oAV1qnIT3Ku7rZfJWAnx', 20, 0, 0, 0, '2020-06-04 23:37:37', NULL),
(6, 'GqFlFeteWmmZMiZQ7A91', 14, 0, 0, 0, '2020-06-04 23:37:37', NULL),
(7, 'wSfvZQx7HQgXW33ppYpx', 17, 0, 0, 0, '2020-06-04 23:37:37', NULL),
(8, 'G3mPwmMjXMDhFWwQvavb', 12, 0, 0, 0, '2020-06-04 23:37:37', NULL),
(9, 'jHaQDNJGp2slEKMGgdYk', 31, 0, 0, 0, '2020-06-04 23:37:37', NULL),
(10, '0Gpr3bRqukvuKye0WdE0', 23, 0, 0, 0, '2020-06-04 23:37:37', NULL),
(11, 'J7ALkM4XRptrisYy5N10', 20, 0, 0, 0, '2020-06-04 23:37:37', NULL),
(12, 'fD2Ff96F5Tdoc9wQQ1Jf', 6, 0, 0, 0, '2020-06-04 23:37:37', NULL),
(13, 'VQSWkdIm9SrfkXM8SAW5', 17, 0, 0, 0, '2020-06-04 23:37:37', NULL),
(14, 'wiybLig66NBMgPH3XJzu', 23, 0, 0, 0, '2020-06-04 23:37:37', NULL),
(15, 'avB8vRp6O3ANB2isDn6J', 13, 0, 0, 0, '2020-06-04 23:37:37', NULL),
(16, '00Xbvw8bYaJes322yyIo', 8, 0, 0, 0, '2020-06-04 23:37:37', NULL),
(17, 't6UmdqJXi9ruRmLcJNQY', 14, 0, 0, 0, '2020-06-04 23:37:37', NULL),
(18, '2jhLPjvVn2SaqcdmdDt3', 44, 0, 0, 0, '2020-06-04 23:37:37', NULL),
(19, 'RkaowBAwU2TGL8XcZ0QZ', 18, 0, 0, 0, '2020-06-04 23:37:37', NULL),
(20, '3i4l0bzix2OFAdSJrJLM', 47, 0, 0, 0, '2020-06-04 23:37:37', NULL),
(21, 'ZDF7oJBkviyPhxmKSbPC', 45, 0, 0, 0, '2020-06-04 23:37:37', NULL),
(22, 'tOjVogA5dogK4IPJIfFC', 22, 0, 0, 0, '2020-06-04 23:37:37', NULL),
(23, 'byJr4IDR3oJYsStksgUJ', 14, 0, 0, 0, '2020-06-04 23:37:37', NULL),
(24, 'uW1pdQhTgtF9zlf1ijb2', 38, 0, 0, 0, '2020-06-04 23:37:37', NULL),
(25, 'V7i1xfYdlqvEgKDwu0bm', 17, 0, 0, 0, '2020-06-04 23:37:37', NULL),
(26, '2F1OaEfTvDGBekdHOXQ8', 4, 0, 0, 0, '2020-06-04 23:37:37', NULL),
(27, 'In1gLVDxnyvTnNwT30jh', 19, 0, 0, 0, '2020-06-04 23:37:37', NULL),
(28, 'Hx7Ns5piRA9mRGZ6WXd6', 12, 0, 0, 0, '2020-06-04 23:37:37', NULL),
(29, 'YYKGLwxvHOHRFmHohLM2', 17, 0, 0, 0, '2020-06-04 23:37:37', NULL),
(30, 'yE9Wek27t1dTncy52XiK', 35, 0, 0, 0, '2020-06-04 23:37:37', NULL),
(31, '4hXGblSf0tUCPIbGMrmn', 26, 0, 0, 0, '2020-06-04 23:37:37', NULL),
(32, 'czCVCmcDr8LK8dMDEHVE', 3, 0, 0, 0, '2020-06-04 23:37:37', NULL),
(33, 'zAKoIhnGt5Y46VFSpyWa', 42, 0, 0, 0, '2020-06-04 23:37:37', NULL),
(34, 'eLHPTqVlMrKqZnIHEJk7', 33, 0, 0, 0, '2020-06-04 23:37:37', NULL),
(35, 'a2hAaQ8Es6xtN5RSrko6', 17, 0, 0, 0, '2020-06-04 23:37:37', NULL),
(36, '1uOfzbixCLgUQ6kE2PJ0', 44, 0, 0, 0, '2020-06-04 23:37:37', NULL),
(37, 'S6yoTd8IBdvbTNOvLlZH', 34, 0, 0, 0, '2020-06-04 23:37:37', NULL),
(38, 'bQg9rkavXBCE91PMSOOL', 10, 0, 0, 0, '2020-06-04 23:37:37', NULL),
(39, '3PT1Ns2Dde8wPQthBlXR', 15, 0, 0, 0, '2020-06-04 23:37:37', NULL),
(40, 'GIPcf0u36DbZfLDvTMwk', 23, 0, 0, 0, '2020-06-04 23:37:37', NULL),
(41, 'gjBMGZPii9es68F3z6si', 32, 0, 0, 0, '2020-06-04 23:37:37', NULL),
(42, 'iFGy67eUXNlCKYKOhWx5', 33, 0, 0, 0, '2020-06-04 23:37:37', NULL),
(43, 'NSFEly5slEaOGgSOeEk4', 48, 0, 0, 0, '2020-06-04 23:37:37', NULL),
(44, 'VeHZ9QcvBHxadZV5khHn', 17, 0, 0, 0, '2020-06-04 23:37:37', NULL),
(45, 'mZRKUmxu6Wngp7BpsSMF', 19, 0, 0, 0, '2020-06-04 23:37:37', NULL),
(46, 'OsFc9gfvppFqtJ233Stw', 20, 0, 0, 0, '2020-06-04 23:37:37', NULL),
(47, 'sTIFR5jc951Njbya1T13', 20, 0, 0, 0, '2020-06-04 23:37:37', NULL),
(48, 'GkHEXsdKNf4sQ9xCIGjU', 7, 0, 0, 0, '2020-06-04 23:37:37', NULL),
(49, 'LP0BBNKMd8bxGnA4sixB', 37, 0, 0, 0, '2020-06-04 23:37:37', NULL),
(50, 'NEWvhRY5fG4gmz30QSeR', 23, 0, 0, 0, '2020-06-04 23:37:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `post_hides`
--

CREATE TABLE `post_hides` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `post_hides`
--

INSERT INTO `post_hides` (`id`, `post_id`, `user_id`) VALUES
(1, 45, 19);

-- --------------------------------------------------------

--
-- Table structure for table `shares`
--

CREATE TABLE `shares` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shares`
--

INSERT INTO `shares` (`id`, `post_id`, `user_id`) VALUES
(1, 28, 3),
(2, 15, 13),
(3, 32, 25),
(4, 6, 19),
(5, 28, 8),
(6, 5, 14),
(7, 11, 39),
(8, 23, 2),
(9, 6, 35),
(10, 47, 45),
(11, 42, 10),
(12, 47, 2),
(13, 46, 25),
(14, 25, 16),
(15, 37, 6),
(16, 10, 49),
(17, 45, 32),
(18, 18, 34),
(19, 31, 11),
(20, 8, 13),
(21, 19, 17),
(22, 27, 5),
(23, 24, 10),
(24, 31, 9),
(25, 25, 7),
(26, 19, 9),
(27, 4, 19),
(28, 29, 47),
(29, 4, 16),
(30, 47, 40),
(31, 28, 43),
(32, 1, 12),
(33, 16, 17),
(34, 5, 31),
(35, 39, 37),
(36, 18, 14),
(37, 19, 43),
(38, 12, 28),
(39, 22, 5),
(40, 20, 34),
(41, 6, 11),
(42, 47, 42),
(43, 45, 17),
(44, 8, 49),
(45, 44, 30),
(46, 24, 11),
(47, 41, 35),
(48, 17, 13),
(49, 42, 5),
(50, 29, 17);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `firstname`, `lastname`, `created_at`, `updated_at`) VALUES
(1, 'tir82re18L@mail.com', 'BYiAP5Mu6d', 'Wwo3fDTM7p', '2020-06-04 22:53:21', NULL),
(2, '1hTqKtbhOH@mail.com', 'Ft0mh6hMjp', 'dREXpAF3Eu', '2020-06-04 22:53:43', NULL),
(3, 'oEGzIwG8PS@mail.com', 'k6sfLT1hYz', 'KXua908DlU', '2020-06-04 22:53:43', NULL),
(4, 'wELrfLWDNk@mail.com', 'LfoMMpwUNX', 'qpnuJn15ju', '2020-06-04 22:53:43', NULL),
(5, 'lKlJv9cpiw@mail.com', 'GLg2nmN4ae', 'vK4uHUbJVT', '2020-06-04 22:53:43', NULL),
(6, 'JcNQ03FSyK@mail.com', 'txU7zV5Rly', 'ZsHZCsQaaf', '2020-06-04 22:53:43', NULL),
(7, 'RF11FZXrFg@mail.com', 'I5i7ONfo9K', 'Mltu6vT0h9', '2020-06-04 22:53:43', NULL),
(8, 'DQzT2T1f0Y@mail.com', 'uSogvGDuAP', '0hDunSuJf5', '2020-06-04 22:53:43', NULL),
(9, 'vtWhGgybAk@mail.com', 'uzrZXUUI7u', 'FEdudupFxR', '2020-06-04 22:53:43', NULL),
(10, 'EJkb22zIW4@mail.com', 'XsW8qPnZPy', 'nbXWebLxpv', '2020-06-04 22:53:43', NULL),
(11, 'ntb4O3bEy7@mail.com', 'MlWtJGvFOO', 'ANVVyjJRz1', '2020-06-04 22:53:43', NULL),
(12, 'yWsfcQU3Fs@mail.com', 'irumY5HjSl', 'a5L2sPYlgW', '2020-06-04 22:54:33', NULL),
(13, 'dcosgz73zO@mail.com', 'KH5fM1bjT7', '5wJ49KLbln', '2020-06-04 22:54:33', NULL),
(14, 'JVyDRCKcfb@mail.com', 'ppLR8zIINY', 'ZaICflfbUY', '2020-06-04 22:54:33', NULL),
(15, 'kPoS0AokeU@mail.com', 'dXgT7mgzVs', '4DaRTe7m48', '2020-06-04 22:54:33', NULL),
(16, 'ukUoMsw4fB@mail.com', 'DlL44dpcR2', 'FxXaMuY4EA', '2020-06-04 22:54:33', NULL),
(17, 'AhcAgJtnjn@mail.com', 'chHPhtKgUX', 'Rm9GgUCXMn', '2020-06-04 22:54:33', NULL),
(18, 'uprCC7y34L@mail.com', 'omTQHx2gDd', 'f7XduB8GoH', '2020-06-04 22:54:33', NULL),
(19, '2S5vyncfSA@mail.com', 'fKb2deaIuO', 'x7xbs30E79', '2020-06-04 22:54:33', NULL),
(20, 'yVIXM6wIxE@mail.com', 'tCVHlwIqFk', 'dIoXGu3VZs', '2020-06-04 22:54:33', NULL),
(21, 'G9IbiIDHbB@mail.com', 'xB14Ea4Zje', 'mJlK8B51F9', '2020-06-04 22:54:33', NULL),
(22, 'Rff5AAmQUD@mail.com', 'gP4Ojd699B', '3Ak5QFiRjZ', '2020-06-04 22:55:46', NULL),
(23, 'CcTbW8QP7J@mail.com', 'dCPEz4RqI9', 'E4KWiei5wo', '2020-06-04 22:55:46', NULL),
(24, 'eu4qWJFSdk@mail.com', 'PPr6hJTzcR', 'DFMDlFJboj', '2020-06-04 22:55:46', NULL),
(25, 'mGb5VSeetc@mail.com', 'SMT5ySoxk7', 'EMhUvZXv7D', '2020-06-04 22:55:46', NULL),
(26, '5WW0Hez83y@mail.com', 'qNlIZ0YSif', 'WJxlmRG0jL', '2020-06-04 22:55:46', NULL),
(27, 'J4eDx3JFwh@mail.com', 'Jz72rM7O64', 'W94rcJ3bgx', '2020-06-04 22:55:46', NULL),
(28, 'bqVsYtD148@mail.com', 'xQ3jI7iddt', 'dxijv1peux', '2020-06-04 22:55:46', NULL),
(29, 'cS94FvknsW@mail.com', 'TRtC0BRHVf', 'mDNDtnXKUQ', '2020-06-04 22:55:46', NULL),
(30, 'NnsxgI3Wme@mail.com', 'R6Js6uoC7k', 'Hd6zHZLPPc', '2020-06-04 22:55:46', NULL),
(31, 'xZZHGujGm9@mail.com', 'AoRuOvfdxB', '4k7yDQGfPZ', '2020-06-04 22:55:46', NULL),
(32, 'XpSXIXayu4@mail.com', 'BNJ22hO8pO', 'v4ea16TNbN', '2020-06-04 22:55:46', NULL),
(33, '8WrXisZk23@mail.com', 'ZsebFrLE4R', 'yGhwQoLqiE', '2020-06-04 22:55:46', NULL),
(34, 'USVVe7qIA9@mail.com', 'BgU32iCeD8', 'RuQAdtcQn5', '2020-06-04 22:55:46', NULL),
(35, '0ZG0Hd5vGP@mail.com', 'DOeW90SADE', 'uFUwBPMRrv', '2020-06-04 22:55:46', NULL),
(36, 'ydbH5PHiaa@mail.com', 'zM0SF0M4DH', 'IzN7gb7DU3', '2020-06-04 22:55:46', NULL),
(37, 'qLfjchQjVc@mail.com', 'RFoaLmj2kV', 'Y1jlfisnNS', '2020-06-04 22:55:46', NULL),
(38, 'WoQ8GgJlwB@mail.com', 'Iq38UlyfcG', 'pTpN7B65LV', '2020-06-04 22:55:46', NULL),
(39, 'piAnttxyZg@mail.com', 'R6tSsJL08n', 'cjqsF4WZFx', '2020-06-04 22:55:46', NULL),
(40, 'OfO5QczQRu@mail.com', 'DXboJUu47w', 'D8UTiFJcvI', '2020-06-04 22:55:46', NULL),
(41, 'nWtsk67EGc@mail.com', 'M4kwrC1J56', '0iZ5Te3paY', '2020-06-04 22:55:46', NULL),
(42, 'up7B3HR5Yp@mail.com', 'UihIAkAh0o', 'CBo1m4oZUS', '2020-06-04 22:55:46', NULL),
(43, 'MhMneuTlgx@mail.com', 'WWXDwl0bCo', 'KmPo2djabO', '2020-06-04 22:55:46', NULL),
(44, '4nNNkD5jY8@mail.com', '7Ge7iC3off', 'oHpQ5821U0', '2020-06-04 22:55:46', NULL),
(45, 'RzEC7UTCj7@mail.com', 'twQZrlRrZB', 'nrNwQMmyGQ', '2020-06-04 22:55:46', NULL),
(46, 'OSIbtF7CAs@mail.com', 'H49BEz91e7', 'ilidoqCYg4', '2020-06-04 22:55:46', NULL),
(47, 'EZFubphRY7@mail.com', 'o5IkRbZP9l', '6XLVu5tDvM', '2020-06-04 22:55:46', NULL),
(48, '92BhPlfpjH@mail.com', 'TpM8SC999f', 'I3z76Kx31o', '2020-06-04 22:55:46', NULL),
(49, 'miML862lWz@mail.com', 'KW8g3L2TYw', 'xpJceQlTMw', '2020-06-04 22:55:46', NULL),
(50, 'WuUyiOyo90@mail.com', 'pA102Fdpg9', 'nVLDTvKtyC', '2020-06-04 22:55:46', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `follows`
--
ALTER TABLE `follows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `following` (`following`),
  ADD KEY `follower` (`user_id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `post_hides`
--
ALTER TABLE `post_hides`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `shares`
--
ALTER TABLE `shares`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `follows`
--
ALTER TABLE `follows`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;
--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `post_hides`
--
ALTER TABLE `post_hides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `shares`
--
ALTER TABLE `shares`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `follows`
--
ALTER TABLE `follows`
  ADD CONSTRAINT `follows_ibfk_1` FOREIGN KEY (`following`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `follows_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `likes_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`);

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `post_hides`
--
ALTER TABLE `post_hides`
  ADD CONSTRAINT `post_hides_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `post_hides_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `shares`
--
ALTER TABLE `shares`
  ADD CONSTRAINT `shares_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `shares_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
