-- create table students
use students;
create table students(
id int ,
name varchar(50),
email varchar(50),
date_of_birth varchar(50)
);
drop table students;

-- create table course
create table course(
course_id int,
course_name varchar(50),
course_description varchar(50)
);

insert into students values (1,'Rushikesh','rushikesh@gmail.com','2001/05/28');
insert into students values (2,'Joshua','joshua@gmail.com','2000/07/24');
insert into students values (3,'omkar','omkar@gmail.com','2002/10/03');
insert into students values (4,'siddarth','siddarth@gmail.com','1996/04/10');

select * from students;

insert into course values(101,'intro to sql','learn sql basic');
insert into course values(102,'advanced sql','comples queries');
insert into course values(103,'database design','ER model');
insert into course values(104,'python','learn python basic');

select * from course;


-- where and order by 

select name, date_of_birth from students where date_of_birth > '2000/07/24' order by date_of_birth asc;




