-- ทดสอบ
-- สร้าง DB
CREATE DATABASE eba;

use eba;

-- สร้าง table users
-- กำหนด userId เป็น PRIMARY KEY ไม่ให้มีค่าว่าง null และสร้าง userId อัตโนมัติ AUTO_INCREMENT
CREATE TABLE users (
  userId INTEGER NOT NULL AUTO_INCREMENT,
  firstname VARCHAR(20),
  lastname VARCHAR(20),
  email VARCHAR(60),
  password VARCHAR(30),
  user_avatar VARCHAR(50),
  user_cover VARCHAR(50),
  birthday DATE,
  PRIMARY KEY (userId)
);
-- ลบตาราง
-- DROP TABLE users;
-- DROP TABLE follows;
-- เพิ่ม field birthday
-- ALTER TABLE users
-- ADD birthday DATE;

-- แก้ไข field email
-- ALTER TABLE users
-- MODIFY email VARCHAR(250);

-- สร้าง table follow
-- เก็บค่า follow เมื่อคนอื่นมากด follow เราเก็บค่า userId ลงคอลัม follower เมื่อเราไป follow  คนอื่นเก็บค่า userId ของคนที่เรากด follow ลงตาราง following 
CREATE TABLE follows (
  followId INTEGER NOT NULL AUTO_INCREMENT,
  followingId INTEGER NOT NULL,
  followerId INTEGER NOT NULL,
  PRIMARY KEY (followId),
  FOREIGN KEY (followingId) REFERENCES users(userId),
  FOREIGN KEY (followerId) REFERENCES users(userId)
);

-- สร้าง table post
-- กำหนด postId เป็น PRIMARY KEY และ AUTO_INCREMENT ให้ postId สร้างอัตโนมัติ
-- กำหนด userId เป็น FOREIGN KEY ของ usersId ในตาราง users
CREATE TABLE posts (
  postId INTEGER NOT NULL AUTO_INCREMENT,
  message VARCHAR(255),
  userId INTEGER NOT NULL,
  createAt DATETIME,
  -- status BOOLEEN DEFAULT FALSE,
  PRIMARY KEY (postId),
  FOREIGN KEY (userId) REFERENCES users(userId)
);

-- สร้าง table comment
-- กำหนดค่า commentId เป็น PRIMARY KEY กำหนดไม่ให้ไม่มีค่าว่าง null โดยใช้ AUTO_INCREMENT เพื่อสร้าง id อัตโนมัติ
-- เก็บข้อความที่ user comment โพสต์
-- กำหนด userId เป็น FOREIGN KEY อ้างอิงจากตาราง usersId ในตาราง users
-- กำหนด postId เป็น FOREIGN KEY อ้างอิงจากตาราง postId ในตาราง posts
CREATE TABLE comments (
  commentId INTEGER NOT NULL AUTO_INCREMENT,
  message VARCHAR(255),
  createAt DATETIME,
  userId INTEGER NOT NULL,
  postId INTEGER NOT NULL,
  PRIMARY KEY (commentId),
  FOREIGN KEY (userId) REFERENCES users(userId),
  FOREIGN KEY (postId) REFERENCES posts(postId)
);

-- สร้าง table clap
-- กำหนดให้ clapId เป็น PRIMARY KEY กำหนดให้ค่าในคอลัมไม่มีค่าว่าง null ด้วย AUTO INCREMEMT
-- กำหนด userId เป็น FOREIGN KEY อ้างอิงจากตาราง usersId ในตาราง users
-- กำหนด postId เป็น FOREIGN KEY อ้างอิงจากตาราง postId ในตาราง posts
CREATE TABLE claps (
  clapId INTEGER NOT NULL AUTO_INCREMENT,
  clap_total INTEGER,
  userId INTEGER NOT NULL,
  postId INTEGER NOT NULL,
  PRIMARY KEY (clapId),
  FOREIGN KEY (userId) REFERENCES users(userId),
  FOREIGN KEY (postId) REFERENCES posts(postId)
);

-- สร้าง table share
-- กำหนดให้ shareId เป็น PRIMARY KEY กำหนดให้ค่าในคอลัมไม่มีค่าว่าง null ด้วย AUTO INCREMEMT
-- กำหนด userId เป็น FOREIGN KEY อ้างอิงจากตาราง usersId ในตาราง users
-- กำหนด postId เป็น FOREIGN KEY อ้างอิงจากตาราง postId ในตาราง posts
CREATE TABLE shares (
  shareId INTEGER NOT NULL AUTO_INCREMENT,
  userId INTEGER NOT NULL,
  postId INTEGER NOT NULL,
  PRIMARY KEY (shareId),
  FOREIGN KEY (userId) REFERENCES users(userId),
  FOREIGN KEY (postId) REFERENCES posts(postId)
);

