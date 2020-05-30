USE eba_database;

-- สร้าง table follows
CREATE TABLE follows (
    id integer NOT NULL PRIMARY KEY AUTO_INCREMENT,
    followerId integer  NOT NULL,
    followingId integer  NOT NULL,
    userID integer  NOT NULL,
    FOREIGN KEY (followerId) REFERENCES users(id),
    FOREIGN KEY (followingId) REFERENCES users(id),
    FOREIGN KEY (userID) REFERENCES users(id)
);



-- เพิ่ม column createdAt ใน follows
-- ALTER TABLE follows
-- ADD createdAt datetime;



-- แสดง column ทั้งหมดใน follows
SHOW COLUMNS
FROM follows;
