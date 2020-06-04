-- Use ebamobile_db Collection
USE ebamobile_db;
-- Create Table and Show all Column : 'claps'
CREATE TABLE claps(
    clap_id INTEGER NOT NULL UNIQUE AUTO_INCREMENT,
    post_id INTEGER NOT NULL,
    user_id INTEGER NOT NULL,
    PRIMARY KEY (clap_id),
    FOREIGN KEY (post_id) REFERENCES posts(post_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id),
) AUTO_INCREMENT = 1;
show columns
from claps;
-- Insert 50 claps row
INSERT INTO `claps` (`clap_id`, `post_id`, `user_id`)
VALUES (1, 28, 24),
    (2, 11, 15),
    (3, 12, 26),
    (4, 14, 45),
    (5, 37, 14),
    (6, 3, 34),
    (7, 40, 11),
    (8, 20, 43),
    (9, 45, 38),
    (10, 10, 17),
    (11, 5, 1),
    (12, 36, 46),
    (13, 10, 6),
    (14, 35, 42),
    (15, 18, 26),
    (16, 33, 5),
    (17, 44, 32),
    (18, 21, 5),
    (19, 11, 9),
    (20, 36, 2),
    (21, 13, 12),
    (22, 13, 46),
    (23, 35, 13),
    (24, 38, 42),
    (25, 25, 29),
    (26, 36, 43),
    (27, 36, 23),
    (28, 34, 31),
    (29, 44, 35),
    (30, 26, 7),
    (31, 39, 22),
    (32, 10, 20),
    (33, 46, 8),
    (34, 30, 37),
    (35, 14, 27),
    (36, 36, 12),
    (37, 47, 16),
    (38, 5, 30),
    (39, 25, 14),
    (40, 47, 14),
    (41, 49, 49),
    (42, 9, 13),
    (43, 30, 35),
    (44, 48, 24),
    (45, 36, 46),
    (46, 17, 25),
    (47, 3, 36),
    (48, 26, 45),
    (49, 5, 43),
    (50, 43, 39);
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