--Get lotto by ID
exec usp_GetLotto @QueryId=10, @LottoId = 2;

--Get lotto by name
exec usp_GetLotto @QueryId=15, @LottoName = 'Gopher';

--Get Lottery Game's single winning draw by date
exec usp_GetLottoDrawing @LottoId = 4, @DrawingDate = '06-11-2017', @QueryId = 20;

--Get Lottery Game's most recent single winning draw
exec usp_GetLottoDrawing @LottoId = 1, @QueryId = 11;

--Get All Lottery Game's drawings with winning numbers
exec usp_GetLottoDrawing @LottoId = 4, @QueryId = 10;