USE eba_database;

-- สร้าง table user_login
CREATE TABLE user_login (
    id integer NOT NULL PRIMARY KEY AUTO_INCREMENT,
    userID integer  NOT NULL,
    loginAt datetime,
    FOREIGN KEY (userID) REFERENCES users(id)
);


-- แสดง column ทั้งหมดใน user_login
SHOW COLUMNS
FROM user_login;
