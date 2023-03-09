clear

x=linspace(-10,10,200);

sinus_my=zeros(1,length(x));
sinus_prog=zeros(1,length(x));
N=3;
for i=1:length(x)
  
  sinus_prog(i)=sin(x(i));
  sinus_my(i)=sin_simple(x(i),N);
  
end
plot(x,sinus_prog)
hold on
plot(x,sinus_my,'g*-')

ylim([-4 2.5])%% wykd³u¿a granice wykresu w górê i w dó³
legend('ideal','przyblizenie Taylora')
grid
xlabel('x')
ylabel('y')