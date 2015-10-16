program vectormath
implicit none
real, dimension(5) :: a = (/ 1.0, 2.0, 3.0, 4.0, 5.0 /), b = 2.0, c
real :: x
print *, 'a = ', a
c = a+ 1
print *, 'a + 1 =', c
c = 2* a
print *, '2 * a =', c
c = a* a
print *, 'a * a =', c
c = sqrt(a)
print *, 'sqrt(a) =', c
c = sin(a)
print *, 'sin(a) =', c
c = exp(a)
print *, 'exp(a) =', c
print *, 'b =', b
c = a + b
print *, 'a + b =', c
c = a * b
print *, 'a * b =', c
x = sum(a)
print *, 'sum(a) =', x
c = a
c(4:5) = 0.0
print *, 'a with two zeros on end =', c
x = dot_product(a, b)
print *, 'a dot b =', x
x = sum( (a - sum(a)/5. )**2)
print *, 'sum of squares of difference from mean = ', x
end program vectormath

