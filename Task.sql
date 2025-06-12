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
(1, 'Marketing'),
(2, 'Research'),
(3, 'Development');

-- Employees
INSERT INTO Employees (EmployeeID, Name, Salary, DepartmentID) VALUES
(1, 'John Doe', 60000.00, 1),
(2, 'Jane Smith', 70000.00, 1),
(3, 'Alice Johnson', 65000.00, 1),
(4, 'Bob Brown', 75000.00, 1),
(5, 'Charlie Wilson', 80000.00, 1),
(6, 'Eva Lee', 70000.00, 2),
(7, 'Michael Clark', 75000.00, 2),
(8, 'Sarah Davis', 80000.00, 2),
(9, 'Ryan Harris', 85000.00, 2),
(10, 'Emily White', 90000.00, 2),
(11, 'David Martinez', 95000.00, 3),
(12, 'Jessica Taylor', 100000.00, 3),
(13, 'William Rodriguez', 105000.00, 3);



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
