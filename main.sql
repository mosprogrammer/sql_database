-- ทดสอบ
-- สร้าง DB
CREATE DATABASE eba;

use eba;

-- สร้าง table users
-- กำหนด userId เป็น PRIMARY KEY ไม่ให้มีค่าว่าง null และสร้าง userId อัตโนมัติ AUTO_INCREMENT
CREATE TABLE users (
  userId INTEGER NOT NULL AUTO_INCREMENT,
  firstname VARCHAR(20),
  lastname VARCHAR(20),
  email VARCHAR(60),
  password VARCHAR(30),
  user_avatar VARCHAR(50),
  user_cover VARCHAR(50),
  birthday DATE,
  PRIMARY KEY (userId)
);
-- ลบตาราง
-- DROP TABLE users;
-- DROP TABLE follows;
-- เพิ่ม field birthday
-- ALTER TABLE users
-- ADD birthday DATE;

-- แก้ไข field email
-- ALTER TABLE users
-- MODIFY email VARCHAR(250);

-- สร้าง table follow
-- เก็บค่า follow เมื่อคนอื่นมากด follow เราเก็บค่า userId ลงคอลัม follower เมื่อเราไป follow  คนอื่นเก็บค่า userId ของคนที่เรากด follow ลงตาราง following 
CREATE TABLE follows (
  followId INTEGER NOT NULL AUTO_INCREMENT,
  followingId INTEGER NOT NULL,
  followerId INTEGER NOT NULL,
  PRIMARY KEY (followId),
  FOREIGN KEY (followingId) REFERENCES users(userId),
  FOREIGN KEY (followerId) REFERENCES users(userId)
);

-- สร้าง table post
-- กำหนด postId เป็น PRIMARY KEY และ AUTO_INCREMENT ให้ postId สร้างอัตโนมัติ
-- กำหนด userId เป็น FOREIGN KEY ของ usersId ในตาราง users
-- มีการแสดงเวลาเพิ่มลบแก้ไข หาก deletedAt ไม่ใช่ null จะเป็นการลบข้อมูล
CREATE TABLE posts (
  postId INTEGER NOT NULL AUTO_INCREMENT,
  message VARCHAR(255),
  userId INTEGER NOT NULL,
  createAt DATETIME,
  -- status BOOLEEN DEFAULT FALSE,
  PRIMARY KEY (postId),
  FOREIGN KEY (userId) REFERENCES users(userId)
);

-- สร้าง table comment
-- กำหนดค่า commentId เป็น PRIMARY KEY กำหนดไม่ให้ไม่มีค่าว่าง null โดยใช้ AUTO_INCREMENT เพื่อสร้าง id อัตโนมัติ
-- เก็บข้อความที่ user comment โพสต์
-- กำหนด userId เป็น FOREIGN KEY อ้างอิงจากตาราง usersId ในตาราง users
-- กำหนด postId เป็น FOREIGN KEY อ้างอิงจากตาราง postId ในตาราง posts
CREATE TABLE comments (
  commentId INTEGER NOT NULL AUTO_INCREMENT,
  message VARCHAR(255),
  createAt DATETIME,
  userId INTEGER NOT NULL,
  postId INTEGER NOT NULL,
  PRIMARY KEY (commentId),
  FOREIGN KEY (userId) REFERENCES users(userId),
  FOREIGN KEY (postId) REFERENCES posts(postId)
);

-- สร้าง table clap
-- กำหนดให้ clapId เป็น PRIMARY KEY กำหนดให้ค่าในคอลัมไม่มีค่าว่าง null ด้วย AUTO INCREMEMT
-- กำหนด userId เป็น FOREIGN KEY อ้างอิงจากตาราง usersId ในตาราง users
-- กำหนด postId เป็น FOREIGN KEY อ้างอิงจากตาราง postId ในตาราง posts
CREATE TABLE claps (
  clapId INTEGER NOT NULL AUTO_INCREMENT,
  clap_total INTEGER,
  userId INTEGER NOT NULL,
  postId INTEGER NOT NULL,
  PRIMARY KEY (clapId),
  FOREIGN KEY (userId) REFERENCES users(userId),
  FOREIGN KEY (postId) REFERENCES posts(postId)
);

-- สร้าง table share
-- กำหนดให้ shareId เป็น PRIMARY KEY กำหนดให้ค่าในคอลัมไม่มีค่าว่าง null ด้วย AUTO INCREMEMT
-- กำหนด userId เป็น FOREIGN KEY อ้างอิงจากตาราง usersId ในตาราง users
-- กำหนด postId เป็น FOREIGN KEY อ้างอิงจากตาราง postId ในตาราง posts
CREATE TABLE shares (
  shareId INTEGER NOT NULL AUTO_INCREMENT,
  userId INTEGER NOT NULL,
  postId INTEGER NOT NULL,
  PRIMARY KEY (shareId),
  FOREIGN KEY (userId) REFERENCES users(userId),
  FOREIGN KEY (postId) REFERENCES posts(postId)
);

-- สร้าง table feeds
-- กำหนดให้ feedId เป็น PRIMARY KEY กำหนดให้ค่าในคอลัมไม่มีค่าว่าง null ด้วย AUTO INCREMEMT
-- กำหนด postId เป็น FOREIGN KEY อ้างอิงจากตาราง postId ในตาราง posts
CREATE TABLE feeds (
  feedId INTEGER NOT NULL AUTO_INCREMENT,
  postId INTEGER NOT NULL,
  PRIMARY KEY (feedId),
  FOREIGN KEY (postId) REFERENCES posts(postId)
);

-- สร้าง table hide
-- กำหนด userId เป็น FOREIGN KEY อ้างอิงจากตาราง usersId ในตาราง users
-- กำหนด postId เป็น FOREIGN KEY อ้างอิงจากตาราง postId ในตาราง posts
CREATE TABLE hide (
  hideId INTEGER NOT NULL AUTO_INCREMENT,
  userId INTEGER NOT NULL,
  postId INTEGER NOT NULL,
  PRIMARY KEY (hideId),
  FOREIGN KEY (userId) REFERENCES users(userId),
  FOREIGN KEY (postId) REFERENCES posts(postId)
);