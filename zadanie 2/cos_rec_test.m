function [ y ] = cos_rec_test(x,N)
  ai=1;
  y=ai;
  
  for i=1:N
    %
    ai=-x^2/((2*i-1)*2*i)*ai;
    y=y+ai;
    % (-1)^n*x^2n)/(2n!)*((2n-2)!)/(-1)^(n-1)*x^(2n-2)
    %silnie siê skracaj¹ a potêgi odejmuj¹
    %otrzymujemy wzór rekurencyjny
    end
end
