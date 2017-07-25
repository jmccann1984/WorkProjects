-- Number 1
SELECT * FROM dbo.Employee;

UPDATE	dbo.Employee
SET		HireDate = '1/1/2000'
WHERE	EmployeeId = 1;

UPDATE	dbo.Employee
SET		HireDate = '2/1/2000'
WHERE	EmployeeId = 2;

UPDATE	dbo.Employee
SET		HireDate = '3/1/2000'
WHERE	EmployeeId = 3;

UPDATE	dbo.Employee
SET		HireDate = '4/1/2000'
WHERE	EmployeeId = 4;

UPDATE	dbo.Employee
SET		HireDate = '5/1/2000'
WHERE	EmployeeId = 5;

-- Number 2
SELECT * FROM dbo.Phone;

UPDATE	dbo.Phone
SET		AreaCode = null
WHERE	AreaCode = 612;

UPDATE	dbo.Phone
SET		AreaCode = 612
WHERE	AreaCode = 952;

UPDATE	dbo.Phone
SET		AreaCode = 952
WHERE	AreaCode is null;

-- Number 3
SELECT * FROM dbo.Person;

UPDATE	dbo.Person
SET		Title = 'Mr.'
WHERE	Title is null;

-- Number 4
SELECT * FROM dbo.Person;

UPDATE	dbo.Person
SET		DisplayFirstName = null;