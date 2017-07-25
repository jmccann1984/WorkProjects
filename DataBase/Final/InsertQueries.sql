/*	**************************************
		Insert:	lotto informational
		Table:	dbo.lotto
	**************************************	*/


exec dbo.usp_ExecuteLotto	@QueryId = 10,
							@LottoName = 'Powerball',
							@LottoDescription = 'Powerball is America’s favorite game for a reason—millions upon millions of reasons, actually. Jackpots start at $40 million. Join in on the fun!',
							@LottoRules =	'Leave it all up to luck and ask for a Powerball quick pick. Or, choose your own numbers. Pick five numbers from 1–69 and one Powerball number from 1–26. Play slips are available at lottery retailers.
											There are nine ways to win, starting with $4 for matching just the Powerball. Match the first five numbers plus the Powerball to win the jackpot.
											Your ticket could be worth millions of dollars—sign the back right away!';

exec dbo.usp_ExecuteLotto	@QueryId = 10,
							@LottoName = 'Mega Millions',
							@LottoDescription = 'If you answered, “being a mega-millionaire” the last time someone asked what your dream job is, Mega Millions might be the game for you. Jackpots start at $15 million and tickets are only a buck.',
							@LottoRules =	'Leave it all up to luck and ask for a Mega Millions quick pick. Or, choose your own numbers. Pick five numbers from 1–75 and one Mega Ball number from 1–15. Play slips are available at lottery retailers.
											There are nine ways to win, starting with $1 for matching just the Mega Ball. Match the first five numbers plus the Mega Ball to win the jackpot.
											Your ticket could be worth millions of dollars—sign the back right away!';

exec dbo.usp_ExecuteLotto	@QueryId = 10,
							@LottoName = 'Gopher 5',
							@LottoDescription = 'The Twins, Jolly Green Giant, and six-month winters: some of the best things are only available in Minnesota. Gopher 5 is one of those things. It only takes $1 to play for jackpots that start at $100,000.',
							@LottoRules =	'Leave it all up to luck and ask for a Gopher 5 quick pick. Or choose your own numbers. Pick five numbers from 1 – 47. Play slips are available at lottery retailers.
											Win by matching two, three, four or five numbers. Match all five to win the jackpot.
											Sign the back of your ticket right away; in a day or two, it could be worth $100,000 or more!';

exec dbo.usp_ExecuteLotto	@QueryId = 10,
							@LottoName = 'Northstar Cash',
							@LottoDescription = 'Northstar Cash offers the best odds of any of our jackpot lotto games. Everyone knows that the North Star is the luckiest star so it’s no surprise that so many players have had stellar luck with this game. On average, the jackpot is won once every week. Jackpots start at $25,000 and sometimes grow into the six-digit territory.',
							@LottoRules =	'Leave it all up to luck and ask for a Northstar Cash quick pick. Or choose your own numbers. Pick five numbers from 1–31. Play slips are available at lottery retailers.
											Win by matching two, three, four or five numbers. Match all five to win the jackpot.
											Your ticket could be worth a lot of money—sign the back right away!';


/*	**************************************
		Insert:	state names
		Table:	dbo.state
	**************************************	*/

exec dbo.usp_ExecuteState	@QueryId = 10,
							@StateName = 'Arizona';

exec dbo.usp_ExecuteState	@QueryId = 10,
							@StateName = 'Arkansas';

exec dbo.usp_ExecuteState	@QueryId = 10,
							@StateName = 'California';

exec dbo.usp_ExecuteState	@QueryId = 10,
							@StateName = 'Colorado';

exec dbo.usp_ExecuteState	@QueryId = 10,
							@StateName = 'Connecticut';

exec dbo.usp_ExecuteState	@QueryId = 10,
							@StateName = 'Delaware';

exec dbo.usp_ExecuteState	@QueryId = 10,
							@StateName = 'Florida';

exec dbo.usp_ExecuteState	@QueryId = 10,
							@StateName = 'Georgia';

exec dbo.usp_ExecuteState	@QueryId = 10,
							@StateName = 'Idaho';

exec dbo.usp_ExecuteState	@QueryId = 10,
							@StateName = 'Illinois';

exec dbo.usp_ExecuteState	@QueryId = 10,
							@StateName = 'Indiana';

exec dbo.usp_ExecuteState	@QueryId = 10,
							@StateName = 'Iowa';

exec dbo.usp_ExecuteState	@QueryId = 10,
							@StateName = 'Kansas';

