-- create database superstore
create database superstore;
use superstore;

create table products(
product_id int primary key auto_increment,
product_name varchar(50),
product_price varchar(50),
mfg_date varchar(50),
product_company varchar(100)
);

create table categories(
id int primary key auto_increment,
category_name varchar(50) not null
);

create table product_categories(
product_id int , 
id int ,
primary key(product_id, id),
foreign key (product_id) references products(product_id),
foreign key (id) references categories(id)
);



insert into products(product_id, product_name , product_price, mfg_date,product_company) values
('1', 'parle-G', '10','01-jan-2024','parle'),
('2','goodday', '20', '20-mar-2024','bretinna');

insert into categories(category_name)values
('food'),
('medicine');


insert into product_categories(product_id,id) values
(1,2),  
(2,1);

