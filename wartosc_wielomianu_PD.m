clear
%
% program wartoœæ wielomianu
%
A=input('Podaj wspó³czyniki wielomianu : ');
W=input('Podaj wartoœæ jak¹ chcesz policzyæ: ');

St=length(A);
wynik=0;
T=St;
for i=1:St
   T=T-1;
   suma=(A(i))*W^T;
   wynik=wynik+suma;
end

fprintf('wartosc wielomianu to: %d', wynik );