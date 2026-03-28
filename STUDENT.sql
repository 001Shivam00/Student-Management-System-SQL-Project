
CREATE DATABASE student_db;
USE student_db;
CREATE TABLE students(
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    FIRST_NAME varchar(50) NOT NULL,
    LAST_NAME varchar(50) NOT NULL,
    EMAIL varchar(100) unique,
    PHONE varchar(15),
    AGE INT,
    CITY varchar(50),
    ENROLLMENT_DATA date    
);

CREATE TABLE courses (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(100) NOT NULL,
    teacher_name VARCHAR(100),
    duration_months INT,
    fees DECIMAL(10,2)
);

CREATE TABLE enrollments (
    enrollment_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    course_id INT,
    marks INT,
    grade VARCHAR(5),
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);


-- Students insert karo
INSERT INTO students VALUES
(1, 'Rahul', 'Sharma', 'rahul@gmail.com', '9876543210', 20, 'Delhi', '2024-01-10'),
(2, 'Priya', 'Verma', 'priya@gmail.com', '9123456789', 22, 'Mumbai', '2024-01-15'),
(3, 'Amit', 'Kumar', 'amit@gmail.com', '9988776655', 21, 'Prayagraj', '2024-02-01'),
(4, 'Sneha', 'Singh', 'sneha@gmail.com', '9871234560', 19, 'Lucknow', '2024-02-10'),
(5, 'Rohan', 'Gupta', 'rohan@gmail.com', '9765432100', 23, 'Kanpur', '2024-03-01');

-- Courses insert karo
INSERT INTO courses VALUES
(1, 'Python Programming', 'Mr. Sharma', 3, 5000.00),
(2, 'Web Development', 'Ms. Verma', 6, 8000.00),
(3, 'Data Science', 'Mr. Gupta', 4, 10000.00),
(4, 'SQL Basics', 'Ms. Singh', 2, 3000.00);

-- Enrollments insert karo
INSERT INTO enrollments VALUES
(1, 1, 1, 85, 'A'),
(2, 2, 2, 72, 'B'),
(3, 3, 3, 90, 'A+'),
(4, 4, 4, 65, 'C'),
(5, 5, 1, 78, 'B+'),
(6, 1, 3, 88, 'A');




SELECT * FROM students;


SELECT first_name, city FROM students;


SELECT * FROM students WHERE city = 'Delhi';


SELECT * FROM students ORDER BY age ASC;


-- A grade wale students
SELECT * FROM enrollments WHERE grade = 'A' OR grade = 'A+';


SELECT * FROM enrollments WHERE marks > 70;


SELECT COUNT(*) AS total_students FROM students;

-- Average marks
SELECT AVG(marks) AS average_marks FROM enrollments;

-- Sabse zyada marks
SELECT MAX(marks) AS highest_marks FROM enrollments;





-- Student ka naam aur uska course
SELECT 
    s.first_name, 
    s.last_name, 
    c.course_name, 
    e.marks, 
    e.grade
FROM students s
JOIN enrollments e ON s.student_id = e.student_id
JOIN courses c ON e.course_id = c.course_id;

-- Har course mein kitne students hain
SELECT 
    c.course_name, 
    COUNT(e.student_id) AS total_students
FROM courses c
JOIN enrollments e ON c.course_id = e.course_id
GROUP BY c.course_name;



-- Marks update karo
UPDATE enrollments SET marks = 95 WHERE enrollment_id = 1;

-- Student delete karo
DELETE FROM students WHERE student_id = 5;


SELECT FIRST_NAME ,LAST_NAME,CITY
FROM STUDENTS
WHERE CITY = "PRAYAGRAJ"

SELECT COURSE_NAME,FEES
FROM COURSES
ORDER BY FEES DESC
LIMIT 1 ;


SELECT 
    S.STUDENT_ID,
    S.FIRST_NAME,
    S.LAST_NAME,
    S.EMAIL,
    S.PHONE,
    S.AGE,
    S.CITY,
    C.COURSE_NAME,
    E.MARKS,
    E.GRADE
    
FROM students s
JOIN enrollments e ON s.student_id = e.student_id
JOIN courses c ON e.course_id = c.course_id
WHERE e.grade = 'A+';


SELECT 
    CITY,
    count(*) AS TOTAL_STUDENTS
    FROM STUDENTS
    GROUP BY  CITY
    order by TOTAL_STUDENTS DESC;
    
  SELECT 
    s.first_name,
    s.last_name,
    c.course_name,
    e.marks,
    e.grade
FROM students s
JOIN enrollments e ON s.student_id = e.student_id
JOIN courses c ON e.course_id = c.course_id
WHERE c.course_name = 'Python Programming';  
    
    