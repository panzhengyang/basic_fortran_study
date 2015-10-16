PROGRAM calc_cross
IMPLICIT NONE
INTEGER, PARAMETER :: k=kind(0d0)
REAL(k), PARAMETER :: pi=3.141592653589793_k
REAL(k) :: x1, y1, z1,rtd
REAL(k) :: x2, y2, z2
REAL(k) :: x3, y3, z3
REAL(k) :: alpha, s
!Define vector 1
rtd = 180_k/pi
write(*,*)pi,rtd
write(*,*)"x1,y1,z1"
read(*,*)x1,y1,z1
write(*,*)"x2,y2,z2"
read(*,*)x2,y2,z2
!Take the cross product between the two vectors
CALL cross(x1, y1, z1, x2, y2, z2, x3, y3, z3, alpha, s)
!write out
write(*,*)"x3= ",x3
write(*,*)"y3= ",y3
write(*,*)"z3= ",z3

END PROGRAM calc_cross

!Cross Product for determining euler rotation pole
!Angle between two points on a sphere and
!Distance between two points on a sphere
!***************************************************
SUBROUTINE cross(v1, v2, v3, w1, w2, w3, u1, u2, u3, alpha, s)
! For vectors v and w, where
! v = (v1, v2, v3)
! w = (w1, w2, w3)
! the cross product v x w = x = (x1, x2, x3)
! output is u = (u1, u2, u3); where u is the unit
! vector in the direction of the vector x
! the angle between v and w is given as alpha;
! where alpha = arcsin(|v x w|/|v||w|)
! s is the distance along the arc between the two
! endpoints of vectors v and w, where s=r*theta
! alpha and s are only valid for angles <= 90 deg
IMPLICIT NONE
INTEGER, PARAMETER :: k=kind(0d0)
REAL(k), PARAMETER :: pi=3.141592653589793_k
REAL(k), INTENT(IN) :: v1, v2, v3, w1, w2, w3
REAL(k), INTENT(OUT) :: u1, u2, u3, alpha, s
REAL(k) :: magV, magW, magX, arg, rtd, theta
REAL(k) :: x1, x2, x3
rtd = 180_k/pi
x1 = v2*w3 - v3*w2
x2 = -v1*w3 + v3*w1
x3 = v1*w2 - v2*w1
magV = SQRT(v1**2 + v2**2 + v3**2)
magW = SQRT(w1**2 + w2**2 + w3**2)
magX = SQRT(x1**2 + x2**2 + x3**2)
u1 = x1/magX
u2 = x2/magX
u3 = x3/magX
arg = magX/(magV*magW)
theta = ASIN(arg)
s = magV*theta
alpha = (ASIN(arg))*rtd
END SUBROUTINE cross

