-- 1.เขียน SQL เพื่อนำไปใช้สร้างหน้า Feed ใน App eBa โดยมีเงื่อนไขว่า
-- จะต้องแสดงเฉพาะ Post ของเรา และของเพื่อนที่เราได้ทำการ Follow แล้วเท่านั้น 
-- แต่ถ้า Post ของเราถูกลบออกไป จะต้องไม่แสดงในหน้า Feed


-- 2. ในแต่ละ Post ที่แสดงในหน้า Feed จะต้องมีจำนวน Clap Comment และ Share


-- 3. เขียน SQL สำหรับ Clap Comemnt Share และซ่อน Post
-- 3.1 Clap Comemnt
UPDATE `comments`
SET `comment_count` = `comment_count` + 1
WHERE `postid` = 10

-- 3.2 Clap Share
UPDATE `shares`
SET `share_count` = `share_count` + 1
WHERE `postid` = 20

-- 3.3 Hide Post
-- (`hideid`, `feedid`, `postid`)
INSERT INTO `hide` VALUES
(null,20,10);