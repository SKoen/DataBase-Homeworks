SELECT D.Name, AVG(SALARY) FROM Employees E
JOIN Departments D ON E.DepartmentID = D.DepartmentID
GROUP BY D.Name
