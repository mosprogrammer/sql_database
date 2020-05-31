-- สร้าง DATABASE ชื่อ may_eba
CREATE DATABASE may_eba;

-- เรียกใช้ DATABASE ในการทำงาน
USE may_eba;

-- สร้างตราง users กำหนด id เป็น PRIMARY KEY และ AUTO_INCREMENT
--มีการแสดงเวลาเพิ่มลบแก้ไข หาก deletedAt ไม่ใช่ null จะเป็นการลบข้อมูล
CREATE TABLE users (
    id int(10) NOT NULL AUTO_INCREMENT,
    firstname varchar(50) NOT NULL,
    lastname varchar(50) NOT NULL,
    profile_Img longtext NULL,
    email varchar(50) NOT NULL,
    password varchar(255) NOT NULL,
    createdAt datetime NOT NULL,
    updatedAt datetime NOT NULL,
    deletedAt datetime NULL DEFAULT NULL,
    PRIMARY KEY (id)
);

--สร้างตราง follows กำหนด id เป็น PRIMARY KEY และ AUTO_INCREMENT
--กำหนด followerId followingId เป็น FOREIGN KEY ของ id ในตาราง users
--มีการแสดงเวลาเพิ่มลบแก้ไข หาก deletedAt ไม่ใช่ null จะเป็นการลบข้อมูล
CREATE TABLE follows (
    id int(10) NOT NULL AUTO_INCREMENT,
    followerId int(10) DEFAULT NULL,
    followingId int(10) DEFAULT NULL,
    followingAt datetime DEFAULT NULL,
    followerAt datetime DEFAULT NULL,
    createdAt datetime NOT NULL,
    updatedAt datetime NOT NULL,
    deletedAt datetime DEFAULT NULL,
    PRIMARY KEY (id),
    KEY followerId (followerId),
    KEY followingId (followingId),
    CONSTRAINT follows_ibfk_1 FOREIGN KEY (followerId) REFERENCES users (id),
    CONSTRAINT follows_ibfk_2 FOREIGN KEY (followingId) REFERENCES users (id)
);

--สร้างตราง posts กำหนด id เป็น PRIMARY KEY และ AUTO_INCREMENT
--กำหนด user_id เป็น FOREIGN KEY ของ id ในตาราง users
--มีการแสดงเวลาเพิ่มลบแก้ไข หาก deletedAt ไม่ใช่ null จะเป็นการลบข้อมูล
CREATE TABLE posts (
    id int(10) NOT NULL,
    post_msg longtext NOT NULL,
    user_id int(10) NOT NULL,
    status int(1) DEFAULT 0,
    createdAt datetime NOT NULL,
    updatedAt datetime NOT NULL,
    deletedAt datetime DEFAULT NULL,
    PRIMARY KEY (id),
    KEY user_id (user_id),
    CONSTRAINT posts_ibfk_1 FOREIGN KEY (user_id) REFERENCES users (id)
);

--สร้างตราง comments กำหนด id เป็น PRIMARY KEY และ AUTO_INCREMENT
--กำหนด user_id เป็น FOREIGN KEY ของ id ในตาราง users
--กำหนด post_id เป็น FOREIGN KEY ของ id ในตาราง posts
--มีการแสดงเวลาเพิ่มลบแก้ไข หาก deletedAt ไม่ใช่ null จะเป็นการลบข้อมูล
CREATE TABLE comments (
    id int(10) NOT NULL AUTO_INCREMENT,
    user_id int(10) DEFAULT NULL,
    post_id int(10) DEFAULT NULL,
    createdAt datetime NOT NULL,
    updatedAt datetime NOT NULL,
    deletedAt datetime DEFAULT NULL,
    PRIMARY KEY (id),
    KEY followerId (user_id),
    KEY followingId (post_id),
    CONSTRAINT comments_ibfk_1 FOREIGN KEY (user_id) REFERENCES users (id),
    CONSTRAINT comments_ibfk_2 FOREIGN KEY (post_id) REFERENCES posts (id)
);

--สร้างตราง claps กำหนด id เป็น PRIMARY KEY และ AUTO_INCREMENT
--กำหนด user_id เป็น FOREIGN KEY ของ id ในตาราง users
--กำหนด post_id เป็น FOREIGN KEY ของ id ในตาราง posts
--มีการแสดงเวลาเพิ่มลบแก้ไข หาก deletedAt ไม่ใช่ null จะเป็นการลบข้อมูล
CREATE TABLE claps (
    id int(10) NOT NULL AUTO_INCREMENT,
    user_id int(10) DEFAULT NULL,
    post_id int(10) DEFAULT NULL,
    createdAt datetime NOT NULL,
    updatedAt datetime NOT NULL,
    deletedAt datetime DEFAULT NULL,
    PRIMARY KEY (id),
    KEY followerId (user_id),
    KEY followingId (post_id),
    CONSTRAINT claps_ibfk_1 FOREIGN KEY (user_id) REFERENCES users (id),
    CONSTRAINT claps_ibfk_2 FOREIGN KEY (post_id) REFERENCES posts (id)
);

--สร้างตราง hide_posts กำหนด id เป็น PRIMARY KEY และ AUTO_INCREMENT
--กำหนด user_id เป็น FOREIGN KEY ของ id ในตาราง users
--กำหนด post_id เป็น FOREIGN KEY ของ id ในตาราง posts
--มีการแสดงเวลาเพิ่มลบแก้ไข หาก deletedAt ไม่ใช่ null จะเป็นการลบข้อมูล
CREATE TABLE hide_posts (
    id int(10) NOT NULL AUTO_INCREMENT,
    user_id int(10) DEFAULT NULL,
    post_id int(10) DEFAULT NULL,
    createdAt datetime NOT NULL,
    updatedAt datetime NOT NULL,
    deletedAt datetime DEFAULT NULL,
    PRIMARY KEY (id),
    KEY followerId (user_id),
    KEY followingId (post_id),
    CONSTRAINT hide_posts_ibfk_1 FOREIGN KEY (user_id) REFERENCES users (id),
    CONSTRAINT hide_posts_ibfk_2 FOREIGN KEY (post_id) REFERENCES posts (id)
);


--สร้างตราง shares กำหนด id เป็น PRIMARY KEY และ AUTO_INCREMENT
--กำหนด user_id เป็น FOREIGN KEY ของ id ในตาราง users
--กำหนด post_id เป็น FOREIGN KEY ของ id ในตาราง posts
--มีการแสดงเวลาเพิ่มลบแก้ไข หาก deletedAt ไม่ใช่ null จะเป็นการลบข้อมูล
CREATE TABLE shares (
    id int(10) NOT NULL AUTO_INCREMENT,
    user_id int(10) DEFAULT NULL,
    post_id int(10) DEFAULT NULL,
    createdAt datetime NOT NULL,
    updatedAt datetime NOT NULL,
    deletedAt datetime DEFAULT NULL,
    PRIMARY KEY (id),
    KEY followerId (user_id),
    KEY followingId (post_id),
    CONSTRAINT shares_ibfk_1 FOREIGN KEY (user_id) REFERENCES users (id),
    CONSTRAINT shares_ibfk_2 FOREIGN KEY (post_id) REFERENCES posts (id)
);