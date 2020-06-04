-- Use ebamobile_db Collection
USE ebamobile_db;
-- Create Table and Show all Column : 'friends'
CREATE TABLE friends (
    friend_id integer NOT NULL UNIQUE AUTO_INCREMENT,
    user_id integer NOT NULL,
    following boolean NOT NULL,
    PRIMARY KEY (friend_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id),
) AUTO_INCREMENT = 1;
Show Column
from friends;
-- Insert 50 friends row
INSERT INTO `friends` (`friend_id`, `user_id`, `following`)
VALUES (1, 42, true),
    (2, 24, false),
    (3, 41, false),
    (4, 12, true),
    (5, 30, false),
    (6, 10, false),
    (7, 33, false),
    (8, 19, false),
    (9, 14, true),
    (10, 37, false),
    (11, 35, true),
    (12, 37, false),
    (13, 38, false),
    (14, 1, true),
    (15, 27, false),
    (16, 45, true),
    (17, 50, false),
    (18, 48, true),
    (19, 46, false),
    (20, 30, true),
    (21, 7, false),
    (22, 20, false),
    (23, 18, false),
    (24, 36, true),
    (25, 49, true),
    (26, 2, false),
    (27, 33, true),
    (28, 19, false),
    (29, 13, false),
    (30, 12, true),
    (31, 50, true),
    (32, 47, true),
    (33, 50, true),
    (34, 32, false),
    (35, 29, true),
    (36, 44, true),
    (37, 16, false),
    (38, 38, false),
    (39, 16, true),
    (40, 44, false),
    (41, 25, true),
    (42, 10, true),
    (43, 29, false),
    (44, 35, false),
    (45, 13, false),
    (46, 25, true),
    (47, 28, false),
    (48, 26, true),
    (49, 16, false),
    (50, 46, false);
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