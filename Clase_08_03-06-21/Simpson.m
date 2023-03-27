%Universidad Nacional de Loja
%Nombre: Wagner Cristhoper Castillo Castro
clc;
clear;
%
% a=input('Ingrese a');
% b=input('Ingrese b');
% n=input('Ingrese n');

a=0;
b=10;
n=20;
h=(b-a)/n;
x=a:h:b;
f=0;


format long;

for i=1: n+1
    if i==1 ||i== n+1
        f=f+funcion(x(i));
    else
        if mod (i,2) ==1
            f=f+2*funcion(x(i));
        else
            f=f+4*funcion(x(i));
        end
    end
end

s=(h/3)*f;
fprintf('Resultado: %f\n\n',s);


function [fun]= funcion (x)
fun = x.^4*(5-x.^2);
end
