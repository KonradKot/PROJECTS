clear
% prog wykreslanie funkcji
x=-3:0.01:3;
N=length(x);
y=zeros(1,N);
for i=1:N
  y(i)=exp(x(i));
end
plot(x,y)
