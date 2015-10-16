program namebase
implicit none
integer, parameter :: nmax=3
type person
character (len=20) :: name
integer :: age
real :: height, weight
end type person
type(person), dimension(nmax) :: student
integer :: i
real :: weightmin
do i = 1, nmax
print *, 'Enter first name, age, height, weight (e.g., Bob 27 69 183)'
read *, student(i)%name,& 
student(i)%age,& 
student(i)%height,& 
student(i)%weight
enddo
print *, 'Lightest student =', student(minloc(student%weight))%name
print *, 'Oldest student =', student(maxloc(student%age))%name
end program namebase

