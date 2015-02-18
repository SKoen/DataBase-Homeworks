SELECT AVG(Salary) as [Average salary in department sales] FROM Employees E
JOIN Departments D ON E.DepartmentID = D.DepartmentID
WHERE D.Name = 'Sales'
