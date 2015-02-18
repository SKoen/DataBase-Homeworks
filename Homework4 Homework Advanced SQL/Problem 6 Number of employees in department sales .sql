SELECT COUNT(Salary) as [Number of employees in department sales] FROM Employees E
JOIN Departments D ON E.DepartmentID = D.DepartmentID
WHERE D.Name = 'Sales'
