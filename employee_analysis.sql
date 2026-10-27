-- Count total Employees


SELECT COUNT(*) AS total_employees
FROM employees;


-- Calculate Avg Salary


SELECT AVG(salary) AS avrage_salary
FROM employees;



-- Count employees By Deparment

SELECT 
	department,
	COUNT(*) AS employee_count
	FROM employees
	GROUP BY department
	ORDER BY employee_count;



--Avrage Salary For Each Department


	SELECT 
		department,
	AVG(salary) AS avrage_salary
	FROM employees
	GROUP BY department
	ORDER BY avrage_salary DESC


	-- Employees earning above Avg Salary

	SELECT 
		name,salary
	FROM employees
	WHERE salary > (
			SELECT AVG(salary)
			FROM employees
	)
	ORDER BY salary DESC;



	-- Highest salary in each department


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
ORDER BY e.salary DESC;


-- Highest salary in each department


SELECT
    department,
    MAX(salary) AS highest_salary
FROM employees
GROUP BY department
ORDER BY highest_salary DESC;


-- Count employees by city


SELECT
    city,
    COUNT(*) AS employee_count
FROM employees
GROUP BY city
ORDER BY employee_count DESC;


-- Employees Who Joined After 1 January 2024

SELECT name, joining_date
FROM employees
WHERE joining_date >'2024-01-01'
ORDER BY joining_date DESC;


-- Employee AND Department Manger 


SELECT 
e.name,
e.department,
d.manager
FROM employees AS e
INNER JOIN departments AS d
	ON e.department = d.department;


-- Employee Earning Above their Department's Avrage


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
ORDER BY e.department, e.Salary DESC;



-- Total Salary Expense By Department


SELECT
	department,
	SUM(salary) AS total_salary_expense
From employees
GROUP BY department
ORDER BY total_salary_expense DESC;


-- Find 4th Highest Salary in Entire Company



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
		)
			;