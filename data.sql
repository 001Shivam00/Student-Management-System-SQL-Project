-- Sample Data
USE student_db;

INSERT INTO students VALUES
(1, 'Rahul', 'Sharma', 'rahul@gmail.com', '9876543210', 20, 'Delhi', '2024-01-10'),
(2, 'Priya', 'Verma', 'priya@gmail.com', '9123456789', 22, 'Mumbai', '2024-01-15'),
(3, 'Amit', 'Kumar', 'amit@gmail.com', '9988776655', 21, 'Prayagraj', '2024-02-01'),
(4, 'Sneha', 'Singh', 'sneha@gmail.com', '9871234560', 19, 'Lucknow', '2024-02-10'),
(5, 'Rohan', 'Gupta', 'rohan@gmail.com', '9765432100', 23, 'Kanpur', '2024-03-01');

INSERT INTO courses VALUES
(1, 'Python Programming', 'Mr. Sharma', 3, 5000.00),
(2, 'Web Development', 'Ms. Verma', 6, 8000.00),
(3, 'Data Science', 'Mr. Gupta', 4, 10000.00),
(4, 'SQL Basics', 'Ms. Singh', 2, 3000.00);

INSERT INTO enrollments VALUES
(1, 1, 1, 85, 'A'),
(2, 2, 2, 72, 'B'),
(3, 3, 3, 90, 'A+'),
(4, 4, 4, 65, 'C'),
(5, 5, 1, 78, 'B+'),
(6, 1, 3, 88, 'A');
