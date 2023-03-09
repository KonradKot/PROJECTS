clear
x=linspace(-10,10,1000);
N=input('number of elements: ')
max_abs_error=0.2;
y_my=zeros(1,length(x));
y_org=zeros(1,length(x));
iterations=zeros(1,length(x));

for i=1:length(x)
  y_org(i)=sin(x(i));
  [y_my(i),iterations(i)]=sin_rec_abs_error(x(i),max_abs_error,N);% abs wartosc bezwzgledna
  %[y_my(i),iterations(i)]=sin_rec_error(x(i),N,max_abs_error);
end
subplot(2,1,1)
plot(x,y_org);
hold
plot(x,y_my,'k-')
ylim([-2 2])
legend('ideal','Taylor')
grid
xlabel('x')
ylabel('y')
subplot(2,1,2)
plot(x,iterations)
grid
ylabel('iterations')
xlabel('x')