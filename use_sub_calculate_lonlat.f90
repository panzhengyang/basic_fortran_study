program userdist
implicit none
real :: lat1,lon1,lat2,lon2,del,azi
do
print *,'Enter 1st point lat, lon'
read *,lat1,lon1
print *,'Enter 2nd point lat, lon'
read *,lat2,lon2
call SPH_AZI(lat1, lon1, lat2, lon2, del, azi)
print *, 'del,azi =',del,azi
end do
end program userdist
! SPH_AZI computes distance and azimuth between two points on sphere
!
! Inputs: flat1 = latitude of first point (degrees)
!         flon2 = longitude of first point (degrees)
!         flat2 = latitude of second point (degrees)
!         flon2 = longitude of second point (degrees)
! Returns: del= angular separation between points (degrees)
!          azi= azimuth at 1st point to 2nd point, from N (deg.)
!
! Notes:
!
! (1) applies to geocentric not geographic lat,lon on Earth
!
! (2) This routine is inaccurate for del less than about 0.5 degrees.
!     For greater accuracy, use double precision or perform a separate
!     calculation for close ranges using Cartesian geometry.
!
subroutine SPH_AZI(flat1, flon1, flat2, flon2, del, azi)
implicit none
real :: flat1,flon1,flat2,flon2,del,azi,pi,raddeg,theta1,theta2,phi1,phi2,stheta1,stheta2,ctheta1,ctheta2,sang,cang,ang,caz,saz,az
if ( (flat1 == flat2 .and. flon1 == flon2) .or.(flat1 == 90. .and. flat2 == 90.) .or.(flat1 == -90. .and. flat2 == -90.) ) then
del=0.
azi=0.
return
end if
pi=3.141592654
raddeg=pi/180.
theta1=(90.-flat1)*raddeg
theta2=(90.-flat2)*raddeg
phi1=flon1*raddeg
phi2=flon2*raddeg
stheta1=sin(theta1)
stheta2=sin(theta2)
ctheta1=cos(theta1)
ctheta2=cos(theta2)
cang=stheta1*stheta2*cos(phi2-phi1)+ctheta1*ctheta2
ang=acos(cang)
del=ang/raddeg
sang=sqrt(1.-cang*cang)
caz=(ctheta2-ctheta1*cang)/(sang*stheta1)
saz=-stheta2*sin(phi1-phi2)/sang
az=atan2(saz,caz)
azi=az/raddeg
if (azi.lt.0.) azi=azi+360.
end subroutine SPH_AZI
