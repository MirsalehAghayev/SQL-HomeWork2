CREATE DATABASE DrugstoreApp 
USE DrugstoreApp

CREATE TABLE Owners
(
	Id int PRIMARY KEY IDENTITY,
	Name nvarchar(30) NOT NULL,
	Surname nvarchar(30) NOT NULL
)
INSERT INTO Owners
VALUES('Mirsaleh','Aghayev')
SELECT*FROM Owners

CREATE TABLE Drugstores
(
	Id int PRIMARY KEY IDENTITY,
	Name nvarchar(30) NOT NULL,
	Address nvarchar(100) NOT NULL UNIQUE,
	ContactNumber nvarchar(30)  UNIQUE,
	CreationDate datetime,
	OwnerId int FOREIGN KEY REFERENCES Owners(Id)
)
INSERT INTO Drugstores
VALUES('Vita','Bakixanov','+9940000000000','2022-10-12',1)
SELECT*FROM Drugstores


CREATE TABLE Druggists
(
	Id int PRIMARY KEY IDENTITY,
	Name nvarchar(30) NOT NULL,
	Surname nvarchar(30) NOT NULL,
	Age int,
	Experience int,
	DrugstoriesId int FOREIGN KEY REFERENCES Drugstores(Id)
)
INSERT INTO Druggists
VALUES('Tural','Nagiyev',21,3,1)
SELECT*FROM Druggists


CREATE TABLE Drugs
(
	Id int PRIMARY KEY IDENTITY,
	Name nvarchar(30) NOT NULL,
	Price double PRECISION,
	Count int,
	DrugstoriesId int FOREIGN KEY REFERENCES Drugstores(Id)
)
INSERT INTO Drugs
VALUES('Multivita N5',19,5,1)
SELECT*FROM Drugs