*> From page 63.
*> Allows display of variable file lines based
*> on user input.
identification division.
program-id. prog4.
environment division.
input-output section.
file-control.
	select in-emp-mast assign to 'external01'.
data division.
file section.
fd in-emp-mast.
01	in-emp-record		pic X(20).
working-storage section.
01	ctr					pic 9.
01	st-ctr				pic 9.
procedure division.
A100-start.
	perform A400-accept-ctr
	perform A200-init
	perform A300-process
	close in-emp-mast
	stop run.
A200-init.
	move 1 to ctr
	open input in-emp-mast
	perform Z100-read-file.
A300-process.
	perform until ctr > st-ctr
		display ctr in-emp-record
		perform Z100-read-file
		add 1 to ctr
	end-perform.
A400-accept-ctr.
	display "Please enter number of records to display: "
	accept st-ctr.
Z100-read-file.
	read in-emp-mast
		at end move HIGH-VALUES to in-emp-record
	end-read.
