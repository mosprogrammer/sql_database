-- CREATE DATABASE eba_test;

use eba_test;

-- CREATE TABLE users (
--   userId INTEGER NOT NULL AUTO_INCREMENT,
--   firstname VARCHAR(20),
--   lastname VARCHAR(20),
--   email VARCHAR(60),
--   password VARCHAR(30),
--   PRIMARY KEY (userId)
-- );

-- INSERT INTO `users`(`userId`, `firstname`, `lastname`, `email`, `password`) VALUES
-- (NULL, 'George', 'Bluth', 'george.bluth@reqres.in', 'chopper'),
-- (NULL, 'Janet', 'Weaver', 'janet.weaver@reqres.in', 'sick'),
-- (NULL, 'Emma', 'Wong', 'emma.wong@reqres.in', 'samuel'),
-- (NULL, 'Eve', 'Holt', 'eve.holt@reqres.in', 'peepee'),
-- (NULL, 'Charles', 'Morris', 'charles.morris@reqres.in', 'rrrrr'),
-- (NULL, 'Tracey', 'Ramos', 'tracey.ramos@reqres.in', 'lickit'),
-- (NULL, 'Michael', 'Lawson', 'michael.lawson@reqres.in', 'stang'),
-- (NULL, 'Lindsay', 'Ferguson', 'lindsay.ferguson@reqres.in', 'katie1'),
-- (NULL, 'Tobias', 'Funke', 'tobias.funke@reqres.in', 'silver'),
-- (NULL, 'Byron', 'Fields', 'byron.fields@reqres.in', 'kane'),
-- (NULL, 'George', 'Edwards', 'george.edwards@reqres.in', 'adidas'),
-- (NULL, 'Rachel', 'Howell', 'rachel.howell@reqres.in', 'deborah'),
-- (NULL, 'väinö', 'huotari', 'väinö.huotari@example.com', '4567'),
-- (NULL, 'jeremiah', 'graham', 'jeremiah.graham@example.com', 'black'),
-- (NULL, 'tom', 'wolff', 'tom.wolff@example.com', 'cumshot'),
-- (NULL, 'florian', 'hahn', 'florian.hahn@example.com', 'bullseye'),
-- (NULL, 'mason', 'abraham', 'mason.abraham@example.com', 'summit'),
-- (NULL, 'ernest', 'williamson', 'ernest.williamson@example.com', 'pumper'),
-- (NULL, 'aurélien', 'fontai', 'aurélien.fontai@example.com', 'gateway'),
-- (NULL, 'priteche', 'fogaça', 'priteche.fogaça@example.com', 'mustang');

-- CREATE TABLE posts (
--   postId INTEGER NOT NULL AUTO_INCREMENT,
--   message VARCHAR(255),
--   userId INTEGER NOT NULL,
--   PRIMARY KEY (postId),
--   FOREIGN KEY (userId) REFERENCES users(userId)
-- );

