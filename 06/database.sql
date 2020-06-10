CREATE DATABASE eba_db;
--
USE eba_db;
--
CREATE TABLE claps(
    id integer NOT NULL PRIMARY KEY AUTO_INCREMENT,
    postId integer NOT NULL,
    userClapId integer NOT NULL,
    FOREIGN KEY(userClapId) REFERENCES users(id),
    FOREIGN KEY(postId) REFERENCES posts(id)
);
--
INSERT INTO `claps` (`id`, `postId`, `userClapId`)
VALUES (1, 1, 8),
    (2, 10, 6),
    (3, 1, 7),
    (4, 5, 2),
    (5, 7, 10),
    (6, 7, 5),
    (7, 9, 7),
    (8, 9, 2),
    (9, 4, 2),
    (10, 7, 6);
--
--
--
CREATE TABLE comments(
    id integer NOT NULL PRIMARY KEY AUTO_INCREMENT,
    postId integer,
    userCommentId integer,
    comment varchar(255),
    FOREIGN KEY(userCommentId) REFERENCES users(id),
    FOREIGN KEY(postId) REFERENCES posts(id)
);
INSERT INTO `comments` (`id`, `postId`, `userCommentId`, `comment`)
VALUES (1, 3, 2, "sagittis"),
    (
        2,
        5,
        6,
        "nonummy ultricies ornare, elit elit fermentum risus, at fringilla"
    ),
    (
        3,
        6,
        5,
        "Cras sed leo. Cras vehicula aliquet libero. Integer in magna."
    ),
    (
        4,
        8,
        2,
        "lacus. Etiam bibendum fermentum metus. Aenean sed pede"
    ),
    (5, 8, 8, "eget nisi"),
    (6, 10, 5, "eu sem. Pellentesque ut ipsum ac"),
    (
        7,
        1,
        3,
        "pellentesque. Sed dictum. Proin eget odio. Aliquam vulputate"
    ),
    (8, 3, 3, "arcu imperdiet"),
    (9, 5, 10, "ornare tortor"),
    (
        10,
        7,
        6,
        "aliquam, enim nec tempus scelerisque, lorem ipsum sodales"
    );
--
--
--
CREATE TABLE `follows` (
    `id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `followerId` integer NOT NULL,
    `followingId` integer NOT NULL,
    FOREIGN KEY(followerId) REFERENCES users(id),
    FOREIGN KEY(followingId) REFERENCES users(id)
);
INSERT INTO `follows` (`id`, `followerId`, `followingId`)
VALUES (1, 6, 1),
    (2, 1, 5),
    (3, 1, 7),
    (4, 5, 2),
    (5, 5, 8),
    (6, 1, 9),
    (7, 8, 9),
    (8, 2, 2),
    (9, 8, 9),
    (10, 9, 7);
--
--
--
CREATE TABLE hidePosts (
    id integer NOT NULL PRIMARY KEY AUTO_INCREMENT,
    postId integer NOT NULL,
    userHideId integer NOT NULL,
    FOREIGN KEY(userHideId) REFERENCES users(id),
    FOREIGN KEY(postId) REFERENCES posts(id)
);
INSERT INTO `hidePosts` (`id`, `postId`, `userHideId`)
VALUES (1, 1, 2),
    (2, 5, 2),
    (3, 9, 2),
    (4, 6, 1),
    (5, 4, 4),
    (6, 1, 10),
    (7, 6, 4),
    (8, 7, 2),
    (9, 4, 2),
    (10, 5, 5);
--
--
--
CREATE TABLE `posts` (
    `id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `userId` integer NOT NULL,
    `message` varchar(255),
    `deleted` boolean DEFAULT 0,
    FOREIGN KEY(userId) REFERENCES users(id)
);
INSERT INTO `posts` (`id`, `userId`, `message`)
VALUES (
        1,
        3,
        "facilisi. Sed neque. Sed eget lacus. Mauris"
    ),
    (2, 6, "nunc interdum feugiat. Sed"),
    (
        3,
        6,
        "scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu"
    ),
    (4, 5, "senectus"),
    (5, 7, "volutpat. Nulla"),
    (
        6,
        7,
        "leo. Morbi neque tellus, imperdiet non, vestibulum nec, euismod"
    ),
    (7, 1, "Praesent"),
    (8, 7, "scelerisque"),
    (9, 9, "Cras"),
    (
        10,
        1,
        "hendrerit neque. In ornare sagittis felis. Donec tempor, est ac"
    );
--
--
--
CREATE TABLE sharePosts (
    id integer NOT NULL PRIMARY KEY AUTO_INCREMENT,
    postId integer NOT NULL,
    userShareId integer NOT NULL,
    FOREIGN KEY(userShareId) REFERENCES users(id),
    FOREIGN KEY(postId) REFERENCES posts(id)
);
INSERT INTO `sharePosts` (`id`, `postId`, `userShareId`)
VALUES (1, 1, 6),
    (2, 6, 3),
    (3, 9, 10),
    (4, 6, 4),
    (5, 8, 4),
    (6, 10, 9),
    (7, 8, 1),
    (8, 5, 5),
    (9, 10, 3),
    (10, 10, 9);
--
--
--
CREATE TABLE users (
    id integer NOT NULL AUTO_INCREMENT PRIMARY KEY,
    firstname varchar(15) NOT NULL,
    lastname varchar(15) NOT NULL,
    email varchar(255)
);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`)
VALUES (
        1,
        "Ethan",
        "Barber",
        "purus.ac.tellus@elitAliquam.edu"
    ),
    (2, "Alfonso", "Fleming", "Proin.eget.odio@ipsum.ca"),
    (
        3,
        "Graiden",
        "Hardin",
        "a.scelerisque@fermentum.net"
    ),
    (
        4,
        "Lana",
        "Lamb",
        "quis.pede.Suspendisse@faucibus.net"
    ),
    (5, "Cailin", "Jackson", "Cras.eget@tristique.edu"),
    (6, "TaShya", "Walter", "mi@amet.com"),
    (
        7,
        "Uma",
        "Blackburn",
        "aliquam@tellusAeneanegestas.edu"
    ),
    (
        8,
        "Vance",
        "Christian",
        "euismod.est@malesuadafringillaest.ca"
    ),
    (
        9,
        "Yolanda",
        "Stafford",
        "convallis.ante.lectus@fermentumconvallis.com"
    ),
    (10, "Flynn", "Winters", "molestie@aultricies.com");