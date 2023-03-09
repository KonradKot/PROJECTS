clear
%
%  program potêgowanie macierzy
%

A=input('wpisz macierz któr¹ chcesz potêgowaæ: ');
c=input('do której potêgi?: ');
[wier,kol]=size(A);

if c==0
  fprintf('brak rozwi¹zañ!');
  else
if c > 0
  for i=1:wier
    fprintf(' inf %d',i);
    for j=1:kol
      if A(i,j) == 0
       fprintf(' inf %d',j);

        else
      A(i,j)=A((i),(j)).^c;
    end
  end
end
else

if c < 0
  for i=1:wier
    fprintf('inf %d',i);
    for j=1:kol
      if A(i,j) == 0
      fprintf('inf %d',j);
        
        else
        A(i,j)=A((i),(j)).^(c);
      end
    end
  end
end
end
end
disp(A);