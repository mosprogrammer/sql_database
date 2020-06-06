-- สร้าง user_logins table
CREATE TABLE `user_logins` (
  `id` int AUTO_INCREMENT NOT NULL,
  `userId` int,
  `login_date` datetime,
  -- กำหนด primary key ให้กับ id
  PRIMARY KEY (`id`),
  -- กำหนด foreign key ให้ userId โดยอิงจาก users.id table
  FOREIGN KEY (`userId`) REFERENCES `users` (`id`)
);

-- เพิ่มข้อมูล
INSERT INTO `user_logins` (`id`, `userId`, `login_date`)
VALUES (1, "40", "2010-04-30 07:27:39"),
  (2, "40", "2010-05-17 22:52:21"),
  (3, "40", "2010-05-17 22:52:21"),
  (4, "40", "2010-05-22 14:17:16"),
  (5, "40", "2010-05-26 03:26:56"),
  (6, "40", "2010-06-10 04:44:38");

-- แก้ไข
UPDATE `user_logins`
SET `login_date` = "2010-06-10 04:44:38"
WHERE id = 2;

-- ลบ
DELETE FROM `user_logins` WHERE id = 2;

-- แสดงข้อมูล
SELECT * FROM `user_logins`;