use mysql_workshop;

CREATE TABLE hidden_users (
    id INTEGER NOT NULL AUTO_INCREMENT,
    post_id INTEGER NOT NULL,
    user_id INTEGER NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (post_id) REFERENCES posts(id),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

INSERT INTO
    hidden_users (id, post_id, user_id)
VALUES
(1, 2, 1),
(2, 4, 1),
(3, 19, 8),
(4, 11, 2),
(5, 47, 2),
(6, 3, 1),
(7, 15, 15),
(8, 26, 9),
(9, 48, 11),
(10, 11, 1),
(11, 5, 1),
(12, 49, 41),
(13, 50, 29)
;