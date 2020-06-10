-- Create Database
CREATE DATABASE eba_db;
--
--
--
-- Use eba_post_test Collection
USE eba_db;
-- Create Table and Show all Column : 'claps'
CREATE TABLE claps(
    clap_id INTEGER NOT NULL UNIQUE AUTO_INCREMENT,
    post_id INTEGER NOT NULL,
    clap_user_id INTEGER NOT NULL,
    PRIMARY KEY (clap_id),
    FOREIGN KEY (post_id) REFERENCES posts(post_id),
    FOREIGN KEY (clap_user_id) REFERENCES users(user_id),
    CONSTRAINT FKClap_postID FOREIGN KEY (post_id) REFERENCES posts (post_id),
    CONSTRAINT FKClap_userID FOREIGN KEY (clap_user_id) REFERENCES users (user_id)
);
show columns
from claps;
--
--
--
-- Mock 50 rows claps data
INSERT INTO `claps` (`clap_id`, `post_id`, `clap_user_id`)
VALUES (1, 32, 20),
    (2, 34, 15),
    (3, 47, 17),
    (4, 20, 32),
    (5, 50, 8),
    (6, 25, 31),
    (7, 3, 12),
    (8, 3, 42),
    (9, 1, 49),
    (10, 39, 44),
    (11, 46, 3),
    (12, 42, 17),
    (13, 12, 25),
    (14, 14, 28),
    (15, 18, 44),
    (16, 19, 12),
    (17, 1, 14),
    (18, 22, 30),
    (19, 4, 46),
    (20, 23, 8),
    (21, 8, 30),
    (22, 25, 3),
    (23, 11, 17),
    (24, 8, 12),
    (25, 1, 17),
    (26, 4, 41),
    (27, 20, 48),
    (28, 12, 50),
    (29, 32, 20),
    (30, 31, 2),
    (31, 25, 21),
    (32, 12, 15),
    (33, 32, 36),
    (34, 50, 37),
    (35, 4, 44),
    (36, 20, 50),
    (37, 31, 29),
    (38, 34, 49),
    (39, 8, 4),
    (40, 17, 41),
    (41, 45, 18),
    (42, 32, 1),
    (43, 41, 25),
    (44, 21, 49),
    (45, 10, 5),
    (46, 18, 44),
    (47, 18, 35),
    (48, 27, 1),
    (49, 45, 43),
    (50, 6, 7);
--
--
--
-- Create Table and Show all Column : 'comments'
CREATE TABLE comments(
    comment_id INTEGER NOT NULL UNIQUE AUTO_INCREMENT,
    post_id INTEGER NOT NULL,
    comment_user_id INTEGER NOT NULL,
    message varchar(255),
    created_date datetime NOT NULL,
    PRIMARY KEY (comment_id),
    FOREIGN KEY (post_id) REFERENCES posts(post_id),
    FOREIGN KEY (comment_user_id) REFERENCES users(user_id),
    CONSTRAINT FKComment_postID FOREIGN KEY (post_id) REFERENCES posts (post_id),
    CONSTRAINT FKComment_userID FOREIGN KEY (comment_user_id) REFERENCES users (user_id)
);
show columns
from comments;
--
--
--
--
-- Mock 50 rows comments data
INSERT INTO `comments` (
        `comment_id`,
        `post_id`,
        `comment_user_id`,
        `message`,
        `created_date`
    )
