CREATE TABLE Users
(
userId int IDENTITY,
username nvarchar(20) NOT NULL,
password nvarchar(20) NOT NULL,
[Full Name] nvarchar(50) NOT NULL,
[Last login time] date NOT NULL,
CONSTRAINT PK_Users PRIMARY KEY(userId),
CONSTRAINT UNQ_Users UNIQUE(username),
CONSTRAINT CHK_Password CHECK (LEN(password) >= 5)
)