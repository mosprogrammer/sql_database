-- Use ebamobile_db Collection
USE ebamobile_db;
--
--
-- Display 50 users row
SELECT *
FROM 'users';
-- Update user row : id = 1
UPDATE 'users'
SET firstname = 'Kane',
    lastname = 'Ji',
WHERE id = 1;
-- Delete user row : id = 50
DELETE FROM 'users'
WHERE id = '50';
--
--
-- Display 50 friends row
SELECT *
FROM 'friends';
-- Update friend row : id = 1
UPDATE 'friends'
SET following = false
WHERE id = 1;
-- Delete friend row : id = 50
DELETE FROM 'friends'
WHERE id = '50';
--
--
-- Display 50 posts row
SELECT *
FROM 'posts';
-- Update posts row : id = 1
UPDATE 'posts'
SET title = 'KaneJi Title'
WHERE id = 1;
-- Delete posts row : id = 50
DELETE FROM 'posts'
WHERE id = '50';
--
--
-- Display 50 comments row
SELECT *
FROM 'comments';
-- Update comments row : id = 1
UPDATE 'comments'
SET message = 'KaneJi Message'
WHERE id = 1;
-- Delete comments row : id = 50
DELETE FROM 'comments'
WHERE id = '50';
--
--
-- Display 50 claps row
SELECT *
FROM 'claps';
-- Update claps row : id = 1
UPDATE 'claps'
SET user_id = 11
WHERE id = 1;
-- Delete claps row : id = 50
DELETE FROM 'claps'
WHERE id = '50';
--
--
-- Display 50 shares row
SELECT *
FROM 'shares';
-- Update shares row : id = 1
UPDATE 'shares'
SET user_id = 11
WHERE id = 1;
-- Delete shares row : id = 50
DELETE FROM 'shares'
WHERE id = '50';