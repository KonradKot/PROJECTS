function [ y ] = cos_rec_test(x,N)
  ai=1;
  y=ai;
  
  for i=1:N
    %
    ai=-x^2/((2*i-1)*2*i)*ai;
    y=y+ai;
    % (-1)^n*x^2n)/(2n!)*((2n-2)!)/(-1)^(n-1)*x^(2n-2)
    %silnie siê skracaj¹ a potêgi odejmuj¹
    %otrzymujemy wzór rekurencyjny
    end
end
% nie mog³em za³¹czyæ dwóch plików do e-kursów
clear
x=input('podaj x: ');
N=input('podaj ilosc iteracji: ');
y_my=zeros(1,length(x));
y_org=zeros(1,length(x));

for i=1:length(x)
  y_org(i)=cos(x(i));
  y_my(i)=cos_rec_test(x(i),N);
  blad=abs(y_org(i)-y_my(i))/y_my(i)*100;
end
disp(x);
disp(blad);