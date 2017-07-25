-- Part 1
declare		@Integer	int = 25,
			@String		varchar(50) = 'random letters',
			@DateToday	datetime = getdate();

select		@Integer AS RandomInt, @String AS RandomVarchar, @DateToday AS DateToday;


-- Part 2
declare		@DateDifference	datetime = null,
			@DateStatus varchar(50) = null,
			@ClientId	int = 1;

if((SELECT	a.CreateDate
	FROM	dbo.Client a
	WHERE	a.ClientID = @ClientId)
	>getdate())
	begin
		SET	@DateDifference = (getdate() - (	SELECT	a.CreateDate
												FROM	dbo.Client a
												WHERE	a.ClientID = @ClientId));
		SET @DateStatus = 'Future';
	end
else if(getdate()>(	SELECT	a.CreateDate
					FROM	dbo.Client a
					WHERE	a.ClientID = @ClientId))
	begin
		SET	@DateDifference = ((SELECT	a.CreateDate
								FROM	dbo.Client a
								WHERE	a.ClientID = @ClientId) - getdate());
		SET @DateStatus = 'Past';
	end
else
	begin
		SET @DateDifference = 0;
		SET @DateStatus = 'Present';
	end

SELECT		a.*, @DateDifference as CreateDifference, @DateStatus as CreateWhen
FROM		dbo.Client a
WHERE		a.ClientID = @ClientId;


-- Part 3
declare		@DateDifference	datetime = null,
			@DateStatus varchar(50) = null,
			@ClientId	int = 7;

if((SELECT	a.CreateDate
	FROM	dbo.Client a
	WHERE	a.ClientID = @ClientId)
	>getdate())
	GOTO GET_SESSION_FUTURE
else if(getdate()>(	SELECT	a.CreateDate
					FROM	dbo.Client a
					WHERE	a.ClientID = @ClientId))
	GOTO GET_SESSION_PAST
else
	GOTO GET_SESSION_PRESENT

GET_SESSION_PAST:
	begin
		SET	@DateDifference = (getdate() - (	SELECT	a.CreateDate
												FROM	dbo.Client a
												WHERE	a.ClientID = @ClientId));
		SET @DateStatus = 'Future';
		GOTO END_SESSION
	end
GET_SESSION_FUTURE:
	begin
		SET	@DateDifference = ((SELECT	a.CreateDate
								FROM	dbo.Client a
								WHERE	a.ClientID = @ClientId) - getdate());
		SET @DateStatus = 'Past';
		GOTO END_SESSION
	end
GET_SESSION_PRESENT:
	begin
		SET @DateDifference = 0;
		SET @DateStatus = 'Present';
	end
END_SESSION:

SELECT		a.*, @DateDifference as CreateDifference, @DateStatus as CreateWhen
FROM		dbo.Client a
WHERE		a.ClientID = @ClientId;