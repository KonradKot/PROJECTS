%
% zamiana na bostaæ binarn¹
%
x=input('podaj liczbe natualn¹');
x_ref=x;
i=1;
c=0;
while x>0
  new_bit=mod(x,2)
  c(i)=new_bit;
  x=(x-new_bit)/2;
  i=i+1;
end
c=c(end:-1:1);
disp(c)


dec2bin(x_ref);