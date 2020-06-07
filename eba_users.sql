-- เรียกใช้งาน database eba_database
USE eba_database;

-- สร้าง table users
CREATE TABLE Users (
    UserID INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
    firstName VARCHAR
(50) NOT null,
    lastName VARCHAR
(50) NOT NULL,
    userEmail VARCHAR
(50) NOT NULL,
    userPassword VARCHAR
(255) NOT NULL,
    userbirthdate DATE,
    createdAt DATETIME NOT NULL,
    userAddress VARCHAR
(255)
);
