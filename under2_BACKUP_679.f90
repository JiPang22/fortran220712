program josephson_dynamic
implicit none
<<<<<<< HEAD
integer*4 k,j
real*4 tau,dtau,ph,dph,om,dom,eta,beta
open(1,file='aa')
do j=0,3
tau=0.;dtau=1.e-2;ph=1.;om=1.;eta=0.3*j;beta=4.
do k=0,12500
write(1,*) k*dtau,om
dom=eta/beta -sin(ph)/beta -om/beta
dph=om
=======
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
>>>>>>> f09585819115f741de041fb8d50b64679ad063fb
om=om+dom*dtau
dph=om
ph=ph+dph*dtau
enddo
write(1,*) ''
enddo
end
