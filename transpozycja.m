disp('transpozycja');
a=input('podaj macierz: ');
[m,n]=size(a);
i=1;
j=1;
c=zeros(m,n);
for j=1:n
   for i=1:m
      c(j,i)=a(i,j);
   end
end
disp(c)