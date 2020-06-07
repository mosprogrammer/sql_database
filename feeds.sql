USE mysql_workshop;

-- feeds ของ User Layla Grady ID = 1
SELECT posts.id, posts.user_id, posts.messages,

(SELECT fullname FROM users WHERE id = user_id) AS fullname,

-- count claps 
(SELECT COUNT(id) FROM claps WHERE claps.post_id = posts.id) AS total_clap,

-- count comments
(SELECT COUNT(id) FROM comments WHERE comments.post_id = posts.id) AS total_comments,

-- count shared 
(SELECT COUNT(id) FROM share_users WHERE share_users.post_id = posts.id) AS total_shared
FROM posts

-- status deleted ลบโพส
WHERE deleted = 0 

-- show feeds from id = 1 and friend
OR posts.user_id = (SELECT following_user_id FROM follow WHERE follow.following_user_id = user_id)
AND posts.user_id = 1

-- hide post (ยังใช้งานไม่ได้ มีคำถามจะถาม)
AND posts.user_id != (SELECT user_id FROM hidden_users WHERE posts.user_id = hidden_users.user_id)

;
  