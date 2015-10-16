PROGRAM unixsystem
IMPLICIT NONE
CHARACTER(LEN=30) :: cmd1,cmd2,cmd3
cmd1 = 'pwd'
cmd2 = 'ls'
cmd3 = 'psvelo'
!string to store the Unix command
! As an example print the working directory
CALL SYSTEM(cmd1)
call system(cmd2)
call system(cmd3)
END PROGRAM unixsystem

