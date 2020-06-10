-- ทดสอบดึงข้อมูลของ user id 6
--
USE eba_db;
-- get feed list
SELECT id,
    message,
    user_id,
    (
        SELECT email
        FROM users
        WHERE id = user_id
    ) AS email,
    (
        SELECT COUNT(id)
        FROM likes
        WHERE likes.post_id = posts.id
    ) as likes_total,
    (
        SELECT COUNT(id)
        FROM comments
        WHERE comments.post_id = posts.id
    ) as comments_total,
    (
        SELECT COUNT(id)
        FROM shares
        WHERE shares.post_id = posts.id
    ) as share_total
FROM posts
WHERE deleted = 0
    AND NOT (
        id = (
            SELECT post_id
            FROM hide_posts
            WHERE post_id != posts.id
                AND user_id != posts.user_id
            LIMIT 1
        )
    )
    AND user_id = 6
    OR user_id = (
        SELECT following
        FROM follows
        WHERE user_id = 6
            AND following = posts.user_id
        LIMIT 1
    )
    AND NOT (
        id = (
            SELECT post_id
            FROM hide_posts
            WHERE post_id != posts.id
                AND user_id != posts.user_id
            LIMIT 1
        )
    )
LIMIT 5 OFFSET 0;
-- post
INSERT INTO posts(message, user_id)
VALUES('enter message', 'user_id');
-- like
INSERT INTO likes(post_id, user_id)
VALUES('post_id', 'user_id');
-- comment
INSERT INTO comments(message, post_id, user_id)
VALUES('enter message', 'post_id', 'user_id');
-- share
INSERT INTO shares(post_id, user_id)
VALUES('post_id', 'user_id');
-- hide post
INSERT INTO hide_posts(post_id, user_id)
VALUES('post_id', 'user_id');
-- delete post
UPDATE posts
SET deleted = 1
WHERE id = 6;