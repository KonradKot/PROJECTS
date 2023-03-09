clear
%
% iloczyn skalarny
%


A=input('podaj wektor A: ');
B=input('podaj wektor B: ');
N=length(A);
iloczyn_suma=0;
iloczyn_sk=0;
for i=1:N
  iloczyn_sk = A(i) * B(i);
  iloczyn_suma=iloczyn_suma+iloczyn_sk;
  
end
fprintf('Wynik to: %f,',iloczyn_suma);