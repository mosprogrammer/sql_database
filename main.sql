-- สร้าง feeds table
CREATE TABLE `feeds` (
  `id` int AUTO_INCREMENT,
  `content` varchar(150),
  `create_date` datetime,
  `status` int(1) DEFAULT 1,
  `share` int(1) DEFAULT 0,
  `clapId` int,
  -- กำหนด primary key ให้กับ id
  PRIMARY KEY (id)
);

-- สร้าง claps table
CREATE TABLE `claps` (
  `id` int AUTO_INCREMENT,
  `create_date` datetime,
  `feedId` int,
  `userId` int,
  -- กำหนด primary key ให้กับ id
  PRIMARY KEY (id),
  -- กำหนด foreign key ให้ userId โดยอิงจาก users.id table
  FOREIGN KEY (`userId`) REFERENCES `users` (`id`),
  -- กำหนด foreign key ให้ id โดยอิงจาก feeds.clapId table
  FOREIGN KEY (`id`) REFERENCES `feeds` (`clapId`),
  -- กำหนด foreign key ให้ feedId โดยอิงจาก feeds.id table
  FOREIGN KEY (`feedId`) REFERENCES `feeds` (`id`)
);

-- สร้าง comments table
CREATE TABLE `comments` (
  `id` int AUTO_INCREMENT,
  `create_date` datetime,
  `detail` varchar(150),
  `userId` int,
  -- กำหนด primary key ให้กับ id
  PRIMARY KEY (id),
  -- กำหนด foreign key ให้ userId โดยอิงจาก users.id table
  FOREIGN KEY (`userId`) REFERENCES `users` (`id`)
);

-- สร้าง addresses table
CREATE TABLE `addresses` (
  `userId` int,
  `line_1_building` varchar(150),
  `line_2_street` varchar(150),
  `province` varchar(50),
  `county` varchar(50),
  `district` varchar(50),
  `zip_postcode` int(5),
  -- กำหนด primary key ให้กับ id
  PRIMARY KEY (id),
  -- กำหนด foreign key ให้ userId โดยอิงจาก users.id table
  FOREIGN KEY (`userId`) REFERENCES `users` (`id`)
);