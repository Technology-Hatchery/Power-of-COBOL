*> Listing 02-03
identification division.
program-id. hello.
environment division.
configuration section.
source-computer. IBM-370.
object-computer. IBM-370.
special-names.
    decimal-point is comma.
input-output section.
file-control.
    select payMaster assign to 'pay001'.
procedure division.
display "Chapter 2, Program 3.",
stop run.
