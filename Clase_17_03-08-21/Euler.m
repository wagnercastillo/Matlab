%Wagner Cristhoper Castillo Castro

clear; 
clc;

format longG;

a=1;
b=2;
N=10;

h=(b-a)/N;
x = a:h:b; 
y(1)=1;    

y=euler(N,x,y,h);
n=0:1:N;

disp( table(n(:),x(:),y(:)));

function [y] = euler(N,x,y,h)
    for i=1:N
       y(i+1) = y(i)+h*(fun(x(i),y(i)));
    end
end

function [y] = fun(x,y)
    y = 0.4*x*y;
end