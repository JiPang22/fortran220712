program washboard
integer*4 i,j
real*4 du,u,e,phi,eta,it,ic
ic=100.e-6;it=100.e-6*0.1
dphi=5.e-2;phi=0.;eta=j*it/ic;e=2.e-15*ic/(2.*acos(-1.))

open(1,file='aa')
do j=0,55
eta=1.+0.1*j
write(1,*) sqrt(eta**2 -1),eta
enddo
end
