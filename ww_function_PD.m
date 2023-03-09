## Copyright (C) 2020 HP
## 
## This program is free software: you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see
## <https://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} ww_function_PD (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: HP <HP@LAPTOP-UVAV1GS0>
## Created: 2020-12-14

function wynik = ww_function_PD (A,W)
%A=input('Podaj wspó³czyniki wielomianu : ');
%W=input('Podaj wartoœæ jak¹ chcesz policzyæ: ');

St=length(A);
wynik=0;
T=St;
for i=1:St
   T=T-1;
   suma=(A(i))*W^T;
   wynik=wynik+suma;
end

%fprintf('wartosc wielomianu to: %d', wynik );


endfunction
