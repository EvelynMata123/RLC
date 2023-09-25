%-----Función ode45 que resuslve numericamente el sistema------%
[t,x]=ode45(@C_RLC,[0 0.01], [0 0]);
%Graficamos nuestro sistema
% x y t son parametros que retorna la función
%Figura 1
figure(1)
plot(t,x(:,1),'b');
grid on
title("Voltaje del Capacitor");
xlabel("Tiempo");
ylabel("Voltaje");