program rcsj_model

implicit none

integer*8 j,k

real*8 t,dt,ph,dph,phdot,dphdot,flux,r,c,i,ic


t=0.;dt=0.001;ph=0.1;phdot=0.1;flux=2.e-15;r=1.e3;c=1.e-4;i=0.0001;ic=0.0001

open(1,file='plot')


do k=0,1000

write(1,*) (flux/6.28)*phdot,i 

write(*,*) (flux/6.28)*phdot,i

dph=phdot;dphdot=-(1/r*c)*phdot+(6.28/c*flux)*(i*j-ic*sin(ph))

t=t+dt;ph=ph+dph*dt;phdot=phdot+dphdot*dt

enddo


end
