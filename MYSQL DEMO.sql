create database joinDemo;
use joinDemo;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id INT,
    salary INT
);

INSERT INTO employees VALUES
(1, 'Rahul', 101, 30000),
(2, 'Aman', 102, 40000),
(3, 'Neha', 101, 35000),
(4, 'Priya', 103, 45000),
(5, 'Karan', NULL, 28000);

CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

INSERT INTO departments VALUES
(101, 'IT'),
(102, 'HR'),
(103, 'Finance'),
(104, 'Marketing');

select * from employees as e inner join departments as d
on e.dept_id = d.dept_id;
-- vo employees jo kisi department ka part 
-- nhi h aur hai dono ayenge 
-- select * from employees as e left join departments as d
-- on e.dept_id = d.dept_id;

create table RESULT
as select emp_id,emp_name,salary,d.dept_id,dept_name
 from employees as e right join departments as d
on e.dept_id = d.dept_id where emp_id is null;



select * from result;





