-- INSERT INTO `posts` (`postId`, `message`, `userId`) VALUES
-- (NULL, 'quia et suscipit suscipit recusandae consequuntur expedita et cum reprehenderit molestiae ut ut quas totam nostrum rerum est autem sunt rem eveniet architecto', 1),
-- (NULL, 'est rerum tempore vitae sequi sint nihil reprehenderit dolor beatae ea dolores neque fugiat blanditiis voluptate porro vel nihil molestiae ut reiciendis qui aperiam non debitis possimus qui neque nisi nulla', 1),
-- (NULL, 'iusto', 2),
-- (NULL, 'ullam et saepe reiciendis voluptatem adipisci sit amet autem assumenda provident rerum culpa quis hic commodi nesciunt rem tenetur doloremque ipsam iure quis sunt voluptatem rerum illo velit', 2),
-- (NULL, 'ut aspernatur corporis harum nihil quis provident sequi mollitia nobis aliquid molestiae perspiciatis et ea nemo ab reprehenderit accusantium quas voluptate dolores velit et doloremque molestiae', 3),
-- (NULL, 'dolore placeat quibusdam ea quo vitae magni quis enim qui quis quo nemo aut saepe quidem repellat excepturi ut quia sunt ut sequi eos ea sed quas', 3),
-- (NULL, 'dignissimos aperiam dolorem qui eum facilis quibusdam animi sint suscipit qui sint possimus cum', 4),
-- (NULL, 'consectetur animi nesciunt iure dolore enim quia ad veniam autem ut quam aut nobis et est aut quod aut provident voluptas autem voluptas',4),
-- (NULL, 'quo et expedita modi cum officia vel magni doloribus qui repudiandae vero nisi sit quos veniam quod sed accusamus veritatis error', 5),
-- (NULL, 'repudiandae veniam quaerat sunt sed alias aut fugiat sit autem sed est voluptatem omnis possimus esse voluptatibus quis est aut tenetur dolor neque', 5),
-- (NULL,	'et ea vero quia laudantium autem	delectus reiciendis molestiae occaecati non minima eveniet qui voluptatibus', 6),
-- (NULL,	'in quibusdam tempore odit est dolorem	itaque id aut magnam praesentium quia et ea odit et ea voluptas', 6),
-- (NULL,	'dolorum ut in voluptas mollitia et saepe quo animi', 7),
-- (NULL,	'voluptatem eligendi optio	fuga et accusamus dolorum perferendis illo', 7),
-- (NULL,	'eveniet quod temporibus	reprehenderit quos placeat velit minima officia dolores impedit', 8),
-- (NULL,	'sint suscipit perspiciatis velit dolorum rerum ipsa laboriosam odio	suscipit nam nisi quo aperiam aut asperiores eos fugit maiores voluptatibus quia voluptatem quis', 8),
-- (NULL,	'fugit voluptas sed molestias voluptatem provident	eos voluptas et aut odit natus earum aspernatur', 9),
-- (NULL,	'voluptate et itaque vero tempora molestiae	eveniet quo quis laborum totam consequatur non dolor ut et est repudiandae est voluptatem vel debitis et magnam', 9),
-- (NULL,	'adipisci placeat illum aut reiciendis qui	illum quis cupiditate provident sit magnam ea sed', 10),
-- (NULL,	'doloribus ad provident suscipit at	qui consequuntur ducimus possimus quisquam amet similique', 10),
-- (NULL,	'asperiores ea ipsam voluptatibus modi minima quia sint	repellat aliquid praesentium dolorem quo sed totam minus', 11),
-- (NULL,	'dolor sint quo a velit explicabo quia nam	eos qui et ipsum ipsam suscipit aut sed omnis non odio expedita earum', 11),
-- (NULL,	'maxime id vitae nihil numquam	veritatis unde neque eligendi quae quod architecto quo neque vitae', 12),
-- (NULL,	'autem hic labore sunt dolores incidunt	enim et ex nulla omnis voluptas quia qui voluptatem', 12 ),
-- (NULL,	'rem alias distinctio quo quis	ullam consequatur ut omnis quis sit vel consequuntur ipsa', 13),
-- (NULL,	'est et quae odit qui non	similique esse doloribus nihil accusamus omnis dolorem fuga consequuntur', 13),
-- (NULL,	'quasi id et eos tenetur aut quo autem	eum sed dolores ipsam sint possimus debitis occaecati debitis qui qui et ut placeat enim earum aut', 14),
-- (NULL,	'delectus ullam et corporis nulla voluptas sequi	non et quaerat ex quae ad maiores maiores recusandae', 14),
-- (NULL,	'iusto eius quod necessitatibus culpa ea	odit magnam ut saepe sed non qui tempora atque nihil', 15),
-- (NULL,	'a quo magni similique perferendis	alias dolor cumque impedit blanditiis non eveniet odio maxime blanditiis amet eius quis tempora quia autem rem a provident perspiciatis quia', 15),
-- (NULL,	'ullam ut quidem id aut vel consequuntur	debitis eius sed quibusdam non quis consectetur vitae impedit ut qui consequatur', 16),
-- (NULL,	'doloremque illum aliquid sunt	deserunt eos nobis asperiores et hic est debitis repellat molestiae optio nihil ratione ut', 16),
-- (NULL,	'qui explicabo molestiae dolorem	rerum ut et numquam laborum odit est sit id qui sint in quasi tenetur tempore aperiam et quaerat qui', 17),
-- (NULL,	'magnam ut rerum iure	ea velit perferendis earum ut voluptatem voluptate itaque iusto totam pariatur in nemo voluptatem voluptatem autem', 17),
-- (NULL,	'id nihil consequatur molestias animi provident	nisi error delectus possimus ut eligendi vitae placeat eos harum cupiditate', 18),
-- (NULL,	'fuga nam accusamus voluptas reiciendis itaque	ad mollitia et omnis minus architecto odit voluptas doloremque maxime aut non ipsa qui alias veniam', 18),
-- (NULL,	'provident vel ut sit ratione est	debitis et eaque non officia sed nesciunt pariatur vel voluptatem iste vero et ea numquam', 19),
-- (NULL,	'explicabo et eos deleniti nostrum ab id repellendus	animi esse sit aut sit nesciunt assumenda eum voluptas quia voluptatibus', 19),
-- (NULL,	'eos dolorem iste accusantium est eaque quam	corporis rerum ducimus vel eum accusantium maxime aspernatur a porro possimus iste', 20),
-- (NULL,	'enim quo cumque	ut voluptatum aliquid illo tenetur nemo sequi quo facilis ipsum rem optio mollitia quas voluptatem eum voluptas', 20);

