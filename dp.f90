program dp
implicit none
integer*4 i
real*4 t,dt,th1,dth1,th2,dth2,om1,dom1,om2,dom2,m1,m2,l1,l2,g

open(1,file='th')
open(2,file='dom')
open(3,file='thom')

th1=0.;th2=0.;om1=0.;om2=0.;dom1=0.;dom2=1.;dt=1.e-2;g=10.;m1=1.;m2=1.;l1=1.;l2=1.

do i=0,1000
t=i*dt
dom1=-dom2*m2*l2*cos(th1-th2)/((m1+m2)*l1)-m2*l2*om2**2*sin(th1-th2/((m1+m2)*l1))-g*sin(th1)/l1
dom2=-dom1*cos(th1-th2)+l1*om1**2*sin(th1-th2)/l2-g*sin(th2)/l2
dth1=om1+dom1*dt
dth2=om2+dom2*dt
write(1,*) t,th1
write(2,*) t,dom1
write(3,*) th1,om1
!if (mod(i,100000) .eq. 0 ) then
!write(3,*) ''
!endif
om1=om1+dom1*dt
om2=om2+dom2*dt
th1=th1+dth1*dt
th2=th2+dth2*dt

enddo
write(1,*) ''
write(2,*) ''
write(3,*) ''
do i=0,1000
t=i*dt
dom1=-dom2*m2*l2*cos(th1-th2)/((m1+m2)*l1)-m2*l2*om2**2*sin(th1-th2/((m1+m2)*l1))-g*sin(th1)/l1
dom2=-dom1*cos(th1-th2)+l1*om1**2*sin(th1-th2)/l2-g*sin(th2)/l2
dth1=om1+dom1*dt
dth2=om2+dom2*dt
write(1,*) t,th2
write(2,*) t,dom2
write(3,*) th2,om2
!if (mod(i,100000) .eq. 0 ) then
!write(3,*) ''
!endif
om1=om1+dom1*dt
om2=om2+dom2*dt
th1=th1+dth1*dt
th2=th2+dth2*dt

enddo

end
