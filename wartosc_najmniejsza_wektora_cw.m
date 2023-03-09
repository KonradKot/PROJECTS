clear
%
% wartoœæ najwiêksza wektora,
%

x=input('podaj wektor');
 n=length(x);
 max=x(1);
 max_ind=1;
 
 for i=2:n
  
 if x(i)>max
   max=x(i);
   max_ind=i;
   end
 
  
 end
 fprintf('Maksimum wynosi x(%d)=%f',max_ind,max)
