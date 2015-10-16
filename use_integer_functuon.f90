program gfc2
implicit none
integer :: a,b,gcf
integer,external :: getgcf
do
print *,'enter two inter(0 to stop)'
read *,a,b
if (a==0 .and. b==0)then
exit
else
gcf =getgcf(a,b)
print *,"least comon multiple",gcf
end if
end do
end program gfc2



integer function getgcf(x,y)result (z) 
implicit none
integer :: x,y,i,z
do i=1,min(x,y)
 if (mod(x,i)==0 .and. mod(y,i)==0) z=i
end do
end function getgcf
