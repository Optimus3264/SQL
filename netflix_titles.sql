create database netflix_titles;
use netflix_titles;

select * from netflix_titles;

drop table netflix_titles;

-- between clause
select * from netflix_titles where release_year between 2001 and 2005;

-- greater than and less than
select count(duration) from netflix_titles where duration >' 1 season';
select * from netflix_titles where duration > '1 season';

select * from netflix_titles where duration <100;
select count(duration) from netflix_titles where duration < 100;

-- ascending and descending order
select * from netflix_titles order by title asc;
select * from netflix_titles order by listed_in desc;

-- and ,or , not operators
select * from netflix_titles where listed_in='documentaries';
select * from netflix_titles where release_year='2021' and duration='1 season';
select * from netflix_titles where country='united states' or duration='2 season';

-- group by
select count(show_id),type from netflix_titles group by type;

-- limit clause
select * from netflix_titles limit 10;

-- in operator
select * from netflix_titles where type in ('tv show');
select * from netflix_titles where release_year not in (2021,2020);

-- having clause
select count(show_id) duration from netflix_titles group by duration having count(show_id> 90);
