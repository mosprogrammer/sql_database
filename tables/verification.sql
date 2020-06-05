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
VALUES (1, "289061909172", "40", "05/06/2020"),
  (2, "024022697583", "32", "05/06/2020"),
  (3, "879231874459", "11", "05/06/2020"),
  (4, "569705874982", "28", "05/06/2020"),
  (5, "988558542957", "12", "05/06/2020");

-- แก้ไข
UPDATE `verification`
SET `token_expire` = "05/08/2020"
WHERE id = 2;

-- ลบ
DELETE FROM `verification` WHERE id = 2;

-- แสดงข้อมูล
SELECT * FROM `verification`;