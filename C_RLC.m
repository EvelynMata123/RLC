function dx=C_RLC(t,x)
%-----Definimos nuestro parametros------%
R= 120;  %Ohms
L= 4e-3;  %Henrios
C= 0.1e-6; %Faradios

%--------Formacion de la onda cuadrada con creacion de la onda------------%
f=500; % Frecuencia (Hz)
ciclo_trabajo=50; % Ciclo de trabajo: porcentaje del período en el que la señal está en su nivel alto. 
w=2*pi*f*t; % Velocidad angular
V1=2.0*(1+square(w,ciclo_trabajo)); %Voltios

%-------------Formacion de la onda cuadrada con función pulstran----------%
A=0.001; % Ancho de la onda
T= 0.002; % Periodo (s)
d=0:T:t; % Rango de posiciones de la onda
V2= pulstran(t-0.0004,d,'rectpuls',A)*4;

%------Creamos nuestra matriz de las variables de estado----%
dx=zeros(2,1);
%-----Definición dinamica del sistema (Representanción de estados)-----%
dx(1)=x(2);
dx(2)=(1/L)*((-R*x(2))-((1/C)*x(1))+V1);
%-----------------------------------------------------------------------%