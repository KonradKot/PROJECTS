clear
function [ y ]=sin_simple(X,N)
y=0;
  
for i=0:N;

y1 =((-1)^i)/factorial(2*i+1)*X^(2*i+1);
y=y+y1;

end
end
