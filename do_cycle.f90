program usersqrt
implicit none
real :: a,b
do
print *,'enter positive real number(0 to stop)'
read *,a
if (a<0) then
print *,'this is negative'
cycle
else if (a==0)then
exit
else
b=sqrt(a)
print *,'sqrt=',b
end if
end do
end program usersqrt
