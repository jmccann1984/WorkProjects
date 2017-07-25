declare		@QueryId	int = null,
			@Gender		varchar(10) = null,
			@PersonId	int = null;

set @QueryId = 1;
set @Gender = 'Male';
set @PersonId = 1;

if(@QueryId > 0)
	GOTO GET_ITEM;
else
	GOTO GET_ITEM_FILTER_BY_GENDER;

GET_ITEM:
	begin
		select	a.PersonId,
				a.Title,
				a.FirstName,
				a.LastName,
				a.DisplayFirstName,
				case a.Gender
					when 'M' then 'Male'
					when 'F' then 'Female'
					else null
				end as Gender
		from	dbo.Person a
		where	a.PersonId = @PersonId;

		GOTO EXIT_SECTION;
	end

GET_ITEM_FILTER_BY_GENDER:
	begin
		select	a.PersonId,
				a.Title,
				a.FirstName,
				a.LastName,
				a.DisplayFirstName,
				case a.Gender
					when 'M' then 'Male'
					when 'F' then 'Female'
					else null
				end as Gender
		from	dbo.Person a
		where	a.Gender = case @Gender
								when 'Male' then 'M'
								when 'Female' then 'F'
							end;
	end

EXIT_SECTION: