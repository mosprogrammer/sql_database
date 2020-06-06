-- สร้าง eba db
CREATE DATABASE eba;
-- เลือกใช้ eba db
USE eba;

-- Count จำนวน Post ของ User
SELECT COUNT(`id`)
AS NumberOfFeeds
FROM `feeds`
WHERE `userId` = 20;

-- Count จำนวน Comment ของ Post 
SELECT COUNT(`id`)
AS NumberOfComments
FROM `comments`
WHERE `feedId` = 1;

-- Count จำนวน Like ของ Post
SELECT COUNT(`id`)
AS NumberOfLikes
FROM `likes`
WHERE `feedId` = 5;

-- Count จำนวน Share ของ Post
SELECT COUNT(`id`)
AS NumberOfShares
FROM `feed_shares`
WHERE `feedId` = 5
AND `userId`;