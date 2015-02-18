SELECT E.FirstName +' '+ E.LastName AS [Employee Name] ,  M.FirstName +' '+ M.LastName AS [Manager Name]
FROM Employees E
JOIN Employees M
ON E.ManagerID = M.EmployeeID

