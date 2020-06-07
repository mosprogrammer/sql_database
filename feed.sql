-- Use ebamobile_db Collection
USE ebamobile_db;
--
--
SELECT -- posts.post_id,
    --     -- posts.title,
    --     -- posts.description,
    --     -- posts.imageurl,
    --     -- posts.type,
    --     -- posts.created_date,
    COUNT(posts.imageurl) AS some_name
FROM posts -- LEFT JOIN friends ON users.user_id = friends.friend_id 
    -- LEFT JOIN comments ON posts.post_id = comments.post_id
    -- LEFT JOIN claps ON posts.post_id = claps.post_id
    -- LEFT JOIN shares ON posts.post_id = shares.post_id
    -- LEFT JOIN post_hiddens ON posts.post_id = post_hiddens.post_id
;
-- WHERE hiddens.feed_id IS NULL
--     AND posts.status = 1
--     AND follows.following_id = 2;
--
--
-- Insert Row for Clap, Comment, Share and Hidden Post Actions
--
-- Clap (Toggle Action)
-- INSERT INTO claps (`post_id`, `user_id`);
-- VALUES (1, 1);
-- -- (on Toggle)
-- DELETE FROM claps
-- WHERE post_id = 1
--     AND user_id = 1;
-- --
-- -- Comment
-- INSERT INTO comments (`post_id`, `user_id`, `message`)
-- VALUES (1, 1, "I'm Number 4!");
-- --
-- -- Share
-- INSERT INTO shares (`post_id`, `user_id`);
-- VALUES (1, 1);
-- --
-- -- Hidden Post
-- INSERT INTO post_hiddens (`post_id`, `user_id`)
-- VALUES (1, 1);