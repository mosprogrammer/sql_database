use eba;

-- 1. เขียน SQL เพื่อนำไปใช้ สร้างเป็นหน้า Feed ใน App eBa โดยมีเงื่อนไขว่า จะต้องแสดงเฉพาะ Post ของเรา และของเพื่อนที่เราได้ทำการ Follow แล้วเท่านั้น แต่ถ้า Post ของเราถูกลบออกไป จะต้องไม่แสดงในหน้า Feed
-- ในแต่ละ Post ที่แสดงในหน้า Feed จะต้องมีจำนวน Clap Comment และ Share 
-- เขียน SQL สำหรับ Clap Comment Share และ ซ่อน Post
-- ปรับปรุง ER Diagram และ DB Diagram ให้ตรงกับ Database ที่ทำออกมาด้วย
-- 2. ในแต่ละ Post ที่แสดงในหน้า Feed จะต้องมีจำนวน Clap Comment และ Share 
SELECT  follows.following_id AS user_id,feeds.feed_id,posts.post_id,posts.message AS post_text,comments.message AS comment_text,claps.clap_count,shares.share_count,posts.status As PostStatus
FROM feeds
LEFT JOIN posts ON feeds.post_id = posts.post_id
LEFT JOIN shares ON posts.post_id = shares.post_id
LEFT JOIN comments ON posts.post_id = comments.post_id
LEFT JOIN claps ON posts.post_id = claps.post_id
LEFT JOIN follows ON feeds.follow_id = follows.follow_id
LEFT JOIN hiddens ON feeds.feed_id = hiddens.feed_id
WHERE hiddens.feed_id IS NULL
AND posts.status = 1 
AND follows.following_id = 2; 
-- hiddens.feed_id IS NULL แสดงโพสที่เราไม่ได้ทำการซ่อนไว้
-- posts.status = 1 แสดงโพสที่เราไม่ได้ลบ
-- follows.following_id = 2;  user_id ของเรา


-- 3.เขียน SQL สำหรับ Clap Comment Share และ ซ่อน Post
-- 3.1 Clap
UPDATE claps
SET clap_count = clap_count + 1
WHERE post_id = 2;
-- 3.2 Share
UPDATE shares
SET share_count = share_count + 1
WHERE post_id = 2;
-- 3.3 ซ่อน Post
INSERT INTO hiddens (hidden_id, user_id, feed_id)
VALUES (NULL,2,55);

