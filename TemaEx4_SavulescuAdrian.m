%Tema_de_casa_EX4
%2ms
q=input('Cate perioade doriti sa fie reprezentate grafic?')%citesc de la tastatura o variabila in care sa stochez numarul de perioade pe care vrea sa le reprezint grafic
t=0:0.002:3*q;%rezolutie temporara. t este initial 0, pasul este 0.002(200ms),iar in final t va ajunge la valoarea 3(o perioada dureaza 3 s)inmultit cu numarul de perioade pe care vreau sa le reprezint
f=0.3333;%f=1/T=1/3
w=2*pi*f;%pulsatia
x=0.8*sin(w*t);%functia sinusoidala cu amplitudine 0.8
for i=1:(3*q/0.002)%parcurg elementele semnalului
    if x(i)<=0%caut elementele negative ale semnalului
        x(i)=0;%si le fac nule.Un redresor monoalternanta anuleaza valorile negative ale semnalului
    else
        x(i);%se pastreaza valorile pozitive
    end
end
subplot(221)%impart fereastra grafica in 4 miniferestre
plot(t,x),grid,xlabel('t[s]'),ylabel('x(t)'),title('2ms');

%20ms
q=input('Cate perioade doriti sa fie reprezentate grafic?')
t=0:0.02:3*q;%se schimba pasul in 0.02(20ms)
f=0.3333;
w=2*pi*f;
x=0.8*sin(w*t);
for i=1:(3*q/0.02)%schimband pasul, evident voi avea mai putine elemente de parcurs
    if x(i)<=0
        x(i)=0;
    else
        x(i);
    end
end
subplot(222)
plot(t,x),grid,xlabel('t[s]'),ylabel('x(t)'),title('20ms');

%200ms
q=input('Cate perioade doriti sa fie reprezentate grafic?')
t=0:0.2:3*q;%se schimba pasul in 0.2(200ms)
f=0.3333;
w=2*pi*f;
x=0.8*sin(w*t);
for i=1:(3*q/0.2)%schimband pasul, evident voi avea mai putine elemente de parcurs
    if x(i)<=0
        x(i)=0;
    else
        x(i);
    end
end
subplot(223);
plot(t,x),grid,xlabel('t[s]'),ylabel('x(t)'),title('200ms');
