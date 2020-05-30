USE eba_database;

-- สร้าง table shares 
CREATE TABLE shares (
    id integer NOT NULL PRIMARY KEY AUTO_INCREMENT,
    userID integer  NOT NULL,
    feedID integer  NOT NULL,
    createdAt datetime,
    updateAt datetime,
    FOREIGN KEY (userID) REFERENCES users(id),
    FOREIGN KEY (feedID) REFERENCES feeds(id)
);

-- แสดง column ทั้งหมดใน shares
SHOW COLUMNS
FROM shares;
