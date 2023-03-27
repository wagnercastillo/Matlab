%Universidad Nacional de Loja
%Nombre: Wagner Cristhoper Castillo Castro
clear;
clc;
format longG;

a=0;
b=10;
n=20;
h=(b-a)/n;
E=1328571.42857429;

%Trapecio
I=0;
R=0;
for x=a:h:b
    if x == a || x==b
        I=(I+((h/2)*fun(x)));
    else
        R=(R+((h/2)*(2*(fun(x)))));
    end
end
Trapecio=I+R;

% Simpson 1/3
x=a:h:b;
f=0;
for i=1: n+1
    if i==1 ||i== n+1
        f=f+fun(x(i));
    else
        if mod (i,2) ==1
            f=f+2*fun(x(i));
        else
            f=f+4*fun(x(i));
        end
    end
end
simpson13=(h/3)*f;

% Simpson 3/8
x=a:h:b;
f=0;
for i=1: n+1
    if i==1 ||i== n+1
        f=f+fun(x(i));
    else
        aux=fun(x(i));
        f=f+(3*(aux));
    end
end

aux1=h*3;
simpson38=(aux1/8)*f

%Presentacion en la tabla
disp("Tabla de Valores");

errorT=abs(Trapecio+E);
error13=abs(simpson13+E);
error38=abs(simpson38+E);

encabezado={'Trapecio ','Error Trapecio','Simpson 1/3','Error Simpson 1/3','Simpson 3/8','Error Simpson 3/8'};
Tabla=table(Trapecio,errorT, simpson13, error13, simpson38, error38, 'VariableNames', encabezado);
Tabla

function [y]=fun(x)
    y=((x.^4)*(5-(x.^2)));
end







