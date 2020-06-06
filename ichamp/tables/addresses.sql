-- สร้าง addresses table
CREATE TABLE `addresses` (
  `userId` int,
  `address_1` varchar(150),
  `address_2` varchar(150),
  `province` varchar(50),
  `city` varchar(50),
  `country` varchar(50),
  `postcode` int(5),
  -- กำหนด primary key ให้กับ id
  PRIMARY KEY (`userId`),
  -- กำหนด foreign key ให้ userId โดยอิงจาก users.id table
  FOREIGN KEY (`userId`) REFERENCES `users` (`id`)
);

-- เพิ่มข้อมูล
INSERT INTO `addresses` (`userId`, `address_1`, `province`, `city`, `country`, `postcode`)
VALUES (1, "38/3 soi chalermket 1", "Bangkok", "Klongtoey", "Thailand", "10110"),
  (6, "29-30 floor Bangkok City Tower, 179/120-179/125 South Sathorn Road, Thungmahamek", "Bangkok", "Thungmahamek", "Thailand", "10120"),
  (3, "99/397 At President Park Sukhumvit 24 Road Klongton","Bangkok", "Klongtoey","Thailand","10110"),
  (4, "19 33 Soi Watanawiboon 1","Bangkok", "Taling Chan","Thailand","10170"),
  (5, "114/24 Taina Road Kata Center","Phuket", "Phuket","Thailand","83100");

-- แก้ไข
UPDATE `addresses`
SET `address_1` = "2/1 Chumporn Road"
WHERE `userId` = 5;

-- ลบ
DELETE FROM `addresses` WHERE `userId` = 4;

-- แสดงข้อมูล
SELECT * FROM `addresses`;