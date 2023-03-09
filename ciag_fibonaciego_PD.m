clear
%
% ci¹g fibonaciego
%
n=input('podaj wyraz ci¹gu, który chcesz ptrzymaæ');

A(1)=1;
A(2)=1;

for i=3:n
  A(i)=A(i-2)+A(i-1);
  
  
  end

disp(A(i));