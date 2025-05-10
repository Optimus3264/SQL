-- create database customer info
CREATE DATABASE customer_info;
use customer_info;
-- create table customer_details
create table customer_details(
customer_id int,
customer_name varchar (255),
contact_name varchar(255),
address varchar(255),
city varchar(255),
postal_code varchar(255),
country varchar(255)
);
  
 select * from  customer_details;
  insert into customer_details values (1,'rushikesh patil','rushikesh',' plot 100 ,r k nagar','kolhapur','416013','india');
  insert into customer_details values (2, 'rahul patil' , 'rahul', 'plot 101, rrp','kolhapur','416012', 'india');
  insert into customer_details values (3, 'abhay kamble','abhay','plot 102, LA','LA','416114' , 'USA');

Drop table customer_details;


-- create table customer_order
create table customer_orders(
order_id int,
customer_id varchar (255),
employee_id varchar (255),
order_date varchar(255),
shipper_id varchar(255)
);

insert into customer_orders values (10308,'2', '7','1996-09-18', '3');
insert into customer_orders values (10309,'37', '3', '1996-09-19', '1');
insert into customer_orders values (10310,'77', '8', '1996-09-20' ,'2');
 select * from customer_details;
 
 select * from customer_orders;
 
 -- inner join 
 SELECT Customer_details.OrderID, Customer_details.CustomerName
FROM customer_Orders
INNER JOIN Customers_details ON customer_details.CustomerID = Customer_orders.CustomerID;