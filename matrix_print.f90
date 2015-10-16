program matmult
implicit none
real, dimension(3,3) :: a, b, c
integer :: i, j, k
a(1,1:3) = (/ -5.1, 3.8, 4.2 /)
a(2,1:3) = (/ 9.7, 1.3, -1.3 /)
a(3,1:3) = (/ -8.0, -7.3, 2.2 /)
b(1,1:3) = (/ 9.4, -6.2, 0.5 /)
b(2,1:3) = (/ -5.1, 3.3, -2.2 /)
b(3,1:3) = (/ -1.1, -1.8, 3.0 /)
do i = 1, 3
do j = 1, 3
c(i,j) = 0.0
do k = 1, 3
c(i,j) = c(i,j) + a(i,k) * b(k,j)
enddo
enddo
enddo
print *, "Matrix a follows"
call PRINTMAT(a)
print *, "Matrix b follows"
call PRINTMAT(b)
print *, "Matrix c = a*b follows"
call PRINTMAT(c)
contains
subroutine PRINTMAT(x)
real, dimension(3,3) :: x
do i = 1, 3
print "(3f8.3)", (x(i,j), j=1,3)
enddo
end subroutine PRINTMAT
end program matmult

