PROGRAM minmax2
IMPLICIT NONE
REAL(KIND=4), DIMENSION(2,8) :: seismogram
REAL(KIND=4) :: time_max, amp_max
INTEGER(KIND=4), DIMENSION(2) :: time_max_index
! Make a fake very, very short seismogram
! --------------------------------------------------------------!
! Put timing information in column #1
seismogram(1,1:8) = (/0.0, 1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0/)
! Put amplitude information in column #2
seismogram(2,1:8) = (/1.45,1.53,1.62,1.73,1.41,1.38,1.33,1.20/)
! --------------------------------------------------------------!
! Now let's play with the MAXLOC intrinsic
! --------------------------------------------------------------!
! Find the array indices of the max in each column，每一列对于
 time_max_index = MAXLOC(seismogram,DIM=2)
 write(*,*)time_max_index(1),time_max_index(2)
 time_max       = seismogram(1,time_max_index(2))
 amp_max        = seismogram(2,time_max_index(2))
 write(*,*) "Time to maximum value: ", time_max, " (sec)"
 write(*,*) "Amplitude of maximum value: ", amp_max
! --------------------------------------------------------------!
! Now let's do it again using the MASK and say we want to find
! the next highest amplitude
! 再次找到第二个 接近最高的幅度!
 time_max_index=MAXLOC(seismogram,DIM=2,MASK=seismogram < amp_max)
 time_max = seismogram(1,time_max_index(2))
 amp_max = seismogram(2,time_max_index(2))
 write(*,*) "Time to next largest value: ", time_max, " (sec)"
 write(*,*) "Amplitude of next largest value: ", amp_max
! --------------------------------------------------------------!
END PROGRAM minmax2

