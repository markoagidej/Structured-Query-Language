-- Question 3. SQL Query Exploration in Employee Database

-- Task 1: SQL DISTINCT Usage
SELECT DISTINCT d.department_name
FROM Employees e, Departments d
WHERE e.department_id  = d.department_id;

-- Task 2: SQL COUNT Functionality
SELECT d.department_name, COUNT(*)
FROM Employees e, Departments d
WHERE e.department_id  = d.department_id
GROUP BY d.department_id;

-- Task 3: SQL BETWEEN Usage
SELECT name, age, department_id
FROM Employees
WHERE age BETWEEN 25 and 30;