function [y] = frac2bin(x,N)
y=zeros(1,N);
for i=1:N;
  x=x*2;
  if x>=1;
    y(i)=1;
    x=x-1;
end
end
end
