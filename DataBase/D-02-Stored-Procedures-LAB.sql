/*
	------------------------------------
			Begin Problem 1
	------------------------------------
*/

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Joshua McCann
-- Create date: 06/15/2017
-- Description:	Get Client Data
-- =============================================
CREATE PROCEDURE dbo.usp_GetClient(
	@QueryId	int = 10,
	@ClientId	int = null) 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    if(@QueryId = 10) begin goto GET_ITEM end;
	if(@QueryId = 20) begin goto GET_ALL end;

	GOTO EXIT_SELECT;

	GET_ITEM:
		begin
			SELECT	a.ClientName, a.CreateDate
			FROM	dbo.Client a
			WHERE	a.ClientID = @ClientId;
		end

		goto EXIT_SELECT;
	GET_ALL:
		begin
			SELECT		a.ClientName, a.CreateDate
			FROM		dbo.Client a
			ORDER BY	a.ClientName;
		end

		goto EXIT_SELECT;

	EXIT_SELECT:
END
GO


------------------Part 2------------------


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Joshua McCann
-- Create date: 06/15/2017
-- Description:	Execute for Client
-- =============================================
CREATE PROCEDURE dbo.usp_ExecuteClient(
		@QueryId	int = 10,
		@ClientId	int = null,
		@ClientName	varchar(100) = null,
		@ReturnId	int = null output
	)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    if(@QueryId = 10) begin goto INSERT_ENTRY end;
	if(@QueryId = 20) begin goto UPDATE_ENTRY end;
	if(@QueryId = 30) begin goto DELETE_ENTRY end;

	goto EXIT_SELECT

	INSERT_ENTRY:
		begin
			INSERT INTO dbo.Client (ClientName, CreateDate)
			VALUES		(@ClientName, getdate());
			SET			@ReturnId = SCOPE_IDENTITY();

			goto		EXIT_SELECT
		end
		

	UPDATE_ENTRY:
		begin
			UPDATE	dbo.Client
			SET		ClientName = ISNULL(@ClientName, ClientName)
			WHERE	ClientID = @ClientId;

			SET		@ReturnId = @ClientId;

			goto	EXIT_SELECT
		end


	DELETE_ENTRY:
		begin
			DELETE
			FROM	dbo.Client
			WHERE	ClientID = @ClientId;

			SET		@ReturnId = @ClientId;

			goto	EXIT_SELECT
		end


	EXIT_SELECT:

END
GO



/*
	------------------------------------
			Begin Problem 2
	------------------------------------
*/


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Joshua McCann
-- Create date: 06/15/2017
-- Description:	Get from Employee
-- =============================================
CREATE PROCEDURE dbo.usp_GetEmployee(
	@QueryId		int = 10,
	@EmployeeId		int = null
)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	if(@QueryId = 10) begin goto GET_SINGLE end;
	if(@QueryId = 20) begin goto GET_ALL end;
	goto EXIT_SELECT

    GET_SINGLE:
		begin
			SELECT		a.EmployeeId ,b.Title, b.FirstName, b.LastName, a.BirthDate, a.HireDate
			FROM		dbo.Employee a
			INNER JOIN	dbo.Person b ON a.PersonId = b.PersonId
			WHERE		a.EmployeeId = @EmployeeId;

			goto		EXIT_SELECT
		end

	GET_ALL:
		begin
			SELECT		a.EmployeeId ,b.Title, b.FirstName, b.LastName, a.BirthDate, a.HireDate
			FROM		dbo.Employee a
			INNER JOIN	dbo.Person b ON a.PersonId = b.PersonId
			ORDER BY	a.EmployeeId;

			goto		EXIT_SELECT
		end

	EXIT_SELECT:
END
GO