VALUES (1, 32, 40, "at arcu.", "2021-02-22 21:58:59"),
    (
        2,
        27,
        12,
        "dolor dapibus gravida.",
        "2021-05-14 09:52:09"
    ),
    (3, 6, 3, "tellus", "2020-05-14 02:11:53"),
    (
        4,
        34,
        39,
        "egestas. Aliquam nec",
        "2019-06-12 02:46:13"
    ),
    (
        5,
        33,
        11,
        "vel, venenatis vel,",
        "2019-11-21 02:51:17"
    ),
    (6, 12, 1, "magnis dis", "2021-05-04 08:23:22"),
    (
        7,
        45,
        50,
        "Donec tincidunt. Donec",
        "2019-06-11 23:07:00"
    ),
    (8, 38, 9, "at,", "2019-09-15 17:05:27"),
    (9, 22, 5, "ut cursus", "2019-12-27 08:54:17"),
    (
        10,
        42,
        38,
        "Etiam bibendum",
        "2021-03-28 21:35:09"
    ),
    (
        11,
        15,
        2,
        "nec quam. Curabitur",
        "2021-03-11 11:27:45"
    ),
    (
        12,
        36,
        33,
        "faucibus orci luctus",
        "2020-05-25 22:22:52"
    ),
    (
        13,
        31,
        44,
        "penatibus et",
        "2020-07-18 21:07:44"
    ),
    (
        14,
        17,
        18,
        "Vivamus nibh dolor,",
        "2019-08-15 01:33:31"
    ),
    (
        15,
        5,
        9,
        "purus mauris a",
        "2021-01-09 17:54:24"
    ),
    (16, 33, 8, "Fusce diam", "2020-05-08 12:35:02"),
    (17, 6, 16, "Nulla", "2020-06-29 11:50:08"),
    (
        18,
        16,
        46,
        "nunc interdum",
        "2020-11-04 19:59:01"
    ),
    (19, 31, 33, "sed", "2021-06-07 01:23:07"),
    (20, 4, 20, "et", "2020-10-19 09:04:40"),
    (
        21,
        34,
        41,
        "auctor velit. Aliquam",
        "2020-03-23 11:01:53"
    ),
    (22, 20, 16, "nec", "2020-11-16 22:12:52"),
    (
        23,
        20,
        1,
        "ornare placerat, orci",
        "2020-09-28 17:13:45"
    ),
    (24, 1, 35, "penatibus", "2019-12-26 11:58:28"),
    (25, 33, 30, "enim.", "2020-06-07 13:01:30"),
    (
        26,
        42,
        8,
        "elit. Aliquam",
        "2019-07-16 01:58:42"
    ),
    (27, 11, 12, "ac orci. Ut", "2020-01-26 11:24:05"),
    (28, 28, 33, "non", "2021-01-09 10:25:27"),
    (
        29,
        11,
        20,
        "amet, consectetuer",
        "2020-03-10 17:08:53"
    ),
    (
        30,
        45,
        11,
        "eu tellus. Phasellus",
        "2021-01-10 20:20:43"
    ),
    (
        31,
        46,
        10,
        "a ultricies adipiscing,",
        "2019-06-30 22:51:19"
    ),
    (32, 36, 14, "vulputate,", "2021-03-09 10:39:22"),
    (
        33,
        11,
        42,
        "rhoncus. Donec est.",
        "2021-01-14 15:45:14"
    ),
    (
        34,
        20,
        18,
        "velit. Cras lorem",
        "2020-03-24 13:08:23"
    ),
    (
        35,
        10,
        6,
        "luctus, ipsum",
        "2020-08-06 15:06:02"
    ),
    (36, 48, 37, "semper", "2020-01-31 10:53:14"),
    (
        37,
        26,
        27,
        "Fusce feugiat.",
        "2021-04-16 05:43:11"
    ),
    (38, 27, 46, "ornare,", "2019-07-08 01:31:08"),
    (
        39,
        5,
        26,
        "ipsum porta elit,",
        "2020-05-23 19:51:14"
    ),
    (
        40,
        10,
        31,
        "feugiat nec, diam.",
        "2020-02-18 02:24:38"
    ),
    (41, 41, 1, "tempus", "2020-08-04 03:36:40"),
    (42, 33, 48, "ac", "2019-07-08 21:56:09"),
    (
        43,
        11,
        6,
        "Proin ultrices. Duis",
        "2019-10-10 21:29:30"
    ),
    (44, 22, 25, "et", "2019-07-07 09:10:23"),
    (
        45,
        42,
        41,
        "Phasellus elit",
        "2021-06-09 14:57:26"
    ),
    (
        46,
        37,
        26,
        "orci quis lectus.",
        "2020-10-12 08:19:30"
    ),
    (
        47,
        28,
        7,
        "Pellentesque tincidunt tempus",
        "2019-07-31 07:42:58"
    ),
    (
        48,
        32,
        35,
        "tincidunt. Donec",
        "2019-10-03 10:27:05"
    ),
    (49, 48, 41, "Donec", "2020-09-05 04:10:18"),
    (50, 36, 43, "sem mollis", "2019-11-28 21:42:00");
