-- สร้าง relationships table
CREATE TABLE `relationships` (
  `id` int NOT NULL AUTO_INCREMENT,
  `following_id` int,
  `follower_id` int,
  -- กำหนด primary key ให้กับ id
  PRIMARY KEY (`id`),
  -- กำหนด foreign key ให้ following_id โดยอิงจาก users.id table
  FOREIGN KEY (`following_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  -- กำหนด foreign key ให้ follower_id โดยอิงจาก users.id table
  FOREIGN KEY (`follower_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
);

-- เพิ่มข้อมูล
INSERT INTO `relationships` (`id`, `following_id`, `follower_id`)
VALUES (1,"20","4"),
  (2,"20","5"),
  (3,"4","20"),
  (4,"4","6"),
  (5,"4","8");