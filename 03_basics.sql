-- SQL BASICS
-- Database: SQL Server
-- Run after 01_create_tables.sql and 02_insert_sample_data.sql.

-- 1. SELECT: display all employees.
SELECT *
FROM employees;

-- 2. SELECT specific columns.
SELECT name, department, salary
FROM employees;

-- 3. WHERE: filter rows before grouping.
SELECT name, salary
FROM employees
WHERE salary > 40000;

-- 4. DISTINCT: show unique cities.
SELECT DISTINCT city
FROM employees;

-- 5. AND: both conditions must be true.
SELECT name, department, salary
FROM employees
WHERE department = 'IT'
  AND salary > 30000;

-- 6. OR: either condition can be true.
SELECT name, department
FROM employees
WHERE department = 'HR'
   OR department = 'Finance';

-- 7. BETWEEN: inclusive range endpoints.
SELECT name, salary
FROM employees
WHERE salary BETWEEN 30000 AND 45000;

-- 8. IN: match any value in a list.
SELECT name, city
FROM employees
WHERE city IN ('Amritsar', 'Delhi');

-- 9. LIKE: names beginning with A.
SELECT name
FROM employees
WHERE name LIKE 'A%';

-- 10. ORDER BY: highest salary first.
SELECT name, salary
FROM employees
ORDER BY salary DESC;

-- 11. TOP: five highest-paid employees (SQL Server syntax).
SELECT TOP 5 name, salary
FROM employees
ORDER BY salary DESC;

-- 12. IS NULL: find missing city values.
-- With the supplied sample data, this returns no rows because every city is populated.
SELECT name, city
FROM employees
WHERE city IS NULL;

-- 13. IS NOT NULL: find rows where city is present.
SELECT name, city
FROM employees
WHERE city IS NOT NULL;

-- 14. CASE: classify salaries.
SELECT
    name,
    salary,
    CASE
        WHEN salary >= 50000 THEN 'High Salary'
        WHEN salary >= 35000 THEN 'Medium Salary'
        ELSE 'Low Salary'
    END AS salary_category
FROM employees;

-- 15. NOT: exclude a department.
SELECT name, department
FROM employees
WHERE NOT department = 'HR';

-- 16. COUNT(*) counts rows; COUNT(city) counts only non-NULL city values.
SELECT
    COUNT(*) AS total_rows,
    COUNT(city) AS rows_with_city
FROM employees;

-- 17. UNION removes duplicate rows from the combined results.
SELECT city AS place
FROM employees
WHERE city = 'Amritsar'
UNION
SELECT city
FROM employees
WHERE city = 'Delhi';

-- 18. UNION ALL keeps duplicates (if any).
SELECT city AS place
FROM employees
WHERE city = 'Amritsar'
UNION ALL
SELECT city
FROM employees
WHERE city = 'Delhi';


-- END OF SQL BASICS
