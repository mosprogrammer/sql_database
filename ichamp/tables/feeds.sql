-- สร้าง feeds table
CREATE TABLE `feeds` (
  `id` int AUTO_INCREMENT NOT NULL,
  `userId` int,
  `content` varchar(150),
  `create_date` datetime,
  `status` int(1) DEFAULT 1,
  `share` int(1) DEFAULT 0,
  -- กำหนด primary key ให้กับ id
  PRIMARY KEY (id),
  -- กำหนด foreign key ให้ userId โดยอิงจาก users.id table
  FOREIGN KEY (`userId`) REFERENCES `users` (`id`)
);

-- เพิ่มข้อมูล
INSERT INTO `feeds` (`id`, `userId`, `content`, `create_date`)
VALUES (1, `23`,"Lorem Ipsum has been", "2010-05-17 22:52:21"),
  (2, `20`,"when an unknown printer took", "2010-05-20 22:52:21"),
  (3, `20`,"PageMaker including versions of Lorem Ipsum.", "2010-03-02 22:52:21"),
  (4, `10`,"Various versions have evolved over the years", "2010-04-17 22:52:21"),
  (5, `18`,"There are many variations of passages of Lorem Ipsum", "2010-10-15 22:52:21");

-- แก้ไข
UPDATE `feeds`
SET `create_date` = "2010-10-15 22:52:21"
WHERE id = 2;

-- ลบ
DELETE FROM `feeds` WHERE id = 2;

-- แสดงข้อมูล
SELECT * FROM `feeds`;