--
-- เขียน SQL เพื่อนำไปใช้ สร้างเป็นหน้า Feed ใน App eBa 
-- โดยมีเงื่อนไขว่า จะต้องแสดงเฉพาะ Post ของเรา  
--
SELECT 
  `id`, `userId`, `content`, `create_date`
FROM
  `feeds`
WHERE
  `userId` = 20 AND
  `status` = 1
ORDER BY 
  `create_date` DESC;

--
-- และของเพื่อนที่เราได้ทำการ Follow แล้วเท่านั้น
--

คิดไม่ออก

--
-- แต่ถ้า Post ของเราถูกลบออกไป จะต้องไม่แสดงในหน้า Feed
--

-- set on delete cascade
ALTER TABLE 
  `likes`
ADD
  FOREIGN KEY (`feedId`) REFERENCES `feeds` (`id`) ON DELETE CASCADE;
-- set on delete cascade
ALTER TABLE 
  `claps`
ADD
  FOREIGN KEY (`feedId`) REFERENCES `feeds` (`id`) ON DELETE CASCADE;
-- set on delete cascade
ALTER TABLE 
  `feed_shares`
ADD
  FOREIGN KEY (`feedId`) REFERENCES `feeds` (`id`) ON DELETE CASCADE;
-- set feeds.id on delete cascade
ALTER TABLE 
  `comments`
ADD
  FOREIGN KEY (`feedId`) REFERENCES `feeds` (`id`) ON DELETE CASCADE;
-- set users.id on delete set null
ALTER TABLE 
  `feeds`
ADD
  FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL;
-- delete feed
DELETE FROM 
  `feeds` 
WHERE 
  `userId` = 15 AND
  `id` = 5;