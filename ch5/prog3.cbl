*> From page 62.
*> This tests for end of value file HIGH-VALUES.
identification division.
program-id. prog3.
environment division.
input-output section.
file-control.
	select in-emp-mast assign to 'external01'.
data division.
file section.
fd in-emp-mast.
01	in-emp-record		pic X(20).
procedure division.
A100-start.
	open input in-emp-mast
	perform Z100-read-file
	perform until in-emp-record = HIGH-VALUE
		display in-emp-record
		perform Z100-read-file
	end-perform
	close in-emp-mast
	stop run.
Z100-read-file.
	read in-emp-mast
		at end move HIGH-VALUES to in-emp-record
	end-read.