-- สร้าง table feeds
-- กำหนดให้ feedId เป็น PRIMARY KEY กำหนดให้ค่าในคอลัมไม่มีค่าว่าง null ด้วย AUTO INCREMEMT
-- กำหนด postId เป็น FOREIGN KEY อ้างอิงจากตาราง postId ในตาราง posts
CREATE TABLE feeds (
  feedId INTEGER NOT NULL AUTO_INCREMENT,
  postId INTEGER NOT NULL,
  PRIMARY KEY (feedId),
  FOREIGN KEY (postId) REFERENCES posts(postId)
);
-- เพิ่มคอลัมจ followid
ALTER TABLE feeds
ADD COLUMN followId INTEGER NOT NULL;
-- กำหนดให้ column followId ที่เพิ่มใหม่เป็น FOREIGN KEY
ALTER TABLE feeds
ADD FOREIGN KEY (followId) REFERENCES follows(followId);
-- สร้าง table hide
-- กำหนด userId เป็น FOREIGN KEY อ้างอิงจากตาราง usersId ในตาราง users
-- กำหนด postId เป็น FOREIGN KEY อ้างอิงจากตาราง postId ในตาราง posts
CREATE TABLE hide (
  hideId INTEGER NOT NULL AUTO_INCREMENT,
  userId INTEGER NOT NULL,
  feedId INTEGER NOT NULL,
  PRIMARY KEY (hideId),
  FOREIGN KEY (userId) REFERENCES users(userId),
  FOREIGN KEY (feedId) REFERENCES feeds(feedId)
);

