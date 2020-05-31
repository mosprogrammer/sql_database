use test2;

-- สร้างตารางเก็บข้อมูลสมาชิก 
CREATE TABLE Users(
    user_id integer NOT NULL PRIMARY KEY AUTO_INCREMENT ,
    Email varchar(70), 
    Pass varchar(50),
    Firstname varchar(255), 
    Lastname varchar(255), 
    Profile_Image varchar(255),
    Archivement varchar(255),
    Address_id integer,
    PRIMARY KEY (user_id)
);
-- สร้างตารางเก็บข้อมูลที่อยู่
CREATE TABLE Address (
    add_id integer NOT NULL PRIMARY KEY AUTO_INCREMENT , 
    Province varchar(255),
    District varchar(255), 
    Amphur varchar(255),
    PRIMARY KEY (add_id)
);
-- สร้างตารางเก็บข้อมูลยืนยันตัวตน
CREATE TABLE Verify(
    verify_id integer NOT NULL PRIMARY KEY AUTO_INCREMENT , 
    Token_Expire integer,
    Status varchar(50),
    Users_id integer ,
    PRIMARY KEY (verify_id),
    FOREIGN KEY (Users_id) REFERENCES Users(user_id) 
);
-- สร้างตารางเก็บข้อมูลผู้ติดตาม
CREATE TABLE Follow(
    follow_id integer NOT NULL PRIMARY KEY AUTO_INCREMENT , 
    Follower_id integer, 
    Following_id integer ,
    PRIMARY KEY (follow_id),
    FOREIGN KEY (Follower_id) REFERENCES Users(user_id) ,
    FOREIGN KEY (Following_id) REFERENCES Users(user_id) 
);
-- สร้างตารางเก็บข้อมูลโพสต์
CREATE TABLE Posts(
    post_id integer NOT NULL PRIMARY KEY AUTO_INCREMENT , 
    Users_id integer, 
    Text_detail text, 
    Date_Time DateTime,
    PRIMARY KEY (post_id),
    FOREIGN KEY (Users_id) REFERENCES Users(user_id) 
);
-- สร้างตารางเก็บข้อมูลหน้าแคป
CREATE TABLE Claps(
    claps_id integer NOT NULL PRIMARY KEY AUTO_INCREMENT ,
    Posts_di integer,
    Users_id integer ,
    PRIMARY KEY (claps_id),
    FOREIGN KEY (Posts_di) REFERENCES Posts(post_id) ,
    FOREIGN KEY (Users_id) REFERENCES Users(user_id) 
);
-- สร้างตารางเก็บข้อมูลคอมเม้น
CREATE TABLE Comment(
    comment_id integer NOT NULL PRIMARY KEY AUTO_INCREMENT , 
    Text text,
    Date_Time DateTime, 
    Posts_di integer, 
    Users_id integer ,
    PRIMARY KEY (id),
    FOREIGN KEY (Posts_di) REFERENCES Posts(post_id) ,
    FOREIGN KEY (Users_id) REFERENCES Users(user_id) 
);
-- สร้างตารางเก็บข้อมูลหน้าฟีด
CREATE TABLE Feeds(
    feeds_id integer NOT NULL PRIMARY KEY AUTO_INCREMENT , 
    Posts_di integer,
    Users_id integer ,
    PRIMARY KEY (id),
    FOREIGN KEY (Posts_di) REFERENCES Posts(post_id) ,
    FOREIGN KEY (Users_id) REFERENCES Users(user_id) 
);
-- สร้างตารางเก็บข้อมูลแชร์โพสต์
CREATE TABLE Share_Posts(
    share_Posts_id integer NOT NULL PRIMARY KEY AUTO_INCREMENT , 
    Posts_di integer, 
    Users_id integer, 
    Feeds_id integer, 
    Share_Time DateTime,
    PRIMARY KEY (share_Posts_id),
    FOREIGN KEY (Posts_di) REFERENCES Posts(post_id) ,
    FOREIGN KEY (Users_id) REFERENCES Users(user_id) 
);
-- สร้างตารางเก็บข้อมูล
CREATE TABLE Hides (
    hides_id integer NOT NULL PRIMARY KEY AUTO_INCREMENT , 
    Users_id integer, 
    Posts_di integer,
    PRIMARY KEY (id),
    FOREIGN KEY (Users_id) REFERENCES Users(user_id) ,
    FOREIGN KEY (Posts_di) REFERENCES Posts(post_id) 
);

