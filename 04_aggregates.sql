-- 1. COUNT()
-- Count the total number of employees.

SELECT
    COUNT(*) AS total_employees
FROM employees;


-- 2. SUM()
-- Calculate the total salary expense.

SELECT
    SUM(salary) AS total_salary
FROM employees;


-- 3. AVG()
-- Calculate the average employee salary.

SELECT
    AVG(salary) AS average_salary
FROM employees;


-- 4. MIN()
-- Find the lowest salary.

SELECT
    MIN(salary) AS lowest_salary
FROM employees;


-- 5. MAX()
-- Find the highest salary.

SELECT
    MAX(salary) AS highest_salary
FROM employees;


-- 6. GROUP BY
-- Count employees in each department.

SELECT
    department,
    COUNT(*) AS employee_count
FROM employees
GROUP BY department;


-- 7. SUM() WITH GROUP BY
-- Calculate total salary for each department.

SELECT
    department,
    SUM(salary) AS department_salary
FROM employees
GROUP BY department;


-- 8. AVG() WITH GROUP BY
-- Calculate average salary for each department.

SELECT
    department,
    AVG(salary) AS department_avg
FROM employees
GROUP BY department;


-- 9. MIN() AND MAX() WITH GROUP BY
-- Find the lowest and highest salary in each department.

SELECT
    department,
    MIN(salary) AS lowest_salary,
    MAX(salary) AS highest_salary
FROM employees
GROUP BY department;


-- 10. HAVING
-- Find departments with more than two employees.

SELECT
    department,
    COUNT(*) AS employee_count
FROM employees
GROUP BY department
HAVING COUNT(*) > 2;


-- 11. WHERE WITH GROUP BY
-- Calculate average salary for IT employees only.

SELECT
    department,
    AVG(salary) AS department_avg
FROM employees
WHERE department = 'IT'
GROUP BY department;


-- 12. WHERE AND HAVING
-- Find departments with average salary above 40000,
-- considering employees earning at least 30000.

SELECT
    department,
    AVG(salary) AS department_avg
FROM employees
WHERE salary >= 30000
GROUP BY department
HAVING AVG(salary) > 40000;


-- 13. MULTIPLE AGGREGATES
-- Summarize employee salaries by department.

SELECT
    department,
    COUNT(*) AS employee_count,
    SUM(salary) AS total_salary,
    AVG(salary) AS average_salary,
    MIN(salary) AS lowest_salary,
    MAX(salary) AS highest_salary
FROM employees
GROUP BY department
ORDER BY average_salary DESC;


-- END OF AGGREGATE FUNCTIONS
