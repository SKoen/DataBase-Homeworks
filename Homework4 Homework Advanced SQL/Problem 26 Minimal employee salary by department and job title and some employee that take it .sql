SELECT D.Name,E.JobTitle, MIN(SALARY) AS [Minimal salarry in department], E.FirstName 
FROM Employees E
JOIN Departments D ON E.DepartmentID = D.DepartmentID
GROUP BY D.Name,E.JobTitle, E.FirstName
ORDER BY [Minimal salarry in department]