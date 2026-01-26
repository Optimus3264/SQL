create database titanic;
use titanic;

select * from titanic_survivors;

-- total number of survivors
select count(survived) from titanic_survivors;


-- total number of survived in pclass
select count(pclass) from titanic_survivors where pclass='1';

-- total number of survived in 2nd class
select count(pclass) from titanic_survivors where pclass='2';

-- total number of survived in 3rd class
select count(pclass) from titanic_survivors where pclass='3';

-- total number of passenges
select count(passengerId) from titanic_survivors;

 


-- by observing the results of total number of passengers and total number of survived passegers. only 28.57% of passenger is survived

-- total number of male & female
select count(sex) from titanic_survivors where sex='male';

select count(sex) from titanic_survivors where sex='female';

-- total number of siblings
select count(sibsp) from titanic_survivors;

-- total number of male & female survived
select count(sex='male') from titanic_survivors where survived=0;

 select count(survived) from titanic_survivors where sex='female';

-- total ticket cost
select sum(fare) from titanic_survivors;

-- cost wise difference
select sum(fare) from titanic_survivors where pclass='1';

select sum(fare) from titanic_survivors where pclass='2';

select sum(fare) from titanic_survivors where pclass='3';
