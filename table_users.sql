USE eba_database;

-- สร้าง table users
CREATE TABLE users (
    id integer NOT NULL PRIMARY KEY AUTO_INCREMENT,
    email varchar(50) NOT NULL,
    password varchar(255) NOT NULL,
    firstname varchar(30) NOT NULL,
    lastname varchar(30) NOT NULL,
    address varchar(255),
    profileImage varchar(255),
    archivementID integer, 
    birthdate date,
    createdAt datetime,
    updateAt datetime
);

-- กำหนดให้ค่าใน column email ห้ามซ้ำกัน
-- ALTER TABLE users
-- MODIFY email varchar(50) UNIQUE NOT NULL;

-- แสดง column ทั้งหมดใน users
SHOW COLUMNS
FROM users;
