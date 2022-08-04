program test

implicit none

integer*8 j,k,m,mmax ! loop count

real*8 vdc,dt,ic,v0,sumi,flux,pi ! flux is quantum magnetic flux

dt=1.e-2;flux=2.;ic=50.;vdc=1.;v0=1.;sumi=0.;mmax=20;pi=4.*atan(1.) ! ps,fwb,uA

open(1,file='rms')
open(2,file='it')
open(3,file='vt')

!do m=0,mmax ! k is voltege loop count
do k =0,1000
do j=0,int(flux/(v0*abs(k)*dt)) ! int(period) 
!do j=0,1000 ! int(period) 
! rms current
sumi=sumi+dt*(ic*sin(pi/2 + 2*pi*j*v0*k*dt/flux))**2 ! initial phase difference is pi/2
! write(2,*) j*dt,ic*sin(pi/2 + 2*pi*j*v0*k*dt/flux) ! dc voltege current
write(2,*) j*dt,ic*( sin(pi/2 + 2*pi*vdc*j*dt/flux) + (v0/vdc)*sin(2*pi*vdc*j*dt/flux)*cos(pi/2 + 2*pi*vdc*j*dt/flux)) ! dc ac voltege current
enddo
write(1,*) v0*k,sqrt(sumi/(flux/(v0*abs(k)))) ! rms current
write(2,*) ''
!sumi=0.
!enddo

end