------------------Part 2------------------


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Joshua McCann
-- Create date: 06/15/2017
-- Description:	Execute for Employee
-- =============================================
CREATE PROCEDURE dbo.usp_ExecuteEmployee(
	@QueryId	int = 10,
	@EmployeeId	int = null,
	@HireDate	datetime = null,
	@TermDate	datetime = null,
	@BirthDate	datetime = null,
	@PersonId	int = null,
	@ReturnId	int = null
)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	if(@QueryId = 10)begin goto INSERT_RECORD end;
	if(@QueryId = 20)begin goto UPDATE_RECORD end;
	if(@QueryId = 30)begin goto DELETE_RECORD end;
	goto EXIT_SELECTION;

	INSERT_RECORD:
		begin
			if(@PersonId NOT IN (SELECT PersonId FROM dbo.Person)) begin set @PersonId = null end;
			INSERT INTO dbo.Employee(	HireDate,
										TermDate, 
										BirthDate, 
										PersonId,
										CreateDate)
			VALUES(	@HireDate,
					@TermDate,
					@BirthDate,
					@PersonId,
					getdate());
			
			SET		@ReturnId = SCOPE_IDENTITY();

			goto	EXIT_SELECTION;
		end

	UPDATE_RECORD:
		begin
			if(@PersonId NOT IN (SELECT PersonId FROM dbo.Person)) begin set @PersonId = null end;
			UPDATE		dbo.Employee
			SET			HireDate = isnull(@HireDate, HireDate),
						TermDate = isnull(@TermDate, TermDate),
						BirthDate = isnull(@BirthDate, BirthDate),
						PersonId = isnull(@PersonId, PersonId)
			WHERE		EmployeeId = @EmployeeId;

			SET			@ReturnId = @EmployeeId;

			goto		EXIT_SELECTION;
		end

	DELETE_RECORD:
		begin
			DELETE
			FROM		dbo.Employee
			WHERE		EmployeeId = @EmployeeId;

			SET			@ReturnId = @EmployeeId;

			goto		EXIT_SELECTION;
		end

	EXIT_SELECTION:
END
GO


/*
	------------------------------------
			Begin Problem 3
	------------------------------------
*/


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Joshua McCann
-- Create date: 06/15/2017
-- Description:	Get from Phone
-- =============================================
CREATE PROCEDURE dbo.usp_GetPhone(
	@PhoneId int = null,
	@QueryId int = 10
)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    if (@QueryId = 10) begin goto GET_ONE end;
	if (@QueryId = 20) begin goto GET_ALL end;

	goto EXIT_SELECT;

	GET_ONE:
		begin
			SELECT	a.EntityTypeId, a.ClientId, a.PersonId, a.AreaCode, a.PhoneNumber, a.PhoneNumberPost
			FROM	dbo.Phone a
			WHERE	a.PhoneId = @PhoneId

			goto	EXIT_SELECT;
		end


	GET_ALL:
		begin
			SELECT	a.EntityTypeId, a.ClientId, a.PersonId, a.AreaCode, a.PhoneNumber, a.PhoneNumberPost
			FROM	dbo.Phone a
			ORDER BY	ClientId, AreaCode, PhoneNumber;

			goto		EXIT_SELECT;
		end


	EXIT_SELECT:
END
GO


