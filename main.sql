-- สร้าง Database
-- CREATE DATABASE testSql;
-- เรียกใช้งาน database testSql
USE testSql;

-- สร้าง table user
-- CREATE TABLE users(
--     id integer NOT NULL PRIMARY KEY AUTO_INCREMENT
-- );
--
-- แสดง table ทั้งหมดใน testSql
--
SHOW TABLES;

--
-- เพิ่ม column id, email, firstname, lastname, created_at, updated_at ใน users
--
CREATE TABLE `users` (
  `id` varchar(255) PRIMARY KEY,
  `email` varchar(255),
  `firstname` varchar(255),
  `lastname` varchar(255),
  `created_at` datetime,
  `updated_at` datetime
);

--
-- เพิ่ม column id, following, follower, created_at ใน follows
--
CREATE TABLE `follows` (
  `id` varchar(255) PRIMARY KEY,
  `following` array,
  `follower` array,
  `created_at` datetime
);

--
-- เพิ่ม column id, message, user_id, deleted, like_total, comment_total, created_at, updated_at ใน posts
--
CREATE TABLE `posts` (
  `id` varchar(255) PRIMARY KEY,
  `message` varchar(255),
  `user_id` varchar(255),
  `deleted` boolean,
  `like_total` integer,
  `comment_total` integer,
  `created_at` datetime,
  `updated_at` datetime
);

--
-- เพิ่ม column id, post_id, user_id ใน likes
--
CREATE TABLE `likes` (
  `id` varchar(255) PRIMARY KEY,
  `post_id` varchar(255),
  `user_id` varchar(255)
);

--
-- เพิ่ม column id, post_id, user_id ใน comments
--
CREATE TABLE `comments` (
  `id` varchar(255) PRIMARY KEY,
  `post` varchar(255),
  `user_id` varchar(255)
);

--
-- เพิ่ม column id, post_id, user_id ใน shares
--
CREATE TABLE `shares` (
  `id` varchar(255) PRIMARY KEY,
  `post_id` varchar(255),
  `user_id` varchar(255)
);

--
-- เพิ่ม column id, post_id, user_id ใน post_hide
--
CREATE TABLE `post_hide` (
  `id` varchar(255) PRIMARY KEY,
  `post_id` varchar(255),
  `user_id` varchar(255)
);
