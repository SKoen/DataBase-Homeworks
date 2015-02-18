CREATE TABLE WorkHours
(
	Id int PRIMARY KEY IDENTITY NOT NULL,
	EmployeeId int FOREIGN KEY REFERENCES Employees(EmployeeId)  NOT NULL,
    Date datetime NULL,
    Task nvarchar(150) NOT NULL,
    Hours int NOT NULL,
    Comments ntext NULL
)