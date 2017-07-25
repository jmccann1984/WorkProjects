-- Problems 1-4
SELECT		Top 1
			a.ClientID, a.ClientName, min(a.CreateDate) AS AggCreateDate
FROM		dbo.Client a
GROUP BY	a.ClientID, a.ClientName
ORDER BY	AggCreateDate;

SELECT		TOP 1
			a.ClientId, a.ClientName, min(a.CreateDate) AS AggCreateDate
FROM		dbo.Client a
GROUP BY	a.ClientID, a.ClientName
ORDER BY	AggCreateDate DESC;

SELECT		count(a.ClientID) AS TotalRecords
FROM		dbo.Client a;

SELECT		count(a.ClientID) AS ClientsWithPhoneNumbers
FROM		dbo.Client a
INNER JOIN	dbo.Phone b ON a.ClientID = b.ClientId;

-- Problems 5-6
SELECT		count(a.ClientID) AS ClientsWithCellNumbers, c.EntityTypeName
FROM		dbo.Client a
INNER JOIN	dbo.Phone b ON a.ClientID = b.ClientId
INNER JOIN	dbo.EntityType c ON b.EntityTypeId = c.EntityTypeId
WHERE		b.EntityTypeId = 7
GROUP BY	c.EntityTypeName;

SELECT		c.EntityTypeName AS PhoneType, count(a.ClientID) AS NumberOfPhones
FROM		dbo.Client a
INNER JOIN	dbo.Phone b ON a.ClientID = b.ClientId
INNER JOIN	dbo.EntityType c ON b.EntityTypeId = c.EntityTypeId
GROUP BY	c.EntityTypeName;

SELECT			a.AreaCode, count(a.PhoneId) AS CountOfRecords
FROM			dbo.Phone a
GROUP BY		a.AreaCode;

SELECT			a.ClientID, a.ClientName, count(b.ClientId) AS #OfPhoneNumbers
FROM			dbo.Client a
LEFT OUTER JOIN	dbo.Phone b ON a.ClientID = b.ClientId
GROUP BY		a.ClientID, a.ClientName;

-- Problems 9-12
SELECT			count(a.PhoneNumber) AS #DifferentPhoneNumbers
FROM			dbo.Phone a;

SELECT			b.EntityTypeName AS PhoneType, count(DISTINCT a.PhoneNumber) AS Unique#
FROM			dbo.Phone a
INNER JOIN		dbo.EntityType b ON a.EntityTypeId = b.EntityTypeId
WHERE			b.EntityTypeId = 7
GROUP BY		b.EntityTypeName;

SELECT			b.EntityTypeName AS PhoneType, count(DISTINCT a.PhoneNumber) AS Unique#
FROM			dbo.Phone a
INNER JOIN		dbo.EntityType b ON a.EntityTypeId = b.EntityTypeId
WHERE			b.EntityTypeId = 5
GROUP BY		b.EntityTypeName;

SELECT			a.AreaCode, count(a.AreaCode) AS RecordsPerCode
FROM			dbo.Phone a
GROUP BY		a.AreaCode;