%---------------------------------------------------------
% Ecuaciones de distintos tipos de señales
% Navil Pineda Rugerio
% Inteligencia Artificial
% 5to Semestre
%---------------------------------------------------------
clc
clear all;

% Definir señales
% Señal analógica
t = -5:0.1:5;

u_t = zeros(size(t));
for i = 1:length(t)
    u_t(i) = u(t(i));
end

subplot(2,3,1);
plot(t,u_t), xlabel('t'), ylabel('u(t)'), title('Escalon Unidad');

r_t = zeros(size(t));
for i = 1:length(t)
    r_t(i) = r(t(i));
end

subplot(2,3,2);
plot(t,r_t, 'c'), xlabel('t'), ylabel('r(t)'), title('Funcion Rampa');

p_t = zeros(size(t));
for i = 1:length(t)
    p_t(i) = p(t(i));
end

subplot(2,3,3);
plot(t,p_t, 'g'), xlabel('t'), ylabel('p(t)'), title('Funcion Pulso');


tri_t = zeros(size(t));
for i = 1:length(t)
    tri_t(i) = tri(t(i));
end

subplot(2,3,4);
plot(t,tri_t, 'r'), xlabel('t'), ylabel('tri(t)'), title('Funcion Triangular');

sinc_t = zeros(size(t));
for i = 1:length(t)
    sinc_t(i) = sinc(t(i));
end

subplot(2,3,5);
plot(t,sinc_t, 'b'), xlabel('t'), ylabel('sinc(t)'), title('Funcion Sinc');

% Funcion escalon
function res = u(t)
    if t < 0
        res = 0;
    else
        res = 1;
    end
end

% Funcion rampa
function res = r(t)
    if t > 0
        res = t * u(t);
    else
        res = 0;
    end
end

% Función pulso
function res = p(t)
    if t > (-1/2) & t < (1/2)
        res = u(t+(1/2)) - u(t-(1/2))
    else
        res = 0;
    end
end

% Funcion triangular
function res = tri(t)
    if t > (-1) & t < 1
        res = r(t+1) - 2*r(t) + r(t-1)
    else
        res = 0
    end
end

% Funcion sinc
function res = sinc(t)
    res = sin(pi*t) / pi*t
end