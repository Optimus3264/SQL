create database heart_disease;
use heart_disease;

select * from heart;

-- count,avd and sum
select count(sex) from heart where sex=1;
select avg(age) from heart;
select sum(age) from heart;

-- min and max
select max(age) as largest_number from heart;
select min(chol) as smallest_number from heart;

-- between
select * from heart where age between 50 and 55;
select count(age) from heart where age between 50 and 55;

-- greater than and less than
select * from heart where chol > 250;
select * from heart where age < 50;

-- in clause
select * from heart where ca in (2,4);
select * from heart where ca not in (1,0) ;

-- and ,or and not
select * from heart where sex=1 and cp=2;
select * from heart where sex=0 or cp=1;
select * from heart where not sex=1 and cp=0;

-- group by
select count(age),sex from heart group by sex;

-- ascending and descending order 
select * from heart order by age asc;
select * from heart order by chol desc;

-- limit clause
select * from heart limit 1;

-- having clause 
select count(age), chol from heart group by chol having count(age>55);