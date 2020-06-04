-- Create Database
CREATE DATABASE ebamobile_db;
-- Use ebamobile_db Collection
USE ebamobile_db;
--
-- Count posts on User id = 1
SELECT COUNT(post_id)
FROM 'posts'
WHERE user_id = 1;
--
-- Count comments on Post id = 1
SELECT COUNT(comment_id)
FROM 'comments'
WHERE post_id = 1;
--
-- Count claps on Post id = 1
SELECT COUNT(clap_id)
FROM 'claps'
WHERE post_id = 1;
--
-- Count shares on Post id = 1
SELECT COUNT(share_id)
FROM 'shares'
WHERE post_id = 1;