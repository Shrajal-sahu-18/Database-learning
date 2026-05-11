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