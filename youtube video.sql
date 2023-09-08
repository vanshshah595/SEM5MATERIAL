create database Operators;
use operators;
create table employees(id int not null unique,name char(30),age int,salary int);
desc employees;
insert into employees values(105,'E',21,500);
SELECT * FROM EMPLOYEES;
SELECT NAME,SALARY + 1000 FROM EMPLOYEES;
SELECT AVG(AGE) FROM EMPLOYEES;
select SUM(SALARY) FROM EMPLOYEES;
SELECT ID,NAME,SALARY FROM EMPLOYEES WHERE SALARY > 3000;
SELECT NAME FROM EMPLOYEES WHERE AGE >= 22;
select distinct AGE FROM EMPLOYEES;
SELECT COUNT(ID) FROM EMPLOYEES;
SELECT * FROM EMPLOYEES order by SALARY LIMIT 1;
SELECT * FROM EMPLOYEES WHERE AGE NOT IN (22);
SELECT * FROM EMPLOYEES;
ALTER TABLE EMPLOYEES ADD (CITY CHAR(30));
SELECT count(ID) FROM EMPLOYEES;
SELECT * FROM EMPLOYEES WHERE NAME LIKE 'A%';
UPDATE EMPLOYEES SET CITY = 'AHMEDABAD' WHERE ID < 110;
DELETE FROM EMPLOYEES WHERE ID = 103;