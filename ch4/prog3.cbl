program-id. Prog3.
environment division.
input-output section.
file-control.
	select emp-list assign to "emp001".
data division.
file section.
fd emp-list.
01	emp-rec.
*> Copies data fields from the emp-rec.cpy copy book.
	copy emp-rec.
procedure division.
start-paragraph.
	open input emp-list
	read emp-list
	display emp-id " " emp-name " " emp-salary
	close emp-list
	stop run.
