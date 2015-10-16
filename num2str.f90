PROGRAM num2str
IMPLICIT NONE
REAL :: num
INTEGER :: J
CHARACTER(LEN=3) :: istr1, istr2
CHARACTER(LEN=8) :: rstr1, rstr2
CHARACTER(LEN=100) :: outfile
J=10
write(istr1,"(I2.2)") J
write(istr2,"(I3.3)") J
write(*,*) istr1, istr2
num=13.875
write(rstr1,"(F8.2)") num
write(rstr2,"(F8.3)") num
write(*,*) trim(adjustl(rstr1)), " ", trim(adjustl(rstr2))
!demonstrate usefulness in naming multiple files
DO J=1,10
write(istr1,"(I2.2)") J
outfile = 'mydata_'//trim(istr1)//'.xyz'
write(*,*) trim(outfile)
ENDDO
END PROGRAM

