*> Found on page 45.
program-id. Prog0406.
environment division.
input-output section.
file-control.
	select emp-list assign to "emp001".
data division.
file section.
fd emp-list.
01	emp-rec.
	05	emp-id		pic X(5).
	05	emp-name	pic X(10).
	05	emp-salary	pic S9(5).
procedure division.
start-paragraph.
	open input emp-list
	read emp-list
	display emp-id " " emp-name " " emp-salary
	close emp-list
	stop run.
