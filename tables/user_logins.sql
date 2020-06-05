-- สร้าง user_logins table
CREATE TABLE `user_logins` (
  `id` int AUTO_INCREMENT,
  `userId` int,
  `login_date` datetime,
  -- กำหนด primary key ให้กับ id
  PRIMARY KEY (id),
  -- กำหนด foreign key ให้ userId โดยอิงจาก users.id table
  FOREIGN KEY (`userId`) REFERENCES `users` (`id`)
);

-- เพิ่มข้อมูล
INSERT INTO `user_logins` (`id`, `userId`, `login_date`)
VALUES (1, "40", "05/06/2020"),
  (2, "40", "11/05/2020"),
  (3, "40", "29/04/2020"),
  (4, "40", "01/03/2020"),
  (5, "40", "23/02/2020"),
  (6, "40", "15/01/2020");

-- แก้ไข
UPDATE `user_logins`
SET `login_date` = "23/02/2020"
WHERE id = 2;

-- ลบ
DELETE FROM `user_logins` WHERE id = 2;

-- แสดงข้อมูล
SELECT * FROM `user_logins`;