

--CREATE TABLE Groups(
--[Id] int primary key identity (1,1),
--[Name] nvarchar (50) not null,
--[EducationId] int FOREIGN KEY REFERENCES Educations(Id),
--[RoomId] int FOREIGN KEY REFERENCES Rooms(Id),
--[WeekDaySeansId] int FOREIGN KEY REFERENCES WeekDaySeans(Id)

--)

--INSERT INTO Groups VALUES
--('P120'),
--('P135'),
--('P130'),
--('P125')



--SELECT*FROM Groups


--CREATE TABLE Educations(
--[Id] int primary key identity (1,1),
--[Name] nvarchar (50) not null,
--[Duration] int 


--)

--INSERT INTO Educations VALUES 
--('It','6'),
--('Design','5'),
--('Cyber Security','3')



--SELECT*FROM Educations






--CREATE TABLE WeekDaySeans(
--[Id] int primary key identity(1,1),
--[WeekDayId] int FOREIGN KEY REFERENCES WeekDyas(Id),
--[SeansId] int FOREIGN KEY REFERENCES Seanses(Id),


--)

--SELECT*FROM WeekDaySeans


--CREATE TABLE WeekDays(
--[Id] int primary key identity(1,1),
--[Name] nvarchar (50) not null

--)


--INSERT INTO WeekDays VALUES 
--('Monday'),
--('Tuesday'),
--('Wednesday'),
--('Thursday'),
--('Friday'),
--('Saturday'),
--('Sunday')


--SELECT*FROM WeekDays


--CREATE TABLE Seanses(
--[Id] int primary key identity(1,1),
--[Name] nvarchar (50) not null

--)

--INSERT INTO Seanses VALUES
--('morning'),
--('afternoon'),
--('evenings')

--SELECT*FROM Seanses



--CREATE TABLE Rooms (
--[Id] int primary key identity(1,1),
--[Name] nvarchar (50) not null,
--[Capacity] int

--)

--INSERT INTO Rooms VALUES
--('Raket',16),
--('It',16),
--('Porg',16),
--('Kosmos',18)


--SELECT*FROM Rooms



--CREATE TABLE GroupTeachers(
--[Id] int primary key identity(1,1),
--[GroupId] int FOREIGN KEY REFERENCES Groups(Id),
--[TeacherId] int FOREIGN KEY REFERENCES Teachers(Id)

--)

--SELECT*FROM GroupTeachers



--CREATE TABLE Teachers(
--[Id] int primary key identity(1,1),
--[FullName] nvarchar (100) not null,
--[Email] nvarchar (100) unique,
--[Address] nvarchar (100),
--[Salary] decimal,
--[CityId] int FOREIGN KEY REFERENCES Cities(Id)
--)

--INSERT INTO Teachers VALUES
--('Javid Bashirov','javid@gamil.com','Ehmedli',10000),
--('Qadir Qadirli','qadir@gamil.com','Yasamal',1000),
--('Hesen Hesenli','hesen@gamil.com','Xirdalan',2000),
--('Qerib Qeribli','qerib@gamil.com','Sabuncu',3000),
--('Yusif Yusifli','yusif@gamil.com','Xetai',5000)


--SELECT*FROM Teachers


--CREATE TABLE GroupStudents(
--[Id] int primary key identity(1,1), 
--[GroupId] int FOREIGN KEY REFERENCES Groups(Id),
--[StudentId] int FOREIGN KEY REFERENCES Students(Id)
--)


--SELECT*FROM GroupStudents


--CREATE TABLE Students(
--[Id] int primary key identity(1,1),
--[FullName] nvarchar (100) not null,
--[Birthday] date,
--[Address] nvarchar (100),
--[CityId] int FOREIGN KEY REFERENCES Cities(Id)
--)

--INSERT INTO Students VALUES
--('Selim Selimli','2000-03-03','Nizami'),
--('Asim Asimli','2001-04-04','Xetai'),
--('Nadir Nadirli','2002-05-05','Nesimi'),
--('Tebriz Memmedov','1999-06-06','Razin')


--SELECT*FROM Students


--CREATE TABLE Cities(
--[Id] int primary key identity(1,1),
--[Name] nvarchar (50) not null,
--[CountryId] int FOREIGN KEY REFERENCES Countries(Id)

--)

--INSERT INTO Cities VALUES
--('Baki'),
--('Sinqapur'),
--('London'),
--('Helsinki'),
--('Roma'),
--('Paris'),
--('Madrid'),
--('Seul')

--SELECT*FROM Cities


--CREATE TABLE StaffMembers(
--[Id] int primary key identity(1,1),
--[FullName] nvarchar (100) not null,
--[Salary] decimal,
--[CityId] int FOREIGN KEY REFERENCES Cities(Id)

--)

--INSERT INTO StaffMembers VALUES
--('Rena Renayeva', 600),
--('Semid Semidli', 800),
--('Senan Senanli',500),
--('Serxan Serxanli', 800),
--('Islam Islamli',500)


--SELECT*FROM StaffMembers

--CREATE TABLE RoleMembers(
--[Id] int primary key identity(1,1),
--[RoleId] int FOREIGN KEY REFERENCES Roles(Id),
--[StaffMemberId] int FOREIGN KEY REFERENCES StaffMembers(Id)

--)

--SELECT*FROM RoleMembers


--CREATE TABLE Roles(
--[Id] int primary key identity(1,1),
--[Name] nvarchar (50) not null
--)

--INSERT INTO Roles VALUES
--('Cleaners'),
--('Accountant'),
--('Barmaid'),
--('Director')


--SELECT*FROM Roles

--CREATE TABLE Countries(
--[Id] int primary key identity(1,1),
--[Name] nvarchar (50) not null,
--)

--INSERT INTO Countries VALUES
--('Azerbaijan'),
--('Sinqapur'),
--('England'),
--('Finland'),
--('Italy'),
--('France'),
--('Spain'),
--('South Korea')


--SELECT*FROM Countries
