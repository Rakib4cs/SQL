CREATE DATABASE employeeDB;
USE employeeDB;

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    Salary INT,
    HireDate DATE
);

INSERT INTO Employees
(EmployeeID, FirstName, LastName, Department, Salary, HireDate)
VALUES
(1, 'John', 'Doe', 'HR', 55000, '2021-05-14'),
(2, 'Jane', 'Smith', 'IT', 62000, '2020-11-22'),
(3, 'Emily', 'Johnson', 'IT', 57000, '2019-03-30'),
(4, 'Mike', 'Brown', 'Sales', 49000, '2023-01-12'),
(5, 'Anna', 'Davis', 'HR', 51000, '2022-09-10');

SELECT *FROM Employees
ORDER BY LastName ASC;

SELECT *FROM Employees
ORDER BY Department ASC, Salary DESC;

SELECT *FROM Employees
ORDER BY HireDate DESC;

SELECT FirstName,
Salary AS AnnualSalary
FROM Employees
ORDER BY AnnualSalary ASC;

ALTER TABLE Employees
ADD Bonus INT NULL;

UPDATE Employees SET Bonus = 5000 WHERE EmployeeID = 1;
UPDATE Employees SET Bonus = NULL WHERE EmployeeID = 2;
UPDATE Employees SET Bonus = 3000 WHERE EmployeeID = 3;
UPDATE Employees SET Bonus = NULL WHERE EmployeeID = 4;
UPDATE Employees SET Bonus = 4000 WHERE EmployeeID = 5;


SELECT *
FROM Employees
ORDER BY
CASE WHEN Bonus IS NULL THEN 1 ELSE 0 END ASC,
Salary ASC;
