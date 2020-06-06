-- เขียน SQL เพื่อนำไปใช้ สร้างเป็นหน้า Feed ใน App eBa 
-- โดยมีเงื่อนไขว่า จะต้องแสดงเฉพาะ Post ของเรา และของเพื่อนที่เราได้ทำการ Follow แล้วเท่านั้น 
SELECT 
  `id`, `userId`, `content`, `create_date`
FROM
  `feeds`
WHERE
  `userId` = 20 AND
  `status` = 1
ORDER BY 
  `create_date` DESC;

-- แต่ถ้า Post ของเราถูกลบออกไป จะต้องไม่แสดงในหน้า Feed