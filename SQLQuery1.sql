CREATE database Schooldb;

use Schooldb;

CREATE TABLE student(
      stud_id int primary key,
      stud_name varchar(50) not null,
      age int,
      course varchar(50) not null,
      marks int
      );

      INSERT INTO student (stud_id , stud_name , age , course , marks )
      values
      (101, 'rahul' , 19 , 'BTECH' , 88),
      (102, 'riya' , 20 , 'BCOM' ,78),
      (103, 'ADI' , 19 , 'BTECH' ,98),
      (104 , 'MAYA' , 19 ,'BARCH' , 88),
      (105 , 'ANU' , 19 , 'BTECH' ,77);

      SELECT * 
      from student;


CREATE TABLE EmployeeS(
emp_id int primary key,
emp_name varchar(50) not null,
salary int,
increment BIT,
SALARY_DATE DATE,
percent_salary DECIMAL(2,2),
);

INSERT INTO EmployeeS ( emp_id , emp_name , salary , increment , SALARY_DATE , percent_salary )
values
(10001, 'rahul' , 10000 , 1 , '2026-05-25' , 00.02 ),
(10002, 'priya' , 20000 , 0 , '2026-05-15' , 02.02 ),
(10003, 'anu' , 50000 , 1 , '2025-04-20' , 00.02 ),
(10004, 'mita' , 1000000 , 0 , '2026-04-15' , 01.15 ),
(10005, 'vikas' , 500000 , 1 , '2026-05-13' , 00.02 );

DELETE FROM EmployeeS
WHERE emp_id IN (101 , 1001 , 1002 , 1003 ,1004 ,1005 );

select * 
from EmployeeS