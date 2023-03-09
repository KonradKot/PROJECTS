x=input (' Podaj liczbê ') % wprowadza dane od u¿ytkownka
if x<0 
  y=-x;
   y=x;
end 

disp([' Wartoœæ bezwzglêdna z ' num2str(x) ' wynosi ' num2str(y)])   %num str2 zamienia liczbe na postac tekstowa
fprintf(' Wartoœæ bezwzglêdna z %f wynosi %5.0f. ',x,y) % za ten procent podstawiam pierwsza liczbe po przecinku