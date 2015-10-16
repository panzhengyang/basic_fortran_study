program fileinout
implicit none
character (len=100) :: infile, outfile
integer :: i, ios
real :: x, y, z
print *, 'Enter input file name'
read "(a)", infile
open (11, file=infile, status='old')
print *, 'Enter output file name'
read "(a)", outfile
open (12, file=outfile)
do i = 1, 999999999
!more lines than any likely input file
read (11,*, iostat = ios) x, y
if (ios < 0) then
exit
else if (ios > 0) then
print *, '***Warning, read error on line: ', i
cycle
endif
z = x * y
write (12,*) x, y, z
enddo
close (11)
close (12)
end program fileinout