exec dbo.usp_ExecuteState	@QueryId = 10,
							@StateName = 'Kentucky';

exec dbo.usp_ExecuteState	@QueryId = 10,
							@StateName = 'Louisiana';

exec dbo.usp_ExecuteState	@QueryId = 10,
							@StateName = 'Maine';

exec dbo.usp_ExecuteState	@QueryId = 10,
							@StateName = 'Maryland';

exec dbo.usp_ExecuteState	@QueryId = 10,
							@StateName = 'Massachusetts';

exec dbo.usp_ExecuteState	@QueryId = 10,
							@StateName = 'Michigan';

exec dbo.usp_ExecuteState	@QueryId = 10,
							@StateName = 'Minnesota';

exec dbo.usp_ExecuteState	@QueryId = 10,
							@StateName = 'Missouri';

exec dbo.usp_ExecuteState	@QueryId = 10,
							@StateName = 'Montana';

exec dbo.usp_ExecuteState	@QueryId = 10,
							@StateName = 'Nebraska';

exec dbo.usp_ExecuteState	@QueryId = 10,
							@StateName = 'New Hampshire';

exec dbo.usp_ExecuteState	@QueryId = 10,
							@StateName = 'New Jersey';

exec dbo.usp_ExecuteState	@QueryId = 10,
							@StateName = 'New Mexico';

exec dbo.usp_ExecuteState	@QueryId = 10,
							@StateName = 'New York';

exec dbo.usp_ExecuteState	@QueryId = 10,
							@StateName = 'North Carolina';

exec dbo.usp_ExecuteState	@QueryId = 10,
							@StateName = 'North Dakota';

exec dbo.usp_ExecuteState	@QueryId = 10,
							@StateName = 'Ohio';

exec dbo.usp_ExecuteState	@QueryId = 10,
							@StateName = 'Oklahoma';

exec dbo.usp_ExecuteState	@QueryId = 10,
							@StateName = 'Oregon';

exec dbo.usp_ExecuteState	@QueryId = 10,
							@StateName = 'Pennsylvania';

exec dbo.usp_ExecuteState	@QueryId = 10,
							@StateName = 'Puerto Rico';

exec dbo.usp_ExecuteState	@QueryId = 10,
							@StateName = 'Rhode Island';

exec dbo.usp_ExecuteState	@QueryId = 10,
							@StateName = 'South Carolina';

exec dbo.usp_ExecuteState	@QueryId = 10,
							@StateName = 'South Dakota';

exec dbo.usp_ExecuteState	@QueryId = 10,
							@StateName = 'Tennessee';

exec dbo.usp_ExecuteState	@QueryId = 10,
							@StateName = 'Texas';

exec dbo.usp_ExecuteState	@QueryId = 10,
							@StateName = 'U.S. Virgin Islands';

exec dbo.usp_ExecuteState	@QueryId = 10,
							@StateName = 'Vermont';

exec dbo.usp_ExecuteState	@QueryId = 10,
							@StateName = 'Virginia';

exec dbo.usp_ExecuteState	@QueryId = 10,
							@StateName = 'Washington';

exec dbo.usp_ExecuteState	@QueryId = 10,
							@StateName = 'Washington D.C.';

exec dbo.usp_ExecuteState	@QueryId = 10,
							@StateName = 'West Virginia';

exec dbo.usp_ExecuteState	@QueryId = 10,
							@StateName = 'Wisconsin ';

exec dbo.usp_ExecuteState	@QueryId = 10,
							@StateName = 'Wyoming';


/*	**************************************
		Insert:	Lottos in the state
				where the lotto can
				be played.
		Table:	dbo.LottoState
	**************************************	*/
declare		@LottoIdHolder	int = null, @StateIdHolder	int = null;

--Set all Powerball entries
set			@LottoIdHolder = (	select	a.LottoId
								from	dbo.Lotto a
								where	a.LottoName = 'Powerball');
set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'Arizona');

exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'Arkansas');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'California');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'Colorado');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'Connecticut');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'Delaware');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'Florida');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'Georgia');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'Idaho');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'Illinois');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'Indiana');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'Iowa');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'Kansas');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'Kentucky');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'Louisiana');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'Maine');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'Maryland');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'Massachusetts');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'Michigan');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'Minnesota');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'Missouri');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'Montana');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'Nebraska');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'New Hampshire');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'New Jersey');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'New Mexico');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'New York');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'North Carolina');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'North Dakota');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'Ohio');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'Oklahoma');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'Oregon');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'Pennsylvania');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'Puerto Rico');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'Rhode Island');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'South Carolina');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'South Dakota');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'Tennessee');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'Texas');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'U.S. Virgin Islands');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'Vermont');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'Virginia');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'Washington');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'Washington D.C.');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'West Virginia');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'Wisconsin');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'Wyoming');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;



