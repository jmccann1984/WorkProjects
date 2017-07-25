-- 1-4 Select from dbo.person where
SELECT	*
FROM	dbo.Person a
WHERE	a.FirstName='Adrian';

SELECT	*
FROM	dbo.Person a
WHERE	a.LastName = 'McRoberts';

SELECT	*
FROM	dbo.Person a
WHERE	a.PersonId = 3;

SELECT	*
FROM	dbo.Person a
WHERE	a.PersonId > 1;

-- 5-8 select from dbo.Client where
SELECT	*
FROM	dbo.Client a
WHERE	a.CreateDate BETWEEN '01/01/2010' AND '01/01/2013';

SELECT	*
FROM	dbo.Client a
WHERE	a.CreateDate > '02/01/2010';

SELECT	*
FROM	dbo.Client a
WHERE	a.CreateDate < '02/01/2010';

SELECT	*
FROM	dbo.Client a
WHERE	year(a.CreateDate) = '2001';

-- 9-12 Select from dbo.Client where
SELECT	*
FROM	dbo.Client a
WHERE	a.ClientName like 'b%';

SELECT	*
FROM	dbo.Client a
WHERE	a.ClientName like '%s';

SELECT	*
FROM	dbo.Client a
WHERE	a.ClientName like '%tim%';

SELECT	*
FROM	dbo.Client a
WHERE	a.ClientName like 'pol%';

-- 13-16 AND records
SELECT	*
FROM	dbo.Person a
WHERE	a.LastName LIKE 's%'
AND		a.FirstName LIKE 'd%';

SELECT	*
FROM	dbo.Person a
WHERE	a.FirstName LIKE '%a%'
AND		a.LastName LIKE '%a%';

SELECT	*
FROM	dbo.Client a
WHERE	a.ClientID IN (1, 3, 5, 10);

SELECT	*
FROM	dbo.Client a
WHERE	a.ClientID > 5
AND		a.ClientName LIKE '%b%';