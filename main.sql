-- Create Database
CREATE DATABASE ebamobile_db;
-- Use ebamobile_db Collection
USE ebamobile_db;
-- Create Table and Show all Column : 'users'
CREATE TABLE users (
    _id integer NOT NULL UNIQUE AUTO_INCREMENT,
    firstname varchar(15) NOT NULL,
    lastname varchar(15) NOT NULL,
    profileurl varchar(255),
    PRIMARY KEY (_id),
);
Show Column
from users;
-- Create Table and Show all Column : 'friends'
CREATE TABLE friends (
    _id integer NOT NULL UNIQUE AUTO_INCREMENT,
    user_id integer NOT NULL,
    PRIMARY KEY (_id),
    FOREIGN KEY (user_id) REFERENCES users(_id),
);
Show Column
from friends;
-- Create Table and Show all Column : 'posts'
CREATE TABLE posts (
    _id integer NOT NULL UNIQUE AUTO_INCREMENT,
    user_id integer,
    title varchar (255),
    description varchar (255),
    imageurl varchar(255),
    type varchar (20),
    created_date datetime,
    hidden_friends_id integer,
    PRIMARY KEY (_id),
    FOREIGN KEY (user_id) REFERENCES users(_id),
    FOREIGN KEY (hidden_friends_id) REFERENCES friends(_id)
);
Show Column
from posts;
-- Create Table and Show all Column : 'comments'
CREATE TABLE comments(
    _id INTEGER NOT NULL UNIQUE AUTO_INCREMENT,
    post_id INTEGER NOT NULL,
    user_id INTEGER NOT NULL,
    message varchar(255),
    PRIMARY KEY (_id),
    FOREIGN KEY (post_id) REFERENCES posts(_id),
    FOREIGN KEY (user_id) REFERENCES users(_id),
);
show columns
from comments;
-- Create Table and Show all Column : 'shares'
CREATE TABLE shares(
    post_id INTEGER NOT NULL,
    user_id INTEGER NOT NULL,
    FOREIGN KEY (post_id) REFERENCES posts(_id),
    FOREIGN KEY (user_id) REFERENCES users(_id),
);
show columns
from shares;
-- Create Table and Show all Column : 'claps'
CREATE TABLE claps(
    post_id INTEGER NOT NULL,
    user_id INTEGER NOT NULL,
    FOREIGN KEY (post_id) REFERENCES posts(_id),
    FOREIGN KEY (user_id) REFERENCES users(_id),
);
show columns
from claps;