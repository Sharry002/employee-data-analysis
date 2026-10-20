
-- Insert departments and their managers
INSERT INTO departments (department, manager)
VALUES
    ('IT', 'Amit'),
    ('HR', 'Neha'),
    ('Finance', 'Raj'),
    ('Marketing', 'Simran');

-- Insert employee records
INSERT INTO employees
    (employee_id, name, age, city, department, salary, joining_date)
VALUES
    (1, 'Aman', 24, 'Amritsar', 'IT', 35000, '2024-01-15'),
    (2, 'Priya', 28, 'Delhi', 'HR', 42000, '2023-06-10'),
    (3, 'Rahul', 25, 'Amritsar', 'IT', 30000, '2024-03-20'),
    (4, 'Simran', 30, 'Ludhiana', 'Finance', 50000, '2022-11-05'),
    (5, 'Karan', 27, 'Delhi', 'IT', 45000, '2023-09-12'),
    (6, 'Neha', 23, 'Ludhiana', 'HR', 32000, '2025-02-01'),
    (7, 'Arjun', 29, 'Amritsar', 'Finance', 55000, '2021-07-18'),
    (8, 'Meera', 26, 'Delhi', 'HR', 38000, '2024-08-25'),
    (9, 'Vikram', 32, 'Ludhiana', 'IT', 60000, '2020-04-14'),
    (10, 'Anjali', 22, 'Amritsar', 'HR', 28000, '2025-05-11'),
    (11, 'Rohan', 25, 'Amritsar', 'Marketing', 35000, '2026-01-15');
