%
% warto�c �rednia element�w wektora
%

N=input('liczba element�w');
 x=zeros(1,N); % (tworzy wektor z n zer) tworzy macierz macierz przez co program szybciej dzia�a
 S=0;
 for i=1:N
  
  x(i)=input('podaj liczbe');
  % wpisuujemy po jednej liczbie przy ka�dym przej�ciu p�tli
  S=S+x(i);
 endfor
 srednia=S/N;
disp (x)
disp (srednia)
fprintf('Srednia artmetyczna wynosi %f.',S/N)%mo�na te� tak

% tak lepiej robi� 

X=input('podaj wektor');
 N=length(X);
 S=0;
 for i=1:N
  
  x(i)=input('podaj liczbe');
  % wpisuujemy po jednej liczbie przy ka�dym przej�ciu p�tli
  S=S+x(i);
 endfor
 srednia=S/N;
disp (x)
disp (srednia)
fprintf('Srednia artmetyczna wynosi %f.',S/N)%mo�na te� tak
