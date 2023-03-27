%UNIVERSIDAD NACIONAL DE LOJA
%Wagner Cristhoper Castillo Castro
clear;
clc;

format long
a=input("Ingrese a: ");
b=input("Ingrese b: ");
h=input("Ingrese h:");

x=a:h:b;

k = [(fun(x+h)-fun(x))/h];
table=table(x(:),k(:))


function [y]=fun(x)
    y=3*x.^4 + 5*x.^3 - 3*x.^2  + 8*x  -12;
end




