%E1_Savulescu_Adrian
%a)
a=0:0.1:2
%vectorul a va avea 21 de elemente,deci vectorul b trebuie sa aiba tot
%21 elemente ca sa aiba sens inmultirea
b=linspace(1,1,21)
% cu aceasta functie il generez pe b avand 21 de elemente "1",dar am nevoie ca el sa fie coloana
b(:)%b se transforma din vector linie in vector coloana
%b)
b'*a%inmultirea celor 2 vectori/ b fiind coloana si a fiind linie, nu putem efectua inmultirea
%asa ca transpunem unul din cei 2 vectori(transpunere=din linie devine
%coloana sau coloana devine linie
%c)
a.*b %inmultire element cu element

