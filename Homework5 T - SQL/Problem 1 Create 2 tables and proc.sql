CREATE TABLE Persons
(
PersonId int IDENTITY PRIMARY KEY,
FirstName nvarchar(50) NOT NULL,
LastName nvarchar(50) NOT NULL,
SSN nvarchar(50) NOT NULL
)

GO

CREATE TABLE Accounts
(
AccountId int IDENTITY PRIMARY KEY ,
PersonId int FOREIGN KEY REFERENCES Persons(PersonID) NOT NULL,
Balance money
)

GO

INSERT INTO Persons(FirstName,LastName,SSN)
VALUES ('Steven','Stevensen',3264732678)
INSERT INTO Persons(FirstName,LastName,SSN)
VALUES ('Ivan','Petrov',4723874832)
INSERT INTO Persons(FirstName,LastName,SSN)
VALUES ('Georgi','Georgiev',42345235)
INSERT INTO Persons(FirstName,LastName,SSN)
VALUES ('Kolio','Kolev',64732848)
INSERT INTO Persons(FirstName,LastName,SSN)
VALUES ('Pich','Pichovski',5872353)

INSERT INTO Accounts(PersonId,Balance)
VALUES (1,200000)
INSERT INTO Accounts(PersonId,Balance)
VALUES (2,34000)
INSERT INTO Accounts(PersonId,Balance)
VALUES (3,167000)
INSERT INTO Accounts(PersonId,Balance)
VALUES (4,16478.23)
INSERT INTO Accounts(PersonId,Balance)
VALUES (5,1293.90)

GO

CREATE PROC usp_SelectFullNameOfPersons
as
SELECT FirstName + ' ' + LastName AS [Full Name] FROM Persons

GO

EXEC usp_SelectFullNameOfPersons
