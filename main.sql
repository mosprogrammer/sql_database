-- สร้าง Database ชื่อ eba_database
-- CREATE DATABASE eba_database;





USE eba_database;



-- การบ้านครั้งที่ 3
SELECT  feeds.detail as Detail, feeds.id as FeedId
FROM feeds
JOIN follows
ON feeds.userID = follows.followingId;
-- LEFT JOIN claps
-- ON feeds.id = claps.feedID




-- SELECT *,
-- (SELECT COUNT(id) FROM follows where userID = 12) AS alias_name,
-- (SELECT COUNT(id) FROM follows where userID = 12) AS alias_name02  
-- FROM feeds where userID = 1 && statusHide = false Lef;


-- SELECT * FROM follows;

-- INSERT INTO user_verifies (token,tokenExpire,verifyDate,userID) 
-- VALUES ("72IN37RO6MlV3MqEVBIm", NOW(),null, 2);
-- INSERT INTO user_verifies (token,tokenExpire,verifyDate,userID) 
-- VALUES ("10prQzA9xPcgQoarOeuJ ", NOW(),null, 3);
-- INSERT INTO user_verifies (token,tokenExpire,verifyDate,userID) 
-- VALUES ("1UnCJi3RhkATVxt2osr9 ", NOW(),null, 4);
-- INSERT INTO user_verifies (token,tokenExpire,verifyDate,userID) 
-- VALUES ("23BFYpYSbJKhEwRhEdos", NOW(),null, 5);
-- INSERT INTO user_verifies (token,tokenExpire,verifyDate,userID) 
-- VALUES ("2Fpf3vUvqmJAUT4Fr9mY", NOW(),null, 6);
-- INSERT INTO user_verifies (token,tokenExpire,verifyDate,userID) 
-- VALUES ("2M6KDv5w1AvflWXotKoq", NOW(),null, 7);
-- INSERT INTO user_verifies (token,tokenExpire,verifyDate,userID) 
-- VALUES ("3CPbiaQPILwV2OqPU8Ez", NOW(),null, 8);
-- INSERT INTO user_verifies (token,tokenExpire,verifyDate,userID) 
-- VALUES ("5FsB0V5XmqH8OPE6aB4j", NOW(),null, 9);
-- INSERT INTO user_verifies (token,tokenExpire,verifyDate,userID) 
-- VALUES ("5eOwDXiZKYS56zp1seAk", NOW(),null, 10);
-- UPDATE user_verifies SET status = 1,verifyDate = NOW() WHERE userID = 1;




--

-- INSERT INTO user_login (userID,loginAt) 
-- VALUES (1, NOW());

-- INSERT INTO user_login (userID,loginAt) 
-- VALUES (2, NOW());

-- INSERT INTO user_login (userID,loginAt) 
-- VALUES (3, NOW());

-- INSERT INTO user_login (userID,loginAt) 
-- VALUES (4, NOW());

-- INSERT INTO user_login (userID,loginAt) 
-- VALUES (5, NOW());

-- INSERT INTO user_login (userID,loginAt) 
-- VALUES (6, NOW());

-- INSERT INTO user_login (userID,loginAt) 
-- VALUES (7, NOW());

-- INSERT INTO user_login (userID,loginAt) 
-- VALUES (8, NOW());

-- INSERT INTO user_login (userID,loginAt) 
-- VALUES (9, NOW());

-- INSERT INTO user_login (userID,loginAt) 
-- VALUES (10, NOW());

-- INSERT INTO feeds (detail,userID,createdAt,updateAt)
-- VALUES ("สวัสดีวันพุธ",1,NOW(),NOW());

-- INSERT INTO follows (followerId,followingId,userID)
-- VALUES (null,2,1);

-- INSERT INTO follows (followerId,followingId,userID)
-- VALUES (null,3,1);

-- INSERT INTO follows (followerId,followingId,userID)
-- VALUES (null,4,1);

-- INSERT INTO follows (followerId,followingId,userID)
-- VALUES (null,5,1);

-- INSERT INTO follows (followerId,followingId,userID)
-- VALUES (1,1,2);

-- UPDATE 
-- UPDATE follows
-- SET followerId = 2
-- WHERE userID = 1 && follows.id = 1; 


-- SELECT * FROM feeds where userID = 2 AND feeds.id = 1;