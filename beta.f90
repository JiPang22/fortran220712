program beta
implicit none
integer*4 i
real*4 dbeta
dbeta=1.e-2
open(1,file='aa')
do i=1,1000
write(1,*) i*dbeta,2*(i*dbeta)**(-1/2)
write(*,*) i*dbeta,2/sqrt(i*dbeta)
enddo
end
