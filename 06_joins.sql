-- 1. INNER JOIN
-- Show employees alongside their department manager.
-- Returns only matching department records.

SELECT
    e.name,
    e.department,
    d.manager
FROM employees AS e
INNER JOIN departments AS d
    ON e.department = d.department;


-- 2. LEFT JOIN
-- Show all employees, including employees without a
-- matching department record.

SELECT
    e.name,
    e.department,
    d.manager
FROM employees AS e
LEFT JOIN departments AS d
    ON e.department = d.department;


-- 3. RIGHT JOIN
-- Show all department records, including departments
-- without matching employees.

SELECT
    e.name,
    d.department,
    d.manager
FROM employees AS e
RIGHT JOIN departments AS d
    ON e.department = d.department;


-- 4. FULL OUTER JOIN
-- Show all employees and all departments.
-- Matching records are combined.

SELECT
    e.name,
    e.department AS employee_department,
    d.department AS listed_department,
    d.manager
FROM employees AS e
FULL OUTER JOIN departments AS d
    ON e.department = d.department;


-- 5. JOIN WITH WHERE
-- Find IT employees and their department manager.

SELECT
    e.name,
    e.salary,
    d.manager
FROM employees AS e
INNER JOIN departments AS d
    ON e.department = d.department
WHERE e.department = 'IT';


-- 6. JOIN WITH ORDER BY
-- Display employees from highest to lowest salary
-- with their department manager.

SELECT
    e.name,
    e.department,
    e.salary,
    d.manager
FROM employees AS e
INNER JOIN departments AS d
    ON e.department = d.department
ORDER BY e.salary DESC;


-- 7. JOIN WITH GROUP BY
-- Calculate total salary expenses for each department.

SELECT
    d.department,
    d.manager,
    COUNT(e.employee_id) AS employee_count,
    SUM(e.salary) AS total_salary
FROM departments AS d
LEFT JOIN employees AS e
    ON d.department = e.department
GROUP BY
    d.department,
    d.manager;


-- 8. JOIN WITH HAVING
-- Find departments with more than two employees.

SELECT
    d.department,
    d.manager,
    COUNT(e.employee_id) AS employee_count
FROM departments AS d
LEFT JOIN employees AS e
    ON d.department = e.department
GROUP BY
    d.department,
    d.manager
HAVING COUNT(e.employee_id) > 2;


-- 9. SELF JOIN
-- Compare employees who work in the same department.
-- Employee IDs prevent duplicate pairs and self-matches.

SELECT
    e1.name AS employee_1,
    e2.name AS employee_2,
    e1.department
FROM employees AS e1
INNER JOIN employees AS e2
    ON e1.department = e2.department
   AND e1.employee_id < e2.employee_id;


-- 10. CROSS JOIN
-- Generate every possible employee-department combination.

SELECT
    e.name,
    d.department
FROM employees AS e
CROSS JOIN departments AS d;


-- END OF SQL JOINS
