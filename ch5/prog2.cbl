*> From page 60.
identification division.
program-id. prog2.
data division.
working-storage section.
01	W10-ctrs.
	05	W10-ctr0	pic 9(2) value 1.
	05	W10-ctr1	pic 9(2) value 0.
procedure division.
A100-start.
	perform with test after until W10-ctr0 = 1
		display "Test after, condition satisfied."
	end-perform
	perform with test before until W10-ctr1 = 1
		display "Test before, condition not satisfied."
		compute W10-ctr1 = W10-ctr1 + 1
	end-perform
	accept W10-ctr1
	exit program.
end program prog2.