-- DROP TABLE follows;

-- CREATE TABLE follows (
--   followId INTEGER NOT NULL AUTO_INCREMENT,
--   followingId INTEGER NOT NULL,
--   followerId INTEGER NOT NULL,
--   userId INTEGER NOT NULL,
--   PRIMARY KEY (followId),
--   FOREIGN KEY (followingId) REFERENCES users(userId),
--   FOREIGN KEY (followerId) REFERENCES users(userId),
--   FOREIGN KEY (userId) REFERENCES users(userId)
-- );

-- INSERT INTO `follows`(`followId`, `followingId`, `followerId`, `userId`) VALUES (NULL,2,3,1), (NULL,1,3,2), (NULL,2,1,3);

-- ดึง post
SELECT DISTINCT
posts.postId, posts.message AS postContent,
posts.userId, users.firstname, users.lastname,
COUNT(DISTINCT postId) AS totalPost
FROM posts
RIGHT JOIN users ON posts.userId = users.userId
-- LEFT JOIN follows ON follows.followId = follows.followId 
WHERE users.userId;

-- LEFT JOIN 
-- LEFT JOIN users ON follows.userId = users.userId WHERE users.userId = 1;

-- SELECT follows.followId AS IdFollow,
-- feeds.feedId AS IdFeeds, 
-- posts.postId, posts.message AS postContent, 
-- comments.message AS Comment FROM follows 
-- LEFT JOIN posts ON feeds.postId = posts.postId 
-- LEFT JOIN shares ON posts.postId = shares.postId 
-- LEFT JOIN comments ON posts.postId = comments.postId 
-- LEFT JOIN claps ON posts.postId = claps.postId 
-- LEFT JOIN follows ON feeds.followId = follows.followId 
-- LEFT JOIN hide ON feeds.feedId = hide.feedId 
-- WHERE hide.feedId IS NULL AND follows.followingId = 1 LIMIT 0, 10;

-- CREATE TABLE comments (
--   commentId INTEGER NOT NULL AUTO_INCREMENT,
--   message VARCHAR(255),
--   userId INTEGER NOT NULL,
--   postId INTEGER NOT NULL,
--   PRIMARY KEY (commentId),
--   FOREIGN KEY (userId) REFERENCES users(userId),
--   FOREIGN KEY (postId) REFERENCES posts(postId)
-- );

