DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
    emp_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    salary INT,
    hire_date DATE
);

INSERT INTO employees (name, salary, hire_date) VALUES
('Rahul', 50000, '2023-01-10'),
('Priya', 60000, '2023-05-15'),
('Amit', 70000, '2024-01-20'),
('Neha', 60000, '2024-06-01'),
('Karan', 80000, '2024-08-01'),
('Riya', 70000, '2024-09-01');

SELECT DISTINCT salary
FROM employees
ORDER BY salary DESC
LIMIT 1 OFFSET 1;

DELETE FROM employees e1
USING employees e2
WHERE e1.emp_id > e2.emp_id
AND e1.salary = e2.salary;

CREATE TABLE managers (
    emp_id INT
);

INSERT INTO managers VALUES (1), (3);

SELECT e.*
FROM employees e
INNER JOIN managers m
ON e.emp_id = m.emp_id;

SELECT *
FROM employees
WHERE hire_date >= CURRENT_DATE - INTERVAL '6 months';

SELECT salary, COUNT(*)
FROM employees
GROUP BY salary
HAVING COUNT(*) > 1;