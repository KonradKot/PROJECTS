clear
%
%
%
A=input('podaj macierz A: ');
[wier_A,kol_A]=size(A);
B=input('podaj macierz B: ');
[wier_B,kol_B]=size(B);

if kol_A!=wier_B
disp('nie mo�na wymnorzy� macierzy !');
else
  C=zeros(wier_A,kol_B);
 
  for w=1:wier_A % dzia�aam w zd�u� wiersza
   for k=1:kol_B  % w zd�urz kolumny
     for z=1:kol_A
       
    C(w,k)=C(w,k)+A(w,z)*B(z,k);
     
     end
   end
  end
  disp(C);
end