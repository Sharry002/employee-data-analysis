-- 1. SELECT
-- Display all employees.

SELECT *
FROM employees;


-- 2. SELECT SPECIFIC COLUMNS
-- Display employee names, departments, and salaries.

SELECT
    name,
    department,
    salary
FROM employees;


-- 3. WHERE
-- Find employees earning more than 40000.

SELECT
    name,
    salary
FROM employees
WHERE salary > 40000;


-- 4. DISTINCT
-- Display unique cities.

SELECT DISTINCT
    city
FROM employees;


-- 5. AND
-- Find IT employees earning more than 30000.

SELECT
    name,
    department,
    salary
FROM employees
WHERE department = 'IT'
  AND salary > 30000;


-- 6. OR
-- Find employees working in HR or Finance.

SELECT
    name,
    department
FROM employees
WHERE department = 'HR'
   OR department = 'Finance';


-- 7. BETWEEN
-- Find employees earning between 30000 and 45000.

SELECT
    name,
    salary
FROM employees
WHERE salary BETWEEN 30000 AND 45000;


-- 8. IN
-- Find employees from Amritsar or Delhi.

SELECT
    name,
    city
FROM employees
WHERE city IN ('Amritsar', 'Delhi');


-- 9. LIKE
-- Find employees whose names start with A.

SELECT
    name
FROM employees
WHERE name LIKE 'A%';


-- 10. ORDER BY
-- Display employees from highest to lowest salary.

SELECT
    name,
    salary
FROM employees
ORDER BY salary DESC;


-- 11. TOP
-- Display the five highest-paid employees.

SELECT TOP 5
    name,
    salary
FROM employees
ORDER BY salary DESC;


-- 12. IS NULL
-- Find employees whose city is missing.

SELECT
    name,
    city
FROM employees
WHERE city IS NULL;


-- 13. IS NOT NULL
-- Find employees whose city is available.

SELECT
    name,
    city
FROM employees
WHERE city IS NOT NULL;


-- 14. CASE
-- Categorize employees based on salary.

SELECT
    name,
    salary,
    CASE
        WHEN salary >= 50000 THEN 'High Salary'
        WHEN salary >= 35000 THEN 'Medium Salary'
        ELSE 'Low Salary'
    END AS salary_category
FROM employees;


-- END OF SQL BASICS
