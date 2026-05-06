create database collage;
use collage;
create table teacher(
    id int primary key,
    name varchar(50),
    subject varchar(50),
    salary int 
);
insert into teacher
(id,name,subject,salary)
values
(23,"ajay","math",50000),
(47,"bharat","english",60000),
(18,"chetan","english",45000),
(9,"divya","physics",75000);

-- task-1
select * from teacher
where salary > 50000;

-- task-2
alter table teacher
change column salary ctc int ;

set sql_safe_updates = 0;

update teacher
set ctc = ctc + ctc * 0.25;

alter table teacher
add column city varchar(50) default "gurgaon";

alter table teacher
derop column ctc;

CREATE TABLE STUDENT(
Roll_no int primary key,
name varchar(50),
city varchar(50),
marks int 
);


insert into student
(roll_no,name,city,marks)
values
(110,"ADAM","DELHI",76),
(108,"casey","pune",65),
(124,"bob","mumbai",94),
(112,"duke","pune",80);

-- Task-1
select * from student
where marks > 75;

-- Task -2
select dictnict city
from student;

-- Task -3
select city from student
group by city;

-- Task-4
select city max(marks)
from student
group by city;

 -- Task -5
select avg(marks)
from student


-- Task-6
alter table student
add column grade varchar(2);

-- Task-7
update student
set grade = "0"
where marks >=80;

update student
set grade = "a"
where marks >=70 and marks <80;

-- Task - 8
update student
set grade = "b"
where marks >=60 and marks < 70;



-- ASSIANMENT -1
CREATE DATABASE ASSIANMENT;
USE ASSIANMENT;
CREATE TABLE EMPLOYEE(
EMPID INT PRIMARY KEY,
FIRSTNAME VARCHAR(50),
LASTNAME VARCHAR(50),
DEPARTMENT VARCHAR(50),
SALARY INT ,
HIREDATE DATE
);

use assianment;
INSERT INTO EMPLOYEE
VALUES
(101,"Alice","Johnson","IT",6500,'2020-03-15'),
(102,"Mark","Rivera","HR",4800,'2020-07-22'),
(103,"Sophia","Lee","Finance",7200,'2021-01-10'),
(104,"Daniel","Kim","IT",5800,'2018-11-05'),
(105,"Emma","Brown","Marketing",5300,'2022-04-18'),
(106,"Liam","Patel","Finance",6900,'2020-09-29'),
(107,"Olivia","Garcia","HR",4600,'2017-06-30'),
(108,"Noah","Thompson","IT",7500,'2023-02-12'),
(109,"Ava","Martinez","marketing",5100,'2019-12-02'),
(110,"Ethan","Davis","Finance",8000,'2016-05-14');

select * from employee;

-- tASK-1

SELECT * FROM EMPLOYEE;

-- Task - 2
SELECT FIRSTNAME,LASTNAME,SALARY 
FROM EMPLOYEE;

-- Task -3
select * from employee
where department = "it";

-- Task -4 
select * from employee
where salary >=6000;

-- Task-5
select * from employee
order by hiredate desc;

-- Task -6
UPDATE EMPLOYEE
SET department = "Marketing"
where department = "marketing";

-- Task-7
select distinct department from employee;