-- create database game_store
create database game_store;
use game_store;

create table user(
user_id int,
user_name varchar(30),
email varchar(255),
phone varchar(255)
); 

create table games(
game_id int,
title varchar(100),
genre varchar(50),
price varchar(50),
stock varchar(50)
);

drop table user;