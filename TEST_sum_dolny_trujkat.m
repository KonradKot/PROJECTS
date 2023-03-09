clear
A=input('Podaj macierz A: ');

[wier,kol]=size(A);
S=0;
if wier==kol
  for w=1:wier
    for k=1:kol
      if w>k
        S=S+A(w,k);
      end
    end
  end
  disp(S);
else
  disp('macierz nie jest kwadratowa');
end
