-- สร้าง Database
-- CREATE DATABASE testSql;
-- เรียกใช้งาน database testSql
USE test;

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
  `id` integer PRIMARY KEY UNIQUE NOT NULL,
  `email` varchar(50),
  `firstname` varchar(50),
  `lastname` varchar(50),
  `created_at` datetime,
  `updated_at` datetime
);

--
-- เพิ่ม column id, following, follower, created_at ใน follows
--
CREATE TABLE `follows` (
  `id` integer PRIMARY KEY UNIQUE NOT NULL,
  `following` integer,
  `user_id` integer,
  `created_at` datetime
);

--
-- เพิ่ม column id, message, user_id, deleted, like_total, comment_total, created_at, updated_at ใน posts
--
CREATE TABLE `posts` (
  `id` integer PRIMARY KEY UNIQUE NOT NULL,
  `message` varchar(255),
  `user_id` integer,
  `deleted` boolean,
  `created_at` datetime,
  `updated_at` datetime
);

--
-- เพิ่ม column id, post_id, user_id ใน likes
--
CREATE TABLE `likes` (
  `id` integer PRIMARY KEY UNIQUE NOT NULL,
  `post_id` integer,
  `user_id` integer
);

--
-- เพิ่ม column id, post_id, user_id ใน comments
--
CREATE TABLE `comments` (
  `id` integer PRIMARY KEY UNIQUE NOT NULL,
  `message` integer,
  `post_id` integer
  `user_id` integer
);

--
-- เพิ่ม column id, post_id, user_id ใน shares
--
CREATE TABLE `shares` (
  `id` integer PRIMARY KEY UNIQUE NOT NULL,
  `post_id` integer,
  `user_id` integer
);

--
-- เพิ่ม column id, post_id, user_id ใน post_hide
--
CREATE TABLE `post_hide` (
  `id` integer PRIMARY KEY UNIQUE NOT NULL,
  `post_id` integer,
  `user_id` integer
);
