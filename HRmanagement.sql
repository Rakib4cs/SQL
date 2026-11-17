CREATE DATABASE HRManagementDB;
GO
USE HRManagementDB;
GO

CREATE TABLE Department (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL
);

CREATE TABLE Employee (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    department_id INT,
    email VARCHAR(100),

    FOREIGN KEY (department_id)
    REFERENCES Department(department_id)
);

CREATE TABLE Salary (
    salary_id INT PRIMARY KEY,
    employee_id INT,
    basic_salary DECIMAL(10,2) NOT NULL,
    bonus DECIMAL(10,2),

    FOREIGN KEY (employee_id)
    REFERENCES Employee(employee_id)
);

CREATE TABLE Attendance (
    attendance_id INT PRIMARY KEY,
    employee_id INT,
    attendance_date DATE NOT NULL,
    status VARCHAR(50),

    FOREIGN KEY (employee_id)
    REFERENCES Employee(employee_id)
);

INSERT INTO Department
(department_id, department_name)
VALUES
(1, 'Human Resources'),
(2, 'Finance'),
(3, 'IT'),
(4, 'Marketing');

INSERT INTO Employee
(employee_id, employee_name, department_id, email)
VALUES
(101, 'Alice Smith', 1, 'alice@company.com'),
(102, 'Bob Johnson', 2, 'bob@company.com'),
(103, 'Charlie Brown', 3, 'charlie@company.com'),
(104, 'Diana Prince', 4, 'diana@company.com'),
(105, 'Edward Norton', 3, 'edward@company.com');

INSERT INTO Salary
(salary_id, employee_id, basic_salary, bonus)
VALUES
(1, 101, 50000.00, 5000.00),
(2, 102, 60000.00, 6000.00),
(3, 103, 70000.00, 7000.00),
(4, 104, 55000.00, 5500.00),
(5, 105, 72000.00, 7500.00);

INSERT INTO Attendance
(attendance_id, employee_id, attendance_date, status)
VALUES
(1, 101, '2025-04-01', 'Present'),
(2, 101, '2025-04-02', 'Present'),
(3, 102, '2025-04-01', 'Absent'),
(4, 102, '2025-04-02', 'Present'),
(5, 103, '2025-04-01', 'Leave'),
(6, 103, '2025-04-02', 'Present'),
(7, 104, '2025-04-01', 'Present'),
(8, 105, '2025-04-01', 'Absent');

SELECT * FROM Department;

SELECT * FROM Employee;

SELECT * FROM Salary;

SELECT * FROM Attendance;

SELECT
    E.employee_name,
    D.department_name,
    E.email,
    S.basic_salary,
    S.bonus,
    A.attendance_date,
    A.status

FROM Employee E

INNER JOIN Department D
ON E.department_id = D.department_id

INNER JOIN Salary S
ON E.employee_id = S.employee_id

INNER JOIN Attendance A
ON E.employee_id = A.employee_id;

SELECT
    E.employee_name,
    D.department_name,
    E.email,
    S.basic_salary,
    S.bonus,
    A.attendance_date,
    A.status

FROM Employee E
INNER JOIN Department D
ON E.department_id = D.department_id

INNER JOIN Salary S
ON E.employee_id = S.employee_id

INNER JOIN Attendance A
ON E.employee_id = A.employee_id

ORDER BY E.employee_id, A.attendance_date;
