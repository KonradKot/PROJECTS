function [x2] =bin2frac( y )
  
x2=0;
%Program zamiania na liczbê
for i=1:length(y)
    x2 = x2 + y(i)*2^(-i);
   end
 end
