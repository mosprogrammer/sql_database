-- สร้าง Database
-- CREATE DATABASE testSql;
-- เรียกใช้งาน database testSql
USE testSql;
-- สร้าง table user
-- CREATE TABLE users(
--     id integer NOT NULL PRIMARY KEY AUTO_INCREMENT
-- );
--
-- แสดง table ทั้งหมดใน testSql
--
SHOW TABLES;
--
-- เพิ่ม column username ใน users
--
ALTER TABLE users
ADD username VARCHAR(50) UNIQUE NOT NULL;
--
-- แสดง column ทั้งหมดใน users
--
SHOW COLUMNS
FROM users;
--
-- ทดสอบ