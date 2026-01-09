create database medical;
use medical;

select * from medical;

-- order by
select * from medical order by blood_sugar asc;
select * from medical order by age desc;

-- greater then and less than 
select * from medical where heart_rate > 75;
select count(heart_rate) from medical where heart_rate>75;

select * from medical where age < 50;
select count(age) from medical where age <50;

-- between 
select * from medical where heart_rate between 70 and 80;

-- min max 
select min(age) as smallestnumber from medical;
select max(blood_sugar) as largestnumber from medical;

-- avg ,sum and count
select avg(heart_rate) from medical;
select sum(heart_rate) from medical;
select count(heart_rate) from medical;

-- and ,or and not
select * from medical where gender=1 and result='positive';
select * from medical where gender=0 or heart_rate=60;
select * from medical where  not result='negative';

-- limit 
select * from medical limit 10;

-- in 
select * from medical where heart_rate in (60,65);
select * from medical where blood_sugar not in (160,270);

-- group by
select count(age),heart_rate from medical group by heart_rate;

select count(age), blood_sugar from medical group by blood_sugar order by count(age)asc;

select count(age), heart_rate from medical group by heart_rate order by count(age)desc;

-- having 
select count(age), gender from medical group by gender having count(age>2);

