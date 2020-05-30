USE eba_database;

-- สร้าง table feeds
CREATE TABLE feeds (
    id integer NOT NULL PRIMARY KEY AUTO_INCREMENT,
    detail varchar(100),
    userID integer  NOT NULL,
    statusHide boolean NOT NULL DEFAULT  0,
    statusClap boolean NOT NULL DEFAULT  0,
    createdAt datetime,
    updateAt datetime,
    FOREIGN KEY (userID) REFERENCES users(id)
);


-- แสดง column ทั้งหมดใน feeds
SHOW COLUMNS
FROM feeds;
