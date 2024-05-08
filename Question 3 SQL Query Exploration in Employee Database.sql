-- Question 3. SQL Query Exploration in Employee Database

-- Task 1: SQL DISTINCT Usage
SELECT DISTINCT d.department_name
FROM Employees e, Departments d
WHERE d.department_id  = e.department_id;

-- Task 2: SQL COUNT Functionality


-- Task 3: SQL BETWEEN Usage