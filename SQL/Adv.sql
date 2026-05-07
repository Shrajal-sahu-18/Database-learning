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