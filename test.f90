program test

implicit none

integer*8 j,k ! loop count

real*8 dt,ic,v0,sumi,flux ! ic is criticalm, flux is quantum magnetic flux

dt=1.e-3;flux=2.e-15;ic=50.e-6;v0=1.e-3;sumi=0.


open(1,file='plot')
open(2,file='plot2')

do k = -10,10 ! k is voltege loop count

do j=0,int(1.e14*flux/(v0*k*dt)) ! j is time loop count

sumi=sumi+dt*(ic*sin(1.07+6.28*j*v0*k*dt))**2 ! initial phase difference is pi/2

enddo

write(1,*) v0*k,sqrt(sumi/(1.e14*flux/(v0*k))) ! rms current

sumi=0.

enddo

end