INSERT INTO `users` (`userId`, `firstname`, `lastname`, `email`, `password`, `user_avatar`, `user_cover`, `birthday`) VALUES
(1, 'George', 'Bluth', 'george.bluth@reqres.in', 'chopper', 'faces/twitter/calebogden/128.jpg', NULL, NULL),
(2, 'Janet', 'Weaver', 'janet.weaver@reqres.in', 'sick', 'twitter/josephstein/128.jpg', NULL, NULL),
(3, 'Emma', 'Wong', 'emma.wong@reqres.in', 'samuel', 'twitter/olegpogodaev/128.jpg', NULL, NULL),
(4, 'Eve', 'Holt', 'eve.holt@reqres.in', 'peepee', 'twitter/marcoramires/128.jpg', NULL, NULL),
(5, 'Charles', 'Morris', 'charles.morris@reqres.in', 'rrrrr', 'twitter/stephenmoon/128.jpg', NULL, NULL),
(6, 'Tracey', 'Ramos', 'tracey.ramos@reqres.in', 'lickit', 'twitter/bigmancho/128.jpg', NULL, NULL),
(7, 'Michael', 'Lawson', 'michael.lawson@reqres.in', 'stang', 'twitter/follettkyle/128.jpg', NULL, NULL),
(8, 'Lindsay', 'Ferguson', 'lindsay.ferguson@reqres.in', 'katie1', 'araa3185/128.jpg', NULL, NULL),
(9, 'Tobias', 'Funke', 'tobias.funke@reqres.in', 'silver', 'vivekprvr/128.jpg', NULL, NULL),
(10, 'Byron', 'Fields', 'byron.fields@reqres.in', 'kane', 'russoedu/128.jpg', NULL, NULL),
(11, 'George', 'Edwards', 'george.edwards@reqres.in', 'adidas', 'mrmoiree/128.jpg', NULL, NULL),
(12, 'Rachel', 'Howell', 'rachel.howell@reqres.in', 'deborah', 'hebertialmeida/128.jpg', NULL, NULL),
(13, 'väinö', 'huotari', 'väinö.huotari@example.com', '4567', 'algolia/men/raymond.png', NULL, NULL),
(14, 'jeremiah', 'graham', 'jeremiah.graham@example.com', 'black', 'algolia/men/olivier.png', NULL, NULL),
(15, 'tom', 'wolff', 'tom.wolff@example.com', 'cumshot', 'algolia/men/xander.png', NULL, NULL),
(16, 'florian', 'hahn', 'florian.hahn@example.com', 'bullseye', 'algolia/men/julien.png', NULL, NULL),
(17, 'mason', 'abraham', 'mason.abraham@example.com', 'summit', 'algolia/men/honza.png', NULL, NULL),
(18, 'ernest', 'williamson', 'ernest.williamson@example.com', 'pumper', 'algolia/men/tim.png', NULL, NULL),
(19, 'aurélien', 'fontai', 'aurélien.fontai@example.com', 'gateway', 'algolia/men/alexs.png', NULL, NULL),
(20, 'priteche', 'fogaça', 'priteche.fogaça@example.com', 'mustang', 'algolia/men/gabe.png', NULL, NULL),
(21,	'christoffer',	'christiansen',	'christoffer.christiansen@example.com',	'bonjour',	'algolia/men/lucas.png', NULL, NULL),
(22,	'rosemary',	'robinson',	'rosemary.robinson@example.com',	'europe',	'algolia/women/fanette.png', NULL, NULL),
(23,	'melissa',	'fleming',	'melissa.fleming@example.com',	'moomoo',	'algolia/women/pragati.png', NULL, NULL),
(24,	'melany',	'wijngaard',	'melany.wijngaard@example.com',	'eagle',	'women/70.jpg', NULL, NULL),
(25,	'nanna',	'pedersen',	'nanna.pedersen@example.com',	'davids',	'women/68.jpg', NULL, NULL),
(26,	'amelia',	'mercier',	'amelia.mercier@example.com',	'forest',	'women/91.jpg', NULL, NULL),
(27,	'sarah',	'oliver',	'sarah.oliver@example.com',	'boat',	'women/73.jpg', NULL, NULL),
(28,	'özkan',	'tekelio_lu',	'özkan.tekelio_lu@example.com',	'zaq12wsx',	'men/69.jpg', NULL, NULL),
(29,	'angela',	'newman',	'angela.newman@example.com',	'coventry',	'women/82.jpg', NULL, NULL),
(30,	'buse',	'da_da_',	'buse.da_da_@example.com',	'1234567',	'women/14.jpg', NULL, NULL),
(31,	'judith',	'schmitz',	'judith.schmitz@example.com',	'paulie',	'women/49.jpg', NULL, NULL),
(32,	'hector',	'guerrero',	'hector.guerrero@example.com',	'prissy',	'men/11.jpg', NULL, NULL),
(33,	'carsta',	'rocha',	'carsta.rocha@example.com',	'godfather',	'men/4.jpg', NULL, NULL),
(34,	'irene',	'morales',	'irene.morales@example.com',	'soccer12',	'women/87.jpg', NULL, NULL),
(35,	'laly',	'da silva',	'laly.dasilva@example.com',	'field',	'women/9.jpg', NULL, NULL),
(36,	'benjamin',	'patel',	'benjamin.patel@example.com',	'design',	'men/40.jpg', NULL, NULL),
(37,	'noah',	'poulsen',	'noah.poulsen@example.com',	'cartman',	'men/41.jpg', NULL, NULL),
(38,	'jeffrey',	'myers',	'jeffrey.myers@example.com',	'zelda',	'men/83.jpg', NULL, NULL),
(39,	'noélie',	'roux',	'noélie.roux@example.com',	'karate',	'women/51.jpg', NULL, NULL),
(40,	'jake',	'brown',	'jake.brown@example.com',	'282828',	'men/94.jpg', NULL, NULL),
(41,	'abigail',	'hamilton',	'abigail.hamilton@example.com',	'ramones',	'women/46.jpg', NULL, NULL),
(42,	'abssilão',	'rodrigues',	'abssilão.rodrigues@example.com',	'google',	'men/5.jpg', NULL, NULL),
(43,	'sofia',	'sales',	'sofia.sales@example.com',	'emerson',	'women/66.jpg', NULL, NULL),
(44,	'jeremy',	'weiss',	'jeremy.weiss@example.com',	'kaiser',	'men/37.jpg', NULL, NULL),
(45,	'joan',	'vega',	'joan.vega@example.com',	'mone',	'men/74.jpg', NULL, NULL),
(46,	'phillip',	'torres',	'phillip.torres@example.com',	'asia',	'men/64.jpg', NULL, NULL),
(47,	'dora',	'barnes',	'dora.barnes@example.com',	'jupiter',	'women/40.jpg', NULL, NULL),
(48,	'julie',	'cole',	'julie.cole@example.com',	'sally',	'women/42.jpg', NULL, NULL),
(49, 'florence',	'newman',	'florence.newman@example.com',	'100000',	'women/1.jpg', NULL, NULL),
(50,	'noah',	'bonnet',	'noah.bonnet@example.com',	'jerome',	'men/23.jpg', NULL, NULL),
(51,	'eemil',	'neva',	'eemil.neva@example.com',	'gateway',	'men/16.jpg', NULL, NULL),
(52,	'leo',	'honkala',	'leo.honkala@example.com',	'mustang',	'men/0.jpg', NULL, NULL),
(53,	'roberto',	'delgado',	'roberto.delgado@example.com',	'chopper',	'men/10.jpg', NULL, NULL),
(54,	'enora',	'aubert',	'enora.aubert@example.com',	'royal',	'women/2.jpg', NULL, NULL),
(55,	'william',	'david',	'william.david@example.com',	'porsche9',	'men/38.jpg', NULL, NULL),
(56,	'isaltino',	'rocha',	'isaltino.rocha@example.com',	'pinkfloyd',	'men/90.jpg', NULL, NULL),
(57,	'lara',	'metzger',	'lara.metzger@example.com',	'sandy1',	'women/24.jpg', NULL, NULL),
(58,	'naja',	'larsen',	'naja.larsen@example.com',	'gateway',	'women/44.jpg', NULL, NULL),
(59,	'giselle',	'monteiro',	'giselle.monteiro@example.com',	'dirtbike',	'women/7.jpg', NULL, NULL),
(60,	'ben',	'perry',	'ben.perry@example.com',	'shou',	'men/77.jpg', NULL, NULL);


