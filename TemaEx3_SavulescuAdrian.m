%Tema_de_casa_EX3(programul nu functioneaza)
t=0:0.002:4;%rezolutia temporara
f=2;%f=1/T
tau=0.25;%durata unui nivel
T=0.5;%duty=(tau/T)*100
duty=50;
w=2*pi*f;
a=input('Introduceti nr de niveluri:')%in ceea ce urmeaza vom putea utiliza acest program pentru toate subpunctele a) b) c) d), citind de la tastatura "numarul de nivele" dorite si "nivelurile propriu-zise"
for i=1:a
    v(i)=input('Introduceti nivelul:')
end %creez un vector , ai carui elemente sa fie nivelurile semnalului

a=datasample(v,(4/0.002)+1);%folosind functia datasample extragem din vectorul v, 4/0.002+1=2001 elemente aleatoare(acelasi nr de elemente ca si rezolutia temporara t
%q=size(a);
y=square(w*t,duty);%semnalul dreptunghiular avand amplitudine 1
%g=size(y);
%am verificat dimensiunile vectorilor a si y pentru a le putea inmultii


x=a*y(:);%semnalul final, constituit din semnalul dreptunghiular inmultit cu amplitudinea 'a' care ne-ar fi dat semnalul multinivel
plot(t,x),axis([0 4 -2 2]); %reprezentare grafica

    



       
         