PROGRAM wherestatement
IMPLICIT NONE
REAL(KIND=4), DIMENSION(2,8) :: seismogram
INTEGER(KIND=4) :: J
! Make a fake very, very short seismogram
! --------------------------------------------------------------!
! Put timing information in column #1
seismogram(1,1:8) = (/0.0, 1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0/)
! Put amplitude information in column #2
seismogram(2,1:8) = (/1.45,1.53,1.62,1.73,1.41,1.38,1.33,1.20/)
! --------------------------------------------------------------!
! write out the initial seismogram (time, amplitude)
! --------------------------------------------------------------!
write(*,*) " "
write(*,*) "Initial seismogram"
write(*,*) "--------------------------------------"
DO J=1,8
write(*,*) seismogram(1,J), seismogram(2,J)
ENDDO
write(*,*) "--------------------------------------"
write(*,*) " "
! Manipulate the amplitude values based on the
! time values w/o a Loop!
! --------------------------------------------------------------!
WHERE (seismogram(1,:) >= 6.0)
seismogram(2,:) = 0.0
ELSEWHERE (seismogram(1,:) >= 4.0)
seismogram(2,:) = 1.0
ELSEWHERE
seismogram(2,:) = 2.0
ENDWHERE
! write out the final seismogram (time, amplitude)
! --------------------------------------------------------------!
write(*,*) " "
write(*,*) "Final seismogram"
write(*,*) "--------------------------------------"
DO J=1,8
write(*,*) seismogram(1,J), seismogram(2,J)
ENDDO
write(*,*) "--------------------------------------"
write(*,*) " "
END PROGRAM wherestatement

