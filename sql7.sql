CREATE DATABASE SQL_Stringsss_Functions;
GO

USE SQL_String_Functions;
GO

CREATE TABLE Employeesss
(
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    email VARCHAR(100),
    department VARCHAR(50),
    city VARCHAR(50)
);

INSERT INTO Employeesss
(employee_id, employee_name, email, department, city)
VALUES
(101, 'Rahul Sharma', 'rahul.sharma@gmail.com', 'IT', 'Ahmedabad'),
(102, 'Priya Patel', 'priya.patel@gmail.com', 'HR', 'Mumbai'),
(103, 'Amit Shah', 'amit.shah@gmail.com', 'Finance', 'Ahmedabad'),
(104, 'Neha Mehta', 'neha.mehta@gmail.com', 'IT', 'Pune'),
(105, 'Rohan Desai', 'rohan.desai@gmail.com', 'Sales', 'Delhi'),
(106, '  Karan Joshi  ', 'karan.joshi@gmail.com', 'IT', 'Surat'),
(107, 'SIMRAN KAUR', 'simran.kaur@gmail.com', 'HR', 'Chandigarh'),
(108, 'vijay kumar', 'vijay.kumar@yahoo.com', 'Finance', 'Jaipur'),
(109, 'Anjali Verma', 'anjali.verma@company.com', 'Marketing', 'Ahmedabad'),
(110, 'Suresh Reddy', 'suresh.reddy@gmail.com', 'IT', 'Hyderabad'),
(111, 'Pooja Nair', 'pooja.nair@yahoo.com', 'Sales', 'Kochi'),
(112, '  Arjun Singh', 'arjun.singh@company.com', 'Finance', 'Delhi'),
(113, 'MEERA IYER', 'meera.iyer@gmail.com', 'HR', 'Chennai'),
(114, 'Nikhil Gupta', 'nikhil.gupta@company.com', 'IT', 'Noida'),
(115, 'Sneha Kapoor', 'sneha.kapoor@yahoo.com', 'Marketing', 'Mumbai'),
(116, 'Ravi Kumar', 'ravi.kumar@gmail.com', 'Sales', 'Bangalore'),
(117, '  Divya Shah  ', 'divya.shah@company.com', 'IT', 'Ahmedabad'),
(118, 'AARAV MALHOTRA', 'aarav.malhotra@gmail.com', 'Finance', 'Delhi'),
(119, 'Isha Patel', 'isha.patel@yahoo.com', 'HR', 'Surat'),
(120, 'Manish Tiwari', 'manish.tiwari@company.com', 'Marketing', 'Lucknow');


SELECT *
FROM Employeesss;

SELECT COUNT(*) AS Total_Employees
FROM Employees;

/*SELECT
    employee_id,
    employee_name,
    UPPER(employee_name) AS Uppercase_Name,
    LOWER(employee_name) AS Lowercase_Name
FROM Employeesss;

SELECT
 employee_id,
 employee_name,
 LEN (employee_name) AS character_count,
 DATALENGTH(employee_name) as BYTE_COUNT
 FROM Employeesss;*/

 /*SELECT
 CONCAT (
 employee_id,'|',
 UPPER(employee_name),'|',
 UPPER(department) ,'|',
 UPPER(city)
 ) AS employee_descriptions
 FROM Employeesss;*/

 /*
 SELECT
 CONCAT_WS('|',employee_id , employee_name , city , department) AS employee_descriptions
 from Employeesss;
 */

 /*
 SELECT
 CONCAT_WS('-',employee_name , city , department) AS employee_descriptions
 FROM Employeesss;
 */

 /*
 SELECT
 employee_name,
 LEFT(employee_name,3) AS name_initials
 FROM Employeesss;*/

 /*
 SELECT
 employee_name,
 RIGHT(employee_name,5) AS last_characters
 FROM Employeesss;*/

 /*SELECT
    employee_name,
    LEFT(employee_name, CHARINDEX(' ', employee_name) - 1) AS First_Name
FROM Employeesss;*/

/*
SELECT
    employee_name,
    RIGHT(employee_name, LEN(employee_name) - CHARINDEX(' ', employee_name)) AS Last_Name
FROM Employeesss;*/

/*SELECT
    employee_name,
    CHARINDEX(' ', employee_name) AS Space_Position
FROM Employeesss;*/

/*SELECT
    employee_id,
    employee_name,
    CHARINDEX('ah', employee_name) AS Position_of_ah
FROM Employeesss
WHERE PATINDEX('%ah%', employee_name) > 0;*/

/*SELECT
    email,
    LEFT(email, CHARINDEX('@', email) - 1) AS Username
FROM Employeesss;*/

SELECT
    employee_id,
    REPLACE(LOWER(TRIM(employee_name)), ' ', '.') AS Username
FROM Employeesss;