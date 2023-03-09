% cos tablicowanie i wykres
clear

x=linspace(-5,5,200);

cosinus_my=zeros(1,length(x));
cosinus_prog=zeros(1,length(x));
N=3;
for i=1:length(x)
  cosinus_my(i)=cos_simple(x(i),N);%x(i),N wstawiam nowe argumenty z tego programu
  cosinus_prog(i)=cos(x(i));
end

plot(x,cosinus_my,'r*-')
hold
grid on
plot(x,cosinus_prog,'b')
