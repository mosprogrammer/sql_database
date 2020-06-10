USE eba_db;
-- feeds ของ User Layla Grady ID = 1
SELECT posts.id,
    posts.user_id,
    posts.messages,
    (
        SELECT fullname
        FROM users
        WHERE id = user_id
    ) AS fullname,
    -- - จะต้องแสดงจำนวนการ Clap Comment และ Share ใน Post นั้นด้วย
    -- count claps 
    (
        SELECT COUNT(id)
        FROM claps
        WHERE claps.post_id = posts.id
    ) AS total_clap,
    -- count comments
    (
        SELECT COUNT(id)
        FROM comments
        WHERE comments.post_id = posts.id
    ) AS total_comments,
    -- count shared 
    (
        SELECT COUNT(id)
        FROM share_users
        WHERE share_users.post_id = posts.id
    ) AS total_shared
FROM posts
    LEFT JOIN share_users ON posts.user_id = share_users.user_id -- status deleted ลบโพส
WHERE deleted = 0 -- - จะต้องแสดงเฉพาะ Post ของเรา และของเพื่อนที่เรา Follow อยู่เท่านั้น
    OR posts.user_id = (
        SELECT following_user_id
        FROM follow
        WHERE follow.following_user_id = user_id
    )
    AND posts.user_id = 1
    AND posts.user_id = share_users.user_id -- hide post 
    AND NOT (
        id = (
            SELECT post_id
            FROM hidden_users
            WHERE hidden_users.post_id = posts.id
                AND user_id = posts.user_id
        )
    ) -- ต้องการ SQL สำหรับทำงานกับหน้า Feed โดยมีเงื่อนไขว่า 
    -- - List Post ในหน้า Feed ออกมาแสดง โดยกำหนดไว้ที่ 5 Post ต่อหน้า
    -- page 1 - (records 01-10): offset = 0, limit=5;
    -- page 2 - (records 11-20) offset = 5, limit =5;
    -- ...
ORDER BY posts.id ASC
LIMIT 5 OFFSET 0;
--
--
--
--
USE mysql_workshop;
-- จะต้องสามารถสร้าง Post ได้
INSERT INTO posts (user_id, messages, deleted)
VALUES (1, 'อยากเกิดเป็นมอเตอร์ไซด์ รับจ้างงง', 0) -- จะต้องสามารถลบ Post ได้ โดยที่ ถ้าเป็นเพื่อน กดลบ Post จะเป็นการซ่อนเอาไว้ แต่ถ้าหากเจ้าของ กดลบ Post จะเป็นการลบ Post นั้นไปเลย
    -- friend delete (hide)post 
INSERT INTO hidden_user (post_id, user_id)
VALUES (51, 1) -- Delete my post
UPDATE posts
SET deleted = 0
WHERE posts.id = 51 -- - จะต้องสามารถกด Clap ได้
    -- - clap post post_id = 23 จาก user_id =1
INSERT INTO claps (post_id, user_id)
VALUES('23', '1') -- - จะต้องสามารถทำการ Comment ได้
INSERT INTO comments (post_id, user_id, messages)
VALUES(51, 1, 'เพลงของพี่เสกข์') -- จะต้องสามารถ Share Post ของเพื่อน มายัง Feed ของเราได้ และเพื่อนที่กด Follow เราอยู่ก็จะเห็น Post ที่เรา Share
    -- ใช้คำสั่ง Copy Post id เพื่อน (ยังไม่สมบูรณ์)
    -- insert into posts (user_id, messages)
    -- select user_id, messages
    -- from posts
    -- where id = 43