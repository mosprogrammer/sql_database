-- สร้าง Database
CREATE DATABASE eba_db;
-- เรียกใช้งาน database eba_database
USE eba_db;
--
-- แสดง table ทั้งหมดใน users
SHOW TABLES;
--
-- สร้าง table clap 
-- CREATE TABLE clap (
--     clapId INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
--     userId integer NOT NULL,
--     feedsId integer NOT NULL,
--     createdAt DATETIME NOT NULL,
--     CONSTRAINT FK_UsersClap FOREIGN KEY
-- (userId) REFERENCES users
-- (userId),
--     CONSTRAINT FK_FeedsClap FOREIGN KEY
-- (feedsId)
--     REFERENCES feeds
-- (feedsId)
-- );
-- การเพิ่มข้อมูล ลงใน clap หรือ like
INSERT INTO clap (userId, feedsId, createdAt)
VALUES (1, 1, NOW()),
    (1, 2, NOW()),
    (1, 3, NOW()),
    (1, 4, NOW()),
    (1, 5, NOW()),
    (2, 6, NOW()),
    (2, 7, NOW()),
    (2, 8, NOW()),
    (2, 9, NOW()),
    (2, 10, NOW()),
    (3, 11, NOW()),
    (3, 12, NOW()),
    (3, 13, NOW()),
    (3, 14, NOW()),
    (3, 15, NOW()),
    (4, 16, NOW()),
    (4, 17, NOW()),
    (4, 18, NOW()),
    (4, 19, NOW()),
    (4, 20, NOW()),
    (2, 21, NOW()),
    (4, 22, NOW()),
    (4, 23, NOW()),
    (5, 24, NOW()),
    (5, 25, NOW());
-- สร้าง table comment 
-- CREATE TABLE comment (
--     commentId INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
--     userId integer NOT NULL,
--     feedsId integer NOT NULL,
--     messages VARCHAR
-- (255) NOT NULL,
--     createdAt DATETIME NOT NULL,
--     CONSTRAINT FK_UsersComment FOREIGN KEY
-- (userId)
--     REFERENCES users
-- (userId),
--     CONSTRAINT FK_FeedsComment FOREIGN KEY
-- (feedsId)
--     REFERENCES feeds
-- (feedsId)
-- );
-- การเพิ่มข้อมูล ลงใน share
INSERT INTO comment (userId, feedsId, messages, createdAt)
VALUES (1, 1, "comment messages 1", NOW()),
    (2, 1, "comment messages 2", NOW()),
    (1, 2, "comment messages 3", NOW()),
    (2, 2, "comment messages 4", NOW()),
    (3, 2, "comment messages 5", NOW()),
    (1, 3, "comment messages 6", NOW()),
    (2, 3, "comment messages 7", NOW()),
    (3, 3, "comment messages 8", NOW()),
    (4, 3, "comment messages 9", NOW()),
    (2, 4, "comment messages 10", NOW()),
    (2, 5, "comment messages 11", NOW()),
    (3, 6, "comment messages 12", NOW()),
    (3, 7, "comment messages 13", NOW()),
    (2, 8, "comment messages 14", NOW()),
    (2, 9, "comment messages 15", NOW()),
    (1, 10, "comment messages 16", NOW()),
    (2, 11, "comment messages 17", NOW()),
    (5, 12, "comment messages 18", NOW()),
    (4, 13, "comment messages 19", NOW()),
    (3, 14, "comment messages 20", NOW()),
    (3, 15, "comment messages 21", NOW()),
    (1, 16, "comment messages 22", NOW()),
    (3, 17, "comment messages 23", NOW()),
    (3, 18, "comment messages 24", NOW()),
    (4, 19, "comment messages 25", NOW()),
    (4, 20, "comment messages 26", NOW()),
    (5, 21, "comment messages 27", NOW()),
    (1, 22, "comment messages 28", NOW()),
    (2, 23, "comment messages 29", NOW()),
    (5, 24, "comment messages 30", NOW()),
    (4, 25, "comment messages 31", NOW());
