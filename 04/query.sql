use eba_db;
-- ต้องการ SQL สำหรับทำงานกับหน้า Feed โดยมีเงื่อนไขว่า 
-- List Post ในหน้า Feed ออกมาแสดง โดยกำหนดไว้ที่ 5 Post ต่อหน้า
-- จะต้องแสดงเฉพาะ Post ของเรา และของเพื่อนที่เรา Follow อยู่เท่านั้น
-- จะต้องแสดงจำนวนการ Clap Comment และ Share ใน Post นั้นด้วย
SELECT feeds.feed_id,
    users.user_id,
    follows.follow_id,
    follows.following_id,
    follows.follower_id,
    users.name,
    posts.post_id,
    posts.status AS PostStatus,
    posts.message AS Post_Text,
    (
        SELECT Count(clap_id)
        FROM claps
        WHERE feed_id = feeds.feed_id
    ) AS ClapCount,
    (
        SELECT Count(comment_id)
        FROM comments
        WHERE feed_id = feeds.feed_id
    ) AS CommentCount,
    (
        SELECT Count(share_id)
        FROM shares
        WHERE feed_id = feeds.feed_id
    ) AS ShareCount,
    hidden_id
FROM users
    LEFT JOIN follows ON follows.following_id = users.user_id
    or follows.follower_id = users.user_id
    LEFT JOIN feeds ON users.user_id = feeds.user_id
    LEFT JOIN posts ON feeds.post_id = posts.post_id
    LEFT JOIN claps ON feeds.feed_id = claps.feed_id
    LEFT JOIN shares ON feeds.feed_id = shares.feed_id
    LEFT JOIN hiddens ON feeds.feed_id = hiddens.feed_id
WHERE posts.status = 1
    AND hiddens.feed_id IS NULL
    AND (
        follower_id = 1
        OR feeds.user_id = 1
    )
GROUP BY feeds.feed_id
LIMIT 5 OFFSET 0;
-- จะต้องสามารถสร้าง Post ได้
INSERT INTO posts (post_id, status, user_id, message)
VALUES (NULL, 1, 1, "โพสใหม่ของคนที่1");
INSERT INTO feeds (feed_id, user_id, post_id)
VALUES (NULL, 1, 7);
-- จะต้องสามารถลบ Post ได้ โดยที่ ถ้าเป็นเพื่อน กดลบ Post จะเป็นการซ่อนเอาไว้ แต่ถ้าหากเจ้าของ กดลบ Post จะเป็นการลบ Post นั้นไปเลย
-- .1 ลบ post ของตัวเอง 
UPDATE posts
SET status = 0
WHERE post_id = 7;
-- .2 ลบ post ของตัวเพื่อนจากหน้า feeds 
INSERT INTO hiddens (hidden_id, user_id, feed_id)
VALUES (NULL, 1, 7);
-- จะต้องสามารถกด Clap ได้
INSERT INTO claps (clap_id, user_id, feed_id)
VALUES (NULL, 1, 7);
-- จะต้องสามารถทำการ Comment ได้
INSERT INTO comments (comment_id, user_id, feed_id, message)
VALUES (NULL, 1, 7, "เม้นแรก");
-- จะต้องสามารถ Share Post ของเพื่อน มายัง Feed ของเราได้ และเพื่อนที่กด Follow เราอยู่ก็จะเห็น Post ที่เรา Share
INSERT INTO shares (share_id, user_id, feed_id)
VALUES (NULL, 3, 7);
INSERT INTO feeds (feed_id, user_id, post_id)
VALUES (NULL, 3, 7);