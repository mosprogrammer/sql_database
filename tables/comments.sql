-- Use ebamobile_db Collection
USE ebamobile_db;
-- Create Table and Show all Column : 'comments'
CREATE TABLE comments(
    comment_id INTEGER NOT NULL UNIQUE AUTO_INCREMENT,
    post_id INTEGER NOT NULL,
    user_id INTEGER NOT NULL,
    message varchar(255),
    PRIMARY KEY (comment_id),
    FOREIGN KEY (post_id) REFERENCES posts(post_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id),
) AUTO_INCREMENT = 1;
show columns
from comments;
-- Insert 50 comments row
INSERT INTO `comments` (`comment_id`, `post_id`, `user_id`, `message`)
VALUES (1, 43, 9, "Nulla eget metus eu"),
    (
        2,
        18,
        40,
        "convallis dolor. Quisque tincidunt pede"
    ),
    (
        3,
        20,
        5,
        "commodo tincidunt nibh. Phasellus nulla."
    ),
    (4, 1, 26, "facilisis, magna tellus"),
    (
        5,
        9,
        46,
        "Etiam bibendum fermentum metus. Aenean"
    ),
    (6, 27, 10, "quis urna. Nunc"),
    (7, 45, 41, "nulla ante, iaculis"),
    (8, 11, 22, "lorem tristique aliquet."),
    (9, 43, 26, "odio vel est"),
    (10, 4, 15, "eu neque pellentesque"),
    (11, 8, 32, "eget tincidunt dui augue eu"),
    (12, 46, 34, "Nunc mauris."),
    (13, 37, 32, "Donec vitae"),
    (14, 34, 40, "Nullam velit dui, semper et,"),
    (15, 26, 39, "suscipit, est"),
    (16, 10, 38, "quis, pede. Suspendisse"),
    (17, 32, 43, "elit. Aliquam auctor,"),
    (
        18,
        33,
        15,
        "magnis dis parturient montes, nascetur"
    ),
    (19, 49, 34, "lorem ac risus."),
    (20, 48, 25, "erat vel pede"),
    (21, 9, 17, "placerat velit."),
    (22, 18, 2, "Aenean euismod mauris"),
    (23, 15, 33, "ligula."),
    (24, 33, 40, "est. Nunc ullamcorper, velit in"),
    (25, 49, 12, "dui nec"),
    (26, 7, 29, "eget, dictum placerat,"),
    (27, 9, 8, "mollis nec, cursus a,"),
    (28, 19, 11, "egestas"),
    (29, 5, 49, "tempor augue ac"),
    (30, 31, 13, "a, arcu."),
    (31, 1, 43, "dolor. Fusce feugiat. Lorem"),
    (32, 10, 50, "lorem"),
    (33, 45, 39, "consequat dolor vitae"),
    (34, 39, 2, "ante dictum mi, ac"),
    (35, 31, 9, "ante lectus convallis est,"),
    (36, 18, 15, "pede, ultrices"),
    (
        37,
        16,
        9,
        "euismod enim. Etiam gravida molestie"
    ),
    (38, 20, 16, "mauris ipsum porta elit,"),
    (39, 21, 16, "at pretium aliquet,"),
    (40, 4, 40, "arcu"),
    (41, 44, 34, "feugiat tellus lorem eu"),
    (42, 21, 35, "Mauris vel turpis."),
    (43, 13, 10, "facilisis."),
    (44, 9, 48, "nulla."),
    (45, 13, 10, "Nulla"),
    (46, 21, 21, "aliquet libero."),
    (47, 44, 27, "magnis dis"),
    (48, 23, 20, "est"),
    (49, 46, 43, "ut eros non enim"),
    (50, 39, 3, "dignissim tempor arcu. Vestibulum");
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