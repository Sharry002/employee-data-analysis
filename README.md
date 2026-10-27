# Employee Data Analysis — SQL Server

## Project Overview

This beginner-level SQL project analyses employee data using Microsoft SQL Server. It explores employee salaries, department-level statistics, workforce distribution, joining dates, and SQL window functions.

## Database Tables

### 1. `employees`

Contains employee information:
- Employee ID
- Name and age
- City and department
- Salary
- Joining date

### 2. `departments`

Contains department names and their managers.

## SQL Skills Demonstrated

- SELECT, WHERE, ORDER BY
- DISTINCT, BETWEEN, IN, and LIKE
- NULL handling and CASE expressions
- Aggregate functions: COUNT, SUM, AVG, MIN, MAX
- GROUP BY and HAVING
- INNER JOIN, LEFT JOIN, RIGHT JOIN, FULL OUTER JOIN
- SELF JOIN and CROSS JOIN
- Subqueries and correlated subqueries
- IN, NOT IN, EXISTS, and NOT EXISTS
- Salary comparisons and rankings
- Window functions and the OVER() clause
- PARTITION BY and window ORDER BY
- Ranking functions: ROW_NUMBER(), RANK(), DENSE_RANK(), NTILE()
- Aggregate window functions: SUM(), AVG(), COUNT(), MIN(), MAX()
- Value and offset functions: LAG(), LEAD(), FIRST_VALUE(), LAST_VALUE()
- Running totals and window frames

## Project Questions

1. How many employees are in the company?
2. What is the average salary?
3. How many employees work in each department?
4. Which department has the highest average salary?
5. Which employees earn more than the company average?
6. What is the highest salary in each department?
7. How are employees distributed across cities?
8. Which employees joined after a specified date?
9. Which managers are responsible for each employee's department?
10. What is the total salary expense for each department?
11. How can the fourth-highest distinct salary be found using nested subqueries?
12. How can employees be ranked by salary within each department?
13. How can the previous or next employee's salary be retrieved?
14. How can a running total of salaries be calculated?
15. How can employees earning above their department's average salary be identified?
16. How can departments without matching employees be identified using subqueries?

## Project Files

| File | Description |
|---|---|
| `01_create_tables.sql` | Creates the database tables |
| `02_insert_sample_data.sql` | Inserts sample employee and department records |
| `03_basics.sql` | Covers basic SQL queries, filtering, sorting, and CASE expressions |
| `04_aggregates.sql` | Covers aggregate functions, GROUP BY, and HAVING |
| `05_window_functions.sql` | Demonstrates SQL window functions |
| `06_joins.sql` | Demonstrates different SQL joins |
| `07_subqueries.sql` | Covers nested and correlated subqueries |
| `employee_analysis.sql` | Contains employee data analysis queries |

## Tools

- Microsoft SQL Server
- SQL Server Management Studio (SSMS)
- GitHub

## Dataset

The project uses 11 sample employee records across four departments: IT, HR, Finance, and Marketing.

## Screenshots

### 1. Total Employees

![Total Employees](screenshots/employee-count.png)

### 2. Average Salary by Department

![Department Average Salaries](screenshots/department-averages.png)

### 3. Fourth-Highest Distinct Salary

![Fourth-Highest Salary](screenshots/fourth-highest-salary.png)

### 4. Window Function — Department Ranking

![Department Ranking](screenshots/window_ranking.png)

### 5. Window Function — Previous Employee Salary

![Previous Employee Salary](screenshots/window_lag.png)

### 6. Aggregate Functions

![Aggregate Functions](screenshots/aggregate-functions.png)

### 7. INNER JOIN

![INNER JOIN Example](screenshots/inner-join.png)

### 8. Subquery — Employees Earning Above Average

![Subquery Example](screenshots/subquery-above-average.png)

## Project Purpose

This project demonstrates SQL skills developed for entry-level data analyst roles, including data retrieval, data aggregation, joins, subqueries, and window functions. It serves as a practical portfolio project showcasing SQL query writing and data analysis fundamentals.
