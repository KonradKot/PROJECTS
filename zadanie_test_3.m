clear
L=input('podaj L: ');
A=zeros(1,L);
A(1)=0;
S=0;
 for i=1:L
   A(i)=A(i)+i;
   S=S+A(i);
 end
disp(S);