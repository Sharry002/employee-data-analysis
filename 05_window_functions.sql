-- 1. ROW_NUMBER()
-- Assign a unique row number to each employee.
-- Highest salary gets row number 1.

SELECT
    name,
    department,
    salary,
    ROW_NUMBER() OVER (
        ORDER BY salary DESC, employee_id ASC
    ) AS row_num
FROM employees;


-- 2. RANK()
-- Employees with equal salaries share the same rank.
-- Rank numbers are skipped after ties.

SELECT
    name,
    salary,
    RANK() OVER (
        ORDER BY salary DESC
    ) AS salary_rank
FROM employees;


-- 3. DENSE_RANK()
-- Employees with equal salaries share the same rank.
-- Rank numbers are not skipped after ties.

SELECT
    name,
    salary,
    DENSE_RANK() OVER (
        ORDER BY salary DESC
    ) AS dense_salary_rank
FROM employees;


-- 4. NTILE()
-- Divide employees into four groups by salary.

SELECT
    name,
    salary,
    NTILE(4) OVER (
        ORDER BY salary DESC, employee_id ASC
    ) AS salary_group
FROM employees;


-- 5. SUM() OVER()
-- Show the total salary beside every employee.

SELECT
    name,
    salary,
    SUM(salary) OVER () AS total_salary
FROM employees;


-- 6. AVG() OVER(PARTITION BY)
-- Show the average salary for each department.

SELECT
    name,
    department,
    salary,
    AVG(salary) OVER (
        PARTITION BY department
    ) AS department_avg
FROM employees;


-- 7. COUNT() OVER()
-- Show the total number of employees beside every row.

SELECT
    name,
    COUNT(*) OVER () AS employee_count
FROM employees;


-- 8. MIN() AND MAX() OVER()
-- Show the lowest and highest salary across all employees.

SELECT
    name,
    salary,
    MIN(salary) OVER () AS lowest_salary,
    MAX(salary) OVER () AS highest_salary
FROM employees;


-- 9. LAG()
-- Retrieve the previous employee's salary.

SELECT
    name,
    salary,
    LAG(salary) OVER (
        ORDER BY employee_id
    ) AS previous_salary
FROM employees;


-- 10. LEAD()
-- Retrieve the next employee's salary.

SELECT
    name,
    salary,
    LEAD(salary) OVER (
        ORDER BY employee_id
    ) AS next_salary
FROM employees;


-- 11. FIRST_VALUE()
-- Retrieve the first salary in the ordered window.

SELECT
    name,
    salary,
    FIRST_VALUE(salary) OVER (
        ORDER BY salary DESC
        ROWS BETWEEN UNBOUNDED PRECEDING
                 AND CURRENT ROW
    ) AS first_salary
FROM employees;


-- 12. LAST_VALUE()
-- Retrieve the last salary across the entire window.

SELECT
    name,
    salary,
    LAST_VALUE(salary) OVER (
        ORDER BY salary DESC
        ROWS BETWEEN UNBOUNDED PRECEDING
                 AND UNBOUNDED FOLLOWING
    ) AS last_salary
FROM employees;


-- 13. RUNNING TOTAL
-- Calculate a cumulative salary total.

SELECT
    name,
    salary,
    SUM(salary) OVER (
        ORDER BY salary DESC, employee_id ASC
        ROWS BETWEEN UNBOUNDED PRECEDING
                 AND CURRENT ROW
    ) AS running_total
FROM employees;


-- 14. DENSE_RANK() WITH PARTITION BY
-- Rank employees separately within each department.

SELECT
    name,
    department,
    salary,
    DENSE_RANK() OVER (
        PARTITION BY department
        ORDER BY salary DESC
    ) AS department_rank
FROM employees;
