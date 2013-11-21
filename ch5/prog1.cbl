*> From page 59.
identification division.
program-id. prog1.
environment division.
input-output section.
file-control.
	select in-emp-mast assign to 'external01'.
data division.
file section.
fd in-emp-mast.
01	in-emp-record		pic X(20).

working-storage section.
01	ctr					pic X(09).

procedure division.
first-paragraph.
	open input in-emp-mast
	read in-emp-mast
	perform varying ctr from 1 by 1 until ctr > 4
		display in-emp-record
		read in-emp-mast
	end-perform
	close in-emp-mast
	stop run.
