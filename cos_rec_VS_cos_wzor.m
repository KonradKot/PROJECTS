clear
close all
x=linspace(-10,10,1000);
N=input('number of elements: ')
y_my_rec=zeros(1,length(x));
y_my=zeros(1,length(x));
tic
for i=1:length(x)
  y_my(i)=cos_simple(x(i),N);
end
toc
tic
for i=1:length(x)
  y_my_rec(i)=cos_rec(x(i),N);
end
toc