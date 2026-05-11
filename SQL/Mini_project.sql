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