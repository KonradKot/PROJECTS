clear
%
%
%
A=input('podaj macierz A: ');
[wier_A,kol_A]=size(A);
B=input('podaj macierz B: ');
[wier_B,kol_B]=size(B);

if kol_A!=wier_B
disp('nie mo¿na wymnorzyæ macierzy !');
else
  C=zeros(wier_A,kol_B);
 
  for w=1:wier_A % dzia³aam w zd³u³ wiersza
   for k=1:kol_B  % w zd³urz kolumny
     for z=1:kol_A
       
    C(w,k)=C(w,k)+A(w,z)*B(z,k);
     
     end
   end
  end
  disp(C);
end