program sortrand
implicit none
integer, parameter :: NPTS=100
integer :: i
real, dimension(npts) :: xran
do i = 1, NPTS
call random_number(xran(i))
enddo
call PIKSRT(NPTS,xran)
print "(10f7.4)", (xran(i), i=1,npts)

end program sortrand

      SUBROUTINE PIKSRT(N,ARR)
      DIMENSION ARR(N)
      DO 12 J=2,N
        A=ARR(J)
        DO 11 I=J-1,1,-1
          IF(ARR(I).LE.A)GO TO 10
          ARR(I+1)=ARR(I)
11      CONTINUE
        I=0
10      ARR(I+1)=A
12    CONTINUE
      return
      END

