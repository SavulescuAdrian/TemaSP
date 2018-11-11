%Tema_de_casa_Ex_2
%2ms
i=input('Cate perioade vreti sa apara in reprezentarea grafica?')%citesc de la tastatura o variabila in care sa stochez numarul de perioade pe care vrea sa le reprezint grafic
t=0:0.002:5*i; %rezolutia temporara
f=0.2;%f=1/T,T=5s;
w=2*pi*f*t;%pulsatie
xmax=0.6 ;%panta este egala cu 1.pentru xmax=1, panta ar fi fost egala cu 3/5
%astfel avem nevoie ca scaderea x2-x1=3, deci xmax=cat la suta din 5 este
%egal cu 3( xmax este un numar cuprins intre 0 si 1)
nivel_maxim=1;
nivel_minim=-2;
a=(nivel_maxim-nivel_minim)/2;%amplitudine
cc=0.5;%componenta continua
x=a*sawtooth(w,0.6)-cc;%functie semnal triunghiular
subplot(221);%functia subplot imi imparte fereastra grafica in 4 miniferestre( o matrice cu 2 linii si 2 coloane)
plot(t,x),grid,xlabel('t[s]'),ylabel('x[t]'),axis([0 5*i -3 2]),title('2ms');

%20ms
i=input('Cate perioade vreti sa apara in reprezentarea grafica?')
t=0:0.02:5*i; %rezolutia temporara
f=0.2;%f=1/T,T=5s;
w=2*pi*f*t;%pulsatie
xmax=0.6 ;%panta este egala cu 1.pentru xmax=1, panta ar fi fost egala cu 3/5
%astfel avem nevoie ca scaderea x2-x1=3, deci xmax=cat la suta din 5 este
%egal cu 3( xmax este un numar cuprins intre 0 si 1)
nivel_maxim=1;
nivel_minim=-2;
a=(nivel_maxim-nivel_minim)/2;%amplitudine
cc=0.5;%componenta continua
x=a*sawtooth(w,0.6)-cc;%functie semnal triunghiular
subplot(222);%functia subplot imi imparte fereastra grafica in 4 miniferestre( o matrice cu 2 linii si 2 coloane)
plot(t,x),grid,xlabel('t[s]'),ylabel('x[t]'),axis([0 5*i -3 2]),title('20ms');

%200ms
i=input('Cate perioade vreti sa apara in reprezentarea grafica?')
t=0:0.2:5*i; %rezolutia temporara
f=0.2;%f=1/T,T=5s;
w=2*pi*f*t;%pulsatie
xmax=0.6 ;%panta este egala cu 1.pentru xmax=1, panta ar fi fost egala cu 3/5
%astfel avem nevoie ca scaderea x2-x1=3, deci xmax=cat la suta din 5 este
%egal cu 3( xmax este un numar cuprins intre 0 si 1)
nivel_maxim=1;
nivel_minim=-2;
a=(nivel_maxim-nivel_minim)/2;%amplitudine
cc=0.5;%componenta continua
x=a*sawtooth(w,0.6)-cc;%functie semnal triunghiular
subplot(223);%functia subplot imi imparte fereastra grafica in 4 miniferestre( o matrice cu 2 linii si 2 coloane)
plot(t,x),grid,xlabel('t[s]'),ylabel('x[t]'),axis([0 5*i -3 2]),title('200ms');

