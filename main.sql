-- สร้าง Database ชื่อ eba_database
-- CREATE DATABASE eba_database;





USE eba_database;


-- การบ้านครั้งที่ 3
-- SELECT  feeds.detail as Detail, feeds.id as FeedId
-- FROM feeds
-- JOIN follows
-- ON feeds.userID = follows.followingId;
-- LEFT JOIN claps
-- ON feeds.id = claps.feedID

-- เพิ่ม users
-- INSERT INTO users (email,password,firstname,lastname,address,profileImage,archivementID,birthdate,createdAt,updateAt) 
-- VALUES ("max01@gmail.com","12345","Max01", "Max01","Address-001","max.png",1,NOW(),NOW(),NOW());
-- INSERT INTO users (email,password,firstname,lastname,address,profileImage,archivementID,birthdate,createdAt,updateAt) 
-- VALUES ("max02@gmail.com", 12345,"Max02", "Max02","Address-002","max.png",1,NOW(),NOW(),NOW());
-- INSERT INTO users (email,password,firstname,lastname,address,profileImage,archivementID,birthdate,createdAt,updateAt) 
-- VALUES ("max03@gmail.com", 12345,"Max03", "Max03","Address-003","max.png",1,NOW(),NOW(),NOW());
-- INSERT INTO users (email,password,firstname,lastname,address,profileImage,archivementID,birthdate,createdAt,updateAt) 
-- VALUES ("max04@gmail.com", 12345,"Max04", "Max04","Address-004","max.png",1,NOW(),NOW(),NOW());
-- INSERT INTO users (email,password,firstname,lastname,address,profileImage,archivementID,birthdate,createdAt,updateAt) 
-- VALUES ("max05@gmail.com", 12345,"Max05", "Max05","Address-005","max.png",1,NOW(),NOW(),NOW());

-- ใส่ follows
-- INSERT INTO follows (followerId,followingId)
-- VALUES (1,2);
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
-- VALUES ("hello01",1,NOW(),NOW());
-- INSERT INTO feeds (detail,userID,createdAt,updateAt)
-- VALUES ("hello02",1,NOW(),NOW());
-- INSERT INTO feeds (detail,userID,createdAt,updateAt)
-- VALUES ("hello01",1,NOW(),NOW());
-- INSERT INTO feeds (detail,userID,createdAt,updateAt)
-- VALUES ("สวัสดี01",2,NOW(),NOW());
-- INSERT INTO feeds (detail,userID,createdAt,updateAt)
-- VALUES ("สวัสดี02",2,NOW(),NOW());
-- INSERT INTO feeds (detail,userID,createdAt,updateAt)
-- VALUES ("ของuser03",3,NOW(),NOW());

-- ซ่อน post
-- UPDATE feeds
-- SET statusHide = true
-- WHERE userID = 1 && feeds.id = 1; 


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

-- การบ้านครั้งที่ 3
SELECT feeds.detail as FeedDetail,feeds.id as FeedId 
FROM feeds
WHERE feeds.statusHide = false
LEFT JOIN follows
ON feeds.userID = follows.followingId;