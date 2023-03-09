clear
A=input('Podaj macierz A: ');
[wier,kol]=size(A);
%B=zeros(length(A));
S=0;
n=0;
for w=1:wier
  for k=1:kol
    if A(w,k)<0
      n=n+1;
    end
  end
end

B=zeros(1,n);
i=1;
for w=1:wier
  for k=1:kol
    if A(w,k)<0
   B(i)=A(w,k);
   S=S+B(i);
   i=i+1;
   end
 end
end

if (S>0|S==0)
  disp('W macierzy nie ma elemetów ujemnych');
 end
disp(B);