CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    marks INT 	  	  	 	
);
INSERT INTO students VALUES
(1, 'Arti', 'IT', 85),
(2, 'Riya', 'IT', 78),
(3, 'Kinjal', 'iit', 92),
(4, 'Neha', 'ca', 67),
(5, 'Priya', 'it', 74),
(6, 'jinal', 'EC', 88),
(7, 'Sneha', 'IT', 59);

SELECT COUNT(*) AS total_students FROM students;

SELECT MAX(marks) AS highest_marks,
       MIN(marks) AS lowest_marks
FROM students;

SELECT department, AVG(marks) AS dept_average
FROM students
GROUP BY department;

SELECT department, AVG(marks) AS dept_average
FROM students
GROUP BY department
HAVING AVG(marks) > 70;
