-- สร้าง verification table
CREATE TABLE `verification` (
  `id` int AUTO_INCREMENT,
  `token` int,
  `userId` int,
  `token_expire` datetime,
  -- กำหนด primary key ให้กับ id
  PRIMARY KEY (id),
  -- กำหนด foreign key ให้ userId โดยอิงจาก users.id table
  FOREIGN KEY (`userId`) REFERENCES `users` (`id`)
);

-- เพิ่มข้อมูล
INSERT INTO `verification` (`id`, `token`, `userId`, `token_expire`)
VALUES (1, "289061909", "40", "2010-05-17 22:52:21"),
  (2, "240226971", "32", "2010-05-20 22:52:21"),
  (3, "879231874", "11", "2010-03-02 22:52:21"),
  (4, "569705874", "28", "2010-04-17 22:52:21"),
  (5, "988558542", "12", "2010-10-15 22:52:21");

-- แก้ไข
UPDATE `verification`
SET `token_expire` = "2010-10-15 22:52:21"
WHERE id = 2;

-- ลบ
DELETE FROM `verification` WHERE id = 2;

-- แสดงข้อมูล
SELECT * FROM `verification`;