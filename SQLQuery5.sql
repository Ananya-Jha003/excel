CREATE DATABASE customer_orders;

use customer_orders;

CREATE TABLE CUSTOMERS (
customerid INT PRIMARY KEY,
customername varchar(50),
city varchar(50)
);

CREATE TABLE orders (
orderid INT PRIMARY KEY,
customerid INT,
Products varchar(50),
FOREIGN KEY (customerid) References CUSTOMERS(customerid)
);


INSERT INTO CUSTOMERS(customerid,customername,city) VALUES 
(1,'KINJAL','AHMEDABAD'),
(2,'RAVI','SURAT'),
(3,'PRIYA','MUMBAI'),
(4,'AMAN','DELHI'),
(5,'NEHA','PUNE'),
(6,'RAHUL','JAIPUR'),
(7,'SNEHA','KOLKATA'),
(8,'VIKAS','CHENNAI'),
(9,'ANJALI','BANGALORE'),
(10,'KARAN','HYDERABAD');
 

I,/*NSERT INTO Orders (OrderID, CustomerID, Products) VALUES
(101, 1, 'Laptop'),
(102, 1, 'Mouse'),
(103, 2, 'Keyboard'),
(104, 3, 'Mobile'),
(105, 5, 'Tablet'),
(106, 6, 'Monitor'),
(107, 7, 'Printer'),
(108, 8, 'Headphones'),
(109, 9, 'Camera'),
(110, 2, 'Speaker');*/

ALTER TABLE Orders
ADD Amount DECIMAL(10,2);

INSERT INTO Orders (OrderID, CustomerID, Products, Amount) VALUES
(101, 1, 'Laptop', 55000.00),
(102, 1, 'Mouse', 500.00),
(103, 2, 'Keyboard', 1200.00),
(104, 3, 'Mobile', 20000.00),
(105, 5, 'Tablet', 15000.00),
(106, 6, 'Monitor', 8000.00),
(107, 7, 'Printer', 7000.00),
(108, 8, 'Headphones', 2500.00),
(109, 9, 'Camera', 30000.00),
(110, 2, 'Speaker', 4000.00);