*> Contains various listings in Chapter 4.
identification division.
program-id. prog1.
environment division.
input-output section.
file-control.
	select file1 assign to 'external01'.
data division.
file section.
fd file1
	label records are standard.
01	file1-record		pic X(10).
working-storage section.
01	file1-ws-record		pic X(5).
procedure division.
open input file1
*> Read first record into file buffer.
read file1
	at end
		display file1-record
		display "Reached end of file1."
	not at end
		display file1-record
		display "Not at end of file1."
end-read
*> Read next record into working storage.
read file1 into file1-ws-record
	at end
		display file1-ws-record
		display "Reached end of file1."
	not at end
		display file1-ws-record
		display "Not at end of file1."
end-read
display "Chapter 4, Program 1."
close file1
stop run.
