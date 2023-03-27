%Wagner Cristhoper Castillo Castro
clc; 
clear; 
format long;

a=1;
b=2;
n=10;
yIni=1;

h=((b-a)/n);
x=a:h:b;
y=zeros(1,length(x));
y1=yIni;
y2=yIni;
y(1)=yIni;
n1= (length(x)-1);

%Método de Euler
for i=1:n1
    y1(i+1) = y1(i)+h*(fun(x(i),y1(i)));
end

%Método de Heun
for i=1:n1
    y2(i+1)=(y2(i)+(h*((fun(x(i),y2(i)))+(fun((x(i+1)),(y2(i)+(h*(fun(x(i),y2(i)))))))))/2);
end

%Heun

%Runge-Kutta
for i=1:n1
   k1= fun(x(i),y(i)); 
   k2= fun(x(i)+(h/2), y(i)+(h/2)*k1);
   k3= fun(x(i)+(h/2), y(i)+(h/2)*k2);
   k4=fun((x(i)+h), (y(i)+ h*k3));
   y(i+1)=y(i)+ ((h*(k1 + 2*k2 +2*k3 + k4))/6);
end

T = table(x(:),y1(:),y2(:),y(:));
T.Properties.VariableNames = {'x','Heun','Euler','RungeKutta'}

function [y] = fun(x,y)
    y=(1-2*x)*y;
end