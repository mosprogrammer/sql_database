-- Use ebamobile_db Collection
USE ebamobile_db;
--
--
SELECT posts.post_id as post_id,
    posts.title as post_title,
    posts.description as post_description,
    posts.imageurl as post_imageurl,
    posts.type as post_type,
    posts.created_date as post_createdDate,
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
    INNER JOIN friends ON posts.user_id = friends.follower_id -- LEFT JOIN comments ON posts.post_id = comments.post_id
    -- LEFT JOIN claps ON posts.post_id = claps.post_id
    -- LEFT JOIN shares ON posts.post_id = shares.post_id 
    -- LEFT JOIN post_hiddens ON posts.post_id = post_hiddens.post_id
WHERE posts.user_id = 1
    OR friends.user_id = 1;
-- Example on user_id = 1
--
--
-- Insert Row for Clap, Comment, Share and Hidden Post Actions
--
-- Clap (Toggle Action)
INSERT INTO claps (`post_id`, `user_id`);
VALUES (1, 1);
-- (on Toggle)
DELETE FROM claps
WHERE post_id = 1
    AND user_id = 1;
--
-- Comment
INSERT INTO comments (`post_id`, `user_id`, `message`)
VALUES (1, 1, "I'm Number 4!");
--
-- Share
INSERT INTO shares (`post_id`, `user_id`);
VALUES (1, 1);
--
-- Hidden Post
INSERT INTO post_hiddens (`post_id`, `user_id`)
VALUES (1, 1);