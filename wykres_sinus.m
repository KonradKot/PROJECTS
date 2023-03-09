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
legend('wartoœci sinusa')
xlabel('argumenty')
ylabel('wartoœci')
title('przybli¿enie sinusa')
hold on

grid on
