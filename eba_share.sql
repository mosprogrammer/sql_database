-- เรียกใช้งาน database eba_database
USE eba_database;

-- สร้าง table share 
CREATE TABLE share (
    id INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
    userId integer NOT NULL,
    feedsId integer NOT NULL,
    userName VARCHAR
(20) NOT NULL,
    messages VARCHAR
(255) NOT NULL,
    createdAt DATETIME NOT NULL,
    CONSTRAINT FK_UsersShare FOREIGN KEY
(UserID)
    REFERENCES Users
(UserID),
    CONSTRAINT FK_FeedsShare FOREIGN KEY
(feedsId)
    REFERENCES feeds
(id)
);