create database fashion;
use fashion;

select * from fashion_sales;

-- order by
select * from fashion_sales order by item_purchased desc;
select * from fashion_sales order by customer_reference_id asc;

-- greater then , less than
select * from fashion_sales where review_rating > 4.1;
select * from fashion_sales where review_rating < 2;

-- between
select * from fashion_sales where review_rating between 2 and 2.5;

-- min and max
select min(review_rating) as smallestnumber from fashion_sales;
select max(review_rating) as largestnumber from fashion_sales;

-- like 
select * from fashion_sales where item_purchased like'_a%';
select * from fashion_sales where item_purchased like'%c';
select * from fashion_sales where item_purchased not like '%c';
-- avg , sum and count
select avg(customer_reference_id) from fashion_sales;
select sum(customer_reference_id) from fashion_sales;
select count(customer_reference_id) from fashion_sales;

-- and , or and not
select * from fashion_sales where item_purchased='tunic' and payment_method='cash';
select * from fashion_sales where review_rating=2 or payment_method='credit';
select * from fashion_sales where not payment_method='cash';

-- limit
select * from fashion_sales limit 15;

-- in
select * from fashion_sales where item_purchased in ('tunic','boots');
select * from fashion_sales where payment_method not in ('credit card');

-- group by 
select count(customer_reference_id),item_purchased from fashion_sales group by item_purchased;
select count(customer_reference_id),review_rating from fashion_sales group by review_rating order by count(customer_reference_id) asc;

-- having
select count(payment_method) ,review_rating from fashion_sales group by review_rating having count(payment_method>2);