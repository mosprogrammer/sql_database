-- Create Database
CREATE DATABASE sql_homework;
-- Use database sql_homework
USE sql_homework;
-- Create Table Users

CREATE TABLE Users(
    id integer NOT NULL PRIMARY KEY AUTO_INCREMENT,
    firstname varchar,
    lastname varchar,
    email varchar(50),
    password varchar
);

-- Create Table Follow
CREATE TABLE Follow(
    id integer NOT NULL PRIMARY KEY AUTO_INCREMENT,
    followerId integer,
    followingId integer,
    FOREIGN KEY(followerId) REFERENCES Users(id),
    FOREIGN KEY(followingId) REFERENCES Users(id)
);

-- Create Table Comments 
CREATE TABLE Comments(
    id integer NOT NULL PRIMARY KEY AUTO_INCREMENT,
    postId integer,
    userId integer,
    comment varchar,
    FOREIGN KEY(userId) REFERENCES Users(id),
    FOREIGN KEY(postId) REFERENCES Posts(id)
);

-- Create Table Claps
CREATE TABLE Claps(
    id integer NOT NULL PRIMARY KEY AUTO_INCREMENT,
    postId integer,
    userId integer,
    FOREIGN KEY(userId) REFERENCES Users(id),
    FOREIGN KEY(postId) REFERENCES Posts(id)
);

-- Create Table Shares
CREATE TABLE Share_posts (
    id integer NOT NULL PRIMARY KEY AUTO_INCREMENT,
    postId integer,
    userId integer,
    FOREIGN KEY(userId) REFERENCES Users(id),
    FOREIGN KEY(postId) REFERENCES Posts(id)
);

-- Create Table Hides
CREATE TABLE Hide_posts(
    id integer NOT NULL PRIMARY KEY AUTO_INCREMENT,
    postId integer,
    userId integer,
    FOREIGN KEY(userId) REFERENCES Users(id),
    FOREIGN KEY(postId) REFERENCES Posts(id)
);

-- Create Table Posts
CREATE TABLE Posts(
    id integer NOT NULL PRIMARY KEY AUTO_INCREMENT,
    body varchar,
    userId integer,
    commentId integer,
    clapId integer,
    shareId integer,
    hideId integer,
    deleted boolean,
    FOREIGN KEY(userId) REFERENCES Users(id),
    FOREIGN KEY(commentId) REFERENCES Comments(id),
    FOREIGN KEY(clapId) REFERENCES Claps(id),
    FOREIGN KEY(shareId) REFERENCES Share_posts(id),
    FOREIGN KEY(hideId) REFERENCES Hide_posts(id)
);
--Show TABLES Result
SHOW TABLES