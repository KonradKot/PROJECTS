clear

x=linspace(-10,10,300)

cos_my=zeros(1,length(x));
cos_prog=zeros(1,length(x));

N=2;

for i=1:length(x)
  cos_my(i)=cos_simple(x(i),N);
  cos_prog(i)=cos(x(i));
end
plot(x,cos_my,'r*-')
hold
plot(x,cos_prog,'g')
grid on
title('przyblizenie cos szeregiem Taylora')