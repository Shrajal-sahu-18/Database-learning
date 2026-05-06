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