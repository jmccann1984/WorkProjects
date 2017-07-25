CREATE TABLE dbo.Lotto(
	LottoId				int not null identity(1,1),
	LottoName			varchar(50) null,
	LottoDescription	varchar(1000) null,
	LottoRules			varchar(1000) null);

CREATE TABLE dbo.Odds(
	OddsId				int not null identity(1,1),
	LottoId				int null,
	MatchDescription	varchar(20) null,
	OddsWinAmmount		varchar(20) null,
	ProbabilityTop		int null,
	ProbabilityBottom	int null);

CREATE TABLE dbo.State(
	StateId				int not null identity(1,1),
	StateName			varchar(50) null);

CREATE TABLE dbo.LottoState(
	LottoStateId		int not null identity(1,1),
	LottoId				int not null,
	StateId				int not null);

CREATE TABLE dbo.Drawing(
	DrawingId			int not null identity(1,1),
	LottoId				int null,
	DrawingDate			date null,
	DrawingPrize		int null);

CREATE TABLE dbo.Ball(
	BallId				int not null identity(1,1),
	DrawingId			int not null,
	BallPlace			int not null,
	BallNumber			char(2) null,
	BallTypeId			int null);

CREATE TABLE dbo.BallType(
	BallTypeId			int not null identity(1,1),
	BallType			varchar(20) null);