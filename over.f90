program over
implicit none
integer*4 i,j,k
real*4 sumv,tau,dtau,ph,dph,om,dom,eta,beta
dtau=1.e-2;beta=1.e2
open(1,file='aa')
do k=1,5
beta=10.**(k-3)
do j=0,100
ph=1.;om=1.
eta=0.1*j-5.
sumv=0.
do i=0,1000
!write(1,*) i*dtau,om
sumv=sumv+om*dtau
dom=eta/beta -sin(ph)/beta -om/beta
dph=om
om=om+dom*dtau
ph=ph+dph*dtau
enddo
!write(1,*) ''
write(1,*) sumv/10.,eta
enddo
write(1,*) ''
enddo
end
