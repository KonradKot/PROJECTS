clear
%
% program wariancja macierzy
%

A=input(' podaj macierz: ');
wier=input(' podaj liczbê wierszy: ');
kol=input(' podaj liczbê kolumn: ');
suma=0;
srednia=1;
for i=1:wier
   for j=1:kol
   suma=suma+A(i,j);
   
 end
end
srednia=suma/(i*j);

wariancja = 0;

for i=1:wier
   for j=1:kol
   wariancja=wariancja+(A(i,j)-srednia)^2 ;
   
 end
end
wariancja=wariancja/(i*j);


fprintf('wariancja macierzy wynosi: %f',wariancja);
