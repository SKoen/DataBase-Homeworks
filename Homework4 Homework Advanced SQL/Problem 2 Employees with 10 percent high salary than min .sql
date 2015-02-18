SELECT FirstName, LastName, Salary FROM Employees
WHERE Salary  <
(
SELECT MIN(Salary)*110/100 FROM Employees
)