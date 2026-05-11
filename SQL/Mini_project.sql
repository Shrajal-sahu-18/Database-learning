CREATE DATABASE ecommerce_db;
use ecommerce_db;

CREATE TABLE customers(
    customer_id int primary key auto_increment,
    name varchar(50),
    email varchar(100) unique,
    city varchar(50)
);



CREATE TABLE products(
    product_id int primary key auto_increment,
    product_name varchar(100),
    price decimal(10,2),
    stock int, 
    check(stock >= 0)
);


CREATE TABLE orders(
orders_id int primary key auto_increment,
customer_id int ,
order_date date,
total_amount decimal(10,2),
foreign key (customer_id) 
REFERENCES customers(customer_id)
);


CREATE TABLE orders_item(
    item_id int primary key auto_increment,
    orders_id int,
    product_id int ,
    quantity int,
    
    foreign key (orders_id) 
    references orders(orders_id),
    
    foreign key (product_id)  
    references products(product_id)
    
);


-- ===============================
--  3. insert data
-- ==================================
insert into customers(name,email,city)
values
("Rahul","rahul@gmail.com","Bhopal"),
("Aman","aman@gmail.com","Indore"),
("priya","priya@gmail.com","delhi"),
("Sneha","sneha@gmail.com","Mumbai"),
("Rohit","rohit@gmail.com","Pune");


INSERT INTO products(product_name,price,stock)
values
("Laptop",55000,10),
("Mouse",700,50),
("Keyboard",1200,30),
("Phone",1200,15),
("Headphones",2000,0);


INSERT INTO orders(customer_id,order_date,total_amount)
values
(1,"2026-05-01",55700),
(2,"2026-05-02",25000),
(1,"2026-05-03",1200),
(3,"2026-05-03",27000),
(4,"2026-05-04",700),
(5,"2026-05-05",55000),
(2,"2026-05-06",2000),
(3,"2026-05-07",1200),
(1,"2026-05-08",700),
(4,"2026-05-09",25000);


INSERT INTO orders_item(orders_id,product_id,quantity)
values
(1,1,1),
(1,2,1),
(2,4,1),
(3,3,1),
(4,4,1),
(4,5,1),
(5,2,1),
(6,1,1),
(7,5,1),
(8,3,1),
(9,2,1),
(10,4,1);


-- 1
select name from customers;
select *
from customers
order by name;



-- 2
select * from products
where price > 500;



-- 3
select * from products 
where stock = 0;