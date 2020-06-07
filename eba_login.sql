-- เรียกใช้งาน database eba_database
USE eba_database;

-- สร้าง table User_login
CREATE TABLE User_login (
    id INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
    userId integer NOT NULL,
    loginAt DATETIME NOT NULL,
    CONSTRAINT FK_UsersLogin FOREIGN KEY
(UserID)
    REFERENCES Users
(UserID)
);