--Set all Mega Millions entries
set			@LottoIdHolder = (	select	a.LottoId
								from	dbo.Lotto a
								where	a.LottoName = 'Mega Millions');
set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'Arizona');

exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'Arkansas');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'California');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'Colorado');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'Connecticut');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'Delaware');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'Florida');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'Georgia');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'Idaho');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'Illinois');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'Indiana');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'Iowa');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'Kansas');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'Kentucky');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'Louisiana');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'Maine');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'Maryland');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'Massachusetts');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'Michigan');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'Minnesota');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'Missouri');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'Montana');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'Nebraska');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'New Hampshire');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'New Jersey');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'New Mexico');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'New York');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'North Carolina');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'North Dakota');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'Ohio');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'Oklahoma');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'Oregon');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'Pennsylvania');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'Rhode Island');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'South Carolina');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'South Dakota');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'Tennessee');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'Texas');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'U.S. Virgin Islands');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'Vermont');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'Virginia');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'Washington');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'Washington D.C.');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'West Virginia');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'Wisconsin');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'Wyoming');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;


--Set two Minnesota entries
set			@LottoIdHolder = (	select	a.LottoId
								from	dbo.Lotto a
								where	a.LottoName = 'Gopher 5');
set			@StateIdHolder = (	select	a.StateId
								from	dbo.State a
								where	a.StateName = 'Minnesota');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;

set			@LottoIdHolder = (	select	a.LottoId
								from	dbo.Lotto a
								where	a.LottoName = 'Northstar Cash');
exec dbo.usp_ExecuteLottoState	@QueryId = 10,
								@LottoId = @LottoIdHolder,
								@StateId = @StateIdHolder;



/*	**************************************
		Insert:	Odds information.
		Table:	dbo.Odds
	**************************************	*/
declare @LottoIdHolder int = null;

set @LottoIdHolder = (	select	LottoId
						from	dbo.Lotto
						where	LottoName = 'Powerball');

exec dbo.usp_ExecuteOdds	@QueryId = 10,
							@LottoId = @LottoIdHolder,
							@MatchDescription = '5 of 5 + Powerball',
							@OddsWinAmmount = 'JACKPOT',
							@ProbabilityBottom = 292201338;

exec dbo.usp_ExecuteOdds	@QueryId = 10,
							@LottoId = @LottoIdHolder,
							@MatchDescription = '5 of 5 numbers',
							@OddsWinAmmount = '$1,000,000',
							@ProbabilityBottom = 11688054;

exec dbo.usp_ExecuteOdds	@QueryId = 10,
							@LottoId = @LottoIdHolder,
							@MatchDescription = '4 of 5 + Powerball',
							@OddsWinAmmount = '$50,000',
							@ProbabilityBottom = 913129;

exec dbo.usp_ExecuteOdds	@QueryId = 10,
							@LottoId = @LottoIdHolder,
							@MatchDescription = '4 of 5 numbers',
							@OddsWinAmmount = '$100',
							@ProbabilityBottom = 36525;

exec dbo.usp_ExecuteOdds	@QueryId = 10,
							@LottoId = @LottoIdHolder,
							@MatchDescription = '3 of 5 + Powerball',
							@OddsWinAmmount = '$100',
							@ProbabilityBottom = 14494;

exec dbo.usp_ExecuteOdds	@QueryId = 10,
							@LottoId = @LottoIdHolder,
							@MatchDescription = '3 of 5 numbers',
							@OddsWinAmmount = '$7',
							@ProbabilityBottom = 580;

exec dbo.usp_ExecuteOdds	@QueryId = 10,
							@LottoId = @LottoIdHolder,
							@MatchDescription = '2 of 5 + Powerball',
							@OddsWinAmmount = '$7',
							@ProbabilityBottom = 701;

exec dbo.usp_ExecuteOdds	@QueryId = 10,
							@LottoId = @LottoIdHolder,
							@MatchDescription = '1 of 5 + Powerball',
							@OddsWinAmmount = '$4',
							@ProbabilityBottom = 92;

