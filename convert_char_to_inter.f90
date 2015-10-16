PROGRAM aa
IMPLICIT NONE
INTEGER(KIND=4) :: J
CHARACTER(LEN=3) :: Jstr
CHARACTER(LEN=10) :: output
output = 'example_'
DO J=1,10
! Convert integer J into a character Jstr with 3 columns
! 将字符串读入整数，接着将字符串向左对齐，然后接着将多余的空格删除,将格式变为3个
write(Jstr,"(I3.3)") J
write(*,*) TRIM(ADJUSTL(output))//Jstr
ENDDO
END PROGRAM aa

