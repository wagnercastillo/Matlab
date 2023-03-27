clc;
clear;
error=0.01;
b=3;
x=newtonr(b);
count=0;
% diff(y)
format long;
while(abs(x-b)>error)
    x=b;
    b=newtonr(x)
    count=count+1;
end

disp("Iteraciones "+count);

function [y]=polinomio(x)
    y=cos(x)-x
end

function [y]=derivada(x)
    y= -sin(x)-1;
end

function [nw]= newtonr(xn)
    nw=xn-(polinomio(xn)/derivada(xn));
end