exec dbo.usp_ExecuteOdds	@QueryId = 10,
							@LottoId = @LottoIdHolder,
							@MatchDescription = 'Powerball ONLY',
							@OddsWinAmmount = '$4',
							@ProbabilityBottom = 38;


set @LottoIdHolder = (	select	LottoId
						from	dbo.Lotto
						where	LottoName = 'Mega Millions');

exec dbo.usp_ExecuteOdds	@QueryId = 10,
							@LottoId = @LottoIdHolder,
							@MatchDescription = '5 of 5 + Mega Ball',
							@OddsWinAmmount = 'JACKPOT',
							@ProbabilityBottom = 258890850;

exec dbo.usp_ExecuteOdds	@QueryId = 10,
							@LottoId = @LottoIdHolder,
							@MatchDescription = '5 of 5',
							@OddsWinAmmount = '$1,000,000',
							@ProbabilityBottom = 18492204;

exec dbo.usp_ExecuteOdds	@QueryId = 10,
							@LottoId = @LottoIdHolder,
							@MatchDescription = '4 of 5 + Mega Ball',
							@OddsWinAmmount = '$5,000',
							@ProbabilityBottom = 739688;

exec dbo.usp_ExecuteOdds	@QueryId = 10,
							@LottoId = @LottoIdHolder,
							@MatchDescription = '4 of 5',
							@OddsWinAmmount = '$500',
							@ProbabilityBottom = 52835;

exec dbo.usp_ExecuteOdds	@QueryId = 10,
							@LottoId = @LottoIdHolder,
							@MatchDescription = '3 of 5 + Mega Ball',
							@OddsWinAmmount = '$50',
							@ProbabilityBottom = 10720;

exec dbo.usp_ExecuteOdds	@QueryId = 10,
							@LottoId = @LottoIdHolder,
							@MatchDescription = '3 of 5',
							@OddsWinAmmount = '$5',
							@ProbabilityBottom = 766;

exec dbo.usp_ExecuteOdds	@QueryId = 10,
							@LottoId = @LottoIdHolder,
							@MatchDescription = '2 of 5 + Mega Ball',
							@OddsWinAmmount = '$5',
							@ProbabilityBottom = 473;

exec dbo.usp_ExecuteOdds	@QueryId = 10,
							@LottoId = @LottoIdHolder,
							@MatchDescription = '1 of 5 + Mega Ball',
							@OddsWinAmmount = '$2',
							@ProbabilityBottom = 56;

exec dbo.usp_ExecuteOdds	@QueryId = 10,
							@LottoId = @LottoIdHolder,
							@MatchDescription = 'Mega Ball ONLY',
							@OddsWinAmmount = '$1',
							@ProbabilityBottom = 21;



set @LottoIdHolder = (	select	LottoId
						from	dbo.Lotto
						where	LottoName = 'Gopher 5');

exec dbo.usp_ExecuteOdds	@QueryId = 10,
							@LottoId = @LottoIdHolder,
							@MatchDescription = '5 of 5',
							@OddsWinAmmount = 'JACKPOT',
							@ProbabilityBottom = 1533939;

exec dbo.usp_ExecuteOdds	@QueryId = 10,
							@LottoId = @LottoIdHolder,
							@MatchDescription = '4 of 5',
							@OddsWinAmmount = '$500',
							@ProbabilityBottom = 7304;

exec dbo.usp_ExecuteOdds	@QueryId = 10,
							@LottoId = @LottoIdHolder,
							@MatchDescription = '3 of 5',
							@OddsWinAmmount = '$15',
							@ProbabilityBottom = 178;

exec dbo.usp_ExecuteOdds	@QueryId = 10,
							@LottoId = @LottoIdHolder,
							@MatchDescription = '2 of 5',
							@OddsWinAmmount = '$1',
							@ProbabilityBottom = 13;



set @LottoIdHolder = (	select	LottoId
						from	dbo.Lotto
						where	LottoName = 'Northstar Cash');

exec dbo.usp_ExecuteOdds	@QueryId = 10,
							@LottoId = @LottoIdHolder,
							@MatchDescription = '5 of 5 numbers',
							@OddsWinAmmount = 'JACKPOT',
							@ProbabilityBottom = 169911;

exec dbo.usp_ExecuteOdds	@QueryId = 10,
							@LottoId = @LottoIdHolder,
							@MatchDescription = '4 of 5 numbers',
							@OddsWinAmmount = '$50',
							@ProbabilityBottom = 1307;

