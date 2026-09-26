CREATE DATABASE SalesAnalyticsDB;

use SalesAnalyticsDB;

CREATE TABLE customers (
    id INT PRIMARY KEY,
    user_name VARCHAR(50) NOT NULL,
    age INT,
    country VARCHAR(50),
    amount_spend INT
);

INSERT INTO customers ( id , user_name , age , country , amount_spend)
VALUES
(1 , 'RAHUL SHARMA' ,22 , 'INDIA' , 500),
(2 , 'PRIYA PATEL' ,29 , 'INDIA' , 2500),
(3 , 'JOHN SMITH' ,35 , 'USA' , 3500),
(4 , 'ALIA RAI' ,22 , 'INDIA' , 2200),
(5 , 'CHERRY ALEX' ,21 , 'CANADA' , 5500),
(6 , 'SOPHIA MARTIN' ,20 , 'AUSTRALIA' , 1500),
(7 , 'AVA MILLER' ,42 , 'GERMANY' , 2220),
(8 , 'ARJUN MEHTA' ,29 , 'INDIA' , 3500),
(9 , 'ETHAN CLERK' ,28 , 'GERMANY' , 1090),
(10 , 'MIA THOMSON' ,18 , 'AUSTRALIA' , 1100),
(11 , 'DANIEL LEE' ,32, 'CANADA' , 5500),
(12 , 'ANGEL CRISTIANA' ,15 , 'CANADA' , 1990),
(13 , 'GAUTAM TYAGI' ,21 , 'INDIA' , 500),
(14 , 'SIMRAN SHARMA' ,22 , 'INDIA' , 4440),
(15 , 'VIKAS MITTAL' ,29 , 'INDIA' , 6500);



--SELECT *
--FROM customers

/*
SELECT user_name , age , country
FROM customers
*/

--SELECT user_name , country , amount_spend--
--FROM customers--

/*
SELECT *
FROM customers
WHERE amount_spend>5000;
*/

/*SELECT *
FROM customers
WHERE age<20;
*/

/*
SELECT *
FROM customers
WHERE country='INDIA';
*/

/*
SELECT *
FROM customers
WHERE amount_spend<2500;
*/

/*
SELECT *
FROM customers
WHERE age>15 AND amount_spend>1500;
*/

/*
SELECT *
FROM customers
WHERE country='INDIA' AND amount_spend>1500;
*/

/*
SELECT *
FROM customers
WHERE country = 'INDIA' OR country = 'USA';
*/

/*
SELECT *
FROM customers
WHERE (country = 'INDIA' OR country = 'USA')
AND amount_spend>1500;
*/

/*
SELECT *
FROM customers
WHERE NOT country = 'INDIA';
*/

/*
SELECT *
FROM customers
ORDER BY amount_spend ASC;
*/

/*
SELECT *
FROM customers
ORDER BY amount_spend DESC;
*/

/*
SELECT *
FROM customers
ORDER BY age ASC;
*/

/*
SELECT *
FROM customers
WHERE age BETWEEN 25 AND 40
AND amount_spend > 1500
AND country = 'INDIA' OR country = 'USA'
ORDER BY amount_spend DESC;
*/

/*
SELECT *
FROM customers
WHERE age>=30
AND amount_spend >=1000
AND NOT country = 'INDIA'
ORDER BY amount_spend DESC;
*/