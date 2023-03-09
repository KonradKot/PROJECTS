
function [ y,i ] =sin_rec_error(x,N,max_error)
  
  ai=x;%a0
  y=ai;%a0

  for i=1:N
    ai=-x^2/((2*i+1)*2*i)*ai;
    y=y+ai;
    if abs(ai)<max_error % abs- wartosc bezwzglendna
      break
      end
end
end
