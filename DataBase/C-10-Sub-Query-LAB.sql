SELECT * FROM dbo.Phone;
SELECT * FROM dbo.Client;

SELECT	*,(	SELECT	count(b.ClientId)
			FROM	dbo.Phone b
			WHERE a.ClientID = b.ClientId) AS ListedPhone#
FROM	dbo.Client a

SELECT		a.*, b.AreaCode, b.PhoneNumber
FROM		dbo.Client a
INNER JOIN	dbo.Phone b ON a.ClientID = b.ClientId
WHERE		a.ClientID IN (	SELECT	b.ClientId
							WHERE	b.AreaCode = 612
							OR		b.AreaCode = 763);