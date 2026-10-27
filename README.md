# Employee Data Analysis — SQL Server

## Project Overview
This beginner-level SQL project analyses employee data using Microsoft SQL Server. It explores employee salaries, department-level statistics, workforce distribution, joining dates, and SQL window functions.

## Database Tables

### 1. employees
Contains employee information:
- Employee ID
- Name and age
- City and department
- Salary
- Joining date

### 2. departments
Contains department names and their managers.

## SQL Skills Demonstrated
- SELECT, WHERE, ORDER BY
- Aggregate functions: COUNT, SUM, AVG, MIN, MAX
- GROUP BY and HAVING
- Subqueries
- INNER JOIN
- Salary comparisons and rankings
- Filtering and sorting data
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
11. How can the fourth-highest distinct salary in the company be found using nested subqueries?
12. How can employees be ranked by salary within each department?
13. How can the previous or next employee's salary be retrieved?
14. How can a running total of salaries be calculated?

## Files
- `01_create_tables.sql` — Creates the database tables.
- `02_insert_sample_data.sql` — Inserts sample department and employee records.
- `employee_analysis.sql` — Contains SQL analysis queries.
- `05_window_functions.sql` — Contains window function practice queries and examples.

## Tools
- Microsoft SQL Server
- SQL Server Management Studio (SSMS)
- GitHub

## Dataset
The project uses 11 sample employee records across four departments: IT, HR, Finance, and Marketing.

## Purpose
This project demonstrates SQL skills developed for entry-level data analysis roles, including data retrieval, aggregation, joins, subqueries, and window functions.

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
