

function [y] = sin_rec_error_simple(x,N)
ai=x;
y=ai;

for i=1:N
  ai=-x^2/((2*i+1)*2*i)*ai;
  y=y+ai;
  if abs(ai)<0.001
    break
  end
end

end
