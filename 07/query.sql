-- สร้าง Database ชื่อ eba_db
-- CREATE DATABASE eba_db;
USE eba_db;
-- set AUTO_INCREMENT เริ่มต้น
-- ALTER TABLE claps AUTO_INCREMENT = 1;
-- DROP TABLE shares; 
-- การบ้านครั้งที่ 3
-- SELECT  feeds.detail as Detail, feeds.id as FeedId
-- FROM feeds
-- JOIN follows
-- ON feeds.userID = follows.followingId;
-- LEFT JOIN claps
-- ON feeds.id = claps.feedID
-- เพิ่ม users
-- INSERT INTO users (email,password,firstname,lastname,address,profileImage,archivementID,birthdate,createdAt,updateAt) 
-- VALUES ("test06@gmail.com","12345","test06", "test06","Address-006","test.png",1,NOW(),NOW(),NOW());
-- INSERT INTO users (email,password,firstname,lastname,address,profileImage,archivementID,birthdate,createdAt,updateAt) 
-- VALUES ("test07@gmail.com", 12345,"test07", "test07","Address-007","test.png",1,NOW(),NOW(),NOW());
-- INSERT INTO users (email,password,firstname,lastname,address,profileImage,archivementID,birthdate,createdAt,updateAt) 
-- VALUES ("test08@gmail.com", 12345,"test08", "test08","Address-008","test.png",1,NOW(),NOW(),NOW());
-- INSERT INTO users (email,password,firstname,lastname,address,profileImage,archivementID,birthdate,createdAt,updateAt) 
-- VALUES ("test09@gmail.com", 12345,"test09", "test09","Address-009","test.png",1,NOW(),NOW(),NOW());
-- INSERT INTO users (email,password,firstname,lastname,address,profileImage,archivementID,birthdate,createdAt,updateAt) 
-- VALUES ("test10@gmail.com", 12345,"test10", "test10","Address-010","test.png",1,NOW(),NOW(),NOW());
-- ใส่ follows
-- INSERT INTO follows (followerId,followingId)
-- VALUES (1,6);
-- INSERT INTO follows (followerId,followingId)
-- VALUES (1,3);
-- INSERT INTO follows (followerId,followingId)
-- VALUES (1,4);
-- INSERT INTO follows (followerId,followingId)
-- VALUES (1,5);
-- INSERT INTO follows (followerId,followingId)
-- VALUES (2,1);
-- ใ่ส่ feed
-- INSERT INTO feeds (detail,userID,createdAt,updateAt)
-- VALUES ("A0001",1,NOW(),NOW());
-- INSERT INTO feeds (detail,userID,createdAt,updateAt)
-- VALUES ("B0001",2,NOW(),NOW());
-- INSERT INTO feeds (detail,userID,createdAt,updateAt)
-- VALUES ("C0001",3,NOW(),NOW());
-- INSERT INTO feeds (detail,userID,createdAt,updateAt)
-- VALUES ("D0001",4,NOW(),NOW());
-- INSERT INTO feeds (detail,userID,createdAt,updateAt)
-- VALUES ("E0001",5,NOW(),NOW());
-- INSERT INTO feeds (detail,userID,createdAt,updateAt)
-- VALUES ("F0001",6,NOW(),NOW());
-- INSERT INTO feeds (detail,userID,createdAt,updateAt)
-- VALUES ("G0001",7,NOW(),NOW());
-- INSERT INTO feeds (detail,userID,createdAt,updateAt)
-- VALUES ("H0001",8,NOW(),NOW());
-- INSERT INTO feeds (detail,userID,createdAt,updateAt)
-- VALUES ("I0001",9,NOW(),NOW());
-- INSERT INTO feeds (detail,userID,createdAt,updateAt)
-- VALUES ("J0001",10,NOW(),NOW());
-- INSERT INTO feeds (detail,userID,createdAt,updateAt)
-- VALUES ("A0002",1,NOW(),NOW());
-- INSERT INTO feeds (detail,userID,createdAt,updateAt)
-- VALUES ("B0002",2,NOW(),NOW());
-- ซ่อน post
-- UPDATE feeds
-- SET statusHide = true
-- WHERE userID = 1 && feeds.id = 11; 
-- เพิ่ม clap
-- INSERT INTO claps (userID,feedID,createdAt,updateAt) 
-- VALUES (1,2,NOW(),NOW());
-- INSERT INTO claps (userID,feedID,createdAt,updateAt) 
-- VALUES (2,2,NOW(),NOW());
-- UPDATE feeds
-- SET statusClap = true
-- WHERE userID = 1 && feeds.id = 2; 
-- เพิ่ม Comments
-- INSERT INTO comments (detail,userID,feedID,createdAt,updateAt) 
-- VALUES ("สุดยอด01",1,2,NOW(),NOW());
-- INSERT INTO comments (detail,userID,feedID,createdAt,updateAt) 
-- VALUES ("สุดยอด02",1,2,NOW(),NOW());
-- INSERT INTO comments (detail,userID,feedID,createdAt,updateAt) 
-- VALUES ("ฮ่าๆ",2,2,NOW(),NOW());
-- เพิ่ม share
-- INSERT INTO shares (userID,feedID,createdAt,updateAt) 
-- VALUES (1,2,NOW(),NOW());
-- archivements
-- INSERT INTO archivements (userID,createdAt,updatedAt) 
-- VALUES (1,NOW(),NOW());
-- การบ้าน SQL#3
-- SELECT feeds.id as FeedID , feeds.detail as FeedDetail, feeds.userID as UserID,
-- follows.followingId as followingID
-- -- COUNT(distinct shares.id) AS countShare,
-- -- COUNT(distinct comments.id) AS countComments,
-- -- COUNT(distinct claps.id) AS countClaps
-- FROM feeds
-- LEFT JOIN shares ON feeds.id = shares.feedID 
-- -- LEFT JOIN comments ON feeds.id = comments.feedID 
-- -- LEFT JOIN claps ON feeds.id = claps.feedID 
-- LEFT JOIN follows ON follows.followingId = feeds.userID
-- WHERE statusHide = false AND (follows.followingId = 1 OR follows.followingId = feeds.userID) GROUP BY feeds.id;
-- เพิ่ม column 
-- ALTER TABLE feeds
-- ADD statusShares boolean NOT NULL DEFAULT  0;
-- เพิ่ม clap
-- INSERT INTO claps (userID,feedID,createdAt,updateAt) 
-- VALUES (1,16,NOW(),NOW());
-- INSERT INTO claps (userID,feedID,createdAt,updateAt) 
-- VALUES (2,2,NOW(),NOW());
-- INSERT INTO claps (userID,feedID,createdAt,updateAt) 
-- VALUES (3,2,NOW(),NOW());
-- เพิ่ม Comments
-- INSERT INTO comments (detail,userID,feedID,createdAt,updateAt) 
-- VALUES ("ว่าไงเพื่อน",1,1,NOW(),NOW());
-- INSERT INTO comments (detail,userID,feedID,createdAt,updateAt) 
-- VALUES ("ไปกินที่ไหนกันดี",1,1,NOW(),NOW());
-- INSERT INTO comments (detail,userID,feedID,createdAt,updateAt) 
-- VALUES ("เอาร้านที่มีเด็กป่ะละ",2,1,NOW(),NOW());
-- INSERT INTO comments (detail,userID,feedID,createdAt,updateAt) 
-- VALUES ("จัดดิว่ะ ขอเด็ดๆ",1,1,NOW(),NOW());
-- เพิ่ม เพื่อน shares โพสของเรา
-- INSERT INTO shares (userID,feedID,user_feedID,createdAt,updateAt) 
-- VALUES (2,1,16,NOW(),NOW());
-- INSERT INTO feeds (detail,userID,statusShares,createdAt,updateAt)
-- VALUES (null,2,true,NOW(),NOW());
-- ซ่อน post
-- INSERT INTO hide_feeds (userID,feedID,createdAt,updateAt) 
-- VALUES (2,1,NOW(),NOW());
-- INSERT INTO hide_feeds (userID,feedID,createdAt,updateAt) 
-- VALUES (2,15,NOW(),NOW());
SELECT feeds.id as FeedID,
    IF(
        (
            SELECT shares.feedID
            FROM shares
            WHERE shares.user_feedID = feeds.id
        ) IS NULL,
        "-",
        (
            SELECT shares.feedID
            FROM shares
            WHERE shares.user_feedID = feeds.id
        )
    ) as shareFromFeedID,
    IF(
        feeds.detail IS NULL,
        (
            SELECT feeds.detail
            FROM feeds
            WHERE feeds.id = shareFromFeedID
        ),
        feeds.detail
    ) as FeedDetail,
    feeds.userID as FeedsUserID,
    COUNT(distinct claps.id) as countClaps,
    COUNT(distinct comments.id) as countComments,
    COUNT(distinct shares.feedID) as countShare
FROM feeds
    LEFT JOIN claps ON feeds.id = claps.feedID
    LEFT JOIN comments ON feeds.id = comments.feedID
    LEFT JOIN shares ON feeds.id = shares.feedID
    LEFT JOIN follows ON follows.followingId = feeds.userID
    LEFT JOIN hide_feeds ON feeds.id = hide_feeds.FeedID
WHERE hide_feeds.FeedID IS NULL
    AND follows.followerId = 1
    OR feeds.userID = 1
GROUP BY feeds.id
LIMIT 5 OFFSET 0;