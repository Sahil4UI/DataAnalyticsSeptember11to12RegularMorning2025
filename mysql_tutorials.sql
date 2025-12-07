Last login: Sat Dec  6 18:18:01 on ttys020
sahil@SAHILs-MacBook-Air ~ % mysql -u root
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 9
Server version: 9.4.0 Homebrew

Copyright (c) 2000, 2025, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> create database;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> 
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| assignments        |
| company            |
| information_schema |
| mycompany          |
| mysql              |
| OurCOmpany         |
| performance_schema |
| school             |
| schools            |
| sys                |
+--------------------+
10 rows in set (0.094 sec)

mysql> drop schools;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'schools' at line 1
mysql> drop database  schools;
Query OK, 1 row affected (0.053 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| assignments        |
| company            |
| information_schema |
| mycompany          |
| mysql              |
| OurCOmpany         |
| performance_schema |
| school             |
| sys                |
+--------------------+
9 rows in set (0.001 sec)

mysql> drop database school;
Query OK, 1 row affected (0.012 sec)

mysql> create database school;
Query OK, 1 row affected (0.005 sec)

mysql> use school;
Database changed
mysql> 
mysql> create table students(roll int primary key,name varchar(20),
    -> marks int);
Query OK, 0 rows affected (0.093 sec)

mysql> show tables;
+------------------+
| Tables_in_school |
+------------------+
| students         |
+------------------+
1 row in set (0.018 sec)

mysql> describe students;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| roll  | int         | NO   | PRI | NULL    |       |
| name  | varchar(20) | YES  |     | NULL    |       |
| marks | int         | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
3 rows in set (0.008 sec)

mysql> desc students;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| roll  | int         | NO   | PRI | NULL    |       |
| name  | varchar(20) | YES  |     | NULL    |       |
| marks | int         | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
3 rows in set (0.003 sec)

mysql> insert into students values(101,"Mohit",90);
Query OK, 1 row affected (0.016 sec)

mysql> select * from students;
+------+-------+-------+
| roll | name  | marks |
+------+-------+-------+
|  101 | Mohit |    90 |
+------+-------+-------+
1 row in set (0.001 sec)

mysql> select roll,name from students;
+------+-------+
| roll | name  |
+------+-------+
|  101 | Mohit |
+------+-------+
1 row in set (0.003 sec)

mysql> select * from students;
+------+-------+-------+
| roll | name  | marks |
+------+-------+-------+
|  101 | Mohit |    90 |
+------+-------+-------+
1 row in set (0.001 sec)

mysql> insert into students values(101,"Mohit",90);
ERROR 1062 (23000): Duplicate entry '101' for key 'students.PRIMARY'
mysql> 
mysql> insert into students(roll,name,marks) values(102,"Mukesh",90);
Query OK, 1 row affected (0.003 sec)

mysql> select * from students;
+------+--------+-------+
| roll | name   | marks |
+------+--------+-------+
|  101 | Mohit  |    90 |
|  102 | Mukesh |    90 |
+------+--------+-------+
2 rows in set (0.001 sec)

mysql> insert into students values(101,"Mohit",90),
    -> ^C

^C
mysql> 
mysql> insert into students values(103,"naresh",50),
    -> (104,"Suresh",0),(105,"Vishal",90);
Query OK, 3 rows affected (0.002 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select * from students;
+------+--------+-------+
| roll | name   | marks |
+------+--------+-------+
|  101 | Mohit  |    90 |
|  102 | Mukesh |    90 |
|  103 | naresh |    50 |
|  104 | Suresh |     0 |
|  105 | Vishal |    90 |
+------+--------+-------+
5 rows in set (0.001 sec)

mysql> update students set marks = 100 where roll=105;
Query OK, 1 row affected (0.003 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from students;
+------+--------+-------+
| roll | name   | marks |
+------+--------+-------+
|  101 | Mohit  |    90 |
|  102 | Mukesh |    90 |
|  103 | naresh |    50 |
|  104 | Suresh |     0 |
|  105 | Vishal |   100 |
+------+--------+-------+
5 rows in set (0.001 sec)

mysql> delete from students where roll=104 ;
Query OK, 1 row affected (0.002 sec)

mysql> select * from students;
+------+--------+-------+
| roll | name   | marks |
+------+--------+-------+
|  101 | Mohit  |    90 |
|  102 | Mukesh |    90 |
|  103 | naresh |    50 |
|  105 | Vishal |   100 |
+------+--------+-------+
4 rows in set (0.001 sec)

mysql> alter table students add column contact int;
Query OK, 0 rows affected (0.024 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from students;
+------+--------+-------+---------+
| roll | name   | marks | contact |
+------+--------+-------+---------+
|  101 | Mohit  |    90 |    NULL |
|  102 | Mukesh |    90 |    NULL |
|  103 | naresh |    50 |    NULL |
|  105 | Vishal |   100 |    NULL |
+------+--------+-------+---------+
4 rows in set (0.001 sec)

mysql> desc students;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| roll    | int         | NO   | PRI | NULL    |       |
| name    | varchar(20) | YES  |     | NULL    |       |
| marks   | int         | YES  |     | NULL    |       |
| contact | int         | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
4 rows in set (0.003 sec)

mysql> alter table students modify column contact char(10);
Query OK, 4 rows affected (0.023 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> desc students;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| roll    | int         | NO   | PRI | NULL    |       |
| name    | varchar(20) | YES  |     | NULL    |       |
| marks   | int         | YES  |     | NULL    |       |
| contact | char(10)    | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
4 rows in set (0.002 sec)

mysql> alter table students drop column contact;
Query OK, 0 rows affected (0.007 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc students;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| roll  | int         | NO   | PRI | NULL    |       |
| name  | varchar(20) | YES  |     | NULL    |       |
| marks | int         | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
3 rows in set (0.002 sec)

mysql> select * from students;
+------+--------+-------+
| roll | name   | marks |
+------+--------+-------+
|  101 | Mohit  |    90 |
|  102 | Mukesh |    90 |
|  103 | naresh |    50 |
|  105 | Vishal |   100 |
+------+--------+-------+
4 rows in set (0.001 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| assignments        |
| company            |
| information_schema |
| mycompany          |
| mysql              |
| OurCOmpany         |
| performance_schema |
| school             |
| sys                |
+--------------------+
9 rows in set (0.002 sec)

mysql> use mycompany;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> show tables;
+---------------------+
| Tables_in_mycompany |
+---------------------+
| products            |
+---------------------+
1 row in set (0.002 sec)

mysql> select * from products;
+-----+-----------------+--------+------+
| pid | pname           | pprice | qty  |
+-----+-----------------+--------+------+
| 101 | parle g biscuit |     12 | NULL |
| 102 | uncle chips     |     24 | NULL |
| 103 | godday          |      6 | NULL |
+-----+-----------------+--------+------+
3 rows in set (0.004 sec)

mysql> use company;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| assignments        |
| company            |
| information_schema |
| mycompany          |
| mysql              |
| OurCOmpany         |
| performance_schema |
| school             |
| sys                |
+--------------------+
9 rows in set (0.001 sec)

mysql> show tables;
+-------------------+
| Tables_in_company |
+-------------------+
| emp               |
+-------------------+
1 row in set (0.003 sec)

mysql> select * from emp;
+--------+-------+-------+--------+
| emp_id | name  | dept  | salary |
+--------+-------+-------+--------+
|    101 | Amit  | IT    |  45000 |
|    102 | Sahil | IT    |  75000 |
|    103 | Rahul | HR    |  95000 |
|    104 | Sam   | Sales |  34000 |
|    105 | Ronit | IT    |  65000 |
+--------+-------+-------+--------+
5 rows in set (0.003 sec)

mysql> select * from emp where emp_id=101;
+--------+------+------+--------+
| emp_id | name | dept | salary |
+--------+------+------+--------+
|    101 | Amit | IT   |  45000 |
+--------+------+------+--------+
1 row in set (0.001 sec)

mysql> select * from emp where emp_id between 101 and 103;
+--------+-------+------+--------+
| emp_id | name  | dept | salary |
+--------+-------+------+--------+
|    101 | Amit  | IT   |  45000 |
|    102 | Sahil | IT   |  75000 |
|    103 | Rahul | HR   |  95000 |
+--------+-------+------+--------+
3 rows in set (0.001 sec)

mysql> select * from emp where emp_id in (101,105);
+--------+-------+------+--------+
| emp_id | name  | dept | salary |
+--------+-------+------+--------+
|    101 | Amit  | IT   |  45000 |
|    105 | Ronit | IT   |  65000 |
+--------+-------+------+--------+
2 rows in set (0.001 sec)

mysql> select * from emp;
+--------+-------+-------+--------+
| emp_id | name  | dept  | salary |
+--------+-------+-------+--------+
|    101 | Amit  | IT    |  45000 |
|    102 | Sahil | IT    |  75000 |
|    103 | Rahul | HR    |  95000 |
|    104 | Sam   | Sales |  34000 |
|    105 | Ronit | IT    |  65000 |
+--------+-------+-------+--------+
5 rows in set (0.001 sec)

mysql> select * from emp order by salary;
+--------+-------+-------+--------+
| emp_id | name  | dept  | salary |
+--------+-------+-------+--------+
|    104 | Sam   | Sales |  34000 |
|    101 | Amit  | IT    |  45000 |
|    105 | Ronit | IT    |  65000 |
|    102 | Sahil | IT    |  75000 |
|    103 | Rahul | HR    |  95000 |
+--------+-------+-------+--------+
5 rows in set (0.001 sec)

mysql> select * from emp order by salary asc;
+--------+-------+-------+--------+
| emp_id | name  | dept  | salary |
+--------+-------+-------+--------+
|    104 | Sam   | Sales |  34000 |
|    101 | Amit  | IT    |  45000 |
|    105 | Ronit | IT    |  65000 |
|    102 | Sahil | IT    |  75000 |
|    103 | Rahul | HR    |  95000 |
+--------+-------+-------+--------+
5 rows in set (0.001 sec)

mysql> select * from emp order by salary desc ;
+--------+-------+-------+--------+
| emp_id | name  | dept  | salary |
+--------+-------+-------+--------+
|    103 | Rahul | HR    |  95000 |
|    102 | Sahil | IT    |  75000 |
|    105 | Ronit | IT    |  65000 |
|    101 | Amit  | IT    |  45000 |
|    104 | Sam   | Sales |  34000 |
+--------+-------+-------+--------+
5 rows in set (0.002 sec)

mysql> select min(salary),max(salary),sum(salary),avg(salary) from emp;
+-------------+-------------+-------------+-------------+
| min(salary) | max(salary) | sum(salary) | avg(salary) |
+-------------+-------------+-------------+-------------+
|       34000 |       95000 |      314000 |  62800.0000 |
+-------------+-------------+-------------+-------------+
1 row in set (0.003 sec)

mysql> select min(salary) as "min salary",max(salary),sum(salary),avg(salary) from emp;
+------------+-------------+-------------+-------------+
| min salary | max(salary) | sum(salary) | avg(salary) |
+------------+-------------+-------------+-------------+
|      34000 |       95000 |      314000 |  62800.0000 |
+------------+-------------+-------------+-------------+
1 row in set (0.001 sec)

mysql> select count(*) from emp;
+----------+
| count(*) |
+----------+
|        5 |
+----------+
1 row in set (0.006 sec)

mysql> select * from emp;
+--------+-------+-------+--------+
| emp_id | name  | dept  | salary |
+--------+-------+-------+--------+
|    101 | Amit  | IT    |  45000 |
|    102 | Sahil | IT    |  75000 |
|    103 | Rahul | HR    |  95000 |
|    104 | Sam   | Sales |  34000 |
|    105 | Ronit | IT    |  65000 |
+--------+-------+-------+--------+
5 rows in set (0.001 sec)

mysql> select dept ,count(dept) from emp group by dept;
+-------+-------------+
| dept  | count(dept) |
+-------+-------------+
| IT    |           3 |
| HR    |           1 |
| Sales |           1 |
+-------+-------------+
3 rows in set (0.001 sec)

mysql> select dept ,count(dept) from emp group by dept having dept="IT" ;
+------+-------------+
| dept | count(dept) |
+------+-------------+
| IT   |           3 |
+------+-------------+
1 row in set (0.003 sec)

mysql> 
mysql> select * from emp;
+--------+-------+-------+--------+
| emp_id | name  | dept  | salary |
+--------+-------+-------+--------+
|    101 | Amit  | IT    |  45000 |
|    102 | Sahil | IT    |  75000 |
|    103 | Rahul | HR    |  95000 |
|    104 | Sam   | Sales |  34000 |
|    105 | Ronit | IT    |  65000 |
+--------+-------+-------+--------+
5 rows in set (0.002 sec)

mysql> create table address(add_id int  primary key,hno int,street name varchar(100),city varchar(100));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'name varchar(100),city varchar(100))' at line 1
mysql> 
mysql> create table address(add_id int  primary key,hno int,streetName varchar(100),city varchar(100));
Query OK, 0 rows affected (0.013 sec)

mysql> select * from address;                                                         Empty set (0.002 sec)

mysql> insert into address (1,101,"XYZ","ABC"),
    -> (2,102,"CYV","LBC");
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '1,101,"XYZ","ABC"),
(2,102,"CYV","LBC")' at line 1
mysql> 
mysql> 
mysql> insert into address values (1,101,"XYZ","ABC"),
    -> (2,102,"CYV","LBC");
Query OK, 2 rows affected (0.003 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select * from aDDRESS;
+--------+------+------------+------+
| add_id | hno  | streetName | city |
+--------+------+------------+------+
|      1 |  101 | XYZ        | ABC  |
|      2 |  102 | CYV        | LBC  |
+--------+------+------------+------+
2 rows in set (0.001 sec)

mysql> select * from emp;
+--------+-------+-------+--------+
| emp_id | name  | dept  | salary |
+--------+-------+-------+--------+
|    101 | Amit  | IT    |  45000 |
|    102 | Sahil | IT    |  75000 |
|    103 | Rahul | HR    |  95000 |
|    104 | Sam   | Sales |  34000 |
|    105 | Ronit | IT    |  65000 |
+--------+-------+-------+--------+
5 rows in set (0.001 sec)

mysql> alter table emp add column add_id int;
Query OK, 0 rows affected (0.014 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> update emp set add_id=101;
Query OK, 5 rows affected (0.005 sec)
Rows matched: 5  Changed: 5  Warnings: 0

mysql> update emp set add_id=102 where emp_id in (102,104);
Query OK, 2 rows affected (0.003 sec)
Rows matched: 2  Changed: 2  Warnings: 0

mysql> select * from emp;
+--------+-------+-------+--------+--------+
| emp_id | name  | dept  | salary | add_id |
+--------+-------+-------+--------+--------+
|    101 | Amit  | IT    |  45000 |    101 |
|    102 | Sahil | IT    |  75000 |    102 |
|    103 | Rahul | HR    |  95000 |    101 |
|    104 | Sam   | Sales |  34000 |    102 |
|    105 | Ronit | IT    |  65000 |    101 |
+--------+-------+-------+--------+--------+
5 rows in set (0.001 sec)

mysql> select * from aDDRESS;
+--------+------+------------+------+
| add_id | hno  | streetName | city |
+--------+------+------------+------+
|      1 |  101 | XYZ        | ABC  |
|      2 |  102 | CYV        | LBC  |
+--------+------+------------+------+
2 rows in set (0.001 sec)

mysql> update emp set add_id=1 where add_id = 101;
Query OK, 3 rows affected (0.003 sec)
Rows matched: 3  Changed: 3  Warnings: 0

mysql> select * from emp;
+--------+-------+-------+--------+--------+
| emp_id | name  | dept  | salary | add_id |
+--------+-------+-------+--------+--------+
|    101 | Amit  | IT    |  45000 |      1 |
|    102 | Sahil | IT    |  75000 |    102 |
|    103 | Rahul | HR    |  95000 |      1 |
|    104 | Sam   | Sales |  34000 |    102 |
|    105 | Ronit | IT    |  65000 |      1 |
+--------+-------+-------+--------+--------+
5 rows in set (0.001 sec)

mysql> update emp set add_id=2 where add_id = 102;
Query OK, 2 rows affected (0.002 sec)
Rows matched: 2  Changed: 2  Warnings: 0

mysql> select * from emp;
+--------+-------+-------+--------+--------+
| emp_id | name  | dept  | salary | add_id |
+--------+-------+-------+--------+--------+
|    101 | Amit  | IT    |  45000 |      1 |
|    102 | Sahil | IT    |  75000 |      2 |
|    103 | Rahul | HR    |  95000 |      1 |
|    104 | Sam   | Sales |  34000 |      2 |
|    105 | Ronit | IT    |  65000 |      1 |
+--------+-------+-------+--------+--------+
5 rows in set (0.001 sec)

mysql> select * from aDDRESS;
+--------+------+------------+------+
| add_id | hno  | streetName | city |
+--------+------+------------+------+
|      1 |  101 | XYZ        | ABC  |
|      2 |  102 | CYV        | LBC  |
+--------+------+------------+------+
2 rows in set (0.001 sec)

mysql> select * from emp as e inner join address as a  on e.add_id=a.add_id;
+--------+-------+-------+--------+--------+--------+------+------------+------+
| emp_id | name  | dept  | salary | add_id | add_id | hno  | streetName | city |
+--------+-------+-------+--------+--------+--------+------+------------+------+
|    101 | Amit  | IT    |  45000 |      1 |      1 |  101 | XYZ        | ABC  |
|    102 | Sahil | IT    |  75000 |      2 |      2 |  102 | CYV        | LBC  |
|    103 | Rahul | HR    |  95000 |      1 |      1 |  101 | XYZ        | ABC  |
|    104 | Sam   | Sales |  34000 |      2 |      2 |  102 | CYV        | LBC  |
|    105 | Ronit | IT    |  65000 |      1 |      1 |  101 | XYZ        | ABC  |
+--------+-------+-------+--------+--------+--------+------+------------+------+
5 rows in set (0.001 sec)

mysql> select emp_id,name,dept,salary,e.add_id,streetName,city from emp as e inner join addr
+--------+-------+-------+--------+--------+------------+------+
| emp_id | name  | dept  | salary | add_id | streetName | city |
+--------+-------+-------+--------+--------+------------+------+
|    101 | Amit  | IT    |  45000 |      1 | XYZ        | ABC  |
|    102 | Sahil | IT    |  75000 |      2 | CYV        | LBC  |
|    103 | Rahul | HR    |  95000 |      1 | XYZ        | ABC  |
|    104 | Sam   | Sales |  34000 |      2 | CYV        | LBC  |
|    105 | Ronit | IT    |  65000 |      1 | XYZ        | ABC  |
+--------+-------+-------+--------+--------+------------+------+
5 rows in set (0.001 sec)

mysql> select distinct(dept) from emp;
+-------+
| dept  |
+-------+
| IT    |
| HR    |
| Sales |
+-------+
3 rows in set (0.001 sec)

mysql> select count(distinct(dept)) from emp;
+-----------------------+
| count(distinct(dept)) |
+-----------------------+
|                     3 |
+-----------------------+
1 row in set (0.003 sec)

mysql> 
