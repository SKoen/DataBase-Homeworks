SELECT FirstName + ' ' +  LastName as [Full Name], a.AddressText
FROM Employees e, Addresses a
WHERE e.AddressID = a.AddressID