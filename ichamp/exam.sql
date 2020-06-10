CREATE VIEW number_comments AS
SELECT COUNT(`id`)
AS NumberOfComments
FROM `comments`
WHERE `feedId` = 1;

-- SELECT 
--   feeds.id, feeds.userId, feeds.content, feeds.create_date, comments.id, NumberOfComments
-- FROM
--   feeds
-- LEFT JOIN comments
-- ON feeds.id=comments.feedId
-- WHERE
--   feeds.userId = 20 AND
--   feeds.status = 1
-- ORDER BY 
--   feeds.create_date DESC
-- LIMIT 5 OFFSET 0;

SELECT
  feeds.id, feeds.userId, feeds.content, feeds.create_date, comments.id
FROM
  feeds
LEFT JOIN comments
ON feeds.id=comments.feedId
WHERE
  feeds.userId 
IN 
  (SELECT
    comments.userId
  FROM
      comments
  WHERE
      comments.userId = '20');