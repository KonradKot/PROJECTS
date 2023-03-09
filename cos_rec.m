
function [ y ] = cos_rec (x,N)
  ai=1;%a0
  y=ai;%a0
  
  for i=1:N
    %
    ai=-x^2/((2*i-1)*2*i)*ai; %a1, a2, a3...
    y=y+ai;
end
end