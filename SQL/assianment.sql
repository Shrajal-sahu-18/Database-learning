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