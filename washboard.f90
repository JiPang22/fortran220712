program washboard
integer*4 i,j
real*4 du,u,e,phi,eta,it,ic
ic=100.e-6;it=100.e-6*0.1
dphi=1.e-1;phi=0.;eta=j*it/ic;e=2.e-15*ic/(2.*acos(-1.))

open(1,file='aa')
do j=0,5
do i=1,500
phi=i*dphi
eta=j*it/ic
u=e*(1-cos(phi)-eta*phi)
!phi/2pi, u/ej
!write(1,*) phi/(2*acos(-1.)),u/e
enddo
du=2.*(sqrt(1.-eta**2)-eta*acos(eta))
write(1,*) eta,du 
enddo
end