exec dbo.usp_ExecuteOdds	@QueryId = 10,
							@LottoId = @LottoIdHolder,
							@MatchDescription = '3 of 5 numbers',
							@OddsWinAmmount = '$5',
							@ProbabilityBottom = 52;

exec dbo.usp_ExecuteOdds	@QueryId = 10,
							@LottoId = @LottoIdHolder,
							@MatchDescription = '2 of 5 numbers',
							@OddsWinAmmount = '$1',
							@ProbabilityBottom = 7;



/*	**************************************
		Insert:	Ball types.
		Table:	dbo.BallTypes
	**************************************	*/

exec dbo.usp_ExecuteBallType	@QueryId = 10, @BallType = 'White';
exec dbo.usp_ExecuteBallType	@QueryId = 10, @BallType = 'Red';
exec dbo.usp_ExecuteBallType	@QueryId = 10, @BallType = 'Multiplier';


/*	**************************************
		Insert:	Drawing dates and prizes.
		Table:	dbo.Drawing
	**************************************	*/

--insert Powerball dates and prizes between 06/01/2017 and 06/18/2017
exec dbo.usp_ExecuteDrawing		@QueryId = 10, @LottoId = 1, @DrawingDate = '06-17-17', @DrawingPrize = 52000000;
exec dbo.usp_ExecuteDrawing		@QueryId = 10, @LottoId = 1, @DrawingDate = '06-14-17', @DrawingPrize = 40000000;
exec dbo.usp_ExecuteDrawing		@QueryId = 10, @LottoId = 1, @DrawingDate = '06-10-17', @DrawingPrize = 435000000;
exec dbo.usp_ExecuteDrawing		@QueryId = 10, @LottoId = 1, @DrawingDate = '06-7-17', @DrawingPrize = 375000000;
exec dbo.usp_ExecuteDrawing		@QueryId = 10, @LottoId = 1, @DrawingDate = '06-3-17', @DrawingPrize = 337000000;

--insert Mega Millions dates and prizes between 06/01/2017 and 06/18/2017
exec dbo.usp_ExecuteDrawing		@QueryId = 10, @LottoId = 2, @DrawingDate = '06-16-17', @DrawingPrize = 113000000;
exec dbo.usp_ExecuteDrawing		@QueryId = 10, @LottoId = 2, @DrawingDate = '06-13-17', @DrawingPrize = 101000000;
exec dbo.usp_ExecuteDrawing		@QueryId = 10, @LottoId = 2, @DrawingDate = '06-9-17', @DrawingPrize = 90000000;
exec dbo.usp_ExecuteDrawing		@QueryId = 10, @LottoId = 2, @DrawingDate = '06-6-17', @DrawingPrize = 80000000;
exec dbo.usp_ExecuteDrawing		@QueryId = 10, @LottoId = 2, @DrawingDate = '06-2-17', @DrawingPrize = 74000000;

--insert Gopher 5 dates and prizes between 06/01/2017 and 06/18/2017
exec dbo.usp_ExecuteDrawing		@QueryId = 10, @LottoId = 3, @DrawingDate = '06-16-17', @DrawingPrize = 470000;
exec dbo.usp_ExecuteDrawing		@QueryId = 10, @LottoId = 3, @DrawingDate = '06-14-17', @DrawingPrize = 430000;
exec dbo.usp_ExecuteDrawing		@QueryId = 10, @LottoId = 3, @DrawingDate = '06-12-17', @DrawingPrize = 390000;
exec dbo.usp_ExecuteDrawing		@QueryId = 10, @LottoId = 3, @DrawingDate = '06-9-17', @DrawingPrize = 360000;
exec dbo.usp_ExecuteDrawing		@QueryId = 10, @LottoId = 3, @DrawingDate = '06-7-17', @DrawingPrize = 330000;
exec dbo.usp_ExecuteDrawing		@QueryId = 10, @LottoId = 3, @DrawingDate = '06-5-17', @DrawingPrize = 295000;
exec dbo.usp_ExecuteDrawing		@QueryId = 10, @LottoId = 3, @DrawingDate = '06-2-17', @DrawingPrize = 270000;

