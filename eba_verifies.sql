-- เรียกใช้งาน database eba_database
USE eba_database;

-- สร้าง table User_verifies
CREATE TABLE User_verifies (
    id INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
    token VARCHAR
(20) NOT null,
    tokenExpire DATETIME NOT NULL,
    userId integer NOT NULL,
    status BOOLEAN DEFAULT FALSE,
    verifyDate DATETIME NOT NULL,
    CONSTRAINT FK_UsersVerifies FOREIGN KEY
(UserID)
    REFERENCES Users
(UserID)
);