-- INSERT INTO `comments` (`commentId`, `message`, `userId`, `postId`) VALUES
-- (NULL,	'id labore ex et quam laborum	Eliseo@gardner.biz	laudantium enim quasi est quidem magnam voluptate ipsam eos', 1,1),
-- (NULL,	'Jayne_Kuhic@sydney.com	est natus enim nihil est dolore omnis voluptatem numquam et omnis occaecati quod ullam at voluptatem error expedita', 1,3),
-- (NULL,	'odio adipisci rerum aut animi	Nikita@garfield.biz	quia molestiae reprehenderit quasi aspernatur aut expedita occaecati aliquam eveniet laudantium omnis quibusdam', 2,5),
-- (NULL,	'alias odio sit	Lew@alysha.tv	non et atque occaecati deserunt quas accusantium unde odit nobis qui', 2,1),
-- (NULL,	'vero eaque aliquid doloribus et culpa	Hayden@althea.biz	harum non quasi et ratione tempore iure ex voluptates', 3,2),
-- (NULL,'et fugit eligendi deleniti quidem qui sint nihil autem	Presley.Mueller@myrl.com	doloribus at sed quis culpa deserunt consectetur qui praesentium', 3,4),
-- (NULL,	'repellat consequatur praesentium vel minus molestias voluptatum	Dallas@ole.me	maiores sed dolores similique labore et inventore et quasi temporibus esse sunt', 4,3),
-- (NULL,	'et omnis dolorem	Mallory_Kunze@marie.org	ut voluptatem corrupti velit ad voluptatem maiores et nisi velit vero accusamus maiores voluptates quia', 4,6),
-- (NULL,	'provident id voluptas	Meghan_Littel@rene.us	sapiente assumenda molestiae atque adipisci laborum distinctio', 5,6),
-- (NULL,	'eaque et deleniti atque tenetur ut quo ut	Carmen_Keeling@caroline.name	voluptate iusto quis nobis reprehenderit ipsum amet nulla quia quas dolores', 5,7),
-- (NULL,	'fugit labore quia mollitia quas deserunt nostrum sunt	Veronica_Goodwin@timmothy.net	ut dolorum nostrum id quia aut est fuga est inventore vel eligendi explicabo', 6,4),
-- (NULL,	'modi ut eos dolores illum nam dolor	Oswald.Vandervort@leanne.org	expedita maiores dignissimos facilis ipsum est rem est', 6,8),
-- (NULL,	'aut inventore non pariatur sit vitae voluptatem sapiente	Kariane@jadyn.tv	fuga eos qui dolor rerum inventore corporis exercitationem', 7,5),
-- (NULL,	'et officiis id praesentium hic aut ipsa dolorem repudiandae	Nathan@solon.io	vel quae voluptas qui exercitationem voluptatibus unde', 7,7),
-- (NULL,	'debitis magnam hic odit aut ullam nostrum tenetur	Maynard.Hodkiewicz@roberta.com	nihil ut voluptates blanditiis autem odio dicta rerum', 8,10),
-- (NULL,	'perferendis temporibus delectus optio ea eum ratione dolorum	Christine@ayana.info	iste ut laborum aliquid velit facere itaque quo ut soluta', 8,9),
-- (NULL,	'eos est animi quis	Preston_Hudson@blaise.tv	consequatur necessitatibus totam sed sit dolorum recusandae quae odio excepturi voluptatum', 9,8),
-- (NULL,	'aut et tenetur ducimus illum aut nulla ab	Vincenza_Klocko@albertha.name	veritatis voluptates necessitatibus maiores corrupti', 9,10),
-- (NULL,	'sed impedit rerum quia et et inventore unde officiis	Madelynn.Gorczany@darion.biz	doloribus est illo sed minima aperiam ut dignissimos accusantium', 4,9),
-- (NULL,	'molestias expedita iste aliquid voluptates	Mariana_Orn@preston.org	qui harum consequatur fugiat et eligendi perferendis at molestiae commodi ducimus doloremque', 4,10),
-- (NULL,	'aliquid rerum mollitia qui a consectetur eum sed	Noemie@marques.me	deleniti aut sed molestias explicabo commodi odio ratione nesciunt voluptate doloremque', 5,11),
-- (NULL,	'porro repellendus aut tempore quis hic	Khalil@emile.co.uk	qui ipsa animi nostrum praesentium voluptatibus odit qui non impedit cum qui nostrum aliquid fuga', 5,12),
-- (NULL,	'quis tempora quidem nihil iste	Sophia@arianna.co.uk	voluptates provident repellendus iusto perspiciatis ex fugiat ut ut dolor nam aliquid et expedita voluptate', 5,13),
-- (NULL,	'in tempore eos beatae est	Jeffery@juwan.us	repudiandae repellat quia sequi est dolore explicabo nihil et et sit et et praesentium iste atque asperiores tenetur', 5,14),
-- (NULL,	'autem ab ea sit alias hic provident sit	Isaias_Kuhic@jarrett.net	sunt aut quae laboriosam sit ut impedit adipisci harum laborum totam deleniti voluptas', 5,15),
-- (NULL,	'in deleniti sunt provident soluta ratione veniam quam praesentium	Russel.Parker@kameron.io	incidunt sapiente eaque dolor eos ad est molestias quas sit et nihil', 6,16),
-- (NULL,	'doloribus quibusdam molestiae amet illum	Francesco.Gleason@nella.us	nisi vel quas ut laborum ratione rerum magni eum unde et voluptatem saepe voluptas', 6,17),
-- (NULL,	'quo voluptates voluptas nisi veritatis dignissimos dolores ut officiis	Ronny@rosina.org	voluptatem repellendus quo alias at laudantium', 6,18),
-- (NULL,	'eum distinctio amet dolor	Jennings_Pouros@erica.biz	tempora voluptatem est magnam distinctio autem est dolorem et ipsa molestiae odit rerum', 6,19),
-- (NULL,	'quasi nulla ducimus facilis non voluptas aut	Lurline@marvin.biz	consequuntur quia voluptate assumenda et autem voluptatem reiciendis ipsum animi est', 6,20),
-- (NULL,	'ex velit ut cum eius odio ad placeat	Buford@shaylee.biz	quia incidunt ut aliquid est ut rerum deleniti iure est ipsum quia ea sint et voluptatem quaerat', 7,11),
-- (NULL,	'dolorem architecto ut pariatur quae qui suscipit	Maria@laurel.name	nihil ea itaque libero illo officiis quo quo dicta inventore consequatur', 7,12),
-- (NULL,	'voluptatum totam vel voluptate omnis	Jaeden.Towne@arlene.tv	fugit', 7,13),
-- (NULL,	'omnis nemo sunt ab autem	Ethelyn.Schneider@emelia.co.uk	omnis temporibus quasi', 7,14),
-- (NULL,	'repellendus sapiente omnis praesentium aliquam ipsum id molestiae omnis	Georgianna@florence.io	dolor mollitia quidem facere et vel', 7,15),
-- (NULL,	'sit et quis	Raheem_Heaney@gretchen.biz	aut vero est dolor non aut excepturi dignissimos illo nisi aut quas aut magni quia nostrum', 8,16),
-- (NULL,	'beatae veniam nemo rerum voluptate quam aspernatur	Jacky@victoria.net	qui rem amet aut cumque maiores earum ut quia', 8,17),
-- (NULL,	'maiores dolores expedita	Piper@linwood.us	unde voluptatem qui dicta vel ad aut eos error consequatur voluptatem', 8,18),
-- (NULL,	'necessitatibus ratione aut ut delectus quae ut	Gaylord@russell.net	atque consequatur dolorem sunt adipisci autem et voluptatibus et quae', 8,19),
-- (NULL,	'non minima omnis deleniti pariatur facere quibusdam at	Clare.Aufderhar@nicole.ca	quod minus alias quos perferendis labore molestias quae', 8,20);