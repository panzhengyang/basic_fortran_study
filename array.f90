PROGRAM arrays
IMPLICIT NONE
REAL(KIND=4), DIMENSION(2,4) :: Vp
!definite the array vp: 2 line,4 row
INTEGER(KIND=4) :: J
! Put data values into column 1, rows 1:4
Vp(1,1:4) = (/0.0, 20.0, 40.0, 60.0/)
! Put data values into column 2, rows 1:4
Vp(2,1:4) = (/1.45, 6.80, 8.10, 8.08/)
! Write out data one row at a time
DO J=1,4
write(*,*) Vp(:,J)
ENDDO
END PROGRAM arrays
！代码为arrays 主要生成数组以及读取数组以及给予数组赋值，利用do循环
