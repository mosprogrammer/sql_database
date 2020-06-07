-- Use ebamobile_db Collection
USE ebamobile_db;
-- Create Table and Show all Column : 'users'
CREATE TABLE users (
    user_id integer NOT NULL UNIQUE AUTO_INCREMENT,
    firstname varchar(15) NOT NULL,
    lastname varchar(15) NOT NULL,
    profileurl varchar(255),
    created_date datetime,
    PRIMARY KEY (user_id)
);
Show Columns
from users;
-- Insert 50 users row
INSERT INTO `users` (
        `user_id`,
        `firstname`,
        `lastname`,
        `profileurl`,
        `created_date`
    )
VALUES (
        1,
        "Kane",
        "Ji",
        "https://storage.googpeapis.gom/ebamobize_db/img778_png_",
        "2020-04-15 18:39:46"
    ),
    (
        2,
        "Dora",
        "Chen",
        "https://storage.googmeapis.zom/ebamobice_db/img324_png_",
        "2020-10-23 10:36:08"
    ),
    (
        3,
        "Mannix",
        "Shelton",
        "https://storage.googgeapis.jom/ebamobide_db/img547_png_",
        "2020-05-03 04:23:50"
    ),
    (
        4,
        "Clayton",
        "Booker",
        "https://storage.googceapis.fom/ebamobise_db/img565_png_",
        "2019-06-15 22:02:22"
    ),
    (
        5,
        "Stewart",
        "Pierce",
        "https://storage.googqeapis.xom/ebamobive_db/img286_png_",
        "2020-07-10 22:53:18"
    ),
    (
        6,
        "Callie",
        "Rios",
        "https://storage.googheapis.kom/ebamobise_db/img464_png_",
        "2021-05-19 00:28:21"
    ),
    (
        7,
        "Martha",
        "Beck",
        "https://storage.googaeapis.yom/ebamobile_db/img485_png_",
        "2019-08-03 21:43:17"
    ),
    (
        8,
        "Laurel",
        "Charles",
        "https://storage.googseapis.lom/ebamobike_db/img646_png_",
        "2019-11-21 19:14:03"
    ),
    (
        9,
        "Alea",
        "Foster",
        "https://storage.googieapis.mom/ebamobipe_db/img591_png_",
        "2019-11-03 20:29:55"
    ),
    (
        10,
        "Haviva",
        "Alvarado",
        "https://storage.googpeapis.fom/ebamobime_db/img573_png_",
        "2020-06-18 00:07:26"
    ),
    (
        11,
        "Olga",
        "Valenzuela",
        "https://storage.googneapis.jom/ebamobice_db/img594_png_",
        "2020-02-11 18:51:16"
    ),
    (
        12,
        "Hedley",
        "Benjamin",
        "https://storage.googeeapis.nom/ebamobiwe_db/img949_png_",
        "2020-10-06 09:58:58"
    ),
    (
        13,
        "Hector",
        "Schmidt",
        "https://storage.googjeapis.jom/ebamobiae_db/img656_png_",
        "2019-08-22 15:31:08"
    ),
    (
        14,
        "Hoyt",
        "Andrews",
        "https://storage.googseapis.wom/ebamobihe_db/img774_png_",
        "2020-10-27 13:39:18"
    ),
    (
        15,
        "Karly",
        "Cortez",
        "https://storage.googzeapis.rom/ebamobiwe_db/img267_png_",
        "2020-10-13 18:27:33"
    ),
    (
        16,
        "Thaddeus",
        "Bernard",
        "https://storage.googieapis.zom/ebamobiie_db/img281_png_",
        "2019-08-09 13:21:13"
    ),
    (
        17,
        "Cole",
        "Aguilar",
        "https://storage.googeeapis.lom/ebamobiue_db/img537_png_",
        "2019-08-09 16:12:46"
    ),
    (
        18,
        "Arsenio",
        "Drake",
        "https://storage.googfeapis.jom/ebamobiae_db/img413_png_",
        "2021-05-18 04:49:35"
    ),
    (
        19,
        "Beau",
        "Marks",
        "https://storage.googleapis.som/ebamobiae_db/img699_png_",
        "2021-03-21 07:21:25"
    ),
    (
        20,
        "Tyrone",
        "Monroe",
        "https://storage.googqeapis.zom/ebamobioe_db/img124_png_",
        "2019-09-11 12:10:31"
    ),
    (
        21,
        "Adele",
        "Solomon",
        "https://storage.googjeapis.jom/ebamobibe_db/img987_png_",
        "2020-08-28 10:01:10"
    ),
    (
        22,
        "Brielle",
        "Wise",
        "https://storage.googieapis.bom/ebamobire_db/img792_png_",
        "2019-12-25 19:52:53"
    ),
    (
        23,
        "Minerva",
        "Delaney",
        "https://storage.googteapis.som/ebamobire_db/img934_png_",
        "2021-05-15 22:56:21"
    ),
    (
        24,
        "Jameson",
        "Waters",
        "https://storage.googxeapis.tom/ebamobike_db/img613_png_",
        "2020-01-08 11:07:47"
    ),
    (
        25,
        "Odysseus",
        "Merrill",
        "https://storage.googpeapis.pom/ebamobice_db/img957_png_",
        "2019-10-14 19:44:16"
    ),
    (
        26,
        "September",
        "Conway",
        "https://storage.googreapis.dom/ebamobise_db/img223_png_",
        "2021-04-30 18:48:19"
    ),
    (
        27,
        "Hayley",
        "Delacruz",
        "https://storage.googmeapis.dom/ebamobife_db/img268_png_",
        "2019-12-01 01:12:19"
    ),
    (
        28,
        "Simon",
        "Le",
        "https://storage.googceapis.dom/ebamobive_db/img571_png_",
        "2019-09-06 04:20:53"
    ),
    (
        29,
        "Jennifer",
        "Robles",
        "https://storage.googbeapis.mom/ebamobiie_db/img658_png_",
        "2020-02-12 06:46:12"
    ),
    (
        30,
        "Blaze",
        "Vaughn",
        "https://storage.googqeapis.tom/ebamobiue_db/img783_png_",
        "2020-09-05 11:05:35"
    ),
    (
        31,
        "Aspen",
        "Haley",
        "https://storage.googheapis.jom/ebamobiwe_db/img844_png_",
        "2020-07-07 20:36:01"
    ),
    (
        32,
        "Thaddeus",
        "Ruiz",
        "https://storage.googceapis.som/ebamobine_db/img438_png_",
        "2021-02-17 05:18:19"
    ),
    (
        33,
        "Karly",
        "Willis",
        "https://storage.googqeapis.com/ebamobice_db/img794_png_",
        "2020-10-04 01:11:25"
    ),
    (
        34,
        "Sybil",
        "Hopper",
        "https://storage.googueapis.nom/ebamobise_db/img836_png_",
        "2019-08-15 04:23:06"
    ),
    (
        35,
        "Ori",
        "Walton",
        "https://storage.googqeapis.tom/ebamobiwe_db/img478_png_",
        "2020-08-03 02:38:41"
    ),
    (
        36,
        "Astra",
        "Smith",
        "https://storage.googgeapis.jom/ebamobise_db/img595_png_",
        "2020-08-08 08:55:47"
    ),
    (
        37,
        "Adele",
        "Horne",
        "https://storage.googleapis.qom/ebamobide_db/img626_png_",
        "2020-09-19 11:21:37"
    ),
    (
        38,
        "Lilah",
        "Delacruz",
        "https://storage.googleapis.vom/ebamobike_db/img656_png_",
        "2019-11-21 22:16:30"
    ),
    (
        39,
        "Lester",
        "Holloway",
        "https://storage.googbeapis.xom/ebamobike_db/img922_png_",
        "2021-02-07 01:26:04"
    ),
    (
        40,
        "Grant",
        "Fry",
        "https://storage.googieapis.yom/ebamobine_db/img576_png_",
        "2019-12-26 14:45:18"
    ),
    (
        41,
        "Sonya",
        "Huber",
        "https://storage.googueapis.wom/ebamobioe_db/img846_png_",
        "2021-01-23 10:00:54"
    ),
    (
        42,
        "Len",
        "Deleon",
        "https://storage.googyeapis.zom/ebamobise_db/img119_png_",
        "2019-09-01 13:27:45"
    ),
    (
        43,
        "Stone",
        "Alston",
        "https://storage.googweapis.gom/ebamobibe_db/img366_png_",
        "2020-01-27 17:42:04"
    ),
    (
        44,
        "Lucas",
        "Kent",
        "https://storage.googheapis.bom/ebamobihe_db/img619_png_",
        "2020-04-17 19:36:57"
    ),
    (
        45,
        "Clayton",
        "Meyer",
        "https://storage.googveapis.bom/ebamobiee_db/img689_png_",
        "2020-09-07 18:50:42"
    ),
    (
        46,
        "Nigel",
        "Hayes",
        "https://storage.googoeapis.yom/ebamobike_db/img317_png_",
        "2020-03-17 01:09:22"
    ),
    (
        47,
        "Mercedes",
        "Mcfarland",
        "https://storage.googyeapis.tom/ebamobiie_db/img171_png_",
        "2019-08-01 21:01:13"
    ),
    (
        48,
        "Mariko",
        "Hancock",
        "https://storage.googxeapis.tom/ebamobife_db/img598_png_",
        "2020-04-23 17:41:42"
    ),
    (
        49,
        "Diana",
        "Gay",
        "https://storage.googoeapis.nom/ebamobike_db/img247_png_",
        "2020-03-23 20:26:27"
    ),
    (
        50,
        "Barbara",
        "Avila",
        "https://storage.googdeapis.vom/ebamobine_db/img728_png_",
        "2020-03-13 15:38:33"
    );