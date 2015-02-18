SELECT FirstName + ' ' + LastName as [Full Name], Salary, Name AS [Department Name] FROM Employees e
JOIN Departments D ON E.DepartmentID=D.DepartmentID
WHERE Salary =
(
SELECT MIN(salary) FROM Employees
WHERE DepartmentID = e. DepartmentID
)