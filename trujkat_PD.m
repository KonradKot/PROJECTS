clear
%
% Sprawdzanie czy z podanych odcink�w mo�na zbudowa� tr�jk�t i jaki to tr�jk�y jest
%

a=input('Podaj d�ugo�� odcinka a: ')
b=input('Podaj d�ugo�� odcinka b: ')
c=input('Podaj d�ugo�� odcinka c: ')

if (a<=0)|(b<=0)|(c<=0)
  disp('tr�jk�t nie istnieje z podanych odcink�w')
  
  else
  if (a+b<c)
    disp('tr�jk�t nie istnieje z podanych odcink�w')
    end
    if(a+c<b)|(b+c<a)
    disp('tr�jk�t nie istnieje z podanych odcink�w')
  end
    if(b-a>c)
      disp('tr�jk�t nie istnieje z podanych odcink�w')
      end
     if(c-b>a)|(c-a>b)
    disp('tr�jk�t nie istnieje z podanych odcink�w')
    
  
else
  
   disp('mo�na zbudowa� tr�jk�t z podanych odcink�w')
if (a==b)&&(a==c)&&(b==c)
      disp('tr�jk�t jest r�wnoboczny')
      else
  if (a==b)
    disp('tr�jk�t jest r�wnoramienny')
    end
    if(a==c)|(b==c)
    disp('tr�jk�t jest r�wnoramienny')
 else
  if (a^2+b^2==c^2)
    disp(' tr�jk�t jest prostok�tny')
    else
    if(a^2+c^2==b^2)|(c^2+b^2==a^2)
    disp(' tr�jk�t jest prostok�tny')
     else
   if (a^2 + b^2 < c^2)|(a^2 + c^2 < b^2)|(c^2 + b^2 < a^2)
    disp(' tr�jk�t jest ostrok�tny')
  else
    if (a^2 + b^2 > c^2)|(a^2 + c^2 > b^2)|(c^2 + b^2 > a^2)
    disp(' tr�jk�t jest rozwartok�tny')
  end
end
end
end
end
end
end
end

