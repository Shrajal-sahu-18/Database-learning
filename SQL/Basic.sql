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
    EMAIL VARCHAR(100) UNIQUE,
    AGE INT,
    USER_NAME VARCHAR(100) NOT NULL,
    FOLLOWERS INT DEFAULT 0,
    FOLLOWING INT DEFAULT 0,
    CONSTRIANT age_check CHECK(age >= 13),
    PRIMARY KEY(id)
);

INSERT INTO users VALUES
(1,"abc@gmail.com",20,"abc",293,120),
(2,"abc2@gmail.com",21,"abc2",305,140);

CREATE TABLE post(
    ID INT PRIMARY KEY,
    CONTENT VARCHAR(100),
    USER_ID INT,
    FOREIGN KEY (USER_ID) REFERENCES Users(ID)
);


SELECT ID NAME,AGE,EMAIL FROM USER;
SELECT * FROM USER;
SELECT DISTINCT AGE FROM USER;

select * from user
where followers >= 200;

SELECT NAME,FOLLOWERS FROM USER
WHERE FOLLOWERS >=200;

SELECT NAME,FOLLOWERS EMAIL,AGE FROM USER
WHERE  AGE >=15;

SELECT NAME,AGE FROM USER
WHERE age +1 = 18;

SELECT NAME,FOLLOWERS,AGE,EMAIL FROM USER
WHERE AGE >=15 AND FOLLOWERS >= 200;


SELECT NAME,FOLLOWERS,AGE,EMAIL FROM USER
WHERE AGE >=15 OR  FOLLOWERS >= 200;


INSERT INTO USER
VALUES
(5,24,"EVE","eve@gmail.com",23445,235),
(6,24,"farah","farah@gmial.com",3445,13);


select name,age,email,id from user
where age in (14,16);

select name,age,email,id from user
where age not in (14,16);

select name,age,email,id from user
where age >= 14
limit 2;


select age , name , followers 
from user 
order by followers ASC;


select age,name,followers
from user
order by followers desc;


select age,name,followers
from user
order by followers;  --by default ascending order may sort hoti hai


--agerregate function

select max(age)
from user;

select min(age)
from user;

select avg(age)
from user;


select count(age)
from user 
where age > 14;

select sum(age)
from user;

-- GROUP BY 

select age count(id)
from user
group by age;