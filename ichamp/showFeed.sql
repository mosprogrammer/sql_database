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
DELETE FROM 
  `feeds` 
WHERE 
  `userId` = 15 AND
  `id` = 5;