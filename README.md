# Departmental-Average-Salary-Analysis-with-Threshold-Comparison

## 📘 **Overview**

This project demonstrates the use of SQL for analyzing employee salaries across departments in a company.  
It identifies departments where the **average salary exceeds the overall average salary** and displays:

- **Department Name**
- **Average Salary** in that department
- **Number of Employees** in that department

---

## 🗃️ **Tables Used**

### 🔹 **1. Departments**
Stores information about each department.

- **Columns:**
  - `DepartmentID` – Primary Key
  - `Name` – Department name

### 🔹 **2. Employees**
Contains employee details including salary and associated department.

- **Columns:**
  - `EmployeeID` – Primary Key
  - `Name` – Employee name
  - `Salary` – Employee salary
  - `DepartmentID` – Foreign Key to Departments table

---

## 📥 **Sample Data Description**

- **Departments:**  
  Includes entries like `Development`, `Marketing`, and `Sales`.

- **Employees:**  
  A total of 8 employees are distributed across these departments with various salary values.

---

## 🎯 **Objective**

To display all departments where:

- The **average salary** is **greater than** the overall company-wide average salary.
- The output includes:
  - **Department Name**
  - **Average Salary**
  - **Number of Employees**

---

## 📊 **Sample Output**

| **Department Name** | **Average Salary** | **Number of Employees** |
|---------------------|--------------------|--------------------------|
| Development         | 100000.00          | 3                        |

> The Development department is shown because its average salary (100000) exceeds the company-wide average salary across all employees.



