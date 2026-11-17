CREATE TABLE Students (
student_ID INT PRIMARY KEY,
Name VARCHAR(50) NOT NULL,
Age INT,
Department VARCHAR(50),
Year INT,
Batch INT,
Semester FLOAT
);
INSERT INTO Students( student_ID,Name,Age,Department,Year,Batch,Semester)
VALUES
 (1, 'RAKIB', 23, 'CSE', 3, 18, 3.1),
 (2, 'SIAM', 21, 'CSE', 3, 18, 3.1),
 (3, 'REDWAN', 23, 'CSE', 3, 18, 3.1),
 (4, 'KANON', 22, 'CSE', 3, 18, 3.1),
 (5, 'ANAMIKA', 22, 'CSE', 3, 18, 3.1),
 (6, 'SOJIB', 22, 'CSE', 3, 18, 3.1),
 (7, 'ANU', 22, 'CSE', 3, 18, 3.1),
 (8, 'RIYAD', 21, 'CSE', 3, 18, 3.1),
 (9, 'KHADIJA', 21, 'CSE', 3, 18, 3.1),
 (10, 'JANNATUL', 22, 'CSE', 3, 18, 3.1);

SELECT *FROM Students;
