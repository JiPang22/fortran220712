program underdynamic
implicit none
integer*4 i,j
real*4 tau,dtau,ph,dph,om,dom,eta,beta
dtau=1.e-2;beta=1.e-3
open(1,file='aa')

do j=26,30
ph=1.;om=1.
eta=0.2*j
do i=0,0
write(1,*) i*dtau,om
!dom=eta/beta -sin(ph)/beta -om/beta
dph=om
om=eta-sin(ph)
ph=ph+dph*dtau
enddo
write(1,*) ''
enddo

do j=6,10
ph=1.;om=1.
eta=0.2*j
do i=1,2000
write(1,*) i*dtau,om
!dom=eta/beta -sin(ph)/beta -om/beta
dph=om
om=eta-sin(ph)
ph=ph+dph*dtau
enddo
write(1,*) ''
enddo
end
