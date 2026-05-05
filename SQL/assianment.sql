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
