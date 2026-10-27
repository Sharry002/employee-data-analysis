-- SQL JOINS
-- Database: SQL Server
-- Run after creating and populating the project tables.

-- 1. INNER JOIN: return rows with a matching department.
SELECT
    e.name,
    e.department,
    d.manager
FROM employees AS e
INNER JOIN departments AS d
    ON e.department = d.department;

-- 2. LEFT JOIN: keep every employee, even if no department matches.
-- In this project, the foreign key normally prevents unmatched employee departments.
SELECT
    e.name,
    e.department,
    d.manager
FROM employees AS e
LEFT JOIN departments AS d
    ON e.department = d.department;

-- 3. RIGHT JOIN: keep every department, even if no employees match.
-- Current sample data has employees in all four departments, so all departments match.
SELECT
    e.name,
    d.department,
    d.manager
FROM employees AS e
RIGHT JOIN departments AS d
    ON e.department = d.department;

-- 4. FULL OUTER JOIN: keep all rows from both tables.
SELECT
    e.name,
    e.department AS employee_department,
    d.department AS listed_department,
    d.manager
FROM employees AS e
FULL OUTER JOIN departments AS d
    ON e.department = d.department;

-- 5. JOIN with WHERE: find IT employees and their manager.
SELECT
    e.name,
    e.salary,
    d.manager
FROM employees AS e
INNER JOIN departments AS d
    ON e.department = d.department
WHERE e.department = 'IT';

-- 6. JOIN with ORDER BY: show employees by descending salary.
SELECT
    e.name,
    e.department,
    e.salary,
    d.manager
FROM employees AS e
INNER JOIN departments AS d
    ON e.department = d.department
ORDER BY e.salary DESC;

-- 7. JOIN with GROUP BY: calculate headcount and salary expense per department.
SELECT
    d.department,
    d.manager,
    COUNT(e.employee_id) AS employee_count,
    SUM(e.salary) AS total_salary
FROM departments AS d
LEFT JOIN employees AS e
    ON d.department = e.department
GROUP BY d.department, d.manager;

-- 8. JOIN with HAVING: show departments with more than two employees.
SELECT
    d.department,
    d.manager,
    COUNT(e.employee_id) AS employee_count
FROM departments AS d
LEFT JOIN employees AS e
    ON d.department = e.department
GROUP BY d.department, d.manager
HAVING COUNT(e.employee_id) > 2;

-- 9. SELF JOIN: pair employees in the same department.
-- The ID comparison avoids pairing an employee with themself or repeating each pair.
SELECT
    e1.name AS employee_1,
    e2.name AS employee_2,
    e1.department
FROM employees AS e1
INNER JOIN employees AS e2
    ON e1.department = e2.department
   AND e1.employee_id < e2.employee_id;

-- 10. CROSS JOIN: generate every employee-department combination.
SELECT
    e.name,
    d.department
FROM employees AS e
CROSS JOIN departments AS d;

-- END OF SQL JOINS
