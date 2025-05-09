-- create database exists_example
 create database exist_example;
 use exist_example;
 
 -- create table Products_table
 create table Products(
 product_id int,
 product_name varchar(255),
 supplier_id int,
 catagory_id int,
 unit varchar(255),
 price varchar(255)
 );
 
 select * from products;
 
insert into products values (1,'chais', '1', '1','10' ,'10');
insert into products values (2,'chang', '1', '1','10' ,'20');
insert into products values (3,'aniseed syrup', '1', '2','24' ,'10');
insert into products values (4,'chef antons cajun seasoning', '2', '2','48' ,'22');
insert into products values (5,'chef antons gumbo mix', '2', '2','36' ,'21');

-- create table suppliers 
create table suppliers(
supplier_id int,
supplier_name varchar(255),
contact_name varchar (255),
address varchar (255),
city varchar (255),
postal_code varchar (255),
country varchar (255)
);

select * from suppliers;

insert into suppliers values (1,'ram treaders', 'bhushan patil', 'rk nagar','kolhapur' ,'416001','india');
insert into suppliers values (2,'ripcord pharma', 'prakash patil', 'kagal','kolhapur' ,'416011','india');
insert into suppliers values (3,'shree liquids', 'rajiv bhosale', 'kodoli','kolhapur' ,'416114','india');
insert into suppliers values (4,'tejas foods', 'suresh khot', 'wakad','pune' ,'416115','india');

-- mysql EXISTS examples
-- The following SQL statement returns TRUE and lists the suppliers with a product price less than 20:

select supplier_name
from suppliers
where exists (select product_name from products where products.supplier_id= suppliers.supplier_id and price<20);

drop table products_table;
drop table suppliers;

-- The following SQL statement returns TRUE and lists the suppliers with a product price equal to 22:




