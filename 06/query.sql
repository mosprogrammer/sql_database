USE eba_db;
-- สมมุติว่าเลือกจาก userId 7
-- - ต้องการ SQL สำหรับทำงานกับหน้า Feed โดยมีเงื่อนไขว่า 
-- - List Post ในหน้า Feed ออกมาแสดง โดยกำหนดไว้ที่ 5 Post ต่อหน้า
-- - จะต้องแสดงเฉพาะ Post ของเรา และของเพื่อนที่เรา Follow อยู่เท่านั้น
-- - จะต้องแสดงจำนวนการ Clap Comment และ Share ใน Post นั้นด้วย
SELECT id as PostId,
    userId as UserId,
    message as PostMessage,
    (
        SELECT COUNT(id)
        FROM claps
        WHERE claps.postId = posts.id
    ) as ClapsCount,
    (
        SELECT COUNT(id)
        FROM comments
        WHERE comments.postId = posts.id
    ) as CommentsCount,
    (
        SELECT COUNT(id)
        FROM sharePosts
        WHERE sharePosts.postId = posts.id
    ) as SharePostsCount
FROM posts
WHERE deleted = 0
    AND posts.userId = 7
    OR posts.userId = (
        SELECT followerId
        FROM follows
        WHERE follows.userId = 7
            AND followerId = posts.userId
    )
    AND NOT posts.id =(
        SELECT postId
        FROM hidePosts
        WHERE hidePosts.userHideId = 7
    )
    OR posts.id = (
        SELECT postId
        FROM sharePosts
        WHERE sharePosts.userShareId = 7
    )
LIMIT 5 -- - จะต้องสามารถสร้าง Post ได้
INSERT INTO posts(message, user_id)
VALUES('สร้างโพส', '1');
-- - จะต้องสามารถกด Clap ได้
INSERT INTO claps(postId, userClapId)
VALUES(5, 7);
-- - จะต้องสามารถทำการ Comment ได้
INSERT INTO comments(comment, postId, userCommentId)
VALUES('comment', 5, 7);
-- - จะต้องสามารถ Share Post ของเพื่อน มายัง Feed ของเราได้ และเพื่อนที่กด Follow เราอยู่ก็จะเห็น Post ที่เรา Share
INSERT INTO sharePosts(postId, userShareId)
VALUES(11, 7);
-- - จะต้องสามารถลบ Post ได้ โดยที่ ถ้าเป็นเพื่อน กดลบ Post จะเป็นการซ่อนเอาไว้ แต่ถ้าหากเจ้าของ กดลบ Post จะเป็นการลบ Post นั้นไปเลย
-- เพื่อนลบ
INSERT INTO hidePosts(postId, userHideId)
VALUES(10, 7);
-- - User หมายเลข  7 ลบ
UPDATE posts
SET deleted = 1
WHERE posts.id = 6
    AND posts.userId = 7;