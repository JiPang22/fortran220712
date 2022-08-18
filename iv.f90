program test

implicit none

integer*8 j,k,m,mmax ! loop count

real*8 t,vdc,dt,ic,v0,sumi,flux,pi,om ! flux is quantum magnetic flux

t=0;dt=1.e-2;flux=2.;ic=50.;vdc=1.;v0=1.;pi=4.*atan(1.);om=1. ! ps,fwb,uA

open(1,file='iv')

do j=0,10000

t=j*dt

write(1,*) vdc+v0*cos(om*t),ic*(sin(pi/2+2*pi*vdc*t/flux) + (2*pi*v0/(flux*om))*sin(om*t)*cos(pi/2+2*pi*vdc*t/flux)) 

enddo

end
