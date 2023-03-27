%Universidad Nacional de Loja
%Nombre: Wagner Cristhoper Castillo Castro
clear;
clc;
format longG;
% a=input('Ingrese el valor minimo ');
% b=input('Ingrese el valor maximo ');
% n=input('Ingrese el numero de datos ');
a=0;
b=10;
n=20;

h=(b-a)/n;
I=0;
R=0;
for x=a:h:b
    if x == a || x==b
        I=(I+((h/2)*fun(x)));
    else
        R=(R+((h/2)*(2*(fun(x)))));
    end
end

T=I+R;
disp(T);

function [y]=fun(x)
    y=((x.^4)*(5-(x.^2)));
end