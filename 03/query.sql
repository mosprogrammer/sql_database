-- Use eba_post_test Collection
USE eba_db;
--
-- SQL Post Test Query : Example test by users(user_id = 1, Kane Ji) 
--
-- List Post ในหน้า Feed ออกมาแสดง โดยกำหนดไว้ที่ 5 Post ต่อหน้า 
-- && จะต้องแสดงเฉพาะ Post ของเรา และของเพื่อนที่เรา Follow อยู่เท่านั้น 
-- && จะต้องแสดงจำนวนการ Clap Comment และ Share ใน Post นั้นด้วย
SELECT posts.post_id as post_id,
    posts.user_id as post_owner_id,
    posts.title as post_title,
    posts.message as post_message,
    posts.post_image as post_image,
    posts.type as post_type,
    posts.created_date as created_date,
    (
        SELECT Count(clap_id)
        FROM claps
        WHERE claps.post_id = posts.post_id
    ) as claps_count,
    (
        SELECT Count(comment_id)
        FROM comments
        WHERE comments.post_id = posts.post_id
    ) as comments_count,
    (
        SELECT Count(share_id)
        FROM shares
        WHERE shares.post_id = posts.post_id
    ) as shares_count
FROM posts
WHERE posts.user_id = 1
    AND posts.post_id != (
        SELECT post_id
        FROM posts_hidden
        WHERE posts_hidden.hidden_user_id = 1
    )
    OR posts.user_id = (
        SELECT follower_id
        FROM friends
        WHERE friends.user_id = 1
            AND follower_id = posts.user_id
    )
ORDER BY created_date DESC
LIMIT 5;
--
-- จะต้องสามารถสร้าง Post ได้
INSERT INTO posts (
        `post_id`,
        `user_id`,
        `title`,
        `message`,
        `post_image`,
        `type`,
        `created_date`
    );
VALUES (
        61,
        1,
        "title 61",
        "message 61",
        "E93BWZsdDKLMcxO",
        "post",
        "2019-06-10 11:11:11"
    );
--
-- จะต้องสามารถลบ Post ได้ โดยที่ ถ้าเป็นเพื่อน กดลบ Post จะเป็นการซ่อนเอาไว้ แต่ถ้าหากเจ้าของ กดลบ Post จะเป็นการลบ Post นั้นไปเลย
-- -- กรณีเจ้าของลบโพสเอง on post_id = 61 and user_id = 1
DELETE FROM posts
WHERE posts.post_id = 61
    AND posts.user_id = 1;
-- -- กรณีเพื่อน ลบ โพสของเจ้าของ (ซ่อน) on post_id = 61 and user_id = 1 and friend_id = 7
INSERT INTO `posts_hidden` (`hidden_id`, `post_id`, `hidden_user_id`)
VALUES (61, 61, 7);
--
-- จะต้องสามารถกด Clap ได้
INSERT INTO claps (`post_id`, `user_id`);
VALUES (51, 1);
--
-- จะต้องสามารถทำการ Comment ได้
INSERT INTO comments (`post_id`, `user_id`, `message`)
VALUES (51, 1, "I'm Number 4!");
--
-- จะต้องสามารถ Share Post ของเพื่อน มายัง Feed ของเราได้ และเพื่อนที่กด Follow เราอยู่ก็จะเห็น Post ที่เรา Share
-- insert post 1 row on share_post type by user_id = 1
INSERT INTO posts (
        `post_id`,
        `user_id`,
        `title`,
        `message`,
        `post_image`,
        `type`,
        `created_date`
    );
VALUES (
        61,
        1,
        "title 61",
        "message 61",
        "E93BWZsdDKLMcxO",
        "share_post",
        "2019-06-10 11:11:11"
    );
-- insert share 1 row on post_id 7 by user_id = 1
INSERT INTO shares (`share_id`, `post_id`, `share_user_id`)
VALUES (61, 7, 1);
--