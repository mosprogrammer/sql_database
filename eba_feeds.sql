-- เรียกใช้งาน database eba_database
USE eba_database;

-- สร้าง table feeds 
CREATE TABLE feeds (
    id INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
    userId integer NOT NULL,
    messages varchar
(250) NULL,
    share integer NULL,
    statusHide BOOLEAN DEFAULT FALSE,
    statusClap integer NULL,
    createdAt DATETIME NOT NULL,
    CONSTRAINT FK_UsersFeeds FOREIGN KEY
(UserID)
    REFERENCES Users
(UserID)
);