PROGRAM cross
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
REAL(k) :: v1, v2, v3, w1, w2, w3
REAL(k) :: u1, u2, u3, alpha, s
REAL(k) :: magV, magW, magX, arg, rtd, theta
REAL(k) :: x1, x2, x3
write(*,*),"x1,x2,x3"
read(*,*),x1,x2,x3,w1,w2,w3
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
print *,u1,u2,u3,arg,theta,s,alpha 
END 
！计算两个向量的内积以及外积，以及两个向量的夹角