--insert NorthStar Cash dates and prizes between 06/01/2017 and 06/18/2017
exec dbo.usp_ExecuteDrawing		@QueryId = 10, @LottoId = 4, @DrawingDate = '06-18-17', @DrawingPrize = 27000;
exec dbo.usp_ExecuteDrawing		@QueryId = 10, @LottoId = 4, @DrawingDate = '06-17-17', @DrawingPrize = 26000;
exec dbo.usp_ExecuteDrawing		@QueryId = 10, @LottoId = 4, @DrawingDate = '06-16-17', @DrawingPrize = 25000;
exec dbo.usp_ExecuteDrawing		@QueryId = 10, @LottoId = 4, @DrawingDate = '06-15-17', @DrawingPrize = 127000;
exec dbo.usp_ExecuteDrawing		@QueryId = 10, @LottoId = 4, @DrawingDate = '06-14-17', @DrawingPrize = 109000;
exec dbo.usp_ExecuteDrawing		@QueryId = 10, @LottoId = 4, @DrawingDate = '06-13-17', @DrawingPrize = 92000;
exec dbo.usp_ExecuteDrawing		@QueryId = 10, @LottoId = 4, @DrawingDate = '06-12-17', @DrawingPrize = 79000;
exec dbo.usp_ExecuteDrawing		@QueryId = 10, @LottoId = 4, @DrawingDate = '06-11-17', @DrawingPrize = 68000;
exec dbo.usp_ExecuteDrawing		@QueryId = 10, @LottoId = 4, @DrawingDate = '06-10-17', @DrawingPrize = 60000;
exec dbo.usp_ExecuteDrawing		@QueryId = 10, @LottoId = 4, @DrawingDate = '06-9-17', @DrawingPrize = 52000;
exec dbo.usp_ExecuteDrawing		@QueryId = 10, @LottoId = 4, @DrawingDate = '06-8-17', @DrawingPrize = 44000;
exec dbo.usp_ExecuteDrawing		@QueryId = 10, @LottoId = 4, @DrawingDate = '06-7-17', @DrawingPrize = 38000;
exec dbo.usp_ExecuteDrawing		@QueryId = 10, @LottoId = 4, @DrawingDate = '06-6-17', @DrawingPrize = 33000;
exec dbo.usp_ExecuteDrawing		@QueryId = 10, @LottoId = 4, @DrawingDate = '06-5-17', @DrawingPrize = 31000;
exec dbo.usp_ExecuteDrawing		@QueryId = 10, @LottoId = 4, @DrawingDate = '06-4-17', @DrawingPrize = 30000;
exec dbo.usp_ExecuteDrawing		@QueryId = 10, @LottoId = 4, @DrawingDate = '06-3-17', @DrawingPrize = 29000;
exec dbo.usp_ExecuteDrawing		@QueryId = 10, @LottoId = 4, @DrawingDate = '06-2-17', @DrawingPrize = 28000;
exec dbo.usp_ExecuteDrawing		@QueryId = 10, @LottoId = 4, @DrawingDate = '06-1-17', @DrawingPrize = 27000;



/*	**************************************
		Insert:	Drawn balls.
		Table:	dbo.Ball
	**************************************	*/

declare @DrawingIdHolder int = null;

--PowerBall
	--drawing 06/17/17
		set		@DrawingIdHolder = 1;
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 1, @BallNumber = '10';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 2, @BallNumber = '13';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 3, @BallNumber = '32';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 4, @BallNumber = '53';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 5, @BallNumber = '62';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 2, @BallPlace = 6, @BallNumber = '21';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 3, @BallPlace = 7, @BallNumber = 'x2';

	--drawing 06/14/17
		set		@DrawingIdHolder = 2;
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 1, @BallNumber = '05';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 2, @BallNumber = '22';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 3, @BallNumber = '43';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 4, @BallNumber = '57';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 5, @BallNumber = '63';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 2, @BallPlace = 6, @BallNumber = '24';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 3, @BallPlace = 7, @BallNumber = 'x2';

	--drawing 06/10/17
		set		@DrawingIdHolder = 3;
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 1, @BallNumber = '20';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 2, @BallNumber = '26';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 3, @BallNumber = '32';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 4, @BallNumber = '38';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 5, @BallNumber = '58';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 2, @BallPlace = 6, @BallNumber = '03';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 3, @BallPlace = 7, @BallNumber = 'x2';

	--drawing 06/07/17
		set		@DrawingIdHolder = 4;
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 1, @BallNumber = '05';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 2, @BallNumber = '21';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 3, @BallNumber = '57';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 4, @BallNumber = '66';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 5, @BallNumber = '69';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 2, @BallPlace = 6, @BallNumber = '13';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 3, @BallPlace = 7, @BallNumber = 'x3';

	--drawing 06/03/17
		set		@DrawingIdHolder = 5;
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 1, @BallNumber = '03';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 2, @BallNumber = '09';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 3, @BallNumber = '21';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 4, @BallNumber = '41';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 5, @BallNumber = '54';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 2, @BallPlace = 6, @BallNumber = '25';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 3, @BallPlace = 7, @BallNumber = 'x2';


