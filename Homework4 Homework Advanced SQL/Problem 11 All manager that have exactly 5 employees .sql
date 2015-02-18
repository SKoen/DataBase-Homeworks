SELECT M.FirstName, M.LastName, COUNT(M.EmployeeID) AS [Number of employees] FROM Employees E
JOIN Employees M ON E.ManagerID=M.EmployeeID
GROUP BY M.FirstName, M.LastName
HAVING COUNT(M.EmployeeID) = 5
