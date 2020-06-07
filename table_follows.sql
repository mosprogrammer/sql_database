USE eba_database;

-- สร้าง table follows
CREATE TABLE follows (
    id integer NOT NULL PRIMARY KEY AUTO_INCREMENT,
    followerId integer,
    followingId integer,
    userID integer  NOT NULL,
    FOREIGN KEY (userID) REFERENCES users(id)
);



-- เพิ่ม column createdAt ใน follows
-- ALTER TABLE follows
-- ADD createdAt datetime;


-- ALTER TABLE follows 
-- DROP CONSTRAINT FK_FollowerId FOREIGN KEY (followerId) REFERENCES users(id);
-- แสดง column ทั้งหมดใน follows
SHOW COLUMNS
FROM follows;
