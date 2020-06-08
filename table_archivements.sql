USE eba_database;

-- สร้าง table archivements 
CREATE TABLE archivements (
    id integer NOT NULL PRIMARY KEY AUTO_INCREMENT,
    userID integer  NOT NULL,
    createdAt datetime,
    updatedAt datetime,
    FOREIGN KEY (userID) REFERENCES users(id)
);

-- แสดง column ทั้งหมดใน archivements
SHOW COLUMNS
FROM archivements;
