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

