program main

    implicit none
    real(8) :: aaa(2,1),bbb(2,1),ccc(1,1)
    real(8) :: sss(1)
    integer :: rank,lwork,work(100),info
    lwork=100
    aaa=reshape(  (/1,2/),         (/2,1/)  )
    bbb=reshape(  (/1.1,2.1/),     (/2,1/)  )

    call dgelss( 2, 1, 1, aaa, 2, bbb, 2, sss, 0.0d0, rank, work, lwork ,info )
    ccc=bbb(1,1)
    print *,ccc

end program
