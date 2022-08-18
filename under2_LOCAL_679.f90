program josephson_dynamic
implicit none
integer*4 k,j
real*4 tau,dtau,ph,dph,om,dom,eta,beta
open(1,file='aa')
do j=0,3
tau=0.;dtau=1.e-2;ph=1.;om=1.;eta=0.3*j;beta=4.
do k=0,12500
write(1,*) k*dtau,om
dom=eta/beta -sin(ph)/beta -om/beta
dph=om
om=om+dom*dtau
ph=ph+dph*dtau
enddo
write(1,*) ''
enddo

end
