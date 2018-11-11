%Tema_de_casa_Ex_1
%2ms
i=input('Cate perioade vreti sa apara in reprezentarea grafica?')%citesc de la tastatura o variabila in care sa stochez numarul de perioade pe care vrea sa le reprezint grafic
t=0:0.002:2*i;%rezolutia temporara.t este initial 0,pasul este 0.002(2ms),in final t va atinge valoarea 2(o perioada are 2s)inmultit cu numarul de perioade pe care vreau sa-l reprezint
f=0.5;%f=1/T
w=2*pi*f;%pulsatia
duty=25;%factor de umplere
nivel_maxim=0.5;
nivel_minim=-1;
a=(nivel_maxim-nivel_minim)/2;%amplitudinea semnalului si va da 0.75
cc=0.25;%componenta continua astfel incat semnalul nostru sa atinga maximul in 0,5 si minimul in -1
x=a*square(w*t,duty)-cc; %functie semnal dreptunghiular
subplot(221);%functia subplot imi imparte fereastra grafica in 4 miniferestre( o matrice cu 2 linii si 2 coloane)
plot(t,x),grid,xlabel('t[s]'),ylabel('x[t]'),axis([0 2*i -2 2]),title('2ms')
%plot-reprezentarea grafica a lui x in functie de t

%20ms
i=input('Cate perioade vreti sa apara in reprezentarea grafica?')
t=0:0.02:2*i;%se schimba pasul in 0.02(20ms)
f=0.5;%f=1/T
w=2*pi*f;%pulsatia
duty=25;%factor de umplere
nivel_maxim=0.5;
nivel_minim=-1;
a=(nivel_maxim-nivel_minim)/2;%amplitudinea semnalului si va da 0.75
cc=0.25;%componenta continua astfel incat semnalul nostru sa atinga maximul in 0,5 si minimul in -1
x=a*square(w*t,duty)-cc; %functie semnal dreptunghiular
subplot(222)%functia subplot imi imparte fereastra grafica in 4 miniferestre( o matrice cu 2 linii si 2 coloane)
plot(t,x),grid,xlabel('t[s]'),ylabel('x[t]'),axis([0 2*i -2 2]),title('20ms')
%plot-reprezentarea grafica a lui x in functie de t

%200ms
i=input('Cate perioade vreti sa apara in reprezentarea grafica?')
t=0:0.2:2*i;%rezolutie temporara
f=0.5;%f=1/T
w=2*pi*f;%pulsatia
duty=25;%factor de umplere
nivel_maxim=0.5;
nivel_minim=-1;
a=(nivel_maxim-nivel_minim)/2;%amplitudinea semnalului si va da 0.75
cc=0.25;%componenta continua astfel incat semnalul nostru sa atinga maximul in 0,5 si minimul in -1
x=a*square(w*t,duty)-cc; %functie semnal dreptunghiular
subplot(223)%functia subplot imi imparte fereastra grafica in 4 miniferestre( o matrice cu 2 linii si 2 coloane)
plot(t,x),grid,xlabel('t[s]'),ylabel('x[t]'),axis([0 2*i -2 2]),title('200ms')
%plot-reprezentarea grafica a lui x in functie de t

