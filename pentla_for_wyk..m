clear

 N=input('liczba elementów');
 x=zeros(1,N); % (tworzy wektor z n zer) tworzy macierz macierz przez co program szybciej dzia³a
 
 for i=1:N
  
  x(i)=input('podaj liczbe');
  % wpisuujemy po jednej liczbie przy ka¿dym przejœciu pêtli
 endfor
disp (x)