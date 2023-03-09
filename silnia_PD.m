clear
%
% program silnia
%
n=input('Podaj liczbê z której chcesz policzyæ silniê: ')
N=1
for i=1:n
  N=N*i;
end
fprintf('Wynik to:  %2.3f',N)