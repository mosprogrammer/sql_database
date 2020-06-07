use toon;

DROP TABLE IF EXISTS hide_posts;

CREATE TABLE hide_posts (
    id integer NOT NULL PRIMARY KEY AUTO_INCREMENT,
    postId integer NOT NULL,
    userId integer NOT NULL,
    FOREIGN KEY(userId) REFERENCES users(id),
    FOREIGN KEY(postId) REFERENCES posts(id)
);

INSERT INTO `claps` (`id`,`postId`,`userId`) VALUES (null,47,45),(null,45,41),(null,21,13),(null,13,31);