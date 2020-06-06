USE mysql_workshop;

-- create table users
CREATE TABLE users (
  id INTEGER NOT NULL AUTO_INCREMENT,
  email VARCHAR (50),
  password VARCHAR (100),
  fullname VARCHAR (50),
  date_of_birth DATE,
  createdAt DATETIME,
  PRIMARY KEY (id)
);

-- INSERT user
INSERT INTO
  users (
    email,
    password,
    fullname,
    date_of_birth,
    createdAT
  )
VALUES
  (
    'alia.kris@gmail.com',
    'z{2~Int*xQIX',
    'Layla Grady',
    "1986-10-09",
    '2017-07-23 13:10:11'
  ),
  (
    'fahey.emmy@lynch.com',
    'z{2~Int*xQIX',
    'Nelda Batz DVM',
    "1986-10-09",
    '2017-07-23 13:10:11'
  ),
  (
    'marion48@gmail.com',
    'z{2~Int*xQIX',
    'Price Kuphal DVM',
    "1986-10-09",
    '2017-07-23 13:10:11'
  ),
  (
    'terry.nicole@schaefer.biz',
    'z{2~Int*xQIX',
    'Vada Schuster',
    "1986-10-09",
    '2017-07-23 13:10:11'
  ),
  (
    'waldo71@krajcik.com',
    'z{2~Int*xQIX',
    'Petra Kuhic',
    "1986-10-09",
    '2017-07-23 13:10:11'
  ),
  (
    'jstehr@hotmail.com',
    'z{2~Int*xQIX',
    'Fanny Kreiger',
    "1986-10-09",
    '2017-07-23 13:10:11'
  ),
  (
    'spinka.marlene@hessel.com',
    'z{2~Int*xQIX',
    'Hellen Mohr',
    "1986-10-09",
    '2017-07-23 13:10:11'
  ),
  (
    'wehner.grant@hotmail.com',
    'z{2~Int*xQIX',
    'Kamille Hand',
    "1986-10-09",
    '2017-07-23 13:10:11'
  ),
  (
    'reinger.noah@considine.com',
    'z{2~Int*xQIX',
    'Pearlie Leffler',
    "1986-10-09",
    '2017-07-23 13:10:11'
  ),
  (
    'uhaley@gmail.com',
    'z{2~Int*xQIX',
    'Bianka Gerhold',
    "1986-10-09",
    '2017-07-23 13:10:11'
  ),
  (
    'wkirlin@gmail.com',
    'z{2~Int*xQIX',
    'Kadin Cartwright',
    "1986-10-09",
    '2017-07-23 13:10:11'
  ),
  (
    'kallie.leannon@kirlin.com',
    'z{2~Int*xQIX',
    'Denis Kertzmann',
    "1986-10-09",
    '2017-07-23 13:10:11'
  ),
  (
    'astanton.isom@hotmail.com',
    'z{2~Int*xQIX',
    'Rebekah Grady',
    "1986-10-09",
    '2017-07-23 13:10:11'
  ),
  (
    'giovanna.bednar@little.com',
    'z{2~Int*xQIX',
    'Jarvis Grimes',
    "1986-10-09",
    '2017-07-23 13:10:11'
  ),
  (
    'thad33@cruickshank.com',
    'z{2~Int*xQIX',
    'Prof. Jayne McDermott',
    "1986-10-09",
    '2017-07-23 13:10:11'
  ),
  (
    'zkemmer@hotmail.com',
    'z{2~Int*xQIX',
    'Laura Terry V',
    "1986-10-09",
    '2017-07-23 13:10:11'
  ),
  (
    'fritsch.martine@gmail.com',
    'z{2~Int*xQIX',
    'Rosamond Kautzer',
    "1986-10-09",
    '2017-07-23 13:10:11'
  ),
  (
    'oboyle@armstrong.com',
    'z{2~Int*xQIX',
    'Bridie Sipes',
    "1986-10-09",
    '2017-07-23 13:10:11'
  ),
  (
    'ehahn@gmail.com',
    'z{2~Int*xQIX',
    'Prof. Carlotta Leffler I',
    "1986-10-09",
    '2017-07-23 13:10:11'
  ),
  (
    'schumm.stacy@doyle.com',
    'z{2~Int*xQIX',
    'Harrison Shanahan',
    "1986-10-09",
    '2017-07-23 13:10:11'
  ),
  (
    'zola02@prosacco.net',
    'z{2~Int*xQIX',
    'Velva Boyle',
    "1986-10-09",
    '2017-07-23 13:10:11'
  ),
  (
    'kunde.terrill@crona.com',
    'z{2~Int*xQIX',
    'Layla Grady',
    "1986-10-09",
    '2017-07-23 13:10:11'
  ),
  (
    'alia.kris@gmail.com',
    'z{2~Int*xQIX',
    'Mr. Thaddeus Okuneva',
    "1986-10-09",
    '2017-07-23 13:10:11'
  ),
  (
    'henriette.mckenzie@kovacek.net',
    'z{2~Int*xQIX',
    'Dr. Gail Runte',
    "1986-10-09",
    '2017-07-23 13:10:11'
  ),
  (
    'tillman.josie@gmail.com',
    'z{2~Int*xQIX',
    'Mrs. Lonie Windler',
    "1986-10-09",
    '2017-07-23 13:10:11'
  ),
  (
    'yleffler@hotmail.com',
    'z{2~Int*xQIX',
    'Ms. Zora Fay',
    "1986-10-09",
    '2017-07-23 13:10:11'
  ),
  (
    'rachelle.pagac@kub.com',
    'z{2~Int*xQIX',
    'Libbie Bailey Sr.',
    "1986-10-09",
    '2017-07-23 13:10:11'
  ),
  (
    'gillian05@cole.com',
    'z{2~Int*xQIX',
    'Miss Thalia Greenholt Jr.',
    "1986-10-09",
    '2017-07-23 13:10:11'
  ),
  (
    'jakubowski.robert@gmail.com',
    'z{2~Int*xQIX',
    'Rodrigo Kemmer',
    "1986-10-09",
    '2017-07-23 13:10:11'
  ),
  (
    'icorwin@walsh.comicorwin@walsh.com',
    'z{2~Int*xQIX',
    'Miss Evangeline Kiehn III',
    "1986-10-09",
    '2017-07-23 13:10:11'
  ),
  (
    'price.mcglynn@stehr.com',
    'z{2~Int*xQIX',
    'Jacklyn Harris',
    "1986-10-09",
    '2017-07-23 13:10:11'
  ),
  (
    'walter.lilliana@berge.net',
    'z{2~Int*xQIX',
    'Reba Will PhD',
    "1986-10-09",
    '2017-07-23 13:10:11'
  ),
  (
    'lbosco@yahoo.com',
    'z{2~Int*xQIX',
    'Jodie Mann IV',
    "1986-10-09",
    '2017-07-23 13:10:11'
  ),
  (
    'nmoore@huels.net',
    'z{2~Int*xQIX',
    'Dejah Hettinger',
    "1986-10-09",
    '2017-07-23 13:10:11'
  ),
  (
    'raymond.boyer@yahoo.com',
    'z{2~Int*xQIX',
    'Elyssa McCullough',
    "1986-10-09",
    '2017-07-23 13:10:11'
  ),
  (
    'sincere69@hotmail.com',
    'z{2~Int*xQIX',
    'Heather Parker',
    "1986-10-09",
    '2017-07-23 13:10:11'
  ),
  (
    'silas26@ohara.com',
    'z{2~Int*xQIX',
    'Joannie Stracke',
    "1986-10-09",
    '2017-07-23 13:10:11'
  ),
  (
    'paula.hintz@hotmail.com',
    'z{2~Int*xQIX',
    'Deontae Champlin',
    "1986-10-09",
    '2017-07-23 13:10:11'
  ),
  (
    'cassin.ezra@gmail.com',
    'z{2~Int*xQIX',
    'Neha Hudson',
    "1986-10-09",
    '2017-07-23 13:10:11'
  ),
  (
    'hulda.thiel@yahoo.com',
    'z{2~Int*xQIX',
    'Sheldon Streich',
    "1986-10-09",
    '2017-07-23 13:10:11'
  ),
  (
    'daija.jaskolski@hotmail.com',
    'z{2~Int*xQIX',
    'Dean Kozey',
    "1986-10-09",
    '2017-07-23 13:10:11'
  ),
  (
    'terry.dandre@schoen.info',
    'z{2~Int*xQIX',
    'Ocie Effertz DVM',
    "1986-10-09",
    '2017-07-23 13:10:11'
  ),
  (
    'rex46@mclaughlin.info',
    'z{2~Int*xQIX',
    'Felton Nicolas',
    "1986-10-09",
    '2017-07-23 13:10:11'
  ),
  (
    'jadams@keebler.net',
    'z{2~Int*xQIX',
    'Erica Pagac IV',
    "1986-10-09",
    '2017-07-23 13:10:11'
  ),
  (
    'upton.susan@yahoo.com',
    'z{2~Int*xQIX',
    'Brice Batz',
    "1986-10-09",
    '2017-07-23 13:10:11'
  ),
  (
    'hettie10@gmail.com',
    'z{2~Int*xQIX',
    'Mireille Kilback',
    "1986-10-09",
    '2017-07-23 13:10:11'
  ),
  (
    'oran68@tremblay.com',
    'z{2~Int*xQIX',
    'Prof. Pietro Daugherty Jr.',
    "1986-10-09",
    '2017-07-23 13:10:11'
  ),
  (
    'stanford.ziemann@hotmail.com',
    'z{2~Int*xQIX',
    'Carmen Harber DVM',
    "1986-10-09",
    '2017-07-23 13:10:11'
  ),
  (
    'rae35@gmail.com',
    'z{2~Int*xQIX',
    'Jacey Simonis',
    "1986-10-09",
    '2017-07-23 13:10:11'
  ),
  (
    'ally.cartwright@kulas.com',
    'z{2~Int*xQIX',
    'Mikayla Mills',
    "1986-10-09",
    '2017-07-23 13:10:11'
  );