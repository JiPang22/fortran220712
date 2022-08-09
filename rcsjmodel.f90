program rcsj_model
implicit none
integer*4 m,k,kmax
real*4 alpha,r,c,t,dt,phi,dphi,om,dom,flux,eta,tau,ic,dtau
ic=100.e-6;t=0.;dt=1.e-2;phi=0.;om=0.;flux=2.e-15;r=1.e3;c=1.e-15
eta=0.1;alpha=1/(10*acos(-1.));dtau=dt/(((flux)/(2*acos(-1.)*ic*r))

open(1,file='iv')
open(2,file='it')
do m=1,10
do k=1,kmax
eta=0.1*m
sumv=sumv+dtau*(flux*om)/(2*acos(-1.)*1.e-3)
write(2,*) tau,eta
dom=eta-sin(phi)-alpha*om
dphi=om
om=om+dom*dtau
phi=phi+dphi*dtau
enddo
write(1,*) sumv/(kmax*dtau),eta
write(1,*) ''
write(2,*) ''
enddo

end
