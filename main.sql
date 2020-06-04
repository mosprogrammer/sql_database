-- Create Database
CREATE DATABASE ebamobile_db;
-- Use ebamobile_db Collection
USE ebamobile_db;
-- Create Table and Show all Column : 'users'
CREATE TABLE users (
    user_id integer NOT NULL UNIQUE AUTO_INCREMENT,
    firstname varchar(15) NOT NULL,
    lastname varchar(15) NOT NULL,
    profileurl varchar(255),
    PRIMARY KEY (user_id),
);
Show Column
from users;
-- Create Table and Show all Column : 'friends'
CREATE TABLE friends (
    friend_id integer NOT NULL UNIQUE AUTO_INCREMENT,
    user_id integer NOT NULL,
    following boolean NOT NULL,
    PRIMARY KEY (friend_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id),
);
Show Column
from friends;
-- Create Table and Show all Column : 'posts'
CREATE TABLE posts (
    post_id integer NOT NULL UNIQUE AUTO_INCREMENT,
    user_id integer NOT NULL,
    title varchar (255),
    description varchar (255),
    imageurl varchar(255),
    type varchar NOT NULL(20),
    created_date datetime,
    hidden_friends_id integer,
    PRIMARY KEY (post_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (hidden_friends_id) REFERENCES friends(friend_id)
);
Show Column
from posts;
-- Create Table and Show all Column : 'comments'
CREATE TABLE comments(
    comment_id INTEGER NOT NULL UNIQUE AUTO_INCREMENT,
    post_id INTEGER NOT NULL,
    user_id INTEGER NOT NULL,
    message varchar(255),
    PRIMARY KEY (comment_id),
    FOREIGN KEY (post_id) REFERENCES posts(post_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id),
);
show columns
from comments;
-- Create Table and Show all Column : 'shares'
CREATE TABLE shares(
    share_id INTEGER NOT NULL UNIQUE AUTO_INCREMENT,
    post_id INTEGER NOT NULL,
    user_id INTEGER NOT NULL,
    PRIMARY KEY (share_id),
    FOREIGN KEY (post_id) REFERENCES posts(post_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id),
);
show columns
from shares;
-- Create Table and Show all Column : 'claps'
CREATE TABLE claps(
    clap_id INTEGER NOT NULL UNIQUE AUTO_INCREMENT,
    post_id INTEGER NOT NULL,
    user_id INTEGER NOT NULL,
    PRIMARY KEY (clap_id),
    FOREIGN KEY (post_id) REFERENCES posts(post_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id),
);
show columns
from claps;