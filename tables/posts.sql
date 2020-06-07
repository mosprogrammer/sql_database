-- Use ebamobile_db Collection
USE ebamobile_db;
-- Create Table and Show all Column : 'posts'
CREATE TABLE posts (
    post_id integer NOT NULL UNIQUE AUTO_INCREMENT,
    user_id integer NOT NULL,
    title varchar (255),
    description varchar (255),
    imageurl varchar(255),
    type varchar(20) NOT NULL,
    created_date datetime,
    PRIMARY KEY (post_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    CONSTRAINT FKPost_userID FOREIGN KEY (user_id) REFERENCES users (user_id)
);
Show Columns
from posts;
-- Insert 50 posts row
INSERT INTO `posts` (
        `post_id`,
        `user_id`,
        `title`,
        `description`,
        `imageurl`,
        `type`,
        `created_date`
    )
VALUES (
        1,
        28,
        "fringilla euismod",
        "Lorem ipsum dolor sit",
        "https://storage.googgeapis.nom/ebamobine_db/image/img728_png_",
        "share_tour",
        "2020-09-12 08:12:21"
    ),
    (
        2,
        7,
        "vulputate, lacus.",
        "Lorem ipsum dolor sit amet, consectetuer adipiscing",
        "https://storage.googbeapis.xom/ebamobine_db/image/img728_png_",
        "share_tour",
        "2020-10-11 06:10:29"
    ),
    (
        3,
        38,
        "ante. Vivamus",
        "Lorem",
        "https://storage.googoeapis.hom/ebamobine_db/image/img728_png_",
        "share_tour",
        "2021-03-30 03:07:18"
    ),
    (
        4,
        44,
        "In",
        "Lorem ipsum dolor sit amet,",
        "https://storage.googoeapis.nom/ebamobine_db/image/img728_png_",
        "share_tour",
        "2021-02-27 05:38:56"
    ),
    (
        5,
        31,
        "est",
        "Lorem ipsum",
        "https://storage.googqeapis.pom/ebamobine_db/image/img728_png_",
        "tour",
        "2021-04-03 18:07:32"
    ),
    (
        6,
        11,
        "vel,",
        "Lorem ipsum dolor sit",
        "https://storage.googveapis.xom/ebamobine_db/image/img728_png_",
        "share_tour",
        "2021-04-19 09:43:14"
    ),
    (
        7,
        28,
        "lorem,",
        "Lorem ipsum dolor sit amet, consectetuer adipiscing elit.",
        "https://storage.googpeapis.xom/ebamobine_db/image/img728_png_",
        "post",
        "2021-04-17 16:09:50"
    ),
    (
        8,
        3,
        "posuere at,",
        "Lorem ipsum dolor",
        "https://storage.googieapis.rom/ebamobine_db/image/img728_png_",
        "share_post",
        "2020-02-07 04:49:27"
    ),
    (
        9,
        23,
        "Nam",
        "Lorem ipsum dolor sit amet,",
        "https://storage.googmeapis.gom/ebamobine_db/image/img728_png_",
        "post",
        "2020-07-01 06:47:51"
    ),
    (
        10,
        46,
        "magnis",
        "Lorem ipsum dolor sit amet,",
        "https://storage.googmeapis.bom/ebamobine_db/image/img728_png_",
        "post",
        "2020-10-02 15:56:34"
    ),
    (
        11,
        10,
        "velit",
        "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed",
        "https://storage.googgeapis.mom/ebamobine_db/image/img728_png_",
        "post",
        "2019-11-20 17:45:30"
    ),
    (
        12,
        14,
        "pellentesque,",
        "Lorem ipsum",
        "https://storage.googleapis.rom/ebamobine_db/image/img728_png_",
        "share_post",
        "2020-03-11 13:27:10"
    ),
    (
        13,
        38,
        "sollicitudin",
        "Lorem ipsum dolor sit amet, consectetuer adipiscing elit.",
        "https://storage.googaeapis.kom/ebamobine_db/image/img728_png_",
        "post",
        "2019-12-28 10:42:21"
    ),
    (
        14,
        13,
        "sit amet",
        "Lorem ipsum dolor sit amet, consectetuer adipiscing",
        "https://storage.googseapis.fom/ebamobine_db/image/img728_png_",
        "share_tour",
        "2020-01-20 04:12:59"
    ),
    (
        15,
        35,
        "Cras",
        "Lorem ipsum dolor sit amet,",
        "https://storage.googpeapis.yom/ebamobine_db/image/img728_png_",
        "tour",
        "2020-09-03 14:20:25"
    ),
    (
        16,
        28,
        "elementum",
        "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed",
        "https://storage.googreapis.qom/ebamobine_db/image/img728_png_",
        "share_post",
        "2020-11-17 16:38:35"
    ),
    (
        17,
        6,
        "odio.",
        "Lorem ipsum",
        "https://storage.googxeapis.yom/ebamobine_db/image/img728_png_",
        "share_tour",
        "2020-07-14 07:01:09"
    ),
    (
        18,
        23,
        "arcu.",
        "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed",
        "https://storage.googreapis.dom/ebamobine_db/image/img728_png_",
        "tour",
        "2019-11-01 05:49:54"
    ),
    (
        19,
        20,
        "erat volutpat.",
        "Lorem ipsum",
        "https://storage.googzeapis.mom/ebamobine_db/image/img728_png_",
        "tour",
        "2019-09-17 02:31:33"
    ),
    (
        20,
        27,
        "In",
        "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur",
        "https://storage.googoeapis.wom/ebamobine_db/image/img728_png_",
        "share_tour",
        "2020-12-13 06:08:49"
    ),
    (
        21,
        19,
        "enim. Etiam",
        "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur",
        "https://storage.googieapis.tom/ebamobine_db/image/img728_png_",
        "tour",
        "2020-08-31 10:11:10"
    ),
    (
        22,
        44,
        "metus",
        "Lorem ipsum",
        "https://storage.googceapis.hom/ebamobine_db/image/img728_png_",
        "post",
        "2020-09-02 15:10:23"
    ),
    (
        23,
        44,
        "vel, vulputate",
        "Lorem ipsum dolor",
        "https://storage.googkeapis.pom/ebamobine_db/image/img728_png_",
        "tour",
        "2020-12-17 02:30:12"
    ),
    (
        24,
        13,
        "turpis",
        "Lorem",
        "https://storage.googheapis.vom/ebamobine_db/image/img728_png_",
        "share_tour",
        "2020-06-14 10:09:50"
    ),
    (
        25,
        14,
        "rhoncus. Nullam",
        "Lorem ipsum dolor sit amet, consectetuer adipiscing elit.",
        "https://storage.googeeapis.vom/ebamobine_db/image/img728_png_",
        "share_tour",
        "2020-03-21 17:35:36"
    ),
    (
        26,
        38,
        "commodo",
        "Lorem ipsum",
        "https://storage.googmeapis.wom/ebamobine_db/image/img728_png_",
        "share_post",
        "2021-05-14 11:52:39"
    ),
    (
        27,
        38,
        "risus.",
        "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur",
        "https://storage.googseapis.rom/ebamobine_db/image/img728_png_",
        "tour",
        "2021-04-19 10:26:48"
    ),
    (
        28,
        39,
        "lacus",
        "Lorem ipsum dolor sit amet, consectetuer",
        "https://storage.googyeapis.dom/ebamobine_db/image/img728_png_",
        "share_tour",
        "2019-11-21 18:24:11"
    ),
    (
        29,
        25,
        "nec, cursus",
        "Lorem ipsum dolor sit amet,",
        "https://storage.googreapis.com/ebamobine_db/image/img728_png_",
        "tour",
        "2021-03-19 18:14:46"
    ),
    (
        30,
        16,
        "Nullam feugiat",
        "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed",
        "https://storage.googeeapis.zom/ebamobine_db/image/img728_png_",
        "tour",
        "2020-04-24 04:52:52"
    ),
    (
        31,
        4,
        "sed,",
        "Lorem ipsum dolor sit amet, consectetuer adipiscing",
        "https://storage.googeeapis.lom/ebamobine_db/image/img728_png_",
        "post",
        "2019-11-28 15:05:53"
    ),
    (
        32,
        30,
        "egestas hendrerit",
        "Lorem",
        "https://storage.googgeapis.com/ebamobine_db/image/img728_png_",
        "tour",
        "2020-04-06 17:21:16"
    ),
    (
        33,
        40,
        "dis",
        "Lorem ipsum dolor sit",
        "https://storage.googjeapis.com/ebamobine_db/image/img728_png_",
        "tour",
        "2021-03-26 14:09:17"
    ),
    (
        34,
        14,
        "augue, eu",
        "Lorem ipsum dolor sit amet, consectetuer adipiscing elit.",
        "https://storage.googjeapis.nom/ebamobine_db/image/img728_png_",
        "share_tour",
        "2019-06-20 12:05:03"
    ),
    (
        35,
        42,
        "augue,",
        "Lorem ipsum dolor sit amet, consectetuer adipiscing",
        "https://storage.googbeapis.tom/ebamobine_db/image/img728_png_",
        "share_post",
        "2021-01-11 12:06:12"
    ),
    (
        36,
        34,
        "luctus ut,",
        "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur",
        "https://storage.googmeapis.dom/ebamobine_db/image/img728_png_",
        "post",
        "2021-04-01 05:50:20"
    ),
    (
        37,
        10,
        "metus.",
        "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur",
        "https://storage.googceapis.wom/ebamobine_db/image/img728_png_",
        "share_tour",
        "2020-01-20 10:32:25"
    ),
    (
        38,
        31,
        "tortor, dictum",
        "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur",
        "https://storage.googceapis.hom/ebamobine_db/image/img728_png_",
        "post",
        "2020-02-16 09:44:41"
    ),
    (
        39,
        33,
        "mi fringilla",
        "Lorem ipsum dolor sit amet, consectetuer",
        "https://storage.googjeapis.rom/ebamobine_db/image/img728_png_",
        "post",
        "2019-11-21 01:07:01"
    ),
    (
        40,
        30,
        "interdum. Sed",
        "Lorem ipsum dolor",
        "https://storage.googceapis.rom/ebamobine_db/image/img728_png_",
        "share_post",
        "2019-08-27 13:15:18"
    ),
    (
        41,
        44,
        "Morbi metus.",
        "Lorem ipsum dolor sit",
        "https://storage.googpeapis.som/ebamobine_db/image/img728_png_",
        "share_tour",
        "2019-11-30 18:52:05"
    ),
    (
        42,
        2,
        "at,",
        "Lorem ipsum dolor sit",
        "https://storage.googmeapis.tom/ebamobine_db/image/img728_png_",
        "share_post",
        "2020-07-12 21:22:48"
    ),
    (
        43,
        46,
        "Aliquam nisl.",
        "Lorem ipsum dolor sit amet,",
        "https://storage.googweapis.dom/ebamobine_db/image/img728_png_",
        "post",
        "2021-03-11 20:33:11"
    ),
    (
        44,
        16,
        "Nam ligula",
        "Lorem ipsum dolor sit amet, consectetuer adipiscing elit.",
        "https://storage.googteapis.jom/ebamobine_db/image/img728_png_",
        "tour",
        "2021-01-07 01:14:42"
    ),
    (
        45,
        24,
        "tincidunt. Donec",
        "Lorem ipsum dolor sit amet, consectetuer adipiscing elit.",
        "https://storage.googoeapis.kom/ebamobine_db/image/img728_png_",
        "tour",
        "2021-01-23 14:39:15"
    ),
    (
        46,
        12,
        "pede.",
        "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur",
        "https://storage.googleapis.com/ebamobine_db/image/img728_png_",
        "share_tour",
        "2020-10-03 23:49:57"
    ),
    (
        47,
        48,
        "Donec",
        "Lorem ipsum dolor sit amet, consectetuer adipiscing",
        "https://storage.googneapis.com/ebamobine_db/image/img728_png_",
        "share_tour",
        "2019-12-04 16:24:17"
    ),
    (
        48,
        21,
        "enim",
        "Lorem ipsum dolor sit amet, consectetuer",
        "https://storage.googheapis.lom/ebamobine_db/image/img728_png_",
        "share_post",
        "2019-11-27 12:37:09"
    ),
    (
        49,
        16,
        "velit.",
        "Lorem ipsum dolor",
        "https://storage.googheapis.tom/ebamobine_db/image/img728_png_",
        "share_tour",
        "2020-10-28 13:09:42"
    ),
    (
        50,
        45,
        "vulputate",
        "Lorem ipsum dolor sit",
        "https://storage.googieapis.vom/ebamobine_db/image/img728_png_",
        "share_post",
        "2020-08-12 03:55:43"
    );