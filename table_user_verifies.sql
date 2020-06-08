USE eba_database;

-- สร้าง table user_verifies 
CREATE TABLE user_verifies (
    id integer NOT NULL PRIMARY KEY AUTO_INCREMENT,
    token varchar(150) NOT NULL,
    tokenExpire datetime,
    status boolean NOT NULL DEFAULT  0,
    verifyDate datetime,
    userID integer  NOT NULL,
    FOREIGN KEY (userID) REFERENCES users(id)
);


-- กำหนดให้ค่าใน column  ห้ามซ้ำกัน และปรับ column token
-- ALTER TABLE user_verifies
-- MODIFY token varchar(100) UNIQUE NOT NULL;


-- แสดง column ทั้งหมดใน user_verifies
SHOW COLUMNS
FROM user_verifies;
