-- เรียกใช้งาน database eba_database
USE eba_database;

-- สร้าง table comment 
CREATE TABLE comment (
    id INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
    userId integer NOT NULL,
    feedsId integer NOT NULL,
    userName VARCHAR
(20) NOT NULL,
    messages VARCHAR
(255) NOT NULL,
    createdAt DATETIME NOT NULL,
    CONSTRAINT FK_UsersComment FOREIGN KEY
(UserID)
    REFERENCES Users
(UserID),
    CONSTRAINT FK_FeedsComment FOREIGN KEY
(feedsId)
    REFERENCES feeds
(id)
);