--สร้างdb
create DATABASE eba; 
--สร้างdb

--ลองลบdb
-- drop DATABASE eba; 
--ลองลบdb

--ใช้ ตาราง eba
use eba;
--ใช้ ตาราง eba

-- สร้างตาราง users
CREATE TABLE users(
user_id INTEGER  NOT NULL AUTO_INCREMENT,
email VARCHAR (50),
name VARCHAR(50) NOT NULL ,
img text ,
createAt DATETIME ,
PRIMARY KEY (user_id)
);
-- สร้างตาราง users
 
-- โชว์ตาราง users เพื่อตรวจสอบ
show columns from users 
-- โชว์ตาราง users เพื่อตรวจสอบ

-- สร้างตาราง follows
CREATE TABLE follows(
follow_id INTEGER  NOT NULL AUTO_INCREMENT,
following_id INTEGER NOT NULL,
follower_id INTEGER NOT NULL,
PRIMARY KEY (follow_id),
FOREIGN KEY (following_id) REFERENCES users(user_id) ,
FOREIGN KEY (follower_id) REFERENCES users(user_id) 
);
-- สร้างตาราง follows

-- โชว์ตาราง follows เพื่อตรวจสอบ
show columns from follows 
-- โชว์ตาราง follows เพื่อตรวจสอบ

-- สร้างตาราง posts
CREATE TABLE posts(
post_id INTEGER NOT NULL AUTO_INCREMENT,
user_id INTEGER NOT NULL,
status tinyint (1) ,
message text,
PRIMARY KEY (post_id),
FOREIGN KEY (user_id) REFERENCES users(user_id) 
);
-- สร้างตาราง posts

-- โชว์ตาราง posts เพื่อตรวจสอบ
show columns from posts 
-- โชว์ตาราง posts เพื่อตรวจสอบ

-- สร้างตาราง comments
CREATE TABLE comments(
comment_id INTEGER NOT NULL AUTO_INCREMENT,
user_id INTEGER NOT NULL,
post_id INTEGER NOT NULL,
status tinyint (1) ,
message text,
PRIMARY KEY (comment_id),
FOREIGN KEY (user_id) REFERENCES users(user_id) ,
FOREIGN KEY (post_id) REFERENCES posts(post_id) 
);
-- สร้างตาราง comments

-- โชว์ตาราง comments เพื่อตรวจสอบ
show columns from comments 
-- โชว์ตาราง comments เพื่อตรวจสอบ

-- สร้างตาราง claps
CREATE TABLE claps(
clap_id INTEGER NOT NULL AUTO_INCREMENT,
user_id INTEGER NOT NULL,
post_id INTEGER NOT NULL,
clap_count INTEGER ,
PRIMARY KEY (clap_id),
FOREIGN KEY (user_id) REFERENCES users(user_id) ,
FOREIGN KEY (post_id) REFERENCES posts(post_id) 
);
-- สร้างตาราง claps

-- โชว์ตาราง claps เพื่อตรวจสอบ
show columns from claps 
-- โชว์ตาราง claps เพื่อตรวจสอบ

-- สร้างตาราง feeds
CREATE TABLE feeds(
feed_id INTEGER NOT NULL AUTO_INCREMENT,
user_id INTEGER NOT NULL,
post_id INTEGER NOT NULL,
follow_id INTEGER NOT NULL,
PRIMARY KEY (feed_id),
FOREIGN KEY (user_id) REFERENCES users(user_id) ,
FOREIGN KEY (post_id) REFERENCES posts(post_id),
FOREIGN KEY (follow_id) REFERENCES follows(follow_id)  
);
-- สร้างตาราง feeds

-- โชว์ตาราง feeds เพื่อตรวจสอบ
show columns from feeds 
-- โชว์ตาราง feeds เพื่อตรวจสอบ

-- สร้างตาราง hiddens
CREATE TABLE hiddens(
hidden_id INTEGER NOT NULL AUTO_INCREMENT,
user_id INTEGER NOT NULL,
feed_id INTEGER NOT NULL,
PRIMARY KEY (hidden_id),
FOREIGN KEY (user_id) REFERENCES users(user_id) ,
FOREIGN KEY (feed_id) REFERENCES feeds(feed_id)
);
-- สร้างตาราง hiddens

-- โชว์ตาราง hiddens เพื่อตรวจสอบ
show columns from hiddens 
-- โชว์ตาราง hiddens เพื่อตรวจสอบ

-- สร้างตาราง shares
CREATE TABLE shares(
share_id INTEGER NOT NULL AUTO_INCREMENT,
share_count INTEGER,
post_id INTEGER NOT NULL,
PRIMARY KEY (share_id),
FOREIGN KEY (post_id) REFERENCES posts(post_id)
);
-- สร้างตาราง shares

-- โชว์ตาราง shares เพื่อตรวจสอบ
show columns from shares 
-- โชว์ตาราง shares เพื่อตรวจสอบ
