*> From page 65.
identification division.
program-id. prog6.
data division.
working-storage section.
01	W10-date.
	05	W10-yy		pic 9(4).
	05	W10-mm		pic 9(2).
	05	W10-dd		pic 9(2).
01	W20-date		pic X(6).
01	W30-date.
	05	W30-yy		pic 9(4).
	05	W30-dd		pic 9(3).
01	W40-time.
	05	W40-hh		pic 9(2).
	05	W40-mm		pic 9(2).
	05	W40-ss		pic 9(2).
	05	W40-hs		pic 9(2).
01	W40-day			pic 9.
procedure division.
A100-start.
	*> "date" returns the Gregorian date.
	accept W10-date from date yyyymmdd
	accept W20-date from date
	display "Date is: " W10-date
	display "Date is: " W20-date
	display W10-yy ':' W10-mm ':' W10-dd
	*> "day" returns the Julian date (i.e., 325).
	accept W30-date from day yyyyddd
	display W30-date
	display W30-yy ':' W30-dd
	*> Get time and day of week:
	accept W40-time from time
	accept W40-day from day-of-week
	display "Time is: " W40-time
	display "Day of week is: " W40-day
	stop run.

