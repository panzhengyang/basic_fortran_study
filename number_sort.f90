program sort3
implicit none
real :: a1, a2, a3
call read_numbers
call sort_numbers
call print_numbers
contains

subroutine read_numbers
print *,'Enter three numbers'
read *, a1, a2, a3
end subroutine read_numbers

subroutine sort_numbers
if (a1 > a2) call swap(a1,a2)
if (a1 > a3) call swap(a1,a3)
if (a2 > a3) call swap(a2,a3)
end subroutine sort_numbers

subroutine print_numbers
print *,'The sorted numbers are:'
print *, a1, a2, a3
end subroutine print_numbers


subroutine swap(x,y)
real :: x, y, temp
temp = x
x = y
y = temp
end subroutine swap
end program sort3

