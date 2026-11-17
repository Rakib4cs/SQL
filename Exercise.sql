CREATE TABLE employees (
    EmpID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Age INT UNIQUE,
    Salary DECIMAL(10,2) CHECK (Salary > 55000),
    Department VARCHAR(20) CHECK (Department IN ('HR', 'IT', 'Sales'))
);

SELECT * FROM employees;


INSERT INTO employees (EmpID, FirstName, LastName, Age, Salary, Department) 
VALUES 
(1, 'John', 'Doe', 30, 60000.00, 'HR'),
(2, 'Jane', 'Smith', 45, 65000.00, 'IT'),
(3, 'Mike', 'Johnson', 38, 80000.00, 'IT'),
(4, 'Emily', 'Davis', 50, 95000.00, 'IT'),
(5, 'Anna', 'Brown', 29, 70000.00, 'HR'),
(6, 'Mike', 'Davis', 31, 75000.00, 'Sales');

SELECT * FROM employees 
WHERE Department = 'IT';

SELECT DISTINCT Department 
FROM employees;

SELECT * FROM employees 
WHERE Age > 40;

SELECT * FROM employees 
WHERE Salary BETWEEN 50000 AND 80000;

SELECT * FROM employees 
WHERE LastName LIKE 'D%';

SELECT * FROM employees 
WHERE Department <> 'HR';

SELECT * FROM employees 
WHERE Age = 30 OR Salary > 70000;

SELECT * FROM employees 
WHERE FirstName = 'Anna' AND Department = 'HR';