--Mega Millions
	--drawing 06/16/17
		set		@DrawingIdHolder = 6;
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 1, @BallNumber = '18';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 2, @BallNumber = '22';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 3, @BallNumber = '26';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 4, @BallNumber = '30';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 5, @BallNumber = '44';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 2, @BallPlace = 6, @BallNumber = '09';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 3, @BallPlace = 7, @BallNumber = 'x5';

	--drawing 06/13/17
		set		@DrawingIdHolder = 7;
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 1, @BallNumber = '27';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 2, @BallNumber = '51';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 3, @BallNumber = '62';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 4, @BallNumber = '68';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 5, @BallNumber = '75';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 2, @BallPlace = 6, @BallNumber = '08';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 3, @BallPlace = 7, @BallNumber = 'x3';

	--drawing 06/09/17
		set		@DrawingIdHolder = 8;
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 1, @BallNumber = '03';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 2, @BallNumber = '16';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 3, @BallNumber = '28';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 4, @BallNumber = '33';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 5, @BallNumber = '37';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 2, @BallPlace = 6, @BallNumber = '09';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 3, @BallPlace = 7, @BallNumber = 'x5';

	--drawing 06/06/17
		set		@DrawingIdHolder = 9;
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 1, @BallNumber = '03';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 2, @BallNumber = '05';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 3, @BallNumber = '16';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 4, @BallNumber = '49';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 5, @BallNumber = '75';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 2, @BallPlace = 6, @BallNumber = '05';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 3, @BallPlace = 7, @BallNumber = 'x3';

	--drawing 06/02/17
		set		@DrawingIdHolder = 10;
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 1, @BallNumber = '07';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 2, @BallNumber = '42';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 3, @BallNumber = '57';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 4, @BallNumber = '69';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 5, @BallNumber = '72';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 2, @BallPlace = 6, @BallNumber = '10';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 3, @BallPlace = 7, @BallNumber = 'x5';


--Gopher 5
	--drawing 06/16/17
		set		@DrawingIdHolder = 11;
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 1, @BallNumber = '09';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 2, @BallNumber = '34';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 3, @BallNumber = '36';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 4, @BallNumber = '39';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 5, @BallNumber = '45';

	--drawing 06/14/17
		set		@DrawingIdHolder = 12;
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 1, @BallNumber = '06';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 2, @BallNumber = '07';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 3, @BallNumber = '16';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 4, @BallNumber = '24';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 5, @BallNumber = '40';

	--drawing 06/12/17
		set		@DrawingIdHolder = 13;
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 1, @BallNumber = '04';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 2, @BallNumber = '05';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 3, @BallNumber = '09';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 4, @BallNumber = '22';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 5, @BallNumber = '43';

	--drawing 06/09/17
		set		@DrawingIdHolder = 14;
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 1, @BallNumber = '03';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 2, @BallNumber = '25';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 3, @BallNumber = '39';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 4, @BallNumber = '44';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 5, @BallNumber = '45';

	--drawing 06/07/17
		set		@DrawingIdHolder = 15;
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 1, @BallNumber = '05';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 2, @BallNumber = '20';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 3, @BallNumber = '27';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 4, @BallNumber = '30';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 5, @BallNumber = '46';

	--drawing 06/05/17
		set		@DrawingIdHolder = 16;
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 1, @BallNumber = '07';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 2, @BallNumber = '19';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 3, @BallNumber = '20';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 4, @BallNumber = '43';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 5, @BallNumber = '47';

	--drawing 06/02/17
		set		@DrawingIdHolder = 17;
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 1, @BallNumber = '05';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 2, @BallNumber = '23';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 3, @BallNumber = '26';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 4, @BallNumber = '42';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 5, @BallNumber = '43';

