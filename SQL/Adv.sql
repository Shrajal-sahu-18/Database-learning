CREATE DATABASE prime;
use prime;
create table accounts(
id int primary key auto_increment,
name varchar(50),
balance decimal(10,2)
);

-- Transaction
START TRANSACTION;
update accounts set balance = balance - 50 where id = 1;
update accounts set balance = balance +50 where id = 2;

COMMIT;

-- ROLL BACK
start transaction;
update accounts set balance = balance-100 where id = 1;
commit;
update accounts set balance = balance + 100 where id = 3;
rollback;

start transaction;
update accounts set balance = balance+1000 where id = 1;
SAVEPOINT AFTER_WALLET_TOP_UP;
update accounts set balance = balance + 10 where id = 1;
-- ERROR
ROLLBACK TO AFTER_WALLET_TOP_UP;
COMMIT;


use prime;
select * from accounts;
create table customers(
customer_id int primary key,
name varchar(50),
city  varchar(50)
);


insert into customers
(customer_id,name,city)
values
(1,"Alice","Mumbai"),
(2,"Bob","Delhi"),
(3,"Charlie","Banglore"),
(4,"David","Mumbai");

create table orders(
order_id int primary key,
customer_id int,
amount int
);


insert into orders values
(101,1,500),
(102,1,900),
(103,2,300),
(104,5,700);


select * from customers;
-- inner join
select * 
from customers as c 
inner join orders as o
on c.customer_id = o.customer_id;


select c.customer_id,o.order_id,c.name
from customers as c
inner join orders as o
on c.customer_id = o.customer_id;


-- left join
select * 
from customers as c
left join orders as o
on c.customer_id = o.customer_id;

-- Right join
select *
from customers as c
right join orders as o
on c.customer_id = o.customer_id;

-- Outer join
select * 
from customers as c
left join orders as o
on c.customer_id = o.customer_id
UNION
select *
from customers as c
right join orders as o
on c.customer_id = o.customer_id;

-- cross join
select * 
from customers
cross join orders;

-- Self join
select * 
from customers as a
join orders as b
on a.customer_id = b.customer_id;

-- Left Exclusive joim

select *
from customers as a
left join orders as b
on a.customer_id = b.customer_id
where b.customer_id is NULL;


-- Right Exclusive Join

select * 
from customers as a
right join orders as b
on a.customer_id = b.customer_id
where a.customer_id is NULL;


-- subQuery use by where
select *
from orders o
where amount > (
    select avg(amount)
    from orders
);

-- subQuery use by select
SELECT name,
    (
        select count(*)
        from orders o
        where o.customer_id = c.customer_id
    ) as order_count
from customers c;


select 
summary.customer_id,
summary.avg_amount
from
(select 
    customer_id ,avg(amount) as avg_amount
    from orders
group by customer_id) as summary;


-- view in sql
create view view1 as
select customer_id,name from customers;

select * from view1 where name = "Alice";

drop view view1;

create view view1 as
select c.customer_id , c.name, o.order_id
from customers c
inner join orders o
on c.customer_id = o.customer_id;
select* from view1;

create view view1 as
select c.customer_id , c.name, o.order_id
from customers c
inner join orders o
on c.customer_id = o.customer_id;

drop view view1;


-- index in sql

use prime;

create table accounts(
account_id int primary key,
name varchar(50),
balance decimal (10,2),
branch varchar(50)


);

insert into accounts
(account_id,name,balance,branch)
values
(1,"Adam",500.00,"Mumbai"),
(2,"Bob",300.00,"Delhi"),
(3,"Charlie",700.00,"Banglore"),
(4,"David",1000.00,"Noida");


create index idx_branch on  accounts(Branch);

show index from accounts;

select * 
from accounts
where Branch = "Mumbai";

CREATE INDEX idx2 on accounts(branch,balance);

show index from accounts;