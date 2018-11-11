%Tema_de_casa_EX5
%2ms
q=input('Cate perioade doriti sa fie reprezentate grafic?')%citesc de la tastatura o variabila in care sa stochez numarul de perioade pe care vrea sa le reprezint grafic
t=0:0.002:4*q;%rezolutia temporara.initial t este 0, pasul 0.002,si valoarea finala este data de 4(4 secunde pentru a reprezenta o perioada)inmultit cu cate perioade vreau sa reprezint
f=0.25;%f=1/T(Din cerinta T=4s)
w=2*pi*f;%pulsatia
a=1.5;%amplitudinea este 1.5(din cerinta)
x=abs(a*sin(w*t));%pentru ca semnalul sa aiba numai valori pozitive,am apelat functia abs care imi returneaza valoarea absoluta
subplot(221);%am impartit fereastra grafica in 4 miniferestre.Graficul urmator va fi reprezentat in minifereastra 1
plot(t,x),grid,xlabel('t[s]'),ylabel('x[t]'),title('2ms'),axis([0 4*q -0.5 2]);%reprezentare grafica


%20ms
q=input('Cate perioade doriti sa fie reprezentate grafic?')
t=0:0.02:4*q;%se schimba pasul in 0.02(20ms), in rest explicatiile sunt aceleasi ca mai sus
f=0.25;
w=2*pi*f;
a=1.5;
x=abs(a*sin(w*t));
subplot(222);
plot(t,x),grid,xlabel('t[s]'),ylabel('x[t]'),title('20ms'),axis([0 4*q -0.5 2]);

%200ms
q=input('Cate perioade doriti sa fie reprezentate grafic?')
t=0:0.2:4*q;%se schimba pasul in 0.2 (200ms), in rest explicatiile sunt aceleasi ca mai sus
f=0.25;
w=2*pi*f;
a=1.5;
x=abs(a*sin(w*t));
subplot(223);
plot(t,x),grid,xlabel('t[s]'),ylabel('x[t]'),title('200ms'),axis([0 4*q -0.5 2]);
