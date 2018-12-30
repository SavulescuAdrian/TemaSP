%Tema 2 SP V2
i=input('Cate perioade vreti sa apara in reprezentarea grafica?')
T=40;%valoarea Perioadei
t=0:0.1:T*i;%rezolutia temporara
w=2*pi/T;
D=17;%durata semnalului
d=D/T*100;%factorul de umplere
nmax=input('Introduceti nivelul maxim al semnalului:');
nmin=input('Introduceti nivelul minim al semnalului:');
nivel=(nmax-nmin)/2;
x=nivel*square(w*t,d)+(nmax-nivel);%generarea semnalului dreptunghiular
subplot(2,2,1);
plot(t,x);axis([0 T*i nmin-1 nmax+1]);xlabel('t');ylabel('x[t]');title('Semnalul initial si semnalul reconstruit');%reprezentarea grafica
hold on;
N=50;%nr de coeficienti pe care ii voi calcula
f=zeros(size(N));%creez un vector in care toate elementele sunt zero si in care voi reconstrui semnalul cu ajutorul coeficientilor 
subplot(2,2,2);

a=0;%un vector egal cu zero in care voi memora Coeficientii dezvoltarii seriei Fourier
omega=0;%un vector egal cu zero in care voi memora valorie k
for k=(-N/2+1):(N/2)%parcurg elementele cele 50 de elemente de la -24 la 25 
    q=@(t) nmax*exp(-j*k*w*t);%functie de t pe durata 0-17
    z=@(t) nmin*exp(-j*k*w*t);%functie de t pe durata 17-40
    X=(1/T)*(integral(q, 0, 17)+integral(z,17,40));%formula pentru calculul coeficientilor dezvoltarii seriei Fourier
    
    f=f+X*exp(j*k*w*t);%reconstruirea semnalului
    a=[a,X];%memorarea Coeficientilor
    omega=[omega,k];%memorarea valorilor k
end
a %afisarea coeficientilor 
stem(omega*w,2*abs(a));xlabel('omega');ylabel('Ak');title('Spectrul de Amplitudini');%reprezentarea spectrului de amplitudini 
subplot(2,2,1); 
plot(t,f,'.');%reprezentarea semnalului reconstruit peste semnalul initial(reprezentarea celor doua pe acelasi grafic se face cu ajutorul functiilor "hold on" si "hold off"
hold off;