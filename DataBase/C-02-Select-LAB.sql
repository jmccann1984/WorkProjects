--1-4 (general select statements)
SELECT * FROM dbo.Person;
SELECT * FROM dbo.Employee;
SELECT * FROM dbo.Entity;
SELECT * FROM dbo.Email;

--5-8 (Top 1 from)
SELECT TOP 1 * FROM dbo.Person;
SELECT TOP 1 * FROM dbo.Employee;
SELECT TOP 1 * FROM dbo.Entity;
SELECT TOP 1 * FROM dbo.Email;

--4-9 (top 2 giving columns and table an alias of your choice
SELECT	TOP 2
		a.Title AS Prefix, a.FirstName AS [First Name], a.LastName AS [Last Name], a.PersonId AS ID
FROM	dbo.Person a;

SELECT	TOP 2
		a.EmployeeId AS ID, a.PersonId AS [Person ID], a.BirthDate AS [Birth Day], a.HireDate AS [Hire Date], a.TermDate AS [Date of Termination]
FROM	dbo.Employee a;

SELECT	TOP 2
		a.EntityId AS ID, a.EntityName AS Entity
FROM	dbo.Entity a;

SELECT	TOP 2
		a.EmailId AS [Email ID], a.EmployeeId AS [Employee ID], a.EmailAddress AS [E-Mail Address], a.EntityTypeId AS [E-Mail Type]
FROM	dbo.Email a;

--13-16 (Distinct ID column, columan and table given an alias)
SELECT DISTINCT a.PersonId AS [ID of Person]
FROM dbo.Person a;

SELECT DISTINCT a.EmployeeId AS [Employee ID]
FROM dbo.Employee a;

SELECT DISTINCT a.EntityId AS [Entity ID #]
FROM dbo.Entity a;

SELECT DISTINCT a.EmailId AS [E-Mail ID #]
FROM dbo.Email a;