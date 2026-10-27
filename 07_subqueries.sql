-- SQL SUBQUERIES
-- Database: SQL Server
-- Run after creating and populating the project tables.

-- 1. Find employees earning more than the company average.
SELECT name, department, salary
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);

-- 2. Find the highest-paid employee(s).
SELECT name, department, salary
FROM employees
WHERE salary = (
    SELECT MAX(salary)
    FROM employees
);

-- 3. Find the lowest-paid employee(s).
SELECT name, department, salary
FROM employees
WHERE salary = (
    SELECT MIN(salary)
    FROM employees
);

-- 4. Find departments whose average salary exceeds the company average.
SELECT
    department,
    AVG(salary) AS department_avg
FROM employees
GROUP BY department
HAVING AVG(salary) > (
    SELECT AVG(salary)
    FROM employees
);

-- 5. Find employees in departments with at least three employees.
SELECT name, department, salary
FROM employees
WHERE department IN (
    SELECT department
    FROM employees
    GROUP BY department
    HAVING COUNT(*) >= 3
);

-- 6. Find employees outside IT and HR.
SELECT name, department, salary
FROM employees
WHERE department NOT IN (
    SELECT department
    FROM departments
    WHERE department IN ('IT', 'HR')
);

-- 7. Find the fourth-highest distinct salary.
-- Returns NULL if there are fewer than four distinct salary values.
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

-- 8. Find employees earning more than their own department average.
SELECT
    e.name,
    e.department,
    e.salary
FROM employees AS e
WHERE e.salary > (
    SELECT AVG(e2.salary)
    FROM employees AS e2
    WHERE e2.department = e.department
);

-- 9. Find departments with at least one employee.
SELECT d.department, d.manager
FROM departments AS d
WHERE EXISTS (
    SELECT 1
    FROM employees AS e
    WHERE e.department = d.department
);

-- 10. Find departments with no employees.
-- With the current sample data, this correctly returns no rows because
-- IT, HR, Finance, and Marketing all have employees.
SELECT d.department, d.manager
FROM departments AS d
WHERE NOT EXISTS (
    SELECT 1
    FROM employees AS e
    WHERE e.department = d.department
);

-- END OF SQL SUBQUERIES
