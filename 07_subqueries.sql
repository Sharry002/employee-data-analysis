-- 1. SUBQUERY WITH WHERE
-- Find employees earning more than the company average.

SELECT
    name,
    department,
    salary
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);


-- 2. SUBQUERY WITH MAX()
-- Find the highest-paid employee.

SELECT
    name,
    department,
    salary
FROM employees
WHERE salary = (
    SELECT MAX(salary)
    FROM employees
);


-- 3. SUBQUERY WITH MIN()
-- Find the lowest-paid employee.

SELECT
    name,
    department,
    salary
FROM employees
WHERE salary = (
    SELECT MIN(salary)
    FROM employees
);


-- 4. SUBQUERY WITH GROUP BY
-- Find departments whose average salary is
-- higher than the company-wide average salary.

SELECT
    department,
    AVG(salary) AS department_avg
FROM employees
GROUP BY department
HAVING AVG(salary) > (
    SELECT AVG(salary)
    FROM employees
);


-- 5. SUBQUERY WITH IN
-- Find employees who work in departments
-- that have at least three employees.

SELECT
    name,
    department,
    salary
FROM employees
WHERE department IN (
    SELECT department
    FROM employees
    GROUP BY department
    HAVING COUNT(*) >= 3
);


-- 6. SUBQUERY WITH NOT IN
-- Find employees who do not work in IT or HR.

SELECT
    name,
    department,
    salary
FROM employees
WHERE department NOT IN (
    SELECT department
    FROM departments
    WHERE department IN ('IT', 'HR')
);


-- 7. FOURTH-HIGHEST DISTINCT SALARY
-- Find the fourth-highest distinct salary using
-- nested subqueries.

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


-- 8. CORRELATED SUBQUERY
-- Find employees earning more than their
-- own department's average salary.

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


-- 9. EXISTS
-- Find departments that have at least one employee.

SELECT
    d.department,
    d.manager
FROM departments AS d
WHERE EXISTS (
    SELECT 1
    FROM employees AS e
    WHERE e.department = d.department
);


-- 10. NOT EXISTS
-- Find departments with no matching employees.

SELECT
    d.department,
    d.manager
FROM departments AS d
WHERE NOT EXISTS (
    SELECT 1
    FROM employees AS e
    WHERE e.department = d.department
);


-- END OF SQL SUBQUERIES