------------------Part 2------------------


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Joshua McCann
-- Create date: 06/15/2017
-- Description:	Execute for Phone
-- =============================================
CREATE PROCEDURE dbo.usp_ExecutePhone(
	@QueryId			int = 10,
	@PhoneId			int = null,
	@EntityTypeId		int = null,
	@ClientId			int = null,
	@PersonId			int = null,
	@AreaCode			int = null,
	@PhoneNumber		int = null,
	@PhoneNumberPost	int = null,
	@ReturnId			int = null
)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	if(@QueryId = 10)begin goto INSERT_RECORD end;
	if(@QueryId = 20)begin goto UPDATE_RECORD end;
	if(@QueryId = 30)begin goto DELETE_RECORD end;
	
	goto EXIT_SELECTION;

	INSERT_RECORD:
		begin
			INSERT INTO dbo.Phone(	EntityTypeId,
									ClientId, 
									PersonId, 
									AreaCode,
									PhoneNumber,
									PhoneNumberPost)
			VALUES(	@EntityTypeId,
					@ClientId,
					@PersonId,
					@AreaCode,
					@PhoneNumber,
					@PhoneNumberPost);
			
			SET		@ReturnId = SCOPE_IDENTITY();

			goto	EXIT_SELECTION;
		end

	UPDATE_RECORD:
		begin
			UPDATE		dbo.Phone
			SET			EntityTypeId = isnull(@EntityTypeId, EntityTypeId),
						ClientId = isnull(@ClientId, ClientId),
						PersonId = isnull(@PersonId, PersonId),
						AreaCode = isnull(@AreaCode, AreaCode),
						PhoneNumber = isnull(@PhoneNumber, PhoneNumber),
						PhoneNumberPost = isnull(@PhoneNumberPost, PhoneNumberPost)
			WHERE		PhoneId = @PhoneId;

			SET			@ReturnId = @PhoneId;

			goto		EXIT_SELECTION;
		end

	DELETE_RECORD:
		begin
			DELETE
			FROM		dbo.Phone
			WHERE		PhoneId = @PhoneId;

			SET			@ReturnId = @PhoneId;

			goto		EXIT_SELECTION;
		end

	EXIT_SELECTION:
END
GO


/*
	------------------------------------
			Begin Problem 4
	------------------------------------
*/


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Joshua McCann
-- Create date: 06/15/2017
-- Description:	Get from Email
-- =============================================
CREATE PROCEDURE dbo.usp_GetEmail(
	@EmailId int = null,
	@QueryId int = 10
)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    if (@QueryId = 10) begin goto GET_ONE end;
	if (@QueryId = 20) begin goto GET_ALL end;

	goto EXIT_SELECT;

	GET_ONE:
		begin
			SELECT	a.EmailAddress, a.EmployeeId, a.EntityTypeId
			FROM	dbo.Email a
			WHERE	a.EmailId = @EmailId

			goto	EXIT_SELECT;
		end


	GET_ALL:
		begin
			SELECT		a.EmailAddress, a.EmployeeId, a.EntityTypeId
			FROM		dbo.Email a
			ORDER BY	EmailAddress;

			goto		EXIT_SELECT;
		end


	EXIT_SELECT:
END
GO


------------------Part 2------------------

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Joshua McCann
-- Create date: 06/15/2017
-- Description:	Execute for Email
-- =============================================
CREATE PROCEDURE dbo.usp_ExecuteEmail(
	@QueryId			int = 10,
	@EmailAddress		varchar(50) = null,
	@EmployeeId			int = null,
	@EntityTypeId		int = null,
	@EmailId			int = null,
	@ReturnId			int = null
)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	if(@QueryId = 10)begin goto INSERT_RECORD end;
	if(@QueryId = 20)begin goto UPDATE_RECORD end;
	if(@QueryId = 30)begin goto DELETE_RECORD end;
	
	goto EXIT_SELECTION;

	INSERT_RECORD:
		begin
			INSERT INTO dbo.Email(	EntityTypeId,
									EmailAddress, 
									EmployeeId)
			VALUES(	@EntityTypeId,
					@EmailAddress,
					@EmployeeId);
			
			SET		@ReturnId = SCOPE_IDENTITY();

			goto	EXIT_SELECTION;
		end

	UPDATE_RECORD:
		begin
			UPDATE		dbo.Email
			SET			EntityTypeId = isnull(@EntityTypeId, EntityTypeId),
						EmailAddress = isnull(@EmailAddress, EmailAddress),
						EmployeeId = isnull(@EmployeeId, EmployeeId)
			WHERE		EmailId = @EmailId;

			SET			@ReturnId = @EmailId;

			goto		EXIT_SELECTION;
		end

	DELETE_RECORD:
		begin
			DELETE
			FROM		dbo.Email
			WHERE		EmailId = @EmailId;

			SET			@ReturnId = @EmailId;

			goto		EXIT_SELECTION;
		end

	EXIT_SELECTION:
END
GO