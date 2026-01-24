use simcard_details;
-- mysql min() and max() functions 
select min(recharge_amount) As SmallestPrice from simcard_info;
select max(recharge_amount) As LargestPrice from simcard_info;


-- MySQL COUNT(), AVG() and SUM() Functions
select COUNT(provider) from simcard_info;
select AVG(recharge_amount) from simcard_info; 
select sum(recharge_amount) from simcard_info;

