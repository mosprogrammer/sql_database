-- เขียน SQL เพื่อนำไปใช้ สร้างเป็นหน้า Feed ใน App eBa โดยมีเงื่อนไขว่า 

SELECT id,userId,body,
-- ในแต่ละ Post ที่แสดงในหน้า Feed จะต้องมีจำนวน Clap Comment และ Share 
(SELECT COUNT(id) FROM claps WHERE claps.postId = posts.id) as total_claps,
(SELECT COUNT(id) FROM comments WHERE comments.postId = posts.id) as total_comments,
(SELECT COUNT(id) FROM share_posts WHERE share_posts.postId = posts.id) as total_shares
FROM posts
-- แต่ถ้า Post ของเราถูกลบออกไป จะต้องไม่แสดงในหน้า Feed
WHERE deleted = 0
-- จะต้องแสดงเฉพาะ Post ของเรา และของเพื่อนที่เราได้ทำการ Follow แล้วเท่านั้น 
AND posts.userId = 5
OR posts.userId = (SELECT followerId FROM follows WHERE posts.userId = 5 AND followerId = posts.userId)
AND NOT (id = (SELECT postId FROM hide_posts WHERE postId = posts.id AND userId = posts.userId))


-- เขียน SQL สำหรับ Clap Comment Share และ ซ่อน Post
-- Clap
INSERT INTO claps(postId, userId,) VALUES(11, 22);

-- Comment
INSERT INTO comments(body, postId, userId,) VALUES('Comment Test', 3, 4);

-- Share post
INSERT INTO share_posts(postId, userId,) VALUES(5, 6);

-- Hide post
INSERT INTO hide_posts(postId, userId,) VALUES(7, 8');
