clear
%
% program warto�� wielomianu
%
A=input('Podaj wsp�czyniki wielomianu : ');
W=input('Podaj warto�� jak� chcesz policzy�: ');

St=length(A);
wynik=0;
T=St;
for i=1:St
   T=T-1;
   suma=(A(i))*W^T;
   wynik=wynik+suma;
end

fprintf('wartosc wielomianu to: %d', wynik );