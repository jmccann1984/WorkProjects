-- Problems 1-4
SELECT		*
FROM		dbo.Person a
ORDER BY	a.LastName;

SELECT		*
FROM		dbo.Person a
ORDER BY	a.LastName, a.FirstName;

SELECT		*
FROM		dbo.Person a
INNER JOIN	dbo.Employee b ON a.PersonId = b.PersonId
INNER JOIN	dbo.Email c ON b.EmployeeId = c.EmployeeId
ORDER BY	c.EmailAddress;

SELECT		*
FROM		dbo.Person a
INNER JOIN	dbo.Employee b ON a.PersonId = b.PersonId
INNER JOIN	dbo.Email c ON b.EmployeeId = c.EmployeeId
INNER JOIN	dbo.EntityType d ON c.EntityTypeId = d.EntityTypeId
WHERE		d.EntityTypeId = 1
ORDER BY	a.LastName, a.FirstName;

-- Problems 5-8
SELECT		*
FROM		dbo.Client a
ORDER BY	a.ClientName;

SELECT		*
FROM		dbo.Client a
ORDER BY	a.ClientName DESC;

SELECT		*
FROM		dbo.Client a
ORDER BY	a.CreateDate;

SELECT		*
FROM		dbo.Client a
WHERE		a.ClientName LIKE '%a%'
ORDER BY	a.ClientName;

-- Problems 9-12
SELECT		*
FROM		dbo.Client a
JOIN		dbo.Phone b ON a.ClientID = b.ClientId
ORDER BY	b.AreaCode;

SELECT		*
FROM		dbo.Client a
JOIN		dbo.Phone b ON a.ClientID = b.ClientId
WHERE		b.EntityTypeId = 5
ORDER BY	a.ClientName, b.AreaCode;

SELECT		*
FROM		dbo.Client a
JOIN		dbo.Phone b ON a.ClientID = b.ClientId
ORDER BY	b.EntityTypeId;

SELECT			*
FROM			dbo.Client a
FULL OUTER JOIN	dbo.Phone b ON a.ClientID = b.ClientId
ORDER BY		a.ClientName, b.EntityTypeId;