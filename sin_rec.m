
function [ y ]= sin_rec (x,N)
  ai=x;%a0
  y=ai;%a0

  for i=1:N
    ai=-x^2/((2*i+1)*2*i)*ai;
    y=y+ai;
  end
end
