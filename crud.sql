-- use eba;
-- เพิ่มข้อมูลลงตาราง
-- INSERT INTO users (`firstname`, `lastname`) VALUE ('suphawadee', 'phothiprugsa');
-- เรียกข้อมูลทั้งหมดออกมาดู
-- SELECT * FROM users;
-- เรียกบางคอลัม
-- SELECT `firstname` FROM users;

-- use thailand;

-- เลือกบางคอลัม
-- SELECT DISTINCT ProviceName FROM thailand_provices;

-- SELECT * FROM thailand_provices WHERE ProviceName = "เชียงใหม่" AND DistrictName = "ช้างม่อย";

-- SELECT * FROM thailand_provices WHERE ProviceName = "เชียงใหม่" OR ProviceName = "กรุงเทพมหานคร";

-- SELECT * FROM thailand_provices WHERE ProviceName = "เชียงใหม่" OR ProviceName = "กรุงเทพมหานคร"
-- AND NOT AmphureName = "เขตดุสิต";
-- <> not equal
-- หรือ
-- SELECT * FROM thailand_provices WHERE ProviceName = "เชียงใหม่" OR ProviceName = "กรุงเทพมหานคร"
-- AND AmphureName != "เขตดุสิต";

-- เลือก 2 จังหวัด
-- SELECT * FROM thailand_provices WHERE (ProviceName = "เชียงใหม่" AND AmphureName = "ดอยสะเก็ด") OR (ProviceName = "กรุงเทพมหานคร"
-- AND AmphureName != "เขตดุสิต");

-- แก้ไขข้อมูล  ควรใส่ where เพื่อเลือกแถวแทนอัพเดตทั้งหมด
-- UPDATE provinces SET name_en = "Bangkok" WHERE id = 1 AND code = 10;


-- SELECT * FROM provinces;
-- เพิ่ม / ลบ
-- INSERT INTO provinces (code, name_th, name_en, geography_id) VALUE (98,"ทวิน","Twin", 2);

-- SELECT * FROM provinces;

-- ALTER TABLE `amphures`
-- ADD CONSTRAINT FK_Provinces FOREIGN KEY (province_id) REFERENCES `provinces` (id) ON UPDATE NO ACTION ON DELETE CASCADE;

-- SHOW COLUMNS FROM amphures

use eba;

-- ตาราง feeds เก็บค่า feeds ของ userId = 1
-- SELECT * FROM follows WHERE follows.followingId = 1
-- จะได้ว่า 1 ติดตาม 2, 3, 4, 5, 6
-- ตารางแสดงโพสของ userid 1
-- ตารางแสดงcomment ของ userId 1, 2, 5
-- ในตาราง feeds ดึง post มาแค่ id 1,2,3 ซึ่ง post ทั้งหมดเป็นของ userId = 1 จึงแสดงค่าออกมาเป็น คนที่ติดตาม comment post ของ UserId 1
-- ตาราง hide userId 1 กดซ่อน post user 5,6
-- SELECT follows.followId AS IdFollow,
-- feeds.feedId AS IdFeeds, 
-- posts.postId, posts.message AS postContent, 
-- comments.message AS Comment,
-- COUNT(DISTINCT shares.shareId) AS count_share
-- FROM feeds
-- LEFT JOIN posts ON feeds.postId = posts.postId 
-- LEFT JOIN shares ON posts.postId = shares.postId 
-- LEFT JOIN comments ON posts.postId = comments.postId 
-- LEFT JOIN claps ON posts.postId = claps.postId 
-- LEFT JOIN follows ON feeds.followId = follows.followId 
-- LEFT JOIN hide ON feeds.feedId = hide.feedId 
-- WHERE hide.feedId IS NULL AND follows.followingId = 1 LIMIT 0, 10;

-- ALTER TABLE feeds
-- ADD COLUMN userId INTEGER NOT NULL;

SELECT follows.followId AS IdFollow, 
feeds.feedId AS IdFeeds, 
posts.postId, posts.message AS postContent, 
COUNT(DISTINCT shares.postId) AS count_post,
COUNT(DISTINCT comments.postId) AS count_comments,
COUNT(DISTINCT claps.postId) AS count_comments
FROM feeds 
LEFT JOIN posts ON feeds.postId = posts.postId 
LEFT JOIN shares ON posts.postId = shares.postId 
LEFT JOIN comments ON posts.postId = comments.postId 
LEFT JOIN claps ON posts.postId = claps.postId 
LEFT JOIN follows ON feeds.followId = follows.followId 
LEFT JOIN hide ON feeds.feedId = hide.feedId 
WHERE hide.feedId IS NULL 
AND (follows.followingId = 1 OR follows.followingId = feeds.userId)
GROUP BY feeds.feedId;

-- update ค่าในตาราง claps ให้เพิ่มทีละ 1
UPDATE claps
SET clap_total = clap_total + 1
WHERE postId = 1;
-- เพิ่มข้อมูลลงในตาราง hide
INSERT INTO `hide`(`hideId`, `userId`, `feedId`) VALUES (NULL,6,2);
-- เพิ่ม cloumn share_total ในตาราง shares เพราะไม่ได้มีตั้งแต่แรก
ALTER TABLE shares
ADD COLUMN share_total INTEGER NOT NULL;

-- นับจำนวน clap, comment และ share ของ post
SELECT posts.postId, posts.userId, posts.message,
(SELECT COUNT(DISTINCT postId)
FROM claps WHERE claps.postId = posts.postId) AS clap_total,
(SELECT COUNT(DISTINCT postId) FROM comments WHERE comments.postId = posts.postId) AS comments_total,
(SELECT COUNT(DISTINCT postId) FROM shares WHERE shares.postId = posts.postId) AS shares_total FROM posts;