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