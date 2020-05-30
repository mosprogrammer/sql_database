USE eba_database;

-- สร้าง table comments 
CREATE TABLE comments (
    id integer NOT NULL PRIMARY KEY AUTO_INCREMENT,
    detail varchar(150),
    userID integer  NOT NULL,
    feedID integer  NOT NULL,
    createdAt datetime,
    updateAt datetime,
    FOREIGN KEY (userID) REFERENCES users(id),
    FOREIGN KEY (feedID) REFERENCES feeds(id)
);

-- แสดง column ทั้งหมดใน comments
SHOW COLUMNS
FROM comments;
