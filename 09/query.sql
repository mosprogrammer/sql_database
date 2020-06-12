USE eba_db;
-- 1.List Post ในหน้า Feed ออกมาแสดง โดยกำหนดไว้ที่ 5 Post ต่อหน้า
-- 2.จะต้องแสดงเฉพาะ Post ของเรา และของเพื่อนที่เรา Follow อยู่เท่านั้น
-- 3.จะต้องแสดงจำนวนการ Clap Comment และ Share ใน Post นั้นด้วย
-- teen01 ติดตาม teen02
-- 4.จะต้องสามารถสร้าง Post ได้
-- สร้าง Post
-- INSERT INTO feeds
--     (userId, messages,status,createdAt )
-- VALUES
--     (1, "สวัสดีวันพุธ 31", false, NOW())
-- 5.จะต้องสามารถลบ Post ได้ โดยที่ ถ้าเป็นเพื่อน กดลบ Post จะเป็นการซ่อนเอาไว้ แต่ถ้าหากเจ้าของ 
-- กดลบ Post จะเป็นการลบ Post นั้นไปเลย
-- status = 0 ยังไม้ได้ลบ status = 1 ลบแล้ว
-- ซ่อน Post
-- INSERT INTO hide_feeds
--     (userId,feedsId,createdAt)
-- VALUES
--     (2, 10, NOW());
-- 6.จะต้องสามารถกด Clap ได้
-- INSERT INTO clap
--     (userId, feedsId,createdAt)
-- VALUES
--     (1, 1, NOW())
-- 7.จะต้องสามารถทำการ Comment ได้
-- INSERT INTO comment
--     (userId, feedsId,messages,createdAt)
-- VALUES
--     (1, 26, "comment ทดลอง", NOW())
-- 8.จะต้องสามารถ Share Post ของเพื่อน มายัง Feed ของเราได้ และเพื่อนที่กด Follow 
-- เราอยู่ก็จะเห็น Post ที่เรา Share
-- INSERT INTO feeds
--     (userId, messages,status,createdAt )
-- VALUES
--     (1, "สวัสดีวันพุธ Share", false, NOW())
-- INSERT INTO share
--     (userId, feedsId,userFriendId,createdAt)
-- VALUES
--     (1, 27, 4, NOW())
SELECT feeds.feedsId as FeedsID,
    feeds.userId as UserID,
    users.userName as UsersName,
    feeds.messages as Messages,
    share.userFriendId as shareFromFeedID,
    comment.messages as CommentFriend,
    COUNT(distinct clap.clapId) as ClapsTotal,
    COUNT(distinct comment.commentId) as CommentsTotal,
    COUNT(distinct share.shareId) as ShareTotal
FROM feeds
    LEFT JOIN clap ON feeds.feedsId = clap.feedsId
    LEFT JOIN comment ON feeds.feedsId = comment.feedsId
    LEFT JOIN share ON feeds.feedsId = share.feedsId
    LEFT JOIN users ON feeds.userId = users.userId
    LEFT JOIN follows ON follows.followingId = feeds.userId
    LEFT JOIN hide_feeds ON feeds.feedsId = hide_feeds.feedsId
WHERE hide_feeds.feedsId IS NULL
    AND follows.followsId = 1
    OR feeds.userId = 1
    AND status = 0
GROUP BY feeds.feedsId
LIMIT 5 OFFSET 0;