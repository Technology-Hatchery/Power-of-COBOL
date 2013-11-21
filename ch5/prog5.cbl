*> From page 64.
identification division.
program-id. prog5.
data division.
working-storage section.
01	W10-msg.
	05	W10-msg1		pic X(24) value "Please enter your name: ".
	05	W10-msg2		pic X(35).
procedure division.
A100-start.
	display	W10-msg1 " " no advancing
	accept W10-msg2
	display W10-msg2
	stop run.
