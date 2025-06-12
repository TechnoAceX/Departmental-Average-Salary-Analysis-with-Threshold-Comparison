CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    Name VARCHAR(100)
);
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(100),
    Salary DECIMAL(10, 2),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);
-- Departments
INSERT INTO Departments (DepartmentID, Name) VALUES
(1, 'Development'),
(2, 'Marketing'),
(3, 'Sales');

-- Employees
INSERT INTO Employees (EmployeeID, Name, Salary, DepartmentID) VALUES
(1, 'Alice', 100000, 1),
(2, 'Bob', 90000, 1),
(3, 'Charlie', 110000, 1),
(4, 'David', 70000, 2),
(5, 'Eva', 75000, 2),
(6, 'Frank', 60000, 3),
(7, 'Grace', 65000, 3),
(8, 'Henry', 62000, 3);


-- Departments with average salary higher than overall average salary
SELECT 
    d.Name AS DepartmentName,
    AVG(e.Salary) AS AverageSalary,
    COUNT(e.EmployeeID) AS NumberOfEmployees
FROM Employees e
JOIN Departments d ON e.DepartmentID = d.DepartmentID
GROUP BY d.Name
HAVING AVG(e.Salary) > (
    SELECT AVG(Salary) FROM Employees
);
