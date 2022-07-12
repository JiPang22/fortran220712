program josephson
implicit none
complex j
integer i,imax
real dt, e, har, v, ph, dph, ic,o,a,b
imax=100
dt=0.01
e=1.6e-19
har=1.e-34
v=1.
ic=1.
ph=1.
j=(0,1)
a = cos(j*ph)
b = sin(j*ph)
o = sqrt(a**2 +b**2)
open(1,file='aa')
open(2,file='bb')
open(3,file='cc')
do i=0,imax
write(1,*) i*dt, ph
write(2,*) ph, o
write(3,*) a,b
write(*,*) a,b
a = cos(j*ph)
b = sin(j*ph)

dph=2*e*v/har
ph=ph+dph*dt
enddo
end
