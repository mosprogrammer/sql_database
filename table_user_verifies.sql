USE eba_database;

-- สร้าง table user_verifies 
CREATE TABLE user_verifies (
    id integer NOT NULL PRIMARY KEY AUTO_INCREMENT,
    token varchar(20) NOT NULL,
    tokenExpire datetime,
    status boolean NOT NULL DEFAULT  0,
    verifyDate datetime,
    userID integer  NOT NULL,
    FOREIGN KEY (userID) REFERENCES users(id)
);


-- ปรับ column ให้เป็น NOT NULL
-- ALTER TABLE user_verifies
-- MODIFY userID integer NOT NULL;




-- แสดง column ทั้งหมดใน user_verifies
SHOW COLUMNS
FROM user_verifies;
