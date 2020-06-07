-- สร้าง comments table
CREATE TABLE `comments` (
  `id` INT AUTO_INCREMENT NOT NULL,
  `create_date` datetime,
  `detail` varchar(150),
  `userId` int,
  `feedId` int,
  -- กำหนด primary key ให้กับ id
  PRIMARY KEY (`id`),
  -- กำหนด foreign key ให้ userId โดยอิงจาก users.id table
  FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  -- กำหนด foreign key ให้ userId โดยอิงจาก feeds.id table
  FOREIGN KEY (`feedId`) REFERENCES `feeds` (`id`) ON DELETE CASCADE
);

-- เพิ่มข้อมูล
INSERT INTO `comments` (`id`, `create_date`, `detail`, `userId`, `feedId`)
VALUES (1, "2010-04-17 12:52:00","unknown printer took", "20", "1"),
  (2, "2010-04-18 21:52:21","Lorem Ipsum is that it has a more-or-less", "20", "1"),
  (3, "2010-05-17 22:00:21","Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in", "20", "1"),
  (4, "2010-05-03 13:52:21","injected humour and the like", "20", "4"),
  (5, "2010-01-17 22:52:21","unknown printer took", "30", "1");

-- แก้ไข
UPDATE `comments`
SET `detail` = "sometimes by accident"
WHERE id = 2;

-- ลบ
DELETE FROM `comments` WHERE id = 2;

-- แสดงข้อมูล
SELECT * FROM `comments`;