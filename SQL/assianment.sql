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