-- Create database
CREATE DATABASE IF NOT EXISTS db;

-- Use database
USE db;

-- Drop database
DROP DATABASE IF EXISTS db;

-- Show databases
SHOW DATABASES;

-- Use existing database
USE company;

-- Show tables
SHOW TABLES;

-- Select all records
SELECT * FROM empl;

-- Select specific record
SELECT * FROM empl WHERE empno = 101;

-- Select specific column
SELECT job FROM empl WHERE empno = 101;

-- Select multiple columns
SELECT job, ename FROM empl;

-- Condition (greater than)
SELECT * FROM empl WHERE sal > 30000;

-- BETWEEN
SELECT * FROM empl WHERE sal BETWEEN 30000 AND 50000;

-- IN
SELECT * FROM empl WHERE empno IN (101, 102);

-- OR
SELECT * FROM empl WHERE empno = 101 OR empno = 102;

-- INSERT
INSERT INTO empl VALUES (200, 'teja', NULL, 456, 90000, 900);

-- LIKE
SELECT * FROM empl WHERE ename LIKE '%a';

-- UPDATE
UPDATE empl SET ename = 'shankara' WHERE empno = 101;

-- ORDER BY
SELECT * FROM empl ORDER BY sal;

SELECT * FROM empl ORDER BY sal DESC;

-- DISTINCT
SELECT DISTINCT sal FROM empl;

-- GROUP BY
SELECT ename, AVG(sal) FROM empl GROUP BY ename;

SELECT job, AVG(sal) FROM empl GROUP BY job;

SELECT job, MAX(sal) FROM empl GROUP BY job;

-- HAVING
SELECT job, COUNT(ename)
FROM empl
GROUP BY job
HAVING AVG(sal) > 34000;

-- CREATE TABLE
CREATE TABLE stu (
    rl INT PRIMARY KEY,
    name VARCHAR(255)
);

-- INSERT (correct)
INSERT INTO stu VALUES (1, 'hh');

-- ADD PRIMARY KEY
ALTER TABLE empl ADD PRIMARY KEY (empno);

-- DELETE duplicates
DELETE FROM empl WHERE empno = 202;

-- MODIFY column
ALTER TABLE empl MODIFY sal DECIMAL(10,2);

-- CHANGE column name
ALTER TABLE empl CHANGE ename name VARCHAR(200);

-- DROP column
ALTER TABLE empl DROP COLUMN commission;

-- DESCRIBE table
DESC empl;

-- Safe update OFF/ON
SET SQL_SAFE_UPDATES = 0;
SET SQL_SAFE_UPDATES = 1;
