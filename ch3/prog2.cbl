*> Contains various listings in Chapter 3.
identification division.
program-id. prog1.
environment division.
input-output section.
file-control.
*> "pay-master" is the internal file reference,
*> "pay001" is the external file name pointed to.
	select pay-master assign to pay001.
	select pay-master-02 assign to pay002.
	select pay-master-03 assign to pay003.
data division.
file section.
*> Define a file descriptor called "pay-master",
*> allocate a buffer of 75 bytes.
fd	pay-master
	label records are standard.
01	pay-record		pic X(75).
*> Example of a fd record defined directly
*> in working storage (vs in working-storage, whic
*> is preferred).
fd	pay-master-02
	label records are standard.
01	pay-record.
	05	pay-studentNo		pic X(5).
	05	pay-studentName		pic X(35).
	05	pay-studentAverage	pic 9(3).
fd	pay-master-03
	label records are standard.
01	student-record			pic X(43).
working-storage section.
*> This record can be used to hold records
*> buffered in from pay-master-03 above; this is
*> preferred over defining the record directly below
*> the fd defn.
01	student-area.
	05	student-no			pic X(5).
	05	student-name		pic X(35).
	05	student-average		pic 9(3).
procedure division.
display "Chapter 3, Program 2.",
stop run.
