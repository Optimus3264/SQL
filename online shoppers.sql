create database online_shopping;
use online_shopping;

select * from online_shoppers_intention;


-- give all the records associated with Feb month?
select * from online_shoppers_intention where month='Feb';

-- how many entries in dataset where visitor type is new visitor?
select count(*) from online_shoppers_intention where visitortype='new_visitor'; -- for how many/how much use query 'count'

-- how many entries in dataset where visitor type is return_visitor?
select count(*) from online_shoppers_intention where visitortype='returning_visitor';

-- how many entries of mon feb in dataset 
select count(*) from online_shoppers_intention where month='Feb';
