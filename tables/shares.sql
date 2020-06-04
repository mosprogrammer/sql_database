-- Use ebamobile_db Collection
USE ebamobile_db;
-- Create Table and Show all Column : 'shares'
CREATE TABLE shares(
    share_id INTEGER NOT NULL UNIQUE AUTO_INCREMENT,
    post_id INTEGER NOT NULL,
    user_id INTEGER NOT NULL,
    PRIMARY KEY (share_id),
    FOREIGN KEY (post_id) REFERENCES posts(post_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id),
) AUTO_INCREMENT = 1;
show columns
from shares;
-- Insert 50 shares row
INSERT INTO `shares` (`share_id`, `post_id`, `user_id`)
VALUES (1, 41, 38),
    (2, 25, 44),
    (3, 34, 26),
    (4, 17, 13),
    (5, 33, 33),
    (6, 35, 4),
    (7, 48, 41),
    (8, 15, 34),
    (9, 36, 14),
    (10, 37, 14),
    (11, 8, 32),
    (12, 46, 44),
    (13, 31, 10),
    (14, 16, 34),
    (15, 9, 12),
    (16, 36, 3),
    (17, 39, 45),
    (18, 3, 39),
    (19, 43, 40),
    (20, 20, 16),
    (21, 11, 10),
    (22, 9, 42),
    (23, 28, 33),
    (24, 2, 50),
    (25, 14, 19),
    (26, 9, 42),
    (27, 25, 44),
    (28, 27, 15),
    (29, 14, 9),
    (30, 29, 42),
    (31, 16, 38),
    (32, 30, 4),
    (33, 26, 45),
    (34, 37, 18),
    (35, 21, 35),
    (36, 18, 15),
    (37, 22, 19),
    (38, 20, 37),
    (39, 45, 45),
    (40, 13, 2),
    (41, 11, 46),
    (42, 7, 27),
    (43, 11, 6),
    (44, 37, 10),
    (45, 13, 10),
    (46, 32, 45),
    (47, 4, 9),
    (48, 24, 19),
    (49, 29, 14),
    (50, 49, 17);
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