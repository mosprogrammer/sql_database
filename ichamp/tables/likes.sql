-- สร้าง claps table
CREATE TABLE `likes` (
  `id` int AUTO_INCREMENT NOT NULL,
  `create_date` datetime,
  `feedId` int,
  `userId` int,
  -- กำหนด primary key ให้กับ id
  PRIMARY KEY (`id`),
  -- กำหนด foreign key ให้ userId โดยอิงจาก users.id table
  FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  -- กำหนด foreign key ให้ feedId โดยอิงจาก feeds.id table
  FOREIGN KEY (`feedId`) REFERENCES `feeds` (`id`) ON DELETE CASCADE
);

-- เพิ่มข้อมูล
INSERT INTO `likes` (`id`, `create_date`, `feedId`, `userId`)
VALUES (1, "2010-05-17 22:52:21","5","20"),
  (2, "2010-05-20 22:52:21","5","10"),
  (3, "2010-03-02 22:52:21","5","15"),
  (4, "2010-04-17 22:52:21","5","16"),
  (5, "2010-10-15 22:52:21","1","20");

-- แก้ไข
UPDATE `likes`
SET `create_date` = "2010-10-15 22:52:21"
WHERE id = 2;

-- ลบ
DELETE FROM `likes` WHERE id = 2;

-- แสดงข้อมูล
SELECT * FROM `likes`;