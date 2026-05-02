#creating_Database
CREATE DATABASE Collage;
USE Collage;
CREATE TABLE student(
ID INT,
NAME VARCHAR(20),
EMAIL VARCHAR(100),
ROLL_NO INT,
AGE INT
);

insert into student values
(1,"shrajal","abc@gmail.com",123,20),
(2,"shakti","abc2@gmail.com",124,21);



#creating_database
CREATE DATABASE Instagram;
USE Instagram;
CREATE TABLE Users(
    ID INT,
    EMAIL VARCHAR(100),
    AGE INT,
    USER_NAME VARCHAR(100),
    FOLLOWERS INT,
    FOLLOWING INT
);
