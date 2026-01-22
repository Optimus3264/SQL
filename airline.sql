create database Airport;
use Airport;
create table Airline_info(
Id int,
customer_name varchar(250),
plane_name varchar(250),
travel_date datetime,
ticket_price int,
payment_mode varchar(250)
);

select * from airline_info;

insert into airline_info values (1,'Bhushan','boing','2025-05-25','4000','online');
insert into airline_info values (2,'rushikesh','air india','2025-04-26','3000','cash');
insert into airline_info values (3,'gaurav','vistera','2025-05-28','5000','online');
insert into airline_info values (4,'shreyash','quater','2024-04-20','6000','online');
insert into airline_info values (5,'kavya','emirates','2025-08-02','8000','online');
insert into airline_info values (6,'alice','indigo','2025-01-01','6500','cash');
insert into airline_info values (7,'bob','boing','2024-12-25','7800','cash');
insert into airline_info values (8,'charlie','emirates','2025-01-01','5200','online');
insert into airline_info values (9,'donald','air india','2025-02-02','5500','cash');
insert into airline_info values (10,'elizabeth','vistera','2025-03-12','6400','cash');


-- count the payment mode
select count(payment_mode) from airline_info where payment_mode='online';
select count(payment_mode) from airline_info where payment_mode='cash';

-- greater than 5000
select * from airline_info where ticket_price > 5000;

-- less than 7000
select * from airline_info where ticket_price < 7000;

-- between 4000 to 7000
select * from airline_info where ticket_price between 4000 and 7000;

-- total payment on tickets
select sum(ticket_price) from airline_info;

-- air india flights
select * from airline_info where plane_name='air india';

-- plane or payment method
select * from airline_info where plane_name='vistera' or payment_mode='online';

-- min,max
select min(ticket_price) as cheapest_price from airline_info;
select max(ticket_price) as costly_price from airline_info;

-- between dates
select * from airline_info where travel_date between '2025-01-01' and '2025-05-25';

-- total payments by method

select payment_mode,
count(*) as Trasnactions,
sum(ticket_price) as Total_Collected
from airline_info
group by payment_mode;
