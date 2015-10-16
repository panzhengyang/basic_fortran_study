PROGRAM progress
!Shows how to place a non-advancing status counter...
IMPLICIT NONE
INTEGER :: J, NR
NR=10
DO J=1,NR
write(*,FMT="(A1,A,t21,F6.2,A)",ADVANCE="NO") achar(13), &
& " Percent Complete: ", (real(J)/real(NR))*100.0, "%"
CALL sleep(1)
!give a delay in sec to see the output
ENDDO
END PROGRAM progress

