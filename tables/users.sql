-- สร้าง users table
CREATE TABLE `users` (
  `id` int AUTO_INCREMENT,
  `first_name` varchar(100),
  `last_name` varchar(100),
  `password` int(12),
  `profile_image` varchar(255),
  -- กำหนด primary key ให้กับ id
  PRIMARY KEY (id)
);

-- เพิ่มข้อมูล
INSERT INTO `users` (`id`, `first_name`, `last_name`, `password`, `profile_image`)
VALUES (1, "Milica", "Olvia", "123456", "/user/profile.png"),
  (2, "Denice", "Dee", "123456", "/user/profile.png"),
  (3, "Pankratios", "Divya", "123456", "/user/profile.png"),
  (4, "Sasha", "Honig", "123456", "/user/profile.png"),
  (5, "Terrell ", "Prato", "123456", "/user/profile.png"),
  (6, "Lenore", "Lenart", "123456", "/user/profile.png"),
  (7, "Amal", "Hendon", "123456", "/user/profile.png"),
  (8, "Jannet", "Qualls", "123456", "/user/profile.png"),
  (9, "Milica", "Olvia", "123456", "/user/profile.png"),
  (10, "Milica", "Olvia", "123456", "/user/profile.png"),
  (11, "Milica", "Olvia", "123456", "/user/profile.png"),
  (12, "Milica", "Olvia", "123456", "/user/profile.png"),
  (13, "Milica", "Olvia", "123456", "/user/profile.png"),
  (14, "Milica", "Olvia", "123456", "/user/profile.png"),
  (15, "Milica", "Olvia", "123456", "/user/profile.png"),
  (16, "Milica", "Olvia", "123456", "/user/profile.png"),
  (17, "Milica", "Olvia", "123456", "/user/profile.png"),
  (18, "Milica", "Olvia", "123456", "/user/profile.png"),
  (19, "Milica", "Olvia", "123456", "/user/profile.png"),
  (20, "Milica", "Olvia", "123456", "/user/profile.png"),
  (21, "Milica", "Olvia", "123456", "/user/profile.png"),
  (22, "Milica", "Olvia", "123456", "/user/profile.png"),
  (23, "Milica", "Olvia", "123456", "/user/profile.png"),
  (24, "Milica", "Olvia", "123456", "/user/profile.png"),
  (25, "Milica", "Olvia", "123456", "/user/profile.png"),
  (26, "Milica", "Olvia", "123456", "/user/profile.png"),
  (27, "Milica", "Olvia", "123456", "/user/profile.png"),
  (28, "Milica", "Olvia", "123456", "/user/profile.png"),
  (29, "Milica", "Olvia", "123456", "/user/profile.png"),
  (30, "Milica", "Olvia", "123456", "/user/profile.png"),
  (31, "Milica", "Olvia", "123456", "/user/profile.png"),
  (32, "Milica", "Olvia", "123456", "/user/profile.png"),
  (33, "Milica", "Olvia", "123456", "/user/profile.png"),
  (34, "Milica", "Olvia", "123456", "/user/profile.png"),
  (35, "Milica", "Olvia", "123456", "/user/profile.png"),
  (36, "Milica", "Olvia", "123456", "/user/profile.png"),
  (37, "Milica", "Olvia", "123456", "/user/profile.png"),
  (38, "Milica", "Olvia", "123456", "/user/profile.png"),
  (39, "Milica", "Olvia", "123456", "/user/profile.png"),
  (40, "Milica", "Olvia", "123456", "/user/profile.png"),
  (41, "Milica", "Olvia", "123456", "/user/profile.png"),
  (42, "Milica", "Olvia", "123456", "/user/profile.png"),
  (43, "Milica", "Olvia", "123456", "/user/profile.png"),
  (44, "Milica", "Olvia", "123456", "/user/profile.png"),
  (45, "Milica", "Olvia", "123456", "/user/profile.png"),
  (46, "Milica", "Olvia", "123456", "/user/profile.png"),
  (47, "Milica", "Olvia", "123456", "/user/profile.png"),
  (48, "Milica", "Olvia", "123456", "/user/profile.png"),
  (49, "Milica", "Olvia", "123456", "/user/profile.png"),
  (50, "Milica", "Olvia", "123456", "/user/profile.png");

-- แก้ไข
UPDATE users
SET `password` = "456789"
WHERE id = 2;

-- ลบ
DELETE FROM users WHERE id = 2;

-- แสดงข้อมูล
SELECT * FROM users;
