
function [y,i] = cos_rec_abs_error (x,abs_error)
ai=1;
y=ai;
i=1;
while abs(ai)>abs_error
  y=y+ai;
  ai=-x^2/((2*i-1)*2*i)*ai;
  i=i+1;
end
i=i-1;
end
