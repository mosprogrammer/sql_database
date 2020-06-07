-- เรียกใช้งาน database eba_database
USE eba_database;

-- สร้าง table clap 
CREATE TABLE clap (
    id INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
    userId integer NOT NULL,
    feedsId integer NOT NULL,
    createdAt DATETIME NOT NULL,
    CONSTRAINT FK_UsersClap FOREIGN KEY
(UserID)
    REFERENCES Users
(UserID),
    CONSTRAINT FK_FeedsClap FOREIGN KEY
(feedsId)
    REFERENCES feeds
(id)
);