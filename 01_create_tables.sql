
CREATE TABLE departments (
    department VARCHAR(50) PRIMARY KEY,
    manager VARCHAR(100)
);

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    city VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10, 2),
    joining_date DATE,
    FOREIGN KEY (department)
        REFERENCES departments(department)
);
