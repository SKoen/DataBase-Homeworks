SELECT E.FirstName +' '+ E.LastName AS [Employee Name] ,  M.FirstName +' '+ M.LastName AS [Manager Name] , AddressText
FROM Employees E
JOIN Employees M
ON E.ManagerID = M.EmployeeID
JOIN Addresses A
ON E.AddressID = A.AddressID

