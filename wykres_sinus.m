clear
close all 
   x = [-10:0.01:10];
   %x=linespqce(-10,10,200);
   y=zeros(1,length(x));
   for i=1:length(x)
     y(i)=x(i)*sin(x(i));
   end
   %y=x.*sin(x); %./.^
   plot(x,y,'r')
legend('wartości sinusa')
xlabel('argumenty')
ylabel('wartości')
title('przybliżenie sinusa')
hold on

grid on
