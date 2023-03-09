clear 
close all %zamyka wszystkie ostanie rysunki
x=[0.01:0.001:0.99];
N=3;

y=zeros(1,length(x));
for i=1:length(x)
  wector_bin=frac2bin(x(i),N);
  y(i)=bin2frac(wector_bin);
  blad_bezwz(i)=abs(y(i)-x(i));
end
plot(x,y,'r:*')
legend('przyblizenie','idealny')
xlabel('os X')
ylabel('os Y')
title('Tytul')
hold on
plot(x,x,'k') % k - czarny
grid %siatka
figure
subplot(2,1,1)% podziele nam okno na dwa podwykresy
plot(x,blad_bezwz)
subplot(2,1,2)
semilogy(x,blad_bzwz)%wykres pó³logarytmicnej