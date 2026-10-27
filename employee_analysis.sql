-- Employee Data Analysis
-- Database: SQL Server
-- Run after 01_create_tables.sql and 02_insert_sample_data.sql.

-- 1. Count all employees
SELECT COUNT(*) AS total_employees
FROM employees;

-- 2. Calculate the average salary across the company
SELECT AVG(salary) AS average_salary
FROM employees;

-- 3. Count employees in each department
SELECT
    department,
    COUNT(*) AS employee_count
FROM employees
GROUP BY department
ORDER BY employee_count DESC, department;

-- 4. Calculate the average salary for each department
SELECT
    department,
    AVG(salary) AS average_salary
FROM employees
GROUP BY department
ORDER BY average_salary DESC;

-- 5. Find employees earning above the company average
SELECT
    name,
    salary
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
)
ORDER BY salary DESC;

-- 6. Find the highest-paid employee(s) in each department
SELECT
    e.name,
    e.salary,
    e.department
FROM employees AS e
WHERE e.salary = (
    SELECT MAX(e2.salary)
    FROM employees AS e2
    WHERE e2.department = e.department
)
ORDER BY e.salary DESC, e.department;

-- 7. Show the highest salary in each department
SELECT
    department,
    MAX(salary) AS highest_salary
FROM employees
GROUP BY department
ORDER BY highest_salary DESC;

-- 8. Count employees in each city
SELECT
    city,
    COUNT(*) AS employee_count
FROM employees
GROUP BY city
ORDER BY employee_count DESC, city;

-- 9. Find employees who joined after 1 January 2024
SELECT
    name,
    joining_date
FROM employees
WHERE joining_date > '2024-01-01'
ORDER BY joining_date DESC;

-- 10. Show each employee with their department manager
SELECT
    e.name,
    e.department,
    d.manager
FROM employees AS e
INNER JOIN departments AS d
    ON e.department = d.department
ORDER BY e.department, e.name;

-- 11. Find employees earning above their own department's average
SELECT
    e.name,
    e.department,
    e.salary
FROM employees AS e
WHERE e.salary > (
    SELECT AVG(e2.salary)
    FROM employees AS e2
    WHERE e2.department = e.department
)
ORDER BY e.department, e.salary DESC;

-- 12. Calculate total salary expense by department
SELECT
    department,
    SUM(salary) AS total_salary_expense
FROM employees
GROUP BY department
ORDER BY total_salary_expense DESC;

-- 13. Find the fourth-highest distinct salary in the company.
-- This query returns NULL if fewer than four distinct salaries exist.
SELECT MAX(salary) AS fourth_highest_salary
FROM employees
WHERE salary < (
    SELECT MAX(salary)
    FROM employees
    WHERE salary < (
        SELECT MAX(salary)
        FROM employees
        WHERE salary < (
            SELECT MAX(salary)
            FROM employees
        )
    )
);
