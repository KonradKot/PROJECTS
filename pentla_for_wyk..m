clear

 N=input('liczba element�w');
 x=zeros(1,N); % (tworzy wektor z n zer) tworzy macierz macierz przez co program szybciej dzia�a
 
 for i=1:N
  
  x(i)=input('podaj liczbe');
  % wpisuujemy po jednej liczbie przy ka�dym przej�ciu p�tli
 endfor
disp (x)