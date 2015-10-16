PROGRAM example
IMPLICIT NONE
INTEGER(KIND=4) :: J
REAL(KIND=4) :: x, y
J = 1
x = 1000.5
y = 200.1564
write(*,100) "J, x, y =", J, x, y
100 FORMAT(A,5X,I1,2X,F7.2,2X,F7.2)
END PROGRAM example

