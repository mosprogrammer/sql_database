-- สร้าง Database
CREATE DATABASE homework;
-- เรียกใช้งาน database testSql
USE homework;
-- สร้าง table user
-- CREATE TABLE users(
--     id integer NOT NULL PRIMARY KEY AUTO_INCREMENT
-- );
--
CREATE TABLE users(
user_id INTEGER  NOT NULL ,
user_email VARCHAR(50) ,
user_pass VARCHAR (50) ,
user_name VARCHAR(50) NOT NULL ,
user_firstname VARCHAR (50) ,
user_lastname VARCHAR (50) ,
user_img TEXT ,
user_createtime DATETIME
);

CREATE TABLE follows(
follow_id INTEGER  NOT NULL ,
following_id INTEGER ,
follower_id INTEGER ,
PRIMARY KEY (follow_id),
FOREIGN KEY (following_id) REFERENCES users(user_id) ,
FOREIGN KEY (follower_id) REFERENCES users(user_id)
);

CREATE TABLE posts(
post_id INTEGER NOT NULL ,
user_id INTEGER ,
post_status tinyint (1) ,
post_content text,
PRIMARY KEY (post_id),
FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE comments(
comment_id INTEGER NOT NULL ,
user_id INTEGER ,
post_id INTEGER,
comment_status tinyint (1) ,
comment_content text,
PRIMARY KEY (comment_id),
FOREIGN KEY (user_id) REFERENCES users(user_id) ,
FOREIGN KEY (post_id) REFERENCES posts(post_id)
);

CREATE TABLE claps(
clap_id INTEGER NOT NULL ,
user_id INTEGER ,
post_id INTEGER,
clap_count INTEGER ,
PRIMARY KEY (clap_id),
FOREIGN KEY (user_id) REFERENCES users(user_id) ,
FOREIGN KEY (post_id) REFERENCES posts(post_id)
);

CREATE TABLE feeds(
feed_id INTEGER NOT NULL ,
user_id INTEGER ,
post_id INTEGER,
follow_id INTEGER ,
PRIMARY KEY (feed_id),
FOREIGN KEY (user_id) REFERENCES users(user_id) ,
FOREIGN KEY (post_id) REFERENCES posts(post_id),
FOREIGN KEY (follow_id) REFERENCES follows(follow_id)
);

CREATE TABLE hiddens(
hidden_id INTEGER NOT NULL ,
user_id INTEGER ,
feed_id INTEGER,
PRIMARY KEY (hidden_id),
FOREIGN KEY (user_id) REFERENCES users(user_id) ,
FOREIGN KEY (feed_id) REFERENCES feeds(feed_id)
);

CREATE TABLE shares(
share_id INTEGER NOT NULL ,
user_id INTEGER ,
feed_id INTEGER,
PRIMARY KEY (share_id),
FOREIGN KEY (user_id) REFERENCES users(user_id) ,
FOREIGN KEY (feed_id) REFERENCES feeds(feed_id)
);

CREATE TABLE verify(
verify_id INTEGER NOT NULL ,
Token_expire INTEGER ,
verify_status INTEGER  ,
user_id INTEGER ,
PRIMARY KEY (verify_id),
FOREIGN KEY (user_id) REFERENCES users(user_id)
);

--
-- ทดสอบ
SHOW TABLES;