INSERT INTO `posts` (`postId`, `message`, `userId`, `createAt`) VALUES
(1, 'quia et suscipit suscipit recusandae consequuntur expedita et cum reprehenderit molestiae ut ut quas totam nostrum rerum est autem sunt rem eveniet architecto', 1, NULL),
(2, 'est rerum tempore vitae sequi sint nihil reprehenderit dolor beatae ea dolores neque fugiat blanditiis voluptate porro vel nihil molestiae ut reiciendis qui aperiam non debitis possimus qui neque nisi nulla', 1, NULL),
(3, 'iusto', 1, NULL),
(4, 'ullam et saepe reiciendis voluptatem adipisci sit amet autem assumenda provident rerum culpa quis hic commodi nesciunt rem tenetur doloremque ipsam iure quis sunt voluptatem rerum illo velit', 1, NULL),
(6, 'ut aspernatur corporis harum nihil quis provident sequi mollitia nobis aliquid molestiae perspiciatis et ea nemo ab reprehenderit accusantium quas voluptate dolores velit et doloremque molestiae', 1, NULL),
(7, 'dolore placeat quibusdam ea quo vitae magni quis enim qui quis quo nemo aut saepe quidem repellat excepturi ut quia sunt ut sequi eos ea sed quas', 1, NULL),
(8, 'dignissimos aperiam dolorem qui eum facilis quibusdam animi sint suscipit qui sint possimus cum', 1, NULL),
(9, 'consectetur animi nesciunt iure dolore enim quia ad veniam autem ut quam aut nobis et est aut quod aut provident voluptas autem voluptas', 1, NULL),
(10, 'quo et expedita modi cum officia vel magni doloribus qui repudiandae vero nisi sit quos veniam quod sed accusamus veritatis error', 1, NULL),
(5, 'repudiandae veniam quaerat sunt sed alias aut fugiat sit autem sed est voluptatem omnis possimus esse voluptatibus quis est aut tenetur dolor neque', 1, NULL),
(11,	'et ea vero quia laudantium autem	delectus reiciendis molestiae occaecati non minima eveniet qui voluptatibus', 11, NULL),
(12,	'in quibusdam tempore odit est dolorem	itaque id aut magnam praesentium quia et ea odit et ea voluptas', 2, NULL),
(13,	'dolorum ut in voluptas mollitia et saepe quo animi', 2, NULL),
(14,	'voluptatem eligendi optio	fuga et accusamus dolorum perferendis illo', 2, NULL),
(15,	'eveniet quod temporibus	reprehenderit quos placeat velit minima officia dolores impedit', 2, NULL),
(16,	'sint suscipit perspiciatis velit dolorum rerum ipsa laboriosam odio	suscipit nam nisi quo aperiam aut asperiores eos fugit maiores voluptatibus quia voluptatem quis', 2, NULL),
(17,	'fugit voluptas sed molestias voluptatem provident	eos voluptas et aut odit natus earum aspernatur', 2, NULL),
(18,	'voluptate et itaque vero tempora molestiae	eveniet quo quis laborum totam consequatur non dolor ut et est repudiandae est voluptatem vel debitis et magnam', 2, NULL),
(19,	'adipisci placeat illum aut reiciendis qui	illum quis cupiditate provident sit magnam ea sed', 15, NULL),
(20,	'doloribus ad provident suscipit at	qui consequuntur ducimus possimus quisquam amet similique', 2, NULL),
(21,	'asperiores ea ipsam voluptatibus modi minima quia sint	repellat aliquid praesentium dolorem quo sed totam minus', 3, NULL),
(22,	'dolor sint quo a velit explicabo quia nam	eos qui et ipsum ipsam suscipit aut sed omnis non odio expedita earum', 3, NULL),
(23,	'maxime id vitae nihil numquam	veritatis unde neque eligendi quae quod architecto quo neque vitae', 3, NULL),
(24,	'autem hic labore sunt dolores incidunt	enim et ex nulla omnis voluptas quia qui voluptatem', 3 , NULL),
(25,	'rem alias distinctio quo quis	ullam consequatur ut omnis quis sit vel consequuntur ipsa', 4, NULL),
(26,	'est et quae odit qui non	similique esse doloribus nihil accusamus omnis dolorem fuga consequuntur', 4,NULL),
(27,	'quasi id et eos tenetur aut quo autem	eum sed dolores ipsam sint possimus debitis occaecati debitis qui qui et ut placeat enim earum aut', 5, NULL),
(28,	'delectus ullam et corporis nulla voluptas sequi	non et quaerat ex quae ad maiores maiores recusandae', 6, NULL),
(29,	'iusto eius quod necessitatibus culpa ea	odit magnam ut saepe sed non qui tempora atque nihil', 7,NULL),
(30,	'a quo magni similique perferendis	alias dolor cumque impedit blanditiis non eveniet odio maxime blanditiis amet eius quis tempora quia autem rem a provident perspiciatis quia', 7, NULL),
(31,	'ullam ut quidem id aut vel consequuntur	debitis eius sed quibusdam non quis consectetur vitae impedit ut qui consequatur', 8, NULL),
(32,	'doloremque illum aliquid sunt	deserunt eos nobis asperiores et hic est debitis repellat molestiae optio nihil ratione ut', 8, NULL),
(33,	'qui explicabo molestiae dolorem	rerum ut et numquam laborum odit est sit id qui sint in quasi tenetur tempore aperiam et quaerat qui', 9, NULL),
(34,	'magnam ut rerum iure	ea velit perferendis earum ut voluptatem voluptate itaque iusto totam pariatur in nemo voluptatem voluptatem autem', 9, NULL),
(35,	'id nihil consequatur molestias animi provident	nisi error delectus possimus ut eligendi vitae placeat eos harum cupiditate', 9, NULL),
(36,	'fuga nam accusamus voluptas reiciendis itaque	ad mollitia et omnis minus architecto odit voluptas doloremque maxime aut non ipsa qui alias veniam', 4, NULL),
(37,	'provident vel ut sit ratione est	debitis et eaque non officia sed nesciunt pariatur vel voluptatem iste vero et ea numquam', 4, NULL),
(38,	'explicabo et eos deleniti nostrum ab id repellendus	animi esse sit aut sit nesciunt assumenda eum voluptas quia voluptatibus', 20, NULL),
(39,	'eos dolorem iste accusantium est eaque quam	corporis rerum ducimus vel eum accusantium maxime aspernatur a porro possimus iste', 20, NULL),
(40,	'enim quo cumque	ut voluptatum aliquid illo tenetur nemo sequi quo facilis ipsum rem optio mollitia quas voluptatem eum voluptas', 18, NULL),
(66,	'magnam ut rerum iure	ea velit perferendis earum ut voluptatem voluptate itaque iusto totam pariatur in nemo voluptatem voluptatem autem', 15, NULL),
(67,	'id nihil consequatur molestias animi provident	nisi error delectus possimus ut eligendi vitae placeat eos harum cupiditate facilis', 12, NULL),
(68,	'fuga nam accusamus voluptas reiciendis itaque	ad mollitia et omnis minus architecto odit', 10, NULL),
(69,	'provident vel ut sit ratione est	debitis et eaque non officia sed nesciunt pariatur vel voluptatem iste vero et', 12, NULL),
(70,	'explicabo et eos deleniti nostrum ab id repellendus	animi esse sit aut sit nesciunt assumenda eum voluptas quia voluptatibus', 14, NULL),
(71,	'enim quo cumque	ut voluptatum aliquid illo tenetur nemo sequi quo facilis ipsum rem optio mollitia quas', 16, NULL),
(41,	'non est facere	molestias id nostrum excepturi molestiae dolore omnis repellendus quaerat saepe consectetur', 32, NULL),
(42,	'commodi ullam sint et excepturi error explicabo praesentium voluptas	odio fugit voluptatum ducimus earum autem est incidunt voluptatem odit reiciendis', 34, NULL),
(43,	'eligendi iste nostrum consequuntur adipisci praesentium sit beatae perferendis	similique fugit est illum', 36, NULL),
(44,	'optio dolor molestias sit	temporibus est consectetur dolore et libero debitis vel velit laboriosam quia', 37, NULL),
(45,	'ut numquam possimus omnis eius suscipit laudantium iure	est natus reiciendis nihil possimus aut provident ex et dolor', 37, NULL),
(46,	'aut quo modi neque nostrum ducimus	voluptatem quisquam iste voluptatibus natus officiis facilis dolorem quis quas ipsam vel et voluptatum in aliquid', 38, NULL),
(47,	'quibusdam cumque rem aut deserunt	voluptatem assumenda ut qui ut cupiditate aut impedit veniam occaecati nemo illum', 39, NULL),
(48,	'ut voluptatem illum ea doloribus itaque eos	voluptates quo voluptatem facilis iure occaecati vel assumenda rerum', 39, NULL),
(49,	'laborum non sunt aut ut assumenda perspiciatis voluptas	inventore ab sint natus fugit id nulla sequi architecto nihil quaerat eos', 21, NULL),
(50,	'repellendus qui recusandae incidunt voluptates tenetur qui omnis exercitationem	error suscipit maxime adipisci', 22, NULL),
(51,	'soluta aliquam aperiam consequatur illo quis voluptas	sunt dolores aut doloribus dolore', 23, NULL),
(52,	'qui enim et consequuntur quia animi quis voluptate quibusdam	iusto est quibusdam fuga quas quaerat molestias a enim ut sit accusamus', 38, NULL),
(53,	'ut quo aut ducimus alias	minima harum praesentium eum rerum illo dolore quasi exercitationem rerum nam', 40, NULL),
(54,	'sit asperiores ipsam eveniet odio non quia	totam corporis dignissimos vitae', 60, NULL),
(55,	'sit vel voluptatem et non libero	debitis excepturi ea perferendis harum libero optio eos accusamus cum fuga ut sapiente repudiandae', 43, NULL),
(56,	'qui et at rerum necessitatibus	aut est omnis dolores neque rerum quod ea rerum velit pariatur beatae excepturi et provident voluptas corrupti', 47, NULL),
(57,	'sed ab est est	at pariatur consequuntur earum quidem quo est laudantium soluta voluptatem qui ullam et est et cum voluptas voluptatum repellat est', 40, NULL),
(58,	'voluptatum itaque dolores nisi et quasi	veniam voluptatum quae adipisci id', 22, NULL),
(59,	'qui commodi dolor at maiores et quis id accusantium	perspiciatis et quam ea autem temporibus non voluptatibus qui beatae a earum officia nesciunt dolores suscipit', 22, NULL),
(60,	'consequatur placeat omnis quisquam quia reprehenderit fugit veritatis facere	asperiores sunt ab assumenda cumque', 28, NULL),
(61,	'voluptatem doloribus consectetur est ut ducimus	ab nemo optio odio delectus tenetur corporis similique nobis repellendus', 29, NULL),
(62,	'beatae enim quia vel	enim aspernatur illo distinctio quae praesentium beatae alias amet delectus qui voluptate distinctio odit sint', 35, NULL),
(63,	'voluptas blanditiis repellendus animi ducimus error sapiente et suscipit	enim adipisci aspernatur nemo numquam omnis facere dolorem dolor ex quis', 30, NULL),
(64,	'et fugit quas eum in in aperiam quod	id velit blanditiis eum ea voluptatem molestiae sint occaecati est eos perspiciatis incidunt a error provident eaque aut aut qui', 45, NULL),
(65, 'consequatur id enim sunt et et', 33, NULL);

