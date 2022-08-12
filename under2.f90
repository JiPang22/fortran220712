program underdynamic
implicit none
integer*4 i,j
real*4 tau,dtau,ph,dph,om,dom,eta,beta
tau=0.;dtau=1.e-2;ph=1.;om=1.;eta=1.5;beta=10.
open(1,file='aa')
do j=0,10
do i=0,2000
write(1,*) tau,om
dom=eta/beta -sin(ph)/beta -om/beta
dph=om
tau=tau+i*dtau
om=om+dom*dtau
ph=ph+dph*dtau
enddo
write(1,*) ''
enddo

end
