-- 3.เขียน SQL สำหรับ Clap Comment Share และ ซ่อน Post
-- 3.1 Clap
UPDATE comments 
SET comment_count = comment_count + 1
WHERE postid = 10

-- 3.2 Clap Share
UPDATE shares 
SET share_count = share_count + 1
WHERE postid = 20

-- 3.3 Hide Post
INSERT INTO hide VALUES
(null,20,10);