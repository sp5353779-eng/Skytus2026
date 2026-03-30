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
(101, 'sital', 1, 60000),
(102, 'payal', 1, 45000),
(103, 'priyanka', 2, 55000),
(104, 'Ajali', 3, 70000),
(105, 'priti', 3, 48000),
(106, 'sejal', 1, 52000),
(107, 'jagruti', NULL, 40000);

SELECT e.emp_name, d.dept_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id;

SELECT emp_name, salary
FROM employees
WHERE salary > 50000;

SELECT d.dept_name, SUM(e.salary) AS total_salary
FROM employees e
JOIN departments d
ON e.dept_id = d.dept_id
GROUP BY d.dept_name;

SELECT d.dept_name, COUNT(e.emp_id) AS total_employees
FROM employees e
JOIN departments d
ON e.dept_id = d.dept_id
GROUP BY d.dept_name
HAVING COUNT(e.emp_id) > 2;

SELECT emp_name
FROM employees
WHERE dept_id IS NULL;