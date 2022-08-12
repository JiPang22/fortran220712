program under
implicit none
integer*4 m,k,kmax
real*4 pi,sumv,alpha,r,c,t,dt,phi,dphi,om,dom,flux,eta,tau,ic,dtau
pi=1.*cos(-1.)
ic=100.e-2;t=0.;dt=1.e-15;phi=1.;om=1.;flux=2.e-15
r=1.;c=1.e-15
eta=0.1;dtau=dt*2*pi*ic*r/flux
kmax=2000;sumv=0.;alpha=2*pi*r**2 *c/flux
open(1,file='om')
open(2,file='anal')
dtau=dt*2*pi*ic*r/flux
do m=1,1000
do k=1,kmax
!write(1,*) k*dtau,2*pi*om/flux
eta=1.+0.1*m
write(1,*) k*dtau, om
!sumv=sumv+dtau*2*pi*om/flux
dom=eta-sin(phi)
dphi=om
om=om+dom*dtau
phi=phi+dphi*dtau
enddo
write(1,*) ''
write(2,*) eta,eta*sqrt(1-eta**(-2))
enddo

end
