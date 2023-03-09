%
% minumum macierzy z indeksem
%
clear
x=input('podaj macierz: ');
[wier,kol]=size(x);
min=x(1,1);% wartosc (1,1) w macierzy
ind_w=1;
ind_k=1;
for w=1:wier
  for k=1:kol
    if x(w,k)<min; % czy element np. (2,3) jest mniejszy od elementu poprzedniego
     min=x(w,k); %zaznczam wartoœæ minimaln¹
     ind_w=w;%zaznaczam indeksy
     ind_k=k;
    end
  end
end
fprintf(' wartosæ minimalna: %d ',min);
fprintf(' miejsce: %d ',ind_w,ind_k);