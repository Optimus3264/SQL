create database mobiles;
use mobiles;

select * from mobiles;

-- greater than and less than
select * from mobiles where battery_capacity > 5000;
select * from mobiles where ram < '8gb';

-- order by
select * from mobiles order by launched_year asc;
select * from mobiles order by mobile_weight desc;

-- between
select * from mobiles where RAM between 6 and 12;
 
-- min and max
select min(back_camera) as smallestnumber from mobiles;
select max(launched_year) as largestnumber from mobiles;

-- avg ,sum and count
select avg(mobile_weight) from mobiles;
select sum(mobile_weight) from mobiles;
select count(mobile_weight) from mobiles;

-- in
select * from mobiles where company_name in ('Apple', 'samsung');
select * from mobiles where company_name not in ('apple','samsung','vivo');

-- and ,or and not
select * from mobiles where company_name='oneplus' and RAM='8gb';
select * from mobiles where company_name='apple' or launched_year=2025;
select * from mobiles where not company_name='samung';

-- limit
select * from mobiles limit 5;

-- group by
select count(company_name), RAM from mobiles group by RAM;
select count(ram), company_name from mobiles group by company_name order by count(ram)desc;

-- having
select count(launched_year),company_name from mobiles group by company_name having count(launched_year> 2005);