program matrixmath
implicit none
real, dimension(2, 3) :: a23, b23, c23
real, dimension(3, 2) :: a32, b32, c32
real, dimension(2,2) :: a22, b22, c22
integer, dimension(2) :: loc2
integer :: i, j, k
a23(1,1:3) = (/ -5.1, 3.8, 4.2 /)
a23(2,1:3) = (/ 9.7, 1.3, -1.3 /)
print *, 'Matrix a23 follows'
call PRINTMAT(a23, 2, 3)
b32(1:3, 1) = (/ 9.4, -6.2, 0.5 /)
b32(1:3, 2) = (/ -5.1, 3.3, -2.2 /)
print *, 'Matrix b32 follows'
call PRINTMAT(b32, 3, 2)
c22 = matmul(a23, b32)
!this works but matmul(b32, a23) does not
print *, "Matrix c22 = matmul(a,b) follows"
call PRINTMAT(c22, 2, 2)
print *, 'maxval(a23) =', maxval(a23)
print *, 'maxloc(a23) =', maxloc(a23)
loc2 = maxloc(a23)
print *, 'loc2 =', loc2
print *, 'a23(loc2(1), loc2(2)) =', a23(loc2(1), loc2(2))
b23 = a23 + transpose(b32)
print *, 'Matrix b23 = a32 + transpose(b32) follows'
call PRINTMAT(b23, 2, 3)
print *, 'size(a23) =', size(a23)
print *, 'size(a23(1,:)) =', size(a23(1,:))
contains
subroutine PRINTMAT(x, m, n)
real, dimension(m, n) :: x
integer :: m, n
do i = 1, m
print "(10f8.3)", (x(i,j), j=1,n)
enddo
end subroutine PRINTMAT
end program matrixmath