--
--
--
-- Create Table and Show all Column : 'friends'
CREATE TABLE friends (
    friend_id integer NOT NULL UNIQUE AUTO_INCREMENT,
    user_id integer NOT NULL,
    follower_id integer NOT NULL,
    friendStatus boolean NOT NULL DEFAULT false,
    PRIMARY KEY (friend_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    CONSTRAINT FKFriend_userID FOREIGN KEY (user_id) REFERENCES users (user_id)
);
Show Columns
from friends;
--
--
--
-- Mock 50 rows friends data
INSERT INTO `friends` (
        `friend_id`,
        `user_id`,
        `follower_id`,
        `friendStatus`
    )
VALUES (1, 48, 14, 0),
    (2, 38, 12, 0),
    (3, 21, 35, 0),
    (4, 19, 34, 0),
    (5, 12, 12, 0),
    (6, 33, 15, 0),
    (7, 36, 7, 0),
    (8, 44, 48, 0),
    (9, 15, 31, 0),
    (10, 10, 22, 0),
    (11, 24, 1, 0),
    (12, 1, 26, 0),
    (13, 26, 37, 0),
    (14, 10, 3, 0),
    (15, 23, 15, 0),
    (16, 13, 5, 0),
    (17, 39, 23, 0),
    (18, 5, 5, 0),
    (19, 9, 8, 0),
    (20, 47, 39, 0),
    (21, 18, 11, 0),
    (22, 7, 37, 0),
    (23, 13, 11, 0),
    (24, 35, 29, 0),
    (25, 5, 39, 0),
    (26, 32, 41, 0),
    (27, 32, 31, 0),
    (28, 2, 45, 0),
    (29, 39, 18, 0),
    (30, 2, 3, 0),
    (31, 33, 24, 0),
    (32, 7, 17, 0),
    (33, 17, 14, 0),
    (34, 3, 32, 0),
    (35, 17, 45, 0),
    (36, 21, 2, 0),
    (37, 50, 28, 0),
    (38, 42, 23, 0),
    (39, 50, 9, 0),
    (40, 39, 44, 0),
    (41, 35, 10, 0),
    (42, 17, 44, 0),
    (43, 3, 30, 0),
    (44, 25, 8, 0),
    (45, 14, 38, 0),
    (46, 20, 8, 0),
    (47, 45, 41, 0),
    (48, 26, 8, 0),
    (49, 26, 48, 0),
    (50, 21, 25, 0);
--
--
--
-- Create Table and Show all Column : 'posts_hidden'
CREATE TABLE posts_hidden(
    hidden_id INTEGER NOT NULL UNIQUE AUTO_INCREMENT,
    post_id INTEGER NOT NULL,
    hidden_user_id INTEGER NOT NULL,
    PRIMARY KEY (hidden_id),
    FOREIGN KEY (post_id) REFERENCES posts(post_id),
    FOREIGN KEY (hidden_user_id) REFERENCES users(user_id),
    CONSTRAINT FKHidden_postID FOREIGN KEY (post_id) REFERENCES posts (post_id),
    CONSTRAINT FKHidden_userID FOREIGN KEY (hidden_user_id) REFERENCES users (user_id)
);
Show Columns
from posts_hidden;
--
--
--
-- Mock 50 rows posts_hidden data
INSERT INTO `posts_hidden` (`hidden_id`, `post_id`, `hidden_user_id`)
VALUES (1, 32, 20),
    (2, 34, 15),
    (3, 47, 17),
    (4, 20, 32),
    (5, 50, 8);
--
--
--
-- Create Table and Show all Column : 'posts'
CREATE TABLE posts (
    post_id integer NOT NULL UNIQUE AUTO_INCREMENT,
    user_id integer NOT NULL,
    title varchar (255),
    message varchar (255),
    post_image varchar(255),
    type varchar(20) NOT NULL,
    created_date datetime NOT NULL,
    PRIMARY KEY (post_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    CONSTRAINT FKPost_userID FOREIGN KEY (user_id) REFERENCES users (user_id)
);
Show Columns
from posts;
--
--
--
-- Mock 50 rows posts data
INSERT INTO `posts` (
        `post_id`,
        `user_id`,
        `title`,
        `message`,
        `post_image`,
        `type`,
        `created_date`
    )
VALUES (
        1,
        10,
        "sit",
        "laoreet,",
        "EXP93BWZ2ZO",
        "share_post",
        "2019-07-10 08:40:37"
    ),
    (
        2,
        8,
        "Nam",
        "nisi nibh lacinia",
        "DUM33PND2EX",
        "share_tour",
        "2019-11-19 18:06:18"
    ),
    (
        3,
        10,
        "nascetur ridiculus",
        "Donec consectetuer mauris id",
        "ZLB05BFZ2SA",
        "post",
        "2020-09-19 08:39:57"
    ),
    (
        4,
        39,
        "elit, pharetra",
        "in, hendrerit",
        "AGA86WYP5VY",
        "share_tour",
        "2019-09-13 15:59:46"
    ),
    (
        5,
        23,
        "dictum sapien.",
        "auctor, velit eget laoreet",
        "HBP54HQQ1UW",
        "tour",
        "2019-10-18 20:38:18"
    ),
    (
        6,
        49,
        "semper",
        "vel nisl.",
        "CIT87HAF2FW",
        "share_tour",
        "2019-11-14 09:07:53"
    ),
    (
        7,
        21,
        "lorem, eget",
        "faucibus leo, in",
        "FAR87VMO8MA",
        "post",
        "2020-07-22 07:28:54"
    ),
    (
        8,
        3,
        "porttitor",
        "imperdiet nec,",
        "VPD13VMN3VY",
        "share_tour",
        "2019-12-16 21:44:05"
    ),
    (
        9,
        1,
        "dolor. Quisque",
        "sem eget massa. Suspendisse",
        "TQR40PUZ2EX",
        "share_post",
        "2019-11-07 02:54:30"
    ),
    (
        10,
        44,
        "ultrices a,",
        "eu elit.",
        "CXI66FOJ1VZ",
        "post",
        "2020-08-24 20:50:49"
    ),
    (
        11,
        24,
        "at fringilla",
        "Nam tempor diam dictum",
        "MMI84MCS3YG",
        "share_tour",
        "2020-07-06 17:48:09"
    ),
    (
        12,
        2,
        "leo,",
        "Nunc pulvinar arcu et",
        "MRL61TLP5RY",
        "tour",
        "2020-09-27 08:17:10"
    ),
    (
        13,
        26,
        "bibendum",
        "diam dictum",
        "YWS06JTM7ET",
        "tour",
        "2020-12-24 15:34:09"
    ),
    (
        14,
        10,
        "vehicula",
        "adipiscing lobortis risus. In",
        "TQA98XCG8MB",
        "share_post",
        "2019-07-17 12:29:40"
    ),
    (
        15,
        19,
        "ultrices. Vivamus",
        "libero mauris, aliquam",
        "ZSX58TRG0OQ",
        "post",
        "2020-05-06 16:52:08"
    ),
    (
        16,
        29,
        "et ultrices",
        "sed dui. Fusce aliquam,",
        "QHF39RCW2MJ",
        "share_tour",
        "2021-04-18 19:26:34"
    ),
    (
        17,
        49,
        "nulla.",
        "fringilla purus",
        "RMD87OII3RV",
        "share_tour",
        "2019-11-18 23:07:23"
    ),
    (
        18,
        2,
        "imperdiet ornare.",
        "ligula consectetuer rhoncus. Nullam",
        "YBQ83JIJ0MS",
        "tour",
        "2020-05-07 10:20:38"
    ),
    (
        19,
        17,
        "nisi magna",
        "ac turpis egestas. Aliquam",
        "VQU94WLS6MQ",
        "share_post",
        "2021-02-03 19:28:50"
    ),
    (
        20,
        47,
        "eget varius",
        "dignissim lacus.",
        "ELZ07MWD0KD",
        "share_tour",
        "2019-12-21 03:30:43"
    ),
    (
        21,
        18,
        "Donec",
        "tempor erat",
        "GQP67LII4BV",
        "post",
        "2019-11-29 17:35:07"
    ),
    (
        22,
        13,
        "vitae, sodales",
        "Vivamus",
        "UTY19CKQ6JA",
        "share_post",
        "2020-11-22 15:32:09"
    ),
    (
        23,
        24,
        "mauris",
        "orci lacus",
        "LMA68EFV7GV",
        "share_post",
        "2020-02-17 19:05:10"
    ),
    (
        24,
        34,
        "ornare, lectus",
        "enim. Etiam",
        "FRT69ZFM0LJ",
        "post",
        "2020-05-20 15:14:01"
    ),
    (
        25,
        13,
        "elementum purus,",
        "In condimentum. Donec at",
        "HXK68VUG8IE",
        "post",
        "2020-04-02 11:19:55"
    ),
    (
        26,
        4,
        "dis",
        "arcu.",
        "JGS15WYD8ZV",
        "share_post",
        "2019-12-13 08:30:37"
    ),
    (
        27,
        32,
        "lorem,",
        "montes, nascetur",
        "MIG44GNJ8OK",
        "tour",
        "2020-04-11 16:48:22"
    ),
    (
        28,
        23,
        "feugiat",
        "amet lorem semper",
        "GMH34GJI2DX",
        "tour",
        "2020-09-18 07:04:14"
    ),
    (
        29,
        43,
        "dolor",
        "Pellentesque habitant morbi tristique",
        "PEG30RXK6TT",
        "share_post",
        "2020-07-26 15:18:59"
    ),
    (
        30,
        35,
        "sit amet",
        "augue,",
        "IAR61VSP2TP",
        "share_tour",
        "2020-01-02 21:53:17"
    ),
    (
        31,
        46,
        "Sed",
        "ornare. Fusce",
        "SHO43BYR0DM",
        "tour",
        "2020-09-16 00:49:44"
    ),
    (
        32,
        36,
        "Integer",
        "auctor",
        "LPJ77UNR2HR",
        "tour",
        "2020-09-21 06:45:15"
    ),
    (
        33,
        19,
        "ultricies",
        "luctus vulputate,",
        "OFT15SFJ9PX",
        "share_tour",
        "2020-02-08 10:54:27"
    ),
    (
        34,
        49,
        "consectetuer mauris",
        "mauris",
        "VPM72EBV6UE",
        "share_post",
        "2019-10-09 02:05:54"
    ),
    (
        35,
        4,
        "et ipsum",
        "at arcu.",
        "SOE00ASP3HK",
        "share_tour",
        "2020-09-29 06:44:23"
    ),
    (
        36,
        7,
        "tellus. Aenean",
        "dui. Fusce aliquam,",
        "FRL37ZXL1JA",
        "tour",
        "2020-06-01 10:22:48"
    ),
    (
        37,
        15,
        "nunc nulla",
        "in felis.",
        "UHJ89MAH4JH",
        "post",
        "2021-01-24 13:47:43"
    ),
    (
        38,
        35,
        "pellentesque",
        "sapien imperdiet",
        "SDU30LIK6ME",
        "share_post",
        "2019-08-20 17:42:11"
    ),
    (
        39,
        6,
        "placerat,",
        "dui.",
        "LMK71JTU3NT",
        "post",
        "2021-03-30 15:47:30"
    ),
    (
        40,
        2,
        "nec, malesuada",
        "consequat",
        "LDV99ETD6IR",
        "share_post",
        "2020-03-02 22:58:34"
    ),
    (
        41,
        45,
        "ipsum. Suspendisse",
        "sapien imperdiet ornare.",
        "ZUF76RWB8YW",
        "share_tour",
        "2019-11-10 16:58:46"
    ),
    (
        42,
        41,
        "molestie. Sed",
        "et, eros. Proin ultrices.",
        "UNO10XWW3AB",
        "tour",
        "2020-02-08 04:07:56"
    ),
    (
        43,
        28,
        "nisl.",
        "consectetuer",
        "WCJ33GLV6PQ",
        "share_post",
        "2020-03-19 08:55:38"
    ),
    (
        44,
        7,
        "Phasellus vitae",
        "ipsum cursus vestibulum.",
        "RXK53UBF9FP",
        "post",
        "2020-06-06 06:46:50"
    ),
    (
        45,
        16,
        "urna.",
        "Proin",
        "DHI51IEK7RL",
        "share_post",
        "2020-05-27 09:21:02"
    ),
    (
        46,
        30,
        "enim.",
        "Donec",
        "LLW87OHQ2NG",
        "share_post",
        "2021-01-21 01:12:16"
    ),
    (
        47,
        29,
        "lacus.",
        "montes, nascetur ridiculus",
        "UWT95DMB7HG",
        "tour",
        "2020-04-01 23:55:41"
    ),
    (
        48,
        9,
        "Ut tincidunt",
        "eget, dictum placerat,",
        "MPK23KHO3IO",
        "share_tour",
        "2020-03-27 23:19:01"
    ),
    (
        49,
        14,
        "amet",
        "accumsan convallis,",
        "KPN02XCQ3BO",
        "share_tour",
        "2020-07-19 22:55:26"
    ),
    (
        50,
        49,
        "magna.",
        "et, magna. Praesent",
        "UED08IPE3TA",
        "tour",
        "2020-03-28 11:08:28"
    );
--
--
--
-- Create Table and Show all Column : 'shares'
CREATE TABLE shares(
    share_id INTEGER NOT NULL UNIQUE AUTO_INCREMENT,
    post_id INTEGER NOT NULL,
    share_user_id INTEGER NOT NULL,
    PRIMARY KEY (share_id),
    FOREIGN KEY (post_id) REFERENCES posts(post_id),
    FOREIGN KEY (share_user_id) REFERENCES users(user_id),
    CONSTRAINT FKShare_postID FOREIGN KEY (post_id) REFERENCES posts (post_id),
    CONSTRAINT FKShare_userID FOREIGN KEY (share_user_id) REFERENCES users (user_id)
);
show columns
from shares;
--
--
--
-- Mock 50 rows shares data
INSERT INTO `shares` (`share_id`, `post_id`, `share_user_id`)
VALUES (1, 41, 15),
    (2, 18, 31),
    (3, 13, 17),
    (4, 20, 47),
    (5, 21, 20),
    (6, 8, 46),
    (7, 6, 45),
    (8, 28, 11),
    (9, 22, 1),
    (10, 42, 9),
    (11, 16, 13),
    (12, 20, 2),
    (13, 26, 17),
    (14, 38, 15),
    (15, 41, 33),
    (16, 23, 44),
    (17, 1, 18),
    (18, 7, 9),
    (19, 42, 36),
    (20, 28, 11),
    (21, 12, 21),
    (22, 23, 23),
    (23, 37, 41),
    (24, 7, 49),
    (25, 16, 41),
    (26, 9, 36),
    (27, 38, 15),
    (28, 43, 23),
    (29, 32, 39),
    (30, 4, 31),
    (31, 8, 29),
    (32, 40, 10),
    (33, 25, 9),
    (34, 11, 46),
    (35, 43, 16),
    (36, 1, 3),
    (37, 15, 43),
    (38, 3, 30),
    (39, 24, 26),
    (40, 27, 10),
    (41, 6, 35),
    (42, 29, 2),
    (43, 13, 2),
    (44, 37, 49),
    (45, 31, 8),
    (46, 5, 38),
    (47, 23, 46),
    (48, 45, 27),
    (49, 26, 18),
    (50, 45, 37);
--
--
--
-- Create Table and Show all Column : 'users'
CREATE TABLE users (
    user_id integer NOT NULL UNIQUE AUTO_INCREMENT,
    firstname varchar(15) NOT NULL,
    lastname varchar(15) NOT NULL,
    profile_image varchar(255),
    user_status integer NOT NULL DEFAULT 1,
    created_date datetime NOT NULL,
    PRIMARY KEY (user_id)
);
Show Columns
from users;
--
--
--
-- Mock 50 rows users data
INSERT INTO `users` (
        `user_id`,
        `firstname`,
        `lastname`,
        `profile_image`,
        `user_status`,
        `created_date`
    )
VALUES (
        1,
        "Kane",
        "Ji",
        "TKW35NIJ3OU",
        "1",
        "2021-01-10 08:13:13"
    ),
    (
        2,
        "Kasper",
        "Foster",
        "FIW16PTA5FH",
        "1",
        "2021-02-22 00:26:43"
    ),
    (
        3,
        "Lars",
        "Hawkins",
        "RGW62DON4JF",
        "1",
        "2020-09-28 14:02:00"
    ),
    (
        4,
        "Maisie",
        "Gay",
        "MQF64YRA0CK",
        "1",
        "2019-12-14 11:48:45"
    ),
    (
        5,
        "Noble",
        "Berg",
        "BXV00NIM2EV",
        "1",
        "2020-02-03 02:10:52"
    ),
    (
        6,
        "Oprah",
        "Mendoza",
        "BEO27RCC6EC",
        "1",
        "2019-12-17 18:27:12"
    ),
    (
        7,
        "Allegra",
        "Ochoa",
        "FSP10FVA3XX",
        "1",
        "2020-08-20 02:36:04"
    ),
    (
        8,
        "Imogene",
        "May",
        "UUP56VQA1MT",
        "1",
        "2021-03-09 00:50:09"
    ),
    (
        9,
        "Madeson",
        "Roy",
        "GOX93TPK3XN",
        "1",
        "2020-09-30 22:50:54"
    ),
    (
        10,
        "Charde",
        "Kline",
        "KFX21OFV0DR",
        "1",
        "2020-12-11 16:05:25"
    ),
    (
        11,
        "Ross",
        "Garza",
        "SKH96JXS9VT",
        "1",
        "2020-11-11 11:24:11"
    ),
    (
        12,
        "Hyacinth",
        "Lang",
        "NXS80AJF5KH",
        "1",
        "2020-12-04 01:49:09"
    ),
    (
        13,
        "Carissa",
        "English",
        "NXU63EGU8KV",
        "1",
        "2020-07-14 08:10:52"
    ),
    (
        14,
        "Omar",
        "Sears",
        "DPN33ZOU4UW",
        "1",
        "2019-07-21 13:53:27"
    ),
    (
        15,
        "Lawrence",
        "Trujillo",
        "RIR26RZC8WM",
        "1",
        "2020-04-02 03:53:08"
    ),
    (
        16,
        "Akeem",
        "Le",
        "MKQ64WXC9JM",
        "1",
        "2020-10-14 11:41:01"
    ),
    (
        17,
        "Kristen",
        "West",
        "UXP04DVZ9IW",
        "1",
        "2020-02-24 10:57:28"
    ),
    (
        18,
        "Chaim",
        "Thornton",
        "LUJ19MJJ3AV",
        "1",
        "2020-06-17 05:26:04"
    ),
    (
        19,
        "Xenos",
        "Hudson",
        "EKD91HBA4NO",
        "1",
        "2020-10-20 18:54:58"
    ),
    (
        20,
        "Geraldine",
        "Bray",
        "AFB70PJW3MG",
        "1",
        "2019-12-04 02:02:56"
    ),
    (
        21,
        "Cassandra",
        "Gallagher",
        "QXC69JQK6YW",
        "1",
        "2020-01-18 19:44:28"
    ),
    (
        22,
        "Riley",
        "Dorsey",
        "PFY06GHB4VI",
        "1",
        "2020-03-08 07:55:04"
    ),
    (
        23,
        "Gabriel",
        "Acosta",
        "DUT35ZUP7GP",
        "1",
        "2020-02-08 16:17:00"
    ),
    (
        24,
        "Nell",
        "Wilkerson",
        "IYI86OFF6JG",
        "1",
        "2020-07-11 04:53:02"
    ),
    (
        25,
        "Felicia",
        "Reeves",
        "PZW65AWX9FP",
        "1",
        "2019-07-12 21:41:54"
    ),
    (
        26,
        "Phoebe",
        "Reid",
        "MUZ90OWL1VH",
        "1",
        "2020-11-29 13:58:47"
    ),
    (
        27,
        "Ingrid",
        "Fulton",
        "IUR66RAF3OE",
        "1",
        "2021-06-01 00:31:01"
    ),
    (
        28,
        "Ariana",
        "Hinton",
        "CHF38WWC3QU",
        "1",
        "2020-04-09 08:58:42"
    ),
    (
        29,
        "Leilani",
        "Hutchinson",
        "RWA00KPM9IX",
        "1",
        "2021-04-30 10:57:59"
    ),
    (
        30,
        "Claudia",
        "Mann",
        "DQZ65UMJ3YJ",
        "1",
        "2020-08-16 12:24:34"
    ),
    (
        31,
        "Heather",
        "Willis",
        "NGP40LBG7GM",
        "1",
        "2020-09-04 23:16:13"
    ),
    (
        32,
        "Quinn",
        "Holt",
        "OOW15ODC4VD",
        "1",
        "2019-11-30 09:31:05"
    ),
    (
        33,
        "Lana",
        "Lucas",
        "MCU10UYL1FW",
        "1",
        "2020-02-12 16:39:54"
    ),
    (
        34,
        "Boris",
        "Woodward",
        "ZIR66VFM5RP",
        "1",
        "2021-01-28 19:34:41"
    ),
    (
        35,
        "Jasmine",
        "Shields",
        "YAW87IMZ4EB",
        "1",
        "2021-05-16 22:00:16"
    ),
    (
        36,
        "Madonna",
        "Walter",
        "UNA33HYC0HT",
        "1",
        "2020-03-17 18:09:23"
    ),
    (
        37,
        "Gloria",
        "Reid",
        "UUC43AAL1WR",
        "1",
        "2021-03-31 05:57:59"
    ),
    (
        38,
        "Yael",
        "Fuller",
        "WNC64TCU8VW",
        "1",
        "2020-12-07 00:41:59"
    ),
    (
        39,
        "Jordan",
        "Hyde",
        "FNL07UOV4SM",
        "1",
        "2019-07-29 10:34:49"
    ),
    (
        40,
        "Jakeem",
        "Mccormick",
        "IPI62SVR0PF",
        "1",
        "2019-12-11 20:58:02"
    ),
    (
        41,
        "Jayme",
        "Moore",
        "QZG00YZZ2EH",
        "1",
        "2020-12-07 18:56:30"
    ),
    (
        42,
        "Quinn",
        "Norman",
        "EFL17BWQ5IJ",
        "1",
        "2019-06-14 00:17:25"
    ),
    (
        43,
        "Edward",
        "Vance",
        "QVD34IDZ2LX",
        "1",
        "2020-01-07 02:02:18"
    ),
    (
        44,
        "Zoe",
        "Gordon",
        "NJZ30PEJ2DB",
        "1",
        "2021-05-17 09:13:11"
    ),
    (
        45,
        "Denise",
        "Lynch",
        "VBR09ZPV7OY",
        "1",
        "2021-02-15 19:56:41"
    ),
    (
        46,
        "Brody",
        "Torres",
        "ABP65BZZ5GC",
        "1",
        "2020-08-03 09:13:24"
    ),
    (
        47,
        "Hayfa",
        "James",
        "VKM22YSL1SF",
        "1",
        "2021-05-07 20:06:23"
    ),
    (
        48,
        "Stuart",
        "Serrano",
        "YWB33MHP3ZJ",
        "1",
        "2021-02-26 18:33:09"
    ),
    (
        49,
        "Richard",
        "Silva",
        "CVF05JNG5CB",
        "1",
        "2021-05-30 16:35:27"
    ),
    (
        50,
        "Thane",
        "Crawford",
        "JLB24LKE8SD",
        "1",
        "2021-03-30 14:16:19"
    );