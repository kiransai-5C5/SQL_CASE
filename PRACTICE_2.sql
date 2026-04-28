CREATE DATABASE PRACTICE_TWO;
USE PRACTICE_TWO;
-- ---------------------CASE-------------------
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    department VARCHAR(50),
    salary INT
);
INSERT INTO employees VALUES (1, 'Ravi', 'IT', 50000), (2, 'Priya', 'HR', 75000), (3, 'Arjun', 'Finance', 62000),
(4, 'Sneha', 'IT', 90000), (5, 'Karan', 'HR', 45000), (6, 'Neha', 'Finance', 30000);
SELECT * FROM EMPLOYEES;

-- Show employee names with salary status: If salary > 60000 → 'High' Otherwise → 'Normal'
SELECT EMP_NAME,SALARY ,
	CASE
		WHEN SALARY > 60000 THEN 'HIGH'
        ELSE 'NORMAL'
	END AS SAL_STATUS
FROM EMPLOYEES;

-- Classify employees into: salary >= 80000 → 'Excellent' salary >= 60000 → 'Good' salary >= 40000 → 'Average' else → 'Low'
SELECT EMP_NAME,SALARY,
	CASE
		WHEN SALARY >= 80000 THEN 'EXCELLENT'
        WHEN salary >= 60000 THEN 'Good'
        WHEN salary >= 40000 THEN 'Average'
		ELSE 'LOW'
	END AS CON_SAL
FROM EMPLOYEES;

-- Show bonus eligibility: IT → 'Tech Bonus' HR → 'HR Bonus' Others → 'General Bonus'
SELECT EMP_NAME, DEPARTMENT,
	CASE 
		WHEN DEPARTMENT ='IT' THEN 'Tech Bonus'
        WHEN DEPARTMENT ='HR' THEN  'HR Bonus'
        ELSE ' GENERAL BONUS'
	END as dep_eligibility
from employees;

-- Increase salary display: If salary > 70000 → add 10% Else → add 5% Show new salary
SELECT EMP_NAME, SALARY,
	CASE 
		WHEN salary > 70000 THEN SALARY + (SALARY * 0.10) 
        ELSE SALARY + (SALARY * 0.05)
	END AS NEW_SALARY
FROM EMPLOYEES;

-- Count how many employees are: High (salary > 60000) Normal (salary <= 60000)
SELECT
	CASE 
		WHEN SALARY> 60000 THEN 'HIGH'
		ELSE 'NORMAL'
	END AS SAL_STATUS,
    COUNT(*) AS TOTAL FROM EMPLOYEES GROUP BY SAL_STATUS;
    
SELECT 
	SUM(CASE WHEN SALARY > 60000 THEN 1 ELSE 0 END) AS HIGH_COUNT,
    SUM(CASE WHEN SALARY <= 60000 THEN 1 ELSE 0 END) AS NORMAL_COUNT
FROM EMPLOYEES;