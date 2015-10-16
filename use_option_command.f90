PROGRAM commandline
IMPLICIT NONE
REAL :: num
INTEGER :: option2, N
CHARACTER(LEN=100) :: arg, option1
!Example to read a character and an integer from the command line.
!For example try,
! >> ./a.exe inputfilename 21
!Read input from the command line
N = IARGC()
IF (N < 1) THEN
write(*,'(a)') "usage: ./foo option1 option2"
write(*,'(a)') "option1=character"
write(*,'(a)') "option2=integer"
ELSE
CALL GETARG(1,option1)
!Grab the first command line argument
! and store it in the variable 'option1'
CALL GETARG(2,arg) 
!Grab the 2nd command line argument
! and store it in the temporary variable
! 'arg'
read(arg,*) option2 !Now convert string to integer
write(*,*) "Variable option1 = ", trim(adjustl(option1))
write(*,*) "Variable option2 = ", option2
ENDIF
END PROGRAM commandline

