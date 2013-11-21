program-id. Prog4.
environment division.
input-output section.
file-control.
	select emp-list assign to "emp001".
data division.
file section.
fd emp-list.
01	emp-rec			pic X(20).
working-storage section.
*> Copies "emp-rec" copy book into working-storage section.
*> I tried to use "copy emp-rec replacing ==emp== by ==W20-emp==)
*> but couldn't get it to work.
01	W20-emp-area.
	copy emp-rec.
procedure division.
start-paragraph.
	open input emp-list
	read emp-list into W20-emp-area
	display emp-id " " emp-name " " emp-salary
	close emp-list
	stop run.
