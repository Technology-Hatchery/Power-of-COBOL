*> Contains various listings in Chapter 3.
identification division.
program-id. prog1.
environment division.
data division.
working-storage section.
*> Basic record definition made of up of numeric
*> data fields ("9").
01  W10-date.
	05	W10-year			pic 99.
	05	W10-month			pic 9(2).
	05	W10-day				pic 99.
*> Data fields with decimal points ("V").
01  W10-amounts.
	05	W10-capital			pic 999V999.
	05  W10-interest		pic V9(2).
	05	W10-total			pic 9(4)V9(2).
*> Signed data fields ("S").			
01  W10-amounts-02.
	05	W10-capital			pic S999V999 usage display.
	05  W10-interest		pic V9(2).
	05	W10-total			pic S9(4)V9(2).
*> Multi-nested groups of data fields.
01	W30-amounts.
	05	W30-emp-id			pic X(3).
	05	W30-emp-name		pic X(35).
	05	W30-emp-leave.
		10	W30-emp-leave-startdate		pic 9(6).
		10	W30-emp-leave-enddate		pic 9(6).
	05	W30-emp-salary		pic S9(7).
*> Use of "filler" to pad out 75 bytes. Use of "filler" can also
*> be replaced with blanks instead for COBOL85.
01	emp-rec.
	05	emp-key.
		10	emp-br-code		pic X(3).
		10  emp-code		pic 9(4).
	05	filler				pic X(72).
	05	emp-salary			pic S9(5).
*> Alphanumeric data fields ("X").
01	W20-messages.
	05	W20-msg1			pic X(12)		usage display.
	05	W20-msg2			pic XXXXXXXXXXXX	display.
	05  W20-msg3			pic X(12).
*> Same record as above, but with alphabetic data fields.
01	W20-messages-02.
	05	W20-msg1			pic A(12)		usage display.
	05  W20-msg2			pic AAAAAAAAAAAA	display.
	05  W20-msg3			pic A(12).
procedure division.
display "Chapter 3, Program 1.",
stop run.
