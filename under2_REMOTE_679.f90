program underdynamic
implicit none
integer i,j
real dtau,ph,dph,om,dom,eta,beta
dtau=1.e-2;beta=0.5
open(1,file='aa')

do j=1,5
ph=1.;om=1.
eta=0.2*j
do i=1,12500
write(1,*) i*dtau,om
dom=-(1/beta)*om-(1/beta)*sin(ph)+eta
om=om+dom*dtau
dph=om
ph=ph+dph*dtau
enddo
write(1,*) ''
enddo
end
