DELETE		a
FROM		dbo.Employee a
JOIN		dbo.Person b ON a.PersonId = b.PersonId
WHERE		b.IsDeleted = 1;

DELETE		a
FROM		dbo.Person a
WHERE		a.IsDeleted = 1;

SELECT * FROM dbo.Person;