PROGRAM minmax
IMPLICIT NONE
REAL(KIND=4), DIMENSION(2,8) :: mydata
REAL(KIND=4), DIMENSION(2) :: maxcolumns
REAL(KIND=4) :: mydata_max, mydata_min
! Load in some data values to play with
! --------------------------------------------------------------!
! Put data values into column 1, rows 1:8
mydata(1,1:8) = (/0.0, 20.0, 40.0, 60.0, 40.0, 20.0, 0.0, 15.0/)
! Put data values into column 2, rows 1:8
mydata(2,1:8) = (/1.45, 6.80, 8.10, 8.08, 7.20, 7.00, 9.34, 2.65/)
! --------------------------------------------------------------!
! Play around with the min/maxval functions
! --------------------------------------------------------------!
! Find the Maximum value in mydata
mydata_max = MAXVAL(mydata)
write(*,*) "Maximum Value anywhere in array: ", mydata_max
! Find the Minimum value in mydata
mydata_min = MINVAL(mydata)
write(*,*) "Minimum Value anywhere in array:", mydata_min
! Using a MASK, find the largest value in mydata less than 10.0
mydata_max = MAXVAL(mydata,MASK=mydata < 10.0)
write(*,*) "Maximum Value < 10.0: ", mydata_max
! Using DIM, find the maximum values in each column
maxcolumns = MAXVAL(mydata,DIM=2)
write(*,*) "Maximum Value of column 1: ", maxcolumns(1)
write(*,*) "Maximum Value of column 2: ", maxcolumns(2)
! --------------------------------------------------------------!
END PROGRAM minmax

