clear
%
% Sprawdzanie czy z podanych odcinków mo¿na zbudowaæ trójk¹t i jaki to trójk¹y jest
%

a=input('Podaj d³ugoœæ odcinka a: ')
b=input('Podaj d³ugoœæ odcinka b: ')
c=input('Podaj d³ugoœæ odcinka c: ')

if (a<=0)|(b<=0)|(c<=0)
  disp('trójk¹t nie istnieje z podanych odcinków')
  
  else
  if (a+b<c)
    disp('trójk¹t nie istnieje z podanych odcinków')
    end
    if(a+c<b)|(b+c<a)
    disp('trójk¹t nie istnieje z podanych odcinków')
  end
    if(b-a>c)
      disp('trójk¹t nie istnieje z podanych odcinków')
      end
     if(c-b>a)|(c-a>b)
    disp('trójk¹t nie istnieje z podanych odcinków')
    
  
else
  
   disp('mo¿na zbudowaæ trójk¹t z podanych odcinków')
if (a==b)&&(a==c)&&(b==c)
      disp('trójk¹t jest równoboczny')
      else
  if (a==b)
    disp('trójk¹t jest równoramienny')
    end
    if(a==c)|(b==c)
    disp('trójk¹t jest równoramienny')
 else
  if (a^2+b^2==c^2)
    disp(' trójk¹t jest prostok¹tny')
    else
    if(a^2+c^2==b^2)|(c^2+b^2==a^2)
    disp(' trójk¹t jest prostok¹tny')
     else
   if (a^2 + b^2 < c^2)|(a^2 + c^2 < b^2)|(c^2 + b^2 < a^2)
    disp(' trójk¹t jest ostrok¹tny')
  else
    if (a^2 + b^2 > c^2)|(a^2 + c^2 > b^2)|(c^2 + b^2 > a^2)
    disp(' trójk¹t jest rozwartok¹tny')
  end
end
end
end
end
end
end
end

