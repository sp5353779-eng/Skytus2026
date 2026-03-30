DROP DATABASE IF EXISTS company_db;
CREATE DATABASE company_db;
USE company_db;
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id INT,
    salary INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

INSERT INTO departments VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Finance'),
(4, 'Marketing');

INSERT INTO employees VALUES
(101, 'Amit', 1, 60000),
(102, 'Riya', 1, 45000),
(103, 'Karan', 2, 55000),
(104, 'Neha', 3, 70000),
(105, 'Priya', 3, 48000),
(106, 'Rahul', 1, 52000),
(107, 'Sneha', NULL, 40000);

SELECT emp_name, salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);

SELECT d.dept_name, SUM(e.salary) AS total_salary
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id
GROUP BY d.dept_name
HAVING SUM(e.salary) = (
    SELECT MAX(total_salary)
    FROM (
        SELECT SUM(salary) AS total_salary
        FROM employees
        GROUP BY dept_id
    ) AS temp
);

SELECT emp_name
FROM employees
WHERE dept_id = (
    SELECT dept_id
    FROM employees
    WHERE emp_name = 'Amit'
)
AND emp_name <> 'Amit';
