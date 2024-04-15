clc
clear all;

t = 0:(pi/100):2*pi;

y_t = sin(3*t);
subplot(1,3,1);
plot(t,y_t,'r--'), xlabel('t'), ylabel('y'), title('Funcion y(t)');

% Función r(t)=3t-2
r_t = (3*t)-2;
subplot(1,3,2);
plot(t,r_t,'k--'), xlabel('t'), ylabel('r'), title('Funcion r(t)');

% Multiplicacion de funciones y(t)r(t)
m_t = y_t .* r_t;
subplot(1,3,3);
plot(t,m_t,'c--'), title('Multiplicación de funciones y(t)r(t)');