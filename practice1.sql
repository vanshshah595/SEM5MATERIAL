CREATE DATABASE TESTDB;
USE TESTDB;
SHOW TABLES;
CREATE TABLE CUSTOMER (
	ID INT PRIMARY KEY,
    NAME VARCHAR(50),
    AGE INT NOT NULL,
    CITY char(50),
    SALARY NUMERIC
);
SELECT * FROM CUSTOMER;
INSERT INTO CUSTOMER VALUES(
	106,
    "AARUSH",
    16,
    "GANDHINAGAR",
    600
);
ALTER TABLE CUSTOMER ADD (HEL INT);
ALTER TABLE CUSTOMER DROP HEL;
CREATE TABLE TEMPERORY(ID INT NOT NULL);
DROP TABLE TEMPERORY;
SHOW TABLES;
INSERT INTO TEMPERORY VALUES(
	101
);
TRUNCATE TABLE TEMPERORY;
SELECT * FROM TEMPERORY;
SELECT * FROM CUSTOMER;
DELETE FROM CUSTOMER WHERE ID = 106;
UPDATE CUSTOMER SET CITY = "KUTCHH" WHERE ID = 103;
SELECT ID , NAME , SALARY FROM CUSTOMER;
SELECT NAME FROM CUSTOMER WHERE AGE < 20;
SELECT SUM(SALARY) FROM CUSTOMER;
SELECT LOWER(NAME) FROM CUSTOMER;
SELECT UPPER(NAME) FROM CUSTOMER WHERE AGE > 20;
SELECT LOWER(NAME), ID FROM CUSTOMER WHERE AGE < 20;
SELECT SUM(SALARY) FROM CUSTOMER WHERE AGE < 20;
SELECT NOW();
SELECT current_timestamp()