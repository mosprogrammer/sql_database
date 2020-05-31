
/* Create Database */
CREATE DATABASE bung_eba;

USE bung_eba;

/* Create Users Table 
    - unique values, generated automatically key and cannot contain null values */
CREATE TABLE users (
    User_id integer NOT NULL AUTO_INCREMENT,    
    Email varchar(255) NOT NULL,
    Password varchar(255) NOT NULL,
    First_name varchar(255) NOT NULL,
    Last_name varchar(255) NOT NULL,
    Profile_image BLOB DEFAULT NULL,
    Create_user datetime,
    Update_user datetime,
    PRIMARY KEY (User_id)
);
/* Create User_Verify Table 
    - unique values, generated automatically key and cannot contain null values */
CREATE TABLE user_verify (
    User_verify_id integer NOT NULL AUTO_INCREMENT,
    Token varchar(50) NOT NULL,
    Token_expire datetime,
    User_id integer,
    Verify_status boolean DEFAULT FALSE,
    Verify_date datetime,
    PRIMARY KEY (User_verify_id),
    FOREIGN KEY (User_id) REFERENCES users(User_id)
);
/* Create Users_login Table 
    - unique values, generated automatically key and cannot contain null values */
CREATE TABLE user_login (
    User_login_id integer NOT NULL AUTO_INCREMENT,
    User_id integer,
    Login_date datetime,
    PRIMARY KEY (User_login_id),
    FOREIGN KEY (User_id) REFERENCES users(User_id)
);
/* Create follows Table 
    - unique values, generated automatically key and cannot contain null values */
CREATE TABLE follows (
    Follow_id integer NOT NULL AUTO_INCREMENT,
    Follower_id integer,
    Following_id integer,
    PRIMARY KEY (Follow_id),
    FOREIGN KEY (Follower_id) REFERENCES users(User_id),
    FOREIGN KEY (Following_id) REFERENCES users(User_id)
);
/* Create feed Table 
    - unique values, generated automatically key and cannot contain null values */
CREATE TABLE feed (
    Feed_id integer NOT NULL AUTO_INCREMENT,
    User_id integer,
    Feed_content varchar(255) NOT NULL,
    Create_feed datetime,
    PRIMARY KEY (Feed_id),
    FOREIGN KEY (User_id) REFERENCES users(User_id)
);
/* Create comment Table 
    - unique values, generated automatically key and cannot contain null values */
CREATE TABLE feed_comment (
    Comment_id integer NOT NULL AUTO_INCREMENT,
    Feed_id integer,
    User_id integer,
    Comment_content varchar(255),
    Create_at datetime,
    PRIMARY KEY (Comment_id),
    FOREIGN KEY (Feed_id) REFERENCES feed(Feed_id),
    FOREIGN KEY (User_id) REFERENCES users(User_id)
);
/* Create share Table 
    - unique values, generated automatically key and cannot contain null values */
CREATE TABLE feed_share (
    Share_id integer NOT NULL AUTO_INCREMENT,
    Feed_id integer,
    User_id integer,
    Share_date datetime,
    PRIMARY KEY (Share_id),
    FOREIGN KEY (Feed_id) REFERENCES feed(Feed_id),
    FOREIGN KEY (User_id) REFERENCES users(User_id)
);
/* Create clap Table 
    - unique values, generated automatically key and cannot contain null values */
CREATE TABLE feed_clap (
    Clap_id integer NOT NULL AUTO_INCREMENT,
    Feed_id integer,
    User_id integer,
    Clap_status boolean DEFAULT FALSE,
    PRIMARY KEY (Clap_id),
    FOREIGN KEY (Feed_id) REFERENCES feed(Feed_id),
    FOREIGN KEY (User_id) REFERENCES users(User_id)
);
/* Create delete Table 
    - unique values, generated automatically key and cannot contain null values */
CREATE TABLE feed_delete (
    Delete_id integer NOT NULL AUTO_INCREMENT,
    Feed_id integer,
    User_id integer,
    Delete_status boolean DEFAULT FALSE,
    Delete_date datetime,
    PRIMARY KEY (Delete_id),
    FOREIGN KEY (Feed_id) REFERENCES feed(Feed_id),
    FOREIGN KEY (User_id) REFERENCES users(User_id)
);


