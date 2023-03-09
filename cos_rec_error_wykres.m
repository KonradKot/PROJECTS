clear
x=linspace(-5,5,1000);
N=input('podaj ilosc elementów: ');
abs_error=0.2;
y_my=zeros(1,length(x));
y_org=zeros(1,length(x));
iteracje=zeros(1,length(x));

for i=1:length(x)
  y_org(i)=cos(x(i));
  [y_my(i),iteracje(i)]=cos_rec_abs_error(x(i),abs_error,N);
endfor
subplot(2,1,1)
plot(x,y_org)
hold
plot(x,y_my,'k-')
ylim([-2 2]);
legend('ideal','Taylor')
grid
xlabel('x')
ylabel('y')
subplot(2,1,1)
plot(x,iteracje)
xlabel

