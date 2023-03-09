clear

x=input('podaj liczbe z przecinkiem: ');
N=input('podaj ilosc bitów: ');

xwek=(0:0.001:x);


for i=0.001:0.001:N
  if (x*2)<1
  x=x*2;
  x2wek(i)=0;w
else
 x=x*2;
 x=x-1;
 x2wek(i)=1;
 end
 end
 
plot(xwek,x2wek)