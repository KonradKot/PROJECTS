clear
%
% obliczanie równania  kwadratowego
%

a=input('Podaj wspó³czynik a: ');
b=input('Podaj wspó³czynik b: ');
c=input('Podaj wspó³czynik c: ');


if (a==0) &&(b==0) &&(c==0)
  
disp('Równanie nieoznaczone');
end

if (a==0) &&( b==0)
  disp('Równanie sprzeczne')
end

if (a==0)
  x=-b/2*a;
  fprintf('Równanie ma jedno rozwi¹zanie %2.3f',x)
end

delta=0;

delta=b^2-4*a*c;

if delta==0
  x=-b/2*a;
  fprintf('Równanie ma jedno rozwi¹zanie %2.3f',x)
  
end
if delta < 0
  disp('brak rozwi¹zañ rzeczywistych')
endif

if delta>0
  x1=-b-sqrt(delta)/2*a;
  x2=-b+sqrt(delta)/2*a;
  fprintf('Równanie ma dwa rozwi¹zania rzeczywiste %2.3f oraz %3.2f',x1,x2)
end
