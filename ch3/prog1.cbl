*> Contains various listings in Chapter 3.
identification division.
program-id. prog1.
environment division.
data division.
working-storage section.
01  W10-date.
	05	W10-year			pic 99.
	05	W10-month			pic 9(2).
	05	W10-day				pic 99.
01  W10-amounts.
	05	W10-capital			pic 999V999.
	05  W10-interest		pic V9(2).
	05	W10-total			pic 9(4)V9(2).			
01  W10-amounts-02.
	05	W10-capital			pic S999V999 usage display.
	05  W10-interest		pic V9(2).
	05	W10-total			pic S9(4)V9(2).
01	W30-amounts.
	05	W30-emp-id			pic X(3).
	05	W30-emp-name		pic X(35).
	05	W30-emp-leave.
		10	W30-emp-leave-startdate		pic 9(6).
		10	W30-emp-leave-enddate		pic 9(6).
	05	W30-emp-salary		pic S9(7).
procedure division.
display "Chapter 3, Program 1.",
stop run.
