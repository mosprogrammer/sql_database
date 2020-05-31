
-- CREATE DATABASE teem;
-- DROP DATABASE databasename;

USE teem;


-- DROP TABLE table_name;

-- สร้างตารางเก็บข้อมูลสมาชิก 
CREATE TABLE users(
    id integer NOT NULL PRIMARY KEY, 
    email varchar(50), 
    pass varchar(30), 
    firstname varchar(50), 
    lastname varchar(50), 
    profile_Image varchar(50), 
    archivement varchar(255), 
    address_id integer 
);
-- สร้างตารางเก็บข้อมูลที่อยู่
CREATE TABLE address (
    id integer(10) NOT NULL PRIMARY KEY, 
    province varchar(50), 
    district varchar(50), 
    amphur varchar(50) 
);
-- สร้างตารางเก็บข้อมูลยืนยันตัวตน
CREATE TABLE verify(
    id integer(10) NOT NULL PRIMARY KEY, 
    token_Expire integer(10),
    varify_status varchar(50), 
    users_id integer(10) 
);
-- สร้างตารางเก็บข้อมูลผู้ติดตาม
CREATE TABLE follow(
    id integer(10) NOT NULL PRIMARY KEY, 
    follower integer(10), 
    following integer(10) 
);
-- สร้างตารางเก็บข้อมูลโพสต์
CREATE TABLE posts(
    id integer(10) NOT NULL PRIMARY KEY, 
    users_id integer(10), 
    content text, 
    date_Time DateTime 
);
-- สร้างตารางLike
CREATE TABLE claps(
    id integer(10) NOT NULL PRIMARY KEY, 
    posts_id integer(10), 
    users_id integer(10) 
);
-- สร้างตารางคอมเม้น
CREATE TABLE comment(
    id integer(10) NOT NULL PRIMARY KEY, 
    content text,
    date_Time DateTime, 
    posts_id integer(10), 
    users_id integer(10) 
);
-- สร้างตารางฟีต
CREATE TABLE feeds(
    id integer(10) NOT NULL PRIMARY KEY, 
    posts_id integer(10),
    users_id integer(10) 
);
-- สร้างตารางแชร์
CREATE TABLE share_posts(
  id integer(10) NOT NULL PRIMARY KEY, 
  posts_di integer(10), 
  users_id integer(10), 
  feeds_id integer(10), 
  share_Time DateTime
);
-- สร้างตารางซ่อนข้อมูล
CREATE TABLE hides (
  id integer(10) NOT NULL PRIMARY KEY, 
  users_id integer(10), 
  posts_id integer(10) 
);

