function [ y ]=cos_simple(x,N)
y=0;
for i=1:N
a1=((-1)^i)/factorial(2*i)*x^(2*i);
y=y+a1;
end
end
