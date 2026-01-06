-- create database keys_example
create database keys_example;
use keys_example;

CREATE TABLE Employees(
EmployeeID Int Primary Key auto_increment,
FirstName Varchar(50),
LastName Varchar(50),
Email Varchar(100) Unique,
Phome Varchar(15)
);

-- creating departments table
create table Departments(
department_id int Primary Key auto_increment,
department_name varchar(100) not null
);

-- creating employee_department table with compositeprimary kry 
create table Employee_departments(
employeeid int ,
department_id int,
primary key (employeeid,department_id),
foreign key (employeeid) references employees(employeeid),
foreign key (department_id) references departments(department_id)
);

INSERT INTO Departments (department_Name) VALUES
('HR'),
('IT'),
('Finance');

INSERT INTO Employees (EmployeeID, FirstName, LastName, Email, Phome) VALUES
('1', 'John', 'Doe', 'john.doe@example.com', '1234567890'),
('2', 'Jane', 'Smith', 'jane.smith@example.com', '0987654321');

INSERT INTO Employee_Departments (EmployeeID, Department_id) Values
(1,2),  -- John works in IT
(2,1);  -- Jane works in HR

-- Retrive data

select e.employeeid, e.FirstName, e.LastName, d.Department_name
from employees e
join employee_departments ed on e.employeeid = ed.employeeid
join departments d on ed.department_id = d.department_id;