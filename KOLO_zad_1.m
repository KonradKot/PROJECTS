clear
A=input('Podaj macierz A: ');
[wier,kol]=size(A);
n=wier*kol;
B=zeros(1,n)
i=1;
for w=1:wier
  for k=1:kol
    if (A(w,k)>= 0)|(A(w,k)<=0)
      B(i)=A(w,k);
      i=i+1;
    end
  end
end
disp(B);