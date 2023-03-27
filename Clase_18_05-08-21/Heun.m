clear; clc;
format longG;

a=1;
b=2;
N=10;
y(1)=1;
n = (b - a) / N;
valoresX=[a:n:b];
valoresYN=[y];

%Metodo de Heun 
for a=1:length(valoresX)
    valoresYN(a+1)=(valoresYN(a)+((n*((fun(valoresX(a),valoresYN(a)))+(fun((valoresX(a+1)),(valoresYN(a)+(n*(fun(valoresX(a),valoresYN(a))))))))))/2);
    if(a==length(valoresX)-1)
        break;
    end
end

encabezado = {'X','Heun'};
disp(table(valoresX(:),valoresYN(:),'VariableNames', encabezado));

function [dy] = fun(x,y)
    dy=(1-2*x)*y;
end