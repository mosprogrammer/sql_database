-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 10, 2020 at 12:47 PM
-- Server version: 5.7.26
-- PHP Version: 7.4.2
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";
--
-- Database: `eba_db`
--
-- --------------------------------------------------------
--
-- Table structure for table `claps`
--
CREATE TABLE `claps` (
    `clapId` int(11) NOT NULL,
    `userId` int(11) NOT NULL,
    `feedId` int(11) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
--
-- Dumping data for table `claps`
--
INSERT INTO `claps` (`clapId`, `userId`, `feedId`)
VALUES (1, 1, 1),
    (2, 1, 2),
    (3, 1, 3),
    (4, 1, 4),
    (5, 2, 3),
    (6, 2, 5),
    (7, 2, 6),
    (8, 3, 5),
    (9, 3, 6),
    (10, 3, 7),
    (11, 3, 8),
    (12, 4, 9),
    (13, 4, 10),
    (14, 5, 4),
    (15, 5, 3),
    (16, 6, 11),
    (17, 6, 12),
    (18, 6, 13),
    (19, 6, 14),
    (20, 7, 14);
-- --------------------------------------------------------
--
-- Table structure for table `comments`
--
CREATE TABLE `comments` (
    `commentId` int(11) NOT NULL,
    `message` varchar(255) DEFAULT NULL,
    `userId` int(11) NOT NULL,
    `feedId` int(11) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
--
-- Dumping data for table `comments`
--
INSERT INTO `comments` (`commentId`, `message`, `userId`, `feedId`)
VALUES (
        1,
        'id labore ex et quam laborum	Eliseo@gardner.biz	laudantium enim quasi est quidem magnam voluptate ipsam eos',
        1,
        1
    ),
    (
        2,
        'Jayne_Kuhic@sydney.com	est natus enim nihil est dolore omnis voluptatem numquam et omnis occaecati quod ullam at voluptatem error expedita',
        1,
        3
    ),
    (
        3,
        'odio adipisci rerum aut animi	Nikita@garfield.biz	quia molestiae reprehenderit quasi aspernatur aut expedita occaecati aliquam eveniet laudantium omnis quibusdam',
        2,
        5
    ),
    (
        4,
        'alias odio sit	Lew@alysha.tv	non et atque occaecati deserunt quas accusantium unde odit nobis qui',
        2,
        3
    ),
    (
        5,
        'vero eaque aliquid doloribus et culpa	Hayden@althea.biz	harum non quasi et ratione tempore iure ex voluptates',
        3,
        7
    ),
    (
        6,
        'et fugit eligendi deleniti quidem qui sint nihil autem	Presley.Mueller@myrl.com	doloribus at sed quis culpa deserunt consectetur qui praesentium',
        3,
        6
    ),
    (
        7,
        'repellat consequatur praesentium vel minus molestias voluptatum	Dallas@ole.me	maiores sed dolores similique labore et inventore et quasi temporibus esse sunt',
        4,
        9
    ),
    (
        8,
        'et omnis dolorem	Mallory_Kunze@marie.org	ut voluptatem corrupti velit ad voluptatem maiores et nisi velit vero accusamus maiores voluptates quia',
        4,
        7
    ),
    (
        9,
        'provident id voluptas	Meghan_Littel@rene.us	sapiente assumenda molestiae atque adipisci laborum distinctio',
        5,
        12
    ),
    (
        10,
        'eaque et deleniti atque tenetur ut quo ut	Carmen_Keeling@caroline.name	voluptate iusto quis nobis reprehenderit ipsum amet nulla quia quas dolores',
        5,
        11
    ),
    (
        11,
        'fugit labore quia mollitia quas deserunt nostrum sunt	Veronica_Goodwin@timmothy.net	ut dolorum nostrum id quia aut est fuga est inventore vel eligendi explicabo',
        6,
        13
    ),
    (
        12,
        'modi ut eos dolores illum nam dolor	Oswald.Vandervort@leanne.org	expedita maiores dignissimos facilis ipsum est rem est',
        6,
        14
    ),
    (
        13,
        'aut inventore non pariatur sit vitae voluptatem sapiente	Kariane@jadyn.tv	fuga eos qui dolor rerum inventore corporis exercitationem',
        7,
        15
    ),
    (
        14,
        'et officiis id praesentium hic aut ipsa dolorem repudiandae	Nathan@solon.io	vel quae voluptas qui exercitationem voluptatibus unde',
        7,
        14
    ),
    (
        15,
        'debitis magnam hic odit aut ullam nostrum tenetur	Maynard.Hodkiewicz@roberta.com	nihil ut voluptates blanditiis autem odio dicta rerum',
        8,
        15
    ),
    (
        16,
        'perferendis temporibus delectus optio ea eum ratione dolorum	Christine@ayana.info	iste ut laborum aliquid velit facere itaque quo ut soluta',
        8,
        17
    ),
    (
        17,
        'eos est animi quis	Preston_Hudson@blaise.tv	consequatur necessitatibus totam sed sit dolorum recusandae quae odio excepturi voluptatum',
        9,
        17
    ),
    (
        18,
        'aut et tenetur ducimus illum aut nulla ab	Vincenza_Klocko@albertha.name	veritatis voluptates necessitatibus maiores corrupti',
        9,
        18
    ),
    (
        19,
        'sed impedit rerum quia et et inventore unde officiis	Madelynn.Gorczany@darion.biz	doloribus est illo sed minima aperiam ut dignissimos accusantium',
        10,
        11
    ),
    (
        20,
        'molestias expedita iste aliquid voluptates	Mariana_Orn@preston.org	qui harum consequatur fugiat et eligendi perferendis at molestiae commodi ducimus doloremque',
        10,
        12
    );
-- --------------------------------------------------------
--
-- Table structure for table `feeds`
--
CREATE TABLE `feeds` (
    `feedId` int(11) NOT NULL,
    `userId` int(11) NOT NULL,
    `postId` int(11) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
--
-- Dumping data for table `feeds`
--
INSERT INTO `feeds` (`feedId`, `userId`, `postId`)
VALUES (1, 1, 1),
    (2, 1, 2),
    (3, 2, 3),
    (4, 2, 4),
    (5, 3, 5),
    (6, 3, 6),
    (7, 4, 7),
    (8, 4, 8),
    (9, 5, 9),
    (10, 5, 10),
    (11, 6, 11),
    (12, 6, 12),
    (13, 7, 13),
    (14, 7, 14),
    (15, 8, 15),
    (16, 8, 16),
    (17, 9, 17),
    (18, 9, 18),
    (19, 10, 19),
    (20, 10, 20),
    (21, 11, 21),
    (22, 11, 22),
    (23, 12, 23),
    (24, 12, 24),
    (25, 13, 25),
    (26, 13, 26),
    (27, 14, 27),
    (28, 14, 28),
    (29, 15, 29),
    (30, 15, 30);
-- --------------------------------------------------------
--
-- Table structure for table `follows`
--
CREATE TABLE `follows` (
    `followId` int(11) NOT NULL,
    `followerId` int(11) NOT NULL,
    `userId` int(11) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
--
-- Dumping data for table `follows`
--
INSERT INTO `follows` (`followId`, `followerId`, `userId`)
VALUES (1, 2, 1),
    (2, 10, 2),
    (3, 9, 3),
    (4, 8, 4),
    (5, 7, 5),
    (6, 6, 6),
    (7, 5, 7),
    (8, 4, 8),
    (9, 3, 9),
    (10, 1, 10),
    (11, 12, 13),
    (12, 13, 11),
    (13, 14, 15),
    (14, 15, 16),
    (15, 16, 17),
    (16, 17, 18),
    (17, 18, 19),
    (18, 19, 12);
-- --------------------------------------------------------
--
-- Table structure for table `hiddens`
--
CREATE TABLE `hiddens` (
    `hiddenId` int(11) NOT NULL,
    `userId` int(11) NOT NULL,
    `feedId` int(11) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
--
-- Dumping data for table `hiddens`
--
INSERT INTO `hiddens` (`hiddenId`, `userId`, `feedId`)
VALUES (1, 1, 2),
    (2, 1, 4),
    (3, 2, 3),
    (4, 6, 14),
    (5, 7, 14);
-- --------------------------------------------------------
--
-- Table structure for table `posts`
--
CREATE TABLE `posts` (
    `postId` int(11) NOT NULL,
    `message` varchar(255) DEFAULT NULL,
    `userId` int(11) NOT NULL,
    `status` tinyint(1) DEFAULT '0'
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
--
-- Dumping data for table `posts`
--
INSERT INTO `posts` (`postId`, `message`, `userId`, `status`)
VALUES (
        1,
        'quia et suscipit suscipit recusandae consequuntur expedita et cum reprehenderit molestiae ut ut quas totam nostrum rerum est autem sunt rem eveniet architecto',
        1,
        0
    ),
    (
        2,
        'est rerum tempore vitae sequi sint nihil reprehenderit dolor beatae ea dolores neque fugiat blanditiis voluptate porro vel nihil molestiae ut reiciendis qui aperiam non debitis possimus qui neque nisi nulla',
        1,
        0
    ),
    (3, 'iusto', 2, 0),
    (
        4,
        'ullam et saepe reiciendis voluptatem adipisci sit amet autem assumenda provident rerum culpa quis hic commodi nesciunt rem tenetur doloremque ipsam iure quis sunt voluptatem rerum illo velit',
        2,
        0
    ),
    (
        5,
        'ut aspernatur corporis harum nihil quis provident sequi mollitia nobis aliquid molestiae perspiciatis et ea nemo ab reprehenderit accusantium quas voluptate dolores velit et doloremque molestiae',
        3,
        0
    ),
    (
        6,
        'dolore placeat quibusdam ea quo vitae magni quis enim qui quis quo nemo aut saepe quidem repellat excepturi ut quia sunt ut sequi eos ea sed quas',
        3,
        0
    ),
    (
        7,
        'dignissimos aperiam dolorem qui eum facilis quibusdam animi sint suscipit qui sint possimus cum',
        4,
        0
    ),
    (
        8,
        'consectetur animi nesciunt iure dolore enim quia ad veniam autem ut quam aut nobis et est aut quod aut provident voluptas autem voluptas',
        4,
        0
    ),
    (
        9,
        'quo et expedita modi cum officia vel magni doloribus qui repudiandae vero nisi sit quos veniam quod sed accusamus veritatis error',
        5,
        0
    ),
    (
        10,
        'repudiandae veniam quaerat sunt sed alias aut fugiat sit autem sed est voluptatem omnis possimus esse voluptatibus quis est aut tenetur dolor neque',
        5,
        0
    ),
    (
        11,
        'et ea vero quia laudantium autem	delectus reiciendis molestiae occaecati non minima eveniet qui voluptatibus',
        6,
        0
    ),
    (
        12,
        'in quibusdam tempore odit est dolorem	itaque id aut magnam praesentium quia et ea odit et ea voluptas',
        6,
        0
    ),
    (
        13,
        'dolorum ut in voluptas mollitia et saepe quo animi',
        7,
        0
    ),
    (
        14,
        'voluptatem eligendi optio	fuga et accusamus dolorum perferendis illo',
        7,
        0
    ),
    (
        15,
        'eveniet quod temporibus	reprehenderit quos placeat velit minima officia dolores impedit',
        8,
        0
    ),
    (
        16,
        'sint suscipit perspiciatis velit dolorum rerum ipsa laboriosam odio	suscipit nam nisi quo aperiam aut asperiores eos fugit maiores voluptatibus quia voluptatem quis',
        8,
        0
    ),
    (
        17,
        'fugit voluptas sed molestias voluptatem provident	eos voluptas et aut odit natus earum aspernatur',
        9,
        0
    ),
    (
        18,
        'voluptate et itaque vero tempora molestiae	eveniet quo quis laborum totam consequatur non dolor ut et est repudiandae est voluptatem vel debitis et magnam',
        9,
        0
    ),
    (
        19,
        'adipisci placeat illum aut reiciendis qui	illum quis cupiditate provident sit magnam ea sed',
        10,
        0
    ),
    (
        20,
        'doloribus ad provident suscipit at	qui consequuntur ducimus possimus quisquam amet similique',
        10,
        0
    ),
    (
        21,
        'asperiores ea ipsam voluptatibus modi minima quia sint	repellat aliquid praesentium dolorem quo sed totam minus',
        11,
        0
    ),
    (
        22,
        'dolor sint quo a velit explicabo quia nam	eos qui et ipsum ipsam suscipit aut sed omnis non odio expedita earum',
        11,
        0
    ),
    (
        23,
        'maxime id vitae nihil numquam	veritatis unde neque eligendi quae quod architecto quo neque vitae',
        12,
        0
    ),
    (
        24,
        'autem hic labore sunt dolores incidunt	enim et ex nulla omnis voluptas quia qui voluptatem',
        12,
        0
    ),
    (
        25,
        'rem alias distinctio quo quis	ullam consequatur ut omnis quis sit vel consequuntur ipsa',
        13,
        0
    ),
    (
        26,
        'est et quae odit qui non	similique esse doloribus nihil accusamus omnis dolorem fuga consequuntur',
        13,
        0
    ),
    (
        27,
        'quasi id et eos tenetur aut quo autem	eum sed dolores ipsam sint possimus debitis occaecati debitis qui qui et ut placeat enim earum aut',
        14,
        0
    ),
    (
        28,
        'delectus ullam et corporis nulla voluptas sequi	non et quaerat ex quae ad maiores maiores recusandae',
        14,
        0
    ),
    (
        29,
        'iusto eius quod necessitatibus culpa ea	odit magnam ut saepe sed non qui tempora atque nihil',
        15,
        0
    ),
    (
        30,
        'a quo magni similique perferendis	alias dolor cumque impedit blanditiis non eveniet odio maxime blanditiis amet eius quis tempora quia autem rem a provident perspiciatis quia',
        15,
        0
    ),
    (
        31,
        'ullam ut quidem id aut vel consequuntur	debitis eius sed quibusdam non quis consectetur vitae impedit ut qui consequatur',
        16,
        0
    ),
    (
        32,
        'doloremque illum aliquid sunt	deserunt eos nobis asperiores et hic est debitis repellat molestiae optio nihil ratione ut',
        16,
        0
    ),
    (
        33,
        'qui explicabo molestiae dolorem	rerum ut et numquam laborum odit est sit id qui sint in quasi tenetur tempore aperiam et quaerat qui',
        17,
        0
    ),
    (
        34,
        'magnam ut rerum iure	ea velit perferendis earum ut voluptatem voluptate itaque iusto totam pariatur in nemo voluptatem voluptatem autem',
        17,
        0
    ),
    (
        35,
        'id nihil consequatur molestias animi provident	nisi error delectus possimus ut eligendi vitae placeat eos harum cupiditate',
        18,
        0
    ),
    (
        36,
        'fuga nam accusamus voluptas reiciendis itaque	ad mollitia et omnis minus architecto odit voluptas doloremque maxime aut non ipsa qui alias veniam',
        18,
        0
    ),
    (
        37,
        'provident vel ut sit ratione est	debitis et eaque non officia sed nesciunt pariatur vel voluptatem iste vero et ea numquam',
        19,
        0
    ),
    (
        38,
        'explicabo et eos deleniti nostrum ab id repellendus	animi esse sit aut sit nesciunt assumenda eum voluptas quia voluptatibus',
        19,
        0
    ),
    (
        39,
        'eos dolorem iste accusantium est eaque quam	corporis rerum ducimus vel eum accusantium maxime aspernatur a porro possimus iste',
        20,
        0
    ),
    (
        40,
        'enim quo cumque	ut voluptatum aliquid illo tenetur nemo sequi quo facilis ipsum rem optio mollitia quas voluptatem eum voluptas',
        20,
        0
    );
-- --------------------------------------------------------
--
-- Table structure for table `shares`
--
CREATE TABLE `shares` (
    `shareId` int(11) NOT NULL,
    `userId` int(11) NOT NULL,
    `feedId` int(11) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
--
-- Dumping data for table `shares`
--
INSERT INTO `shares` (`shareId`, `userId`, `feedId`)
VALUES (1, 1, 1),
    (2, 1, 2),
    (3, 1, 3),
    (4, 1, 4),
    (5, 2, 3),
    (6, 2, 5),
    (7, 2, 6),
    (8, 3, 5),
    (9, 3, 6),
    (10, 3, 7),
    (11, 3, 8),
    (12, 4, 9),
    (13, 4, 10),
    (14, 5, 4),
    (15, 5, 3),
    (16, 6, 11),
    (17, 6, 12),
    (18, 6, 13),
    (19, 6, 14),
    (20, 7, 14);
-- --------------------------------------------------------
--
-- Table structure for table `users`
--
CREATE TABLE `users` (
    `userId` int(11) NOT NULL,
    `firstname` varchar(20) DEFAULT NULL,
    `lastname` varchar(20) DEFAULT NULL,
    `email` varchar(60) DEFAULT NULL,
    `password` varchar(30) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
--
-- Dumping data for table `users`
--
INSERT INTO `users` (
        `userId`,
        `firstname`,
        `lastname`,
        `email`,
        `password`
    )
VALUES (
        1,
        'George',
        'Bluth',
        'george.bluth@reqres.in',
        'chopper'
    ),
    (
        2,
        'Janet',
        'Weaver',
        'janet.weaver@reqres.in',
        'sick'
    ),
    (
        3,
        'Emma',
        'Wong',
        'emma.wong@reqres.in',
        'samuel'
    ),
    (4, 'Eve', 'Holt', 'eve.holt@reqres.in', 'peepee'),
    (
        5,
        'Charles',
        'Morris',
        'charles.morris@reqres.in',
        'rrrrr'
    ),
    (
        6,
        'Tracey',
        'Ramos',
        'tracey.ramos@reqres.in',
        'lickit'
    ),
    (
        7,
        'Michael',
        'Lawson',
        'michael.lawson@reqres.in',
        'stang'
    ),
    (
        8,
        'Lindsay',
        'Ferguson',
        'lindsay.ferguson@reqres.in',
        'katie1'
    ),
    (
        9,
        'Tobias',
        'Funke',
        'tobias.funke@reqres.in',
        'silver'
    ),
    (
        10,
        'Byron',
        'Fields',
        'byron.fields@reqres.in',
        'kane'
    ),
    (
        11,
        'George',
        'Edwards',
        'george.edwards@reqres.in',
        'adidas'
    ),
    (
        12,
        'Rachel',
        'Howell',
        'rachel.howell@reqres.in',
        'deborah'
    ),
    (
        13,
        'väinö',
        'huotari',
        'väinö.huotari@example.com',
        '4567'
    ),
    (
        14,
        'jeremiah',
        'graham',
        'jeremiah.graham@example.com',
        'black'
    ),
    (
        15,
        'tom',
        'wolff',
        'tom.wolff@example.com',
        'cumshot'
    ),
    (
        16,
        'florian',
        'hahn',
        'florian.hahn@example.com',
        'bullseye'
    ),
    (
        17,
        'mason',
        'abraham',
        'mason.abraham@example.com',
        'summit'
    ),
    (
        18,
        'ernest',
        'williamson',
        'ernest.williamson@example.com',
        'pumper'
    ),
    (
        19,
        'aurélien',
        'fontai',
        'aurélien.fontai@example.com',
        'gateway'
    ),
    (
        20,
        'priteche',
        'fogaça',
        'priteche.fogaça@example.com',
        'mustang'
    );
--
-- Indexes for dumped tables
--
--
-- Indexes for table `claps`
--
ALTER TABLE `claps`
ADD PRIMARY KEY (`clapId`),
    ADD KEY `userId` (`userId`),
    ADD KEY `feedId` (`feedId`);
--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
ADD PRIMARY KEY (`commentId`),
    ADD KEY `userId` (`userId`),
    ADD KEY `feedId` (`feedId`);
--
-- Indexes for table `feeds`
--
ALTER TABLE `feeds`
ADD PRIMARY KEY (`feedId`),
    ADD KEY `userId` (`userId`),
    ADD KEY `postId` (`postId`);
--
-- Indexes for table `follows`
--
ALTER TABLE `follows`
ADD PRIMARY KEY (`followId`),
    ADD KEY `followerId` (`followerId`),
    ADD KEY `userId` (`userId`);
--
-- Indexes for table `hiddens`
--
ALTER TABLE `hiddens`
ADD PRIMARY KEY (`hiddenId`),
    ADD KEY `userId` (`userId`),
    ADD KEY `feedId` (`feedId`);
--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
ADD PRIMARY KEY (`postId`),
    ADD KEY `userId` (`userId`);
--
-- Indexes for table `shares`
--
ALTER TABLE `shares`
ADD PRIMARY KEY (`shareId`),
    ADD KEY `userId` (`userId`),
    ADD KEY `feedId` (`feedId`);
--
-- Indexes for table `users`
--
ALTER TABLE `users`
ADD PRIMARY KEY (`userId`);
--
-- AUTO_INCREMENT for dumped tables
--
--
-- AUTO_INCREMENT for table `claps`
--
ALTER TABLE `claps`
MODIFY `clapId` int(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 21;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
MODIFY `commentId` int(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 21;
--
-- AUTO_INCREMENT for table `feeds`
--
ALTER TABLE `feeds`
MODIFY `feedId` int(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 31;
--
-- AUTO_INCREMENT for table `follows`
--
ALTER TABLE `follows`
MODIFY `followId` int(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 19;
--
-- AUTO_INCREMENT for table `hiddens`
--
ALTER TABLE `hiddens`
MODIFY `hiddenId` int(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 6;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
MODIFY `postId` int(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 41;
--
-- AUTO_INCREMENT for table `shares`
--
ALTER TABLE `shares`
MODIFY `shareId` int(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 21;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 21;
--
-- Constraints for dumped tables
--
--
-- Constraints for table `claps`
--
ALTER TABLE `claps`
ADD CONSTRAINT `claps_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`),
    ADD CONSTRAINT `claps_ibfk_2` FOREIGN KEY (`feedId`) REFERENCES `feeds` (`feedId`);
--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`),
    ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`feedId`) REFERENCES `feeds` (`feedId`);
--
-- Constraints for table `feeds`
--
ALTER TABLE `feeds`
ADD CONSTRAINT `feeds_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`),
    ADD CONSTRAINT `feeds_ibfk_2` FOREIGN KEY (`postId`) REFERENCES `posts` (`postId`);
--
-- Constraints for table `follows`
--
ALTER TABLE `follows`
ADD CONSTRAINT `follows_ibfk_2` FOREIGN KEY (`followerId`) REFERENCES `users` (`userId`),
    ADD CONSTRAINT `follows_ibfk_3` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`);
--
-- Constraints for table `hiddens`
--
ALTER TABLE `hiddens`
ADD CONSTRAINT `hiddens_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`),
    ADD CONSTRAINT `hiddens_ibfk_2` FOREIGN KEY (`feedId`) REFERENCES `feeds` (`feedId`);
--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`);
--
-- Constraints for table `shares`
--
ALTER TABLE `shares`
ADD CONSTRAINT `shares_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`),
    ADD CONSTRAINT `shares_ibfk_2` FOREIGN KEY (`feedId`) REFERENCES `feeds` (`feedId`);