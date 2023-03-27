%UNIVERSIDAD NACIONAL DE LOJA
%Wagner Cristhoper Castillo Castro
clear;
clc;

format long
a=-5;
b=5;
n=30;
h=(b-a)/n;
x=a:h:b;


Adelante = [(funcion(x+h)-funcion(x))/h];
Atras = [(funcion(x)-funcion(x-h))/h];
Centrada = [(funcion(x+h)-funcion(x-h))/h];

Adelante2 = [(-funcion(x+(2*h))+4*funcion(x+h)-3*funcion(x))/(2*h)];
Atras2 = [(3*funcion(x)-4*funcion(x-h)+funcion(x-(2*h)))/(2*h)];
Centrada2= [(-funcion(x+(2*h))+8*funcion(x+h)-8*funcion(x-h)-3*funcion(x-(2*h)))/(12*h)];


encabezado = {'X','Adelante 1','Atras 1','Centrada 1','Adelante 2','Atras 2','Centrada 2'};
tabla=table(x(:),Adelante(:), Atras(:), Centrada(:), Adelante2(:), Atras2(:),Centrada2(:),'VariableNames', encabezado);
disp(tabla)

function [r]=funcion(x)
    r=-5*x.^4 +6*x.^3 -2*x.^2  +9*x  -1; 
end