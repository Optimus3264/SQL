create database schools;
use schools;

create table school(
school_id int primary key,
school_name varchar(100)
);

create table students(
student_id int primary key,
student_name varchar(100),
age int,
school_id int,
foreign key (school_id) references school(school_id)
);

insert into school (school_id,school_name) values
(1,'greenwood high'),
(2,'sunrise academy'),
(3,'hilltop school');

insert into students (student_id,student_name,age,school_id) values
(101,'Rushikesh',25,1),
(102,'Bhushan',24,1),
(103,'Josh',23,2),
(104,'shiiarth',24,3),
(105,'om',20,2);

select * from school;
select * from students;

-- find student from school 'sunrise academy'
select student_name from students where school_id=(select school_id from school where school_name='sunrise academy');
select student_name from students where school_id=(select school_id from school where school_name='greenwood high');

-- list the school 	that student age less than 24 greater than 24
select school_name from school where school_id in (select school_id from students where age < 23);
select school_name from school where school_id in (select school_id from students where age >24);

-- show student who older than average age 
select student_name from students where age > (select avg(age) from students);

-- corelated subquery
select s1.student_name,s1.age from students s1 where (s1.age)> (select avg(s2.age) from students s2 where 	s2.school_id=s1.school_id);

