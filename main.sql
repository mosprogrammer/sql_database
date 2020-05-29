-- create database 
CREATE DATABASE eba_test;

-- select database eba_test
USE eba_test;
-- create table users

CREATE TABLE users(
id INTEGER  NOT NULL AUTO_INCREMENT,
email VARCHAR (20),
fullname VARCHAR(20) NOT NULL ,
date_of_birth DATE ,
createAt DATETIME ,
PRIMARY KEY (id)
);

-- create table follow
CREATE TABLE follow(
id INTEGER NOT NULL AUTO_INCREMENT ,
following_user_id INTEGER ,
follower_user_id INTEGER ,
follow_status tinyint (1) ,
PRIMARY KEY (id) ,
FOREIGN KEY (following_user_id) REFERENCES users(id) ,
FOREIGN KEY (follower_user_id) REFERENCES users(id) 
);

-- create table comments

CREATE TABLE comments(
id INTEGER NOT NULL AUTO_INCREMENT ,
user_id INTEGER ,
feeds_id INTEGER ,
PRIMARY KEY (id),
FOREIGN KEY (user_id) REFERENCES users(id) 
);

-- create table posts
CREATE TABLE posts(
id INTEGER NOT NULL AUTO_INCREMENT ,
user_id INTEGER ,
message VARCHAR (255)  ,
PRIMARY KEY (id) ,
FOREIGN KEY (user_id) REFERENCES users(id) 
);

-- create table claps
CREATE TABLE claps(
id INTEGER NOT NULL AUTO_INCREMENT ,
feeds_id INTEGER ,
clap_total INTEGER ,
user_id INTEGER ,
PRIMARY KEY (id) ,
FOREIGN KEY (user_id) REFERENCES users(id) 
);

-- create table feeds
CREATE TABLE feeds(
id INTEGER NOT NULL AUTO_INCREMENT,
post_id INTEGER ,
feed_type VARCHAR (10) ,
user_id INTEGER ,
deleted_status tinyint (1) ,
PRIMARY KEY (id) ,
FOREIGN KEY (user_id) REFERENCES users(id) ,
FOREIGN KEY (post_id) REFERENCES posts(id) 
);

-- create table hidden_user
CREATE TABLE hidden_user(
id INTEGER NOT NULL AUTO_INCREMENT ,
feeds_id INTEGER ,
user_id INTEGER ,
PRIMARY KEY (id) ,
FOREIGN KEY (user_id) REFERENCES users(id) ,
FOREIGN KEY (feeds_id) REFERENCES feeds(id) 
);

-- create table share_users
CREATE TABLE share_users(
id INTEGER NOT NULL AUTO_INCREMENT ,
feeds_id INTEGER ,
user_id INTEGER ,
share_user_id INTEGER ,
PRIMARY KEY (id) ,
FOREIGN KEY (user_id) REFERENCES users(id) ,
FOREIGN KEY (feeds_id) REFERENCES feeds(id) ,
FOREIGN KEY (share_user_id) REFERENCES users(id) 
);