INSERT INTO `comments` (`commentId`, `message`,`createAt`, `userId`, `postId`) VALUES
(1,	'id labore ex et quam laborum	Eliseo@gardner.biz	laudantium enim quasi est quidem magnam voluptate ipsam eos',NULL, 1,1),
(2,	'Jayne_Kuhic@sydney.com	est natus enim nihil est dolore omnis voluptatem numquam et omnis occaecati quod ullam at voluptatem error expedita',NULL, 1,2),
(3,	'odio adipisci rerum aut animi	Nikita@garfield.biz	quia molestiae reprehenderit quasi aspernatur aut expedita occaecati aliquam eveniet laudantium omnis quibusdam',NULL, 1,5),
(4,	'alias odio sit	Lew@alysha.tv	non et atque occaecati deserunt quas accusantium unde odit nobis qui',NULL, 1,10),
(5,	'vero eaque aliquid doloribus et culpa	Hayden@althea.biz	harum non quasi et ratione tempore iure ex voluptates',NULL, 1,12),
(6,'et fugit eligendi deleniti quidem qui sint nihil autem	Presley.Mueller@myrl.com	doloribus at sed quis culpa deserunt consectetur qui praesentium',NULL, 1,23),
(7,	'repellat consequatur praesentium vel minus molestias voluptatum	Dallas@ole.me	maiores sed dolores similique labore et inventore et quasi temporibus esse sunt', NULL, 2,1),
(8,	'et omnis dolorem	Mallory_Kunze@marie.org	ut voluptatem corrupti velit ad voluptatem maiores et nisi velit vero accusamus maiores voluptates quia',NULL, 2,20),
(9,	'provident id voluptas	Meghan_Littel@rene.us	sapiente assumenda molestiae atque adipisci laborum distinctio',NULL, 2,3),
(10,	'eaque et deleniti atque tenetur ut quo ut	Carmen_Keeling@caroline.name	voluptate iusto quis nobis reprehenderit ipsum amet nulla quia quas dolores',NULL, 2,5),
(11,	'fugit labore quia mollitia quas deserunt nostrum sunt	Veronica_Goodwin@timmothy.net	ut dolorum nostrum id quia aut est fuga est inventore vel eligendi explicabo',NULL, 3,6),
(12,	'modi ut eos dolores illum nam dolor	Oswald.Vandervort@leanne.org	expedita maiores dignissimos facilis ipsum est rem est',NULL, 3,7),
(13,	'aut inventore non pariatur sit vitae voluptatem sapiente	Kariane@jadyn.tv	fuga eos qui dolor rerum inventore corporis exercitationem',NULL, 3,4),
(14,	'et officiis id praesentium hic aut ipsa dolorem repudiandae	Nathan@solon.io	vel quae voluptas qui exercitationem voluptatibus unde',NULL, 3,3),
(15,	'debitis magnam hic odit aut ullam nostrum tenetur	Maynard.Hodkiewicz@roberta.com	nihil ut voluptates blanditiis autem odio dicta rerum',NULL, 3,8),
(16,	'perferendis temporibus delectus optio ea eum ratione dolorum	Christine@ayana.info	iste ut laborum aliquid velit facere itaque quo ut soluta',NULL, 4,10),
(17,	'eos est animi quis	Preston_Hudson@blaise.tv	consequatur necessitatibus totam sed sit dolorum recusandae quae odio excepturi voluptatum',NULL, 4,15),
(18,	'aut et tenetur ducimus illum aut nulla ab	Vincenza_Klocko@albertha.name	veritatis voluptates necessitatibus maiores corrupti',NULL, 4,8),
(19,	'sed impedit rerum quia et et inventore unde officiis	Madelynn.Gorczany@darion.biz	doloribus est illo sed minima aperiam ut dignissimos accusantium',NULL, 4,15),
(20,	'molestias expedita iste aliquid voluptates	Mariana_Orn@preston.org	qui harum consequatur fugiat et eligendi perferendis at molestiae commodi ducimus doloremque',NULL, 4,25),
(21,	'aliquid rerum mollitia qui a consectetur eum sed	Noemie@marques.me	deleniti aut sed molestias explicabo commodi odio ratione nesciunt voluptate doloremque',NULL, 5,10),
(22,	'porro repellendus aut tempore quis hic	Khalil@emile.co.uk	qui ipsa animi nostrum praesentium voluptatibus odit qui non impedit cum qui nostrum aliquid fuga',NULL, 5,1),
(23,	'quis tempora quidem nihil iste	Sophia@arianna.co.uk	voluptates provident repellendus iusto perspiciatis ex fugiat ut ut dolor nam aliquid et expedita voluptate',NULL, 5,5),
(24,	'in tempore eos beatae est	Jeffery@juwan.us	repudiandae repellat quia sequi est dolore explicabo nihil et et sit et et praesentium iste atque asperiores tenetur',NULL, 5,22),
(25,	'autem ab ea sit alias hic provident sit	Isaias_Kuhic@jarrett.net	sunt aut quae laboriosam sit ut impedit adipisci harum laborum totam deleniti voluptas',NULL, 5,23),
(26,	'in deleniti sunt provident soluta ratione veniam quam praesentium	Russel.Parker@kameron.io	incidunt sapiente eaque dolor eos ad est molestias quas sit et nihil',NULL, 6,20),
(27,	'doloribus quibusdam molestiae amet illum	Francesco.Gleason@nella.us	nisi vel quas ut laborum ratione rerum magni eum unde et voluptatem saepe voluptas',NULL, 6,15),
(28,	'quo voluptates voluptas nisi veritatis dignissimos dolores ut officiis	Ronny@rosina.org	voluptatem repellendus quo alias at laudantium',NULL, 6,17),
(29,	'eum distinctio amet dolor	Jennings_Pouros@erica.biz	tempora voluptatem est magnam distinctio autem est dolorem et ipsa molestiae odit rerum',NULL, 6,18),
(30,	'quasi nulla ducimus facilis non voluptas aut	Lurline@marvin.biz	consequuntur quia voluptate assumenda et autem voluptatem reiciendis ipsum animi est',NULL, 6,60),
(31,	'ex velit ut cum eius odio ad placeat	Buford@shaylee.biz	quia incidunt ut aliquid est ut rerum deleniti iure est ipsum quia ea sint et voluptatem quaerat',NULL, 7,22),
(32,	'dolorem architecto ut pariatur quae qui suscipit	Maria@laurel.name	nihil ea itaque libero illo officiis quo quo dicta inventore consequatur',NULL, 7,21),
(33,	'voluptatum totam vel voluptate omnis	Jaeden.Towne@arlene.tv	fugit',NULL, 7,35),
(34,	'omnis nemo sunt ab autem	Ethelyn.Schneider@emelia.co.uk	omnis temporibus quasi',NULL, 7,32),
(35,	'repellendus sapiente omnis praesentium aliquam ipsum id molestiae omnis	Georgianna@florence.io	dolor mollitia quidem facere et vel',NULL, 7,35),
(36,	'sit et quis	Raheem_Heaney@gretchen.biz	aut vero est dolor non aut excepturi dignissimos illo nisi aut quas aut magni quia nostrum',NULL, 8,32),
(37,	'beatae veniam nemo rerum voluptate quam aspernatur	Jacky@victoria.net	qui rem amet aut cumque maiores earum ut quia',NULL, 8,29),
(38,	'maiores dolores expedita	Piper@linwood.us	unde voluptatem qui dicta vel ad aut eos error consequatur voluptatem',NULL, 8,27),
(39,	'necessitatibus ratione aut ut delectus quae ut	Gaylord@russell.net	atque consequatur dolorem sunt adipisci autem et voluptatibus et quae',NULL, 8,26),
(40,	'non minima omnis deleniti pariatur facere quibusdam at	Clare.Aufderhar@nicole.ca	quod minus alias quos perferendis labore molestias quae',NULL, 8,30),
(41,	'voluptas deleniti ut	Lucio@gladys.tv	facere repudiandae vitae ea aut sed quo ut et facere nihil ut voluptates',NULL, 9,45),
(42,	'nam qui et	Shemar@ewell.name	aut culpa quaerat veritatis eos debitis aut repellat eius explicabo et officiis quo sint',NULL, 9,40),
(43,	'molestias sint est voluptatem modi	Jackeline@eva.tv	voluptatem ut possimus laborum',NULL, 9,39),
(44,	'hic molestiae et fuga ea maxime quod	Marianna_Wilkinson@rupert.io',NULL, 9,55),
(45,	'autem illo facilis	Marcia@name.biz	ipsum odio harum voluptatem',NULL, 9,60),
(46,	'dignissimos et deleniti voluptate et quod	Jeremy.Harann@waino.me',NULL, 10,46),
(47,	'rerum commodi est non dolor nesciunt ut	Pearlie.Kling@sandy.com	occaecati laudantium ratione non cumque earum quod non enim soluta nisi velit similique',NULL, 10,43),
(48,	'consequatur animi dolorem saepe repellendus ut quo aut tenetur	Manuela_Stehr@chelsie.tv	illum et alias quidem magni voluptatum ab soluta ea qui saepe corrupti',NULL, 10,50),
(49,	'rerum placeat quae minus iusto eligendi Camryn.Weimann@doris.io	id est iure occaecati quam similique enim ab repudiandae non illum expedita quam excepturi',NULL, 10,55),
(50,	'dolorum soluta quidem ex quae occaecati dicta aut doloribus Kiana_Predovic@yasmin.io',NULL, 10,52);


