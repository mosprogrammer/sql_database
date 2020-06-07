use toon;


CREATE TABLE share_posts (
    id integer NOT NULL PRIMARY KEY AUTO_INCREMENT,
    postId integer NOT NULL,
    userId integer NOT NULL,
    FOREIGN KEY(userId) REFERENCES users(id),
    FOREIGN KEY(postId) REFERENCES posts(id)
);

INSERT INTO `claps` (`id`,`postId`,`userId`) VALUES (null,24,21),(null,3,31);