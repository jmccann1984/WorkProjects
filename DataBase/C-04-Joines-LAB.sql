SELECT * FROM dbo.Client;
SELECT * FROM dbo.Phone;
SELECT * FROM dbo.Entity;
SELECT * FROM dbo.EntityType;

-- Problems 1-3 Using Old SQL
SELECT			*
FROM			dbo.Client a, dbo.Phone b
WHERE			a.ClientID = b.ClientId;

SELECT			*
FROM			dbo.Client a, dbo.Phone b
WHERE			a.ClientID = b.ClientId AND b.EntityTypeId = 5;

SELECT			*
FROM			dbo.Client a, dbo.Phone b
WHERE			a.ClientID = b.ClientId AND b.EntityTypeId = 7;

-- Problems 4-7 Using ANSI JOINs
SELECT			*
FROM			dbo.Client a
JOIN			dbo.Phone b ON a.ClientID = b.ClientId;

SELECT			*
FROM			dbo.Client a
JOIN			dbo.Phone b ON a.ClientID = b.ClientId
WHERE			b.EntityTypeId = 5;

SELECT			*
FROM			dbo.Client a
JOIN			dbo.Phone b ON a.ClientID = b.ClientId
WHERE			b.EntityTypeId = 7;

SELECT			*
FROM			dbo.Client a
LEFT OUTER JOIN dbo.Phone b ON a.ClientID = b.ClientId;

-- Problems 8-10 Using Old SQL
SELECT			*
FROM			dbo.Client a, dbo.Phone b
WHERE			a.ClientID = b.ClientId AND b.EntityTypeId = 5 AND b.AreaCode = 612;

SELECT			*
FROM			dbo.Client a, dbo.Phone b
WHERE			a.ClientID = b.ClientId AND b.EntityTypeId = 7 AND b.AreaCode = 612;

SELECT			*
FROM			dbo.Client a, dbo.Phone b
WHERE			a.ClientID = b.ClientId AND b.AreaCode = 763;

-- Problems 11-13 Using ANSI JOINs
SELECT			*
FROM			dbo.Client a
JOIN			dbo.Phone b ON a.ClientID = b.ClientId
WHERE			b.EntityTypeId = 5 AND b.AreaCode = 612;

SELECT			*
FROM			dbo.Client a
JOIN			dbo.Phone b ON a.ClientID = b.ClientId
WHERE			b.EntityTypeId = 7 AND b.AreaCode = 612;

SELECT			*
FROM			dbo.Client a
JOIN			dbo.Phone b ON a.ClientID = b.ClientId
WHERE			b.AreaCode = 763;