INSERT INTO `follows`(`followId`, `followingId`, `followerId`) VALUES (1,1,2), (2,1,3), (3,1,4), (4,1,5), (5,1,6), (6,2,1), (7,2,3), (8,2,4), (9,2,5), (10,3,1), (11,3,2), (12,3,4), (13,3,5), (14,4,1), (15,4,2), (16,4,3), (17,4,5), (18,5,1), (19,5,2), (20,5,3), (21,5,4), (22,6,2), (23,6,3), (24,6,5), (25,6,4), (26,7,2), (27,7,3), (28,8,6), (29,8,5), (30,9,1), (31,9,8), (32,10,2), (33,10,5), (34,11,1), (35,10,2), (36,15,20), (37,20,2), (38,29,10), (39,29,3), (40,23,3), (41,25,21), (42,22,2), (43,22,3), (44,25,7), (45,50,30), (46,49,33), (47,37,36), (48,32,30), (49,39,32), (50,48,3);

INSERT INTO `claps`(`clapId`, `clap_total`, `userId`, `postId`) VALUES 
(1,1, 1,2), (2,1, 1,3), (3,NULL, 1,4), (4,NULL, 1,5), (5,NULL, 1,6), (6,NULL, 2,1), (7,NULL, 2,3), (8,NULL, 2,4), (9,NULL, 2,5), (10,NULL, 3,1), (11,NULL, 3,2), (12,NULL, 3,4), (13,NULL, 3,5), (14,NULL, 4,1), (15,NULL, 4,2), (16,NULL, 4,3), (17,NULL, 4,5), (18,NULL, 5,1), (19,NULL, 5,2), (20,NULL, 5,3);

INSERT INTO `hide`(`hideId`, `userId`, `feedId`) VALUES (1,1,6), (2,1,5);

INSERT INTO `shares`(`shareId`, `userId`, `postId`) VALUES (1,1,12), (2,1,10);

INSERT INTO `feeds`(`feedId`, `postId`, `followId`) VALUES (1,1, 1), (2,1,2), (3,1,3), (4,1,4), (5,2,1), (6,2,2), (7, 2, 3), (8,2,4),(9,2,10),(10,3,1);