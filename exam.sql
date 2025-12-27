-- Q2.3
create database students;
use students;

create table students(
name varchar(50),
roll_no int,
marks varchar(50)
);

select * from students;

insert into students values ('Rushikesh',40,85);
insert into students values ('bhushan',41,88);
insert into students values ('gaurav',40,90);



-- Q4
create database student;
use student;

create table student(
roll_no varchar(50),
name varchar(50),
class varchar(50),
marks varchar(50)
);


insert into student values(101,'alice',12,88);
insert into student values(102,'bob',12,82);
insert into student values(103,'charlie',11,75);
insert into student values(104,'daisy',11,67);
insert into student values(105,'ethan',12,81);

drop table student;
 select * from student;
 
 select * from student where class=12;
 select * from student where marks > 80;
 
 alter table student
 add age varchar(50);
 
 
 -- Q5
create database employee;
use employee;

create table employee(
EmpID int primary key,
Name varchar(50),
Department varchar(30),
Salary float
);

insert into employee values(1,'jhon','HR',50000);
insert into employee values(2,'Priya','IT',65000);
insert into employee values(3,'Aditya','Finance',60000);

select * from employee where Department='it';