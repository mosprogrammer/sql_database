-- get feed list
SELECT id, message, user_id,
(SELECT email FROM users WHERE id = user_id) AS email,
(SELECT COUNT(id) FROM likes WHERE likes.post_id = posts.id) as likes_total,
(SELECT COUNT(id) FROM comments WHERE comments.post_id = posts.id) as comments_total,
(SELECT COUNT(id) FROM shares WHERE shares.post_id = posts.id) as share_total
FROM posts
WHERE deleted = 0
AND NOT (id = (SELECT post_id FROM post_hides WHERE post_id != posts.id AND user_id != posts.user_id))
AND user_id = 6
OR user_id = (SELECT following FROM follows WHERE user_id = 6 AND following = posts.user_id)
AND NOT (id = (SELECT post_id FROM post_hides WHERE post_id != posts.id AND user_id != posts.user_id))

-- like
INSERT INTO likes(post_id, user_id) VALUES('post_id', 'user_id')

-- comment
INSERT INTO comments(message, post_id, user_id) VALUES('enter message', 'post_id', 'user_id')

-- share
INSERT INTO shares(post_id, user_id) VALUES('post_id', 'user_id')

-- hide post
INSERT INTO post_hides(post_id, user_id) VALUES('post_id', 'user_id')