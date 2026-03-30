CREATE TABLE students (
    student_id INT,
    name VARCHAR(50),
    department VARCHAR(30),
    year INT,
    marks INT
);
INSERT INTO students VALUES
(1, 'payal', 'it', 1, 85),
(2, 'Neha', 'IT', 2, 72),
(3, 'jagu', 'bcom', 3, 90),
(4, 'jinal', 'it', 2, 65),
(5, 'sejal', 'bca', 1, 78);
SELECT * FROM students;
SELECT name, department FROM students;
SELECT * FROM students
WHERE marks > 75;
SELECT * FROM students
WHERE department = 'bcom';
SELECT * FROM students
ORDER BY marks DESC;
SELECT * FROM students
ORDER BY marks DESC
LIMIT 3;