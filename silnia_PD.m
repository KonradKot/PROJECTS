clear
%
% program silnia
%
n=input('Podaj liczb� z kt�rej chcesz policzy� silni�: ')
N=1
for i=1:n
  N=N*i;
end
fprintf('Wynik to:  %2.3f',N)