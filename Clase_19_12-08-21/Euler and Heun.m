%Wagner Cristhoper Castillo Castro
clear; clc;
format longG;

a=1;
b=2;
N=10;
y(1)=1;
n = (b - a) / N;

valoresX=[a:n:b];
valoresY=[y];
valoresYN=[y];

%Euler%
for a=1:length(valoresX)
    valoresY(a+1)=valoresY(a)+(n*(fun(valoresX(a),valoresY(a))));
    if(a==length(valoresX)-1)
        break;
    end
end

%Heun
for a=1:length(valoresX)
    valoresYN(a+1)=(valoresYN(a)+((n*((fun(valoresX(a),valoresYN(a)))+(fun((valoresX(a+1)),(valoresYN(a)+(n*(fun(valoresX(a),valoresYN(a))))))))))/2);
    if(a==length(valoresX)-1)
        break;
    end
end

encabezado = {'X','Euler','Heun'};
disp(table(valoresX(:),valoresY(:),valoresYN(:),'VariableNames', encabezado));

function [dy] = fun(x,y)
    dy=(1-2*x)*y;
end