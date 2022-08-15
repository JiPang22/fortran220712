program aa
integer*4 j,k
real*4 t,dt,v,dv,ph,dph,i,alpha
dt=1.e-2;t=0.;v=1.;ph=1.;i=1.;alpha=1.
open(1,file='aa')
do k=1,5
dt=1.e-2;t=0.;v=1.;ph=1.;i=1.;alpha=0.5*k
do j=0,1000
write(1,*) v, ph
dv=i-alpha*v-sin(ph)
dph=v
v=v+dv*dt
ph=ph+dph*dt
enddo
write(1,*) ''
enddo
end
