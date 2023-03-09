clear
A=input('podaj macierz A: ');
[wier,kol]=size(A);
S=0;
for w=1:wier
  for k=1:kol
    if (mod(A(w,k),2)!=0)
      S=S+A(w,k);
    end
  end
end
disp(S);