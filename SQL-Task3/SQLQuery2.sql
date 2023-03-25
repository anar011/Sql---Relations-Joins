--CREATE TABLE Employees(
--[Id] int primary key identity(1,1),
--[Name] nvarchar (50) not null,
--[Surname] nvarchar (50) not null,
--[Age] int,
--[Salary] decimal,
--[Position] nvarchar (50),
--[IsDeleted] BIT,
--[CityID] int FOREIGN KEY REFERENCES Citiess(Id)

--)


-- INSERT INTO Employees VALUES
--('Selim','Selimov',25,9000,'Director','',1),
--('Nadir','Nadirli',40,800,'Mechanic','',3),
--('Serxan','Serxnali',38,900,'Waiter','',2),
--('Kerim','Kerimli',28,8000,'Capitan','',3),
--('Rasim','Rasimli',30,950,'Reseption','',4),
--('Senan','Senanli',20,920,'Reseption','1',3)


--SELECT*FROM Employees




--CREATE TABLE Citiess(
--[Id] int primary key identity (1,1),
--[Name] nvarchar (50) not null,
--[CountryId] int FOREIGN KEY REFERENCES Countriess(Id)
--)



--INSERT INTO Citiess VALUES
--('Baki',1),
--('Istanbul',2),
--('London',3),
--('Kiev',4)


--SELECT*FROM Citiess



--CREATE TABLE Countriess(
--[Id] int primary key identity(1,1),
--[Name] nvarchar (50) not null
--)


--INSERT INTO Countriess VALUES
--('Azerbaijan'),
--('Turkey'),
--('England'),
--('Ukrain')


--SELECT*FROM Countriess

--SELECT*FROM Citiess

--SELECT*FROM Employees

--SELECT*FROM Employees where CityId =3 

--SELECT*FROM Countriess
--inner join Citiess
--on Countriess.Id = Citiess.CountryId

--SELECT*FROM Citiess
--inner join Employees
--on Citiess.Id = Employees.CityId





----*  Hansi sheherin hansi olkeye aid olduqunu gosterin.

--SELECT Countriess.Name, Citiess.Name FROM Countriess
--inner join Citiess
--on Countriess.Id = Citiess.CountryId


----*  Ishcilerin ozlerini, yashadiqi sheherlerini ve olkelerini gosterin.

--SELECT Citiess.Name , Employees.Name  FROM Citiess
--right join Employees
--on Citiess.Id = Employees.CityId

--*  Positioni "Reseption" olan ishcilerin table-larin id-leri daxil olmamaq 
--sherti ile daxil olmamaq sherti ile butun melumatlarini  gostermek.


--SELECT Citiess.Name , Employees.Name, Employees.Surname , Employees.Age, Employees.Salary, Employees.Position   FROM Citiess
--right join Employees
--on Citiess.Id = Employees.CityId where [Position] LIKE 'Reseption' 



--SELECT Name,Surname,Age,Salary,Position,IsDeleted FROM Employees where [Position] LIKE 'Reseption' 


    ----*  Maashi 2000-den yuxari olan ishcilerin adlari ve yashadiqi olkeleri gosterin.

--	SELECT Name FROM Employees 
--	WHERE [Salary]>2000 


--	SELECT Citiess.Name , Employees.Name, Employees.Salary  FROM Citiess
--right join Employees
--on Citiess.Id = Employees.CityId where [Salary]>2000 




 --* Ishden cixan ishcilerin yashadiqi sheher ve olkeleri, hemcinin ishcilerin oz ad ve soyadlarini gosteren query yazin.

-- SELECT*FROM Employees Where IsDeleted=1


-- 	SELECT*FROM Citiess
--right join Employees
--on Citiess.Id = Employees.CityId where IsDeleted=1
