x=input (' Podaj liczb� ') % wprowadza dane od u�ytkownka
if x<0 
  y=-x;
   y=x;
end 

disp([' Warto�� bezwzgl�dna z ' num2str(x) ' wynosi ' num2str(y)])   %num str2 zamienia liczbe na postac tekstowa
fprintf(' Warto�� bezwzgl�dna z %f wynosi %5.0f. ',x,y) % za ten procent podstawiam pierwsza liczbe po przecinku