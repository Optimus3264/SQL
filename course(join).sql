-- create table students
create table student_info(
student_id int,
name varchar(50)
);

create table courses(
course_id int,
course_name varchar(50),
student_id int
);

insert into student_info values (1,'alice');
insert into student_info values (2,'joe');
insert into student_info values (3,'charls');

insert into courses values (101,'sql basics',1);
insert into courses values (102,'python basics',2);
insert into courses values (103,'advanced sql',3);

select * from student_info;
select * from courses;
drop table courses;
-- inner joins 
select student_info.name ,courses.course_name
from student_info
inner join courses on student_info.student_id=courses.student_id;

-- left joins
select student_info.name ,courses.course_name from student_info
left join courses on student_info.student_id=courses.student_id;

-- right joins
select student_info.name, courses.course_name from student_info right join courses on student_info.student_id=courses.student_id;

-- full join 
select student_info.name, courses.course_name from student_info full join courses on student_info.student_id=courses.student_id;