--
--
--
-- สร้าง table feeds 
-- CREATE TABLE feeds (
--     feedsId INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
--     userId integer NOT NULL,
--     messages varchar
-- (1000) NULL,
--     status BOOLEAN DEFAULT FALSE,
--     createdAt DATETIME NOT NULL,
--     CONSTRAINT FK_UsersFeeds FOREIGN KEY
-- (userId)
--     REFERENCES users
-- (userId)
-- );
-- -- การเพิ่มข้อมูล ลงใน feeds
INSERT INTO feeds (userId, messages, status, createdAt)
VALUES (1, "สวัสดีวันพุธ 1", false, NOW()),
    (1, "สวัสดีวันพุธ 2", false, NOW()),
    (1, "สวัสดีวันพุธ 3", true, NOW()),
    (1, "สวัสดีวันพุธ 4", true, NOW()),
    (1, "สวัสดีวันพุธ 5", false, NOW()),
    (2, "สวัสดีวันพุธ 6", false, NOW()),
    (2, "สวัสดีวันพุธ 7", true, NOW()),
    (2, "สวัสดีวันพุธ 8", true, NOW()),
    (2, "สวัสดีวันพุธ 9", true, NOW()),
    (2, "สวัสดีวันพุธ 10", true, NOW()),
    (3, "สวัสดีวันพุธ 11", false, NOW()),
    (3, 'สวัสดีวันพุธ 12', false, NOW()),
    (3, "สวัสดีวันพุธ 13", false, NOW()),
    (3, "สวัสดีวันพุธ 14", true, NOW()),
    (3, "สวัสดีวันพุธ 15", false, NOW()),
    (4, "สวัสดีวันพุธ 16", false, NOW()),
    (4, "สวัสดีวันพุธ 17", false, NOW()),
    (4, "สวัสดีวันพุธ 18", false, NOW()),
    (4, "สวัสดีวันพุธ 19", true, NOW()),
    (4, "สวัสดีวันพุธ 20", true, NOW()),
    (5, "สวัสดีวันพุธ 21", false, NOW()),
    (5, "สวัสดีวันพุธ 22", false, NOW()),
    (5, "สวัสดีวันพุธ 23", false, NOW()),
    (5, "สวัสดีวันพุธ 24", true, NOW()),
    (5, "สวัสดีวันพุธ 25", true, NOW());
--
--
--
-- สร้าง table follows
-- CREATE TABLE follows (
--     followsId INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
--     followerId integer NOT NULL,
--     followingId integer NOT NULL,
--     CONSTRAINT FK_Usersfollower FOREIGN KEY
-- (followerId) REFERENCES users
-- (userId),
--     CONSTRAINT FK_Usersfollowing FOREIGN KEY
-- (followingId) REFERENCES users
-- (userId)
-- );
-- การเพิ่มข้อมูล ลงใน follows
INSERT INTO follows (followerId, followingId)
VALUES (3, 2),
    (1, 1),
    (4, 5),
    (2, 3),
    (3, 3);
--
--
--
-- เรียกใช้งาน database eba_database
CREATE TABLE hide_feeds (
    hideId INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
    userId integer NOT NULL,
    feedsId integer NOT NULL,
    createdAt DATETIME NOT NULL,
    CONSTRAINT FK_UserHideFeeds FOREIGN KEY (userId) REFERENCES users (userId),
    CONSTRAINT FK_HideFeeds FOREIGN KEY (feedsId) REFERENCES feeds (feedsId)
);
--
--
--
-- สร้าง table share 
CREATE TABLE share (
    shareId INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
    userId integer NOT NULL,
    feedsId integer NOT NULL,
    userFriendId integer NOT NULL,
    createdAt DATETIME NOT NULL,
    CONSTRAINT FK_UsersShare FOREIGN KEY (userId) REFERENCES users (userId),
    CONSTRAINT FK_FeedsShare FOREIGN KEY (feedsId) REFERENCES feeds (feedsId),
    CONSTRAINT FK_UserFriendId FOREIGN KEY (userFriendId) REFERENCES users (userId)
);
-- การเพิ่มข้อมูล ลงใน share
-- INSERT INTO share
--     (userId, feedsId,UserfriendId,createdAt)
-- VALUES
--     (1, 1, NOW())
--
--
--
-- สร้าง table users
-- CREATE TABLE users (
--     userId INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
--     img text NOT null,
--     userName VARCHAR
-- (255) NOT NULL,
--     userEmail VARCHAR
-- (50) NOT NULL,
--     userPassword VARCHAR
-- (255) NOT NULL,
--     createdAt DATETIME NOT NULL
-- );
-- -- การเพิ่มข้อมูล ลงใน users
INSERT INTO users (
        img,
        userName,
        userEmail,
        userPassword,
        createdAt
    )
VALUES (
        "img1",
        "teen01",
        "teen01@gmail.com",
        123456,
        NOW()
    ),
    (
        "img2",
        "teen02",
        "teen02@gmail.com",
        123456,
        NOW()
    ),
    (
        "img3",
        "teen03",
        "teen03@gmail.com",
        123456,
        NOW()
    ),
    (
        "img4",
        "teen04",
        "teen04@gmail.com",
        123456,
        NOW()
    ),
    (
        "img5",
        "teen05",
        "teen05@gmail.com",
        123456,
        NOW()
    );