--Northstar Cash
	--drawing 06/18/17
		set		@DrawingIdHolder = 18;
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 1, @BallNumber = '05';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 2, @BallNumber = '11';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 3, @BallNumber = '13';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 4, @BallNumber = '18';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 5, @BallNumber = '25';

	--drawing 06/17/17
		set		@DrawingIdHolder = 19;
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 1, @BallNumber = '11';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 2, @BallNumber = '13';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 3, @BallNumber = '14';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 4, @BallNumber = '16';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 5, @BallNumber = '27';

	--drawing 06/16/17
		set		@DrawingIdHolder = 20;
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 1, @BallNumber = '05';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 2, @BallNumber = '07';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 3, @BallNumber = '11';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 4, @BallNumber = '14';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 5, @BallNumber = '28';

	--drawing 06/15/17
		set		@DrawingIdHolder = 21;
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 1, @BallNumber = '04';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 2, @BallNumber = '11';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 3, @BallNumber = '13';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 4, @BallNumber = '20';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 5, @BallNumber = '27';

	--drawing 06/14/17
		set		@DrawingIdHolder = 22;
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 1, @BallNumber = '09';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 2, @BallNumber = '11';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 3, @BallNumber = '21';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 4, @BallNumber = '24';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 5, @BallNumber = '26';

	--drawing 06/13/17
		set		@DrawingIdHolder = 23;
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 1, @BallNumber = '01';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 2, @BallNumber = '04';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 3, @BallNumber = '15';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 4, @BallNumber = '19';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 5, @BallNumber = '26';

	--drawing 06/12/17
		set		@DrawingIdHolder = 24;
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 1, @BallNumber = '06';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 2, @BallNumber = '14';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 3, @BallNumber = '16';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 4, @BallNumber = '27';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 5, @BallNumber = '31';

	--drawing 06/11/17
		set		@DrawingIdHolder = 25;
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 1, @BallNumber = '04';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 2, @BallNumber = '05';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 3, @BallNumber = '18';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 4, @BallNumber = '19';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 5, @BallNumber = '24';

	--drawing 06/10/17
		set		@DrawingIdHolder = 26;
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 1, @BallNumber = '12';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 2, @BallNumber = '13';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 3, @BallNumber = '22';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 4, @BallNumber = '27';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 5, @BallNumber = '31';

	--drawing 06/09/17
		set		@DrawingIdHolder = 27;
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 1, @BallNumber = '03';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 2, @BallNumber = '09';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 3, @BallNumber = '10';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 4, @BallNumber = '11';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 5, @BallNumber = '28';

	--drawing 06/08/17
		set		@DrawingIdHolder = 28;
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 1, @BallNumber = '01';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 2, @BallNumber = '02';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 3, @BallNumber = '07';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 4, @BallNumber = '14';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 5, @BallNumber = '24';

	--drawing 06/07/17
		set		@DrawingIdHolder = 29;
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 1, @BallNumber = '03';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 2, @BallNumber = '06';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 3, @BallNumber = '19';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 4, @BallNumber = '21';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 5, @BallNumber = '26';

	--drawing 06/06/17
		set		@DrawingIdHolder = 30;
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 1, @BallNumber = '02';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 2, @BallNumber = '08';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 3, @BallNumber = '14';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 4, @BallNumber = '30';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 5, @BallNumber = '31';

	--drawing 06/05/17
		set		@DrawingIdHolder = 31;
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 1, @BallNumber = '01';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 2, @BallNumber = '05';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 3, @BallNumber = '11';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 4, @BallNumber = '20';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 5, @BallNumber = '21';

	--drawing 06/04/17
		set		@DrawingIdHolder = 32;
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 1, @BallNumber = '09';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 2, @BallNumber = '12';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 3, @BallNumber = '14';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 4, @BallNumber = '15';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 5, @BallNumber = '17';

	--drawing 06/03/17
		set		@DrawingIdHolder = 33;
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 1, @BallNumber = '04';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 2, @BallNumber = '05';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 3, @BallNumber = '07';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 4, @BallNumber = '11';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 5, @BallNumber = '24';

	--drawing 06/02/17
		set		@DrawingIdHolder = 34;
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 1, @BallNumber = '09';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 2, @BallNumber = '15';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 3, @BallNumber = '17';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 4, @BallNumber = '18';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 5, @BallNumber = '28';

	--drawing 06/01/17
		set		@DrawingIdHolder = 35;
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 1, @BallNumber = '16';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 2, @BallNumber = '22';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 3, @BallNumber = '25';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 4, @BallNumber = '28';
		exec dbo.usp_ExecuteBall	@QueryId = 10, @DrawingId = @DrawingIdHolder, @BallTypeId = 1, @BallPlace = 5, @BallNumber = '30';
