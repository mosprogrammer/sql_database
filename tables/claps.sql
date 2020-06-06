use mysql_workshop;

CREATE TABLE claps (
  id INTEGER NOT NULL AUTO_INCREMENT,
  post_id INTEGER NOT NULL,
  user_id INTEGER NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (post_id) REFERENCES posts(id),
  FOREIGN KEY (user_id) REFERENCES users(id)
);

INSERT INTO
  claps (post_id, user_id)
VALUES
(2, 1),
(14, 1),
(25, 8),
(36, 2),
(47, 5),
(4, 1),
(15, 1),
(26, 9),
(37, 1),
(50, 1),
(5, 1),
(16, 1),
(27, 9),
(38, 1),
(46, 5),
(6, 1),
(17, 1),
(28, 1),
(39, 1),
(5, 1),
(7, 22),
(18, 1),
(29, 8),
(40, 1),
(15, 5),
(8, 1),
(19, 22),
(30, 8),
(45, 1),
(16, 1),
(9, 22),
(20, 1),
(38, 1),
(42, 1),
(46, 1),
(10, 4),
(22, 2),
(32, 1),
(43, 2),
(35, 1),
(14, 1),
(22, 1),
(33, 8),
(44, 1),
(24, 1),
(12, 1),
(23, 4),
(34, 8),
(45, 1),
(13, 1);