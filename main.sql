-- ทดสอบ
-- สร้าง DB
-- CREATE DATABASE eba;

use eba;

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
CREATE TABLE follows (
  followId INTEGER NOT NULL AUTO_INCREMENT,
  followingId INTEGER,
  followerId INTEGER,
  PRIMARY KEY (followId),
  FOREIGN KEY (followingId) REFERENCES users(userId),
  FOREIGN KEY (followerId) REFERENCES users(userId)
);

-- สร้าง table comment
CREATE TABLE comments (
  commentId INTEGER NOT NULL AUTO_INCREMENT,
  message VARCHAR(255),
  createAt DATETIME,
  userId INTEGER,
  postId INTEGER,
  PRIMARY KEY (commentId),
  FOREIGN KEY (userId) REFERENCES users(userId),
  FOREIGN KEY (postId) REFERENCES posts(postId)
);
-- สร้าง table post
CREATE TABLE posts (
  postId INTEGER NOT NULL AUTO_INCREMENT,
  message VARCHAR(255),
  userId INTEGER,
  createAt DATETIME,
  PRIMARY KEY (postId),
  FOREIGN KEY (userId) REFERENCES users(userId)
);

-- สร้าง table clap
CREATE TABLE claps (
  clapId INTEGER NOT NULL AUTO_INCREMENT,
  clap_total INTEGER,
  userId INTEGER,
  postId INTEGER,
  PRIMARY KEY (clapId),
  FOREIGN KEY (userId) REFERENCES users(userId),
  FOREIGN KEY (postId) REFERENCES posts(postId)
);

-- สร้าง table share
CREATE TABLE shares (
  shareId INTEGER NOT NULL AUTO_INCREMENT,
  userId INTEGER,
  postId INTEGER,
  PRIMARY KEY (shareId),
  FOREIGN KEY (userId) REFERENCES users(userId),
  FOREIGN KEY (postId) REFERENCES posts(postId)
);

-- สร้าง table feeds
CREATE TABLE feeds (
  feedId INTEGER NOT NULL AUTO_INCREMENT,
  postId INTEGER,
  PRIMARY KEY (feedId),
  FOREIGN KEY (postId) REFERENCES posts(postId)
);

-- สร้าง table hide
CREATE TABLE hide (
  hideId INTEGER NOT NULL AUTO_INCREMENT,
  userId INTEGER,
  postId INTEGER,
  PRIMARY KEY (hideId),
  FOREIGN KEY (userId) REFERENCES users(userId),
  FOREIGN KEY (postId) REFERENCES posts(postId)
);