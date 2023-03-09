clear
Wier=input('liczba wierszy');
Kol=input('liczba kolumn');
x=zeros(Wier,Kol);

for w=1:Wier
  for k=1:Kol
    x(w,k)=input('podaj liczbe:');
  end
end
disp(x)

max=(0,0);
indeks=1;

for i=2;Wier
  if x(Wier,Kol)>max
    max=x(Wier,Kol);
    indeks=Wier,Kol;
  end
end
fprintf('Wartosc maksymalna: %f,',max);