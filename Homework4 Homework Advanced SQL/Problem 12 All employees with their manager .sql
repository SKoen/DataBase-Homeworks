SELECT 
 E.FirstName + ' ' +  E.LastName AS [Employee Name] ,
 ISNULL(M.FirstName + ' ' + M.LastName,'No manager') AS [Manager Name]
 FROM Employees E
 LEFT JOIN Employees M ON E.ManagerID = M.EmployeeID
