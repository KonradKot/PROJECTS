clear
%
% obliczanie r�wnania  kwadratowego
%

a=input('Podaj wsp�czynik a: ');
b=input('Podaj wsp�czynik b: ');
c=input('Podaj wsp�czynik c: ');


if (a==0) &&(b==0) &&(c==0)
  
disp('R�wnanie nieoznaczone');
end

if (a==0) &&( b==0)
  disp('R�wnanie sprzeczne')
end

if (a==0)
  x=-b/2*a;
  fprintf('R�wnanie ma jedno rozwi�zanie %2.3f',x)
end

delta=0;

delta=b^2-4*a*c;

if delta==0
  x=-b/2*a;
  fprintf('R�wnanie ma jedno rozwi�zanie %2.3f',x)
  
end
if delta < 0
  disp('brak rozwi�za� rzeczywistych')
endif

if delta>0
  x1=-b-sqrt(delta)/2*a;
  x2=-b+sqrt(delta)/2*a;
  fprintf('R�wnanie ma dwa rozwi�zania rzeczywiste %2.3f oraz %3.2f',x1,x2)
end
