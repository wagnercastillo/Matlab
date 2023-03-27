clear;
clc;
format longG;

mX = [0,5,10,20,30,40];
vY = [1.787,1.519,1.307,1.002,0.796,0.653];

x = 6;
grado = 4;

x0=0;
posicionX0=1;

for i=1:(length(mX))
   if(x<mX(i))
      x0 = mX(i-1);
      posicionX0=i-1;
      break;
   end
end

cont=1;
for i=posicionX0:(posicionX0+grado)
    xm(cont)=mX(i);
    cont=cont+1;
end

valor = find(mX == xm(2));
maximoPolinomio = length(mX)-valor+1 ;
disp("Valor maximo del polinomio: "+maximoPolinomio);
n = 1;

if grado <= maximoPolinomio
    for k=1:grado
        cont = 1;
        for i=posicionX0:(posicionX0+k)
            xn(cont)=mX(i);
            fx(cont)=vY(i);
            cont=cont+1;
        end
        P=0;
        for i=1:(length(xn))  
            arriba=1;
            abajo=1;
            for j=1:(length(xn))
                if(i~=j)
                    arriba = arriba * (sym('x') - xn(j));
                    abajo = abajo * (xn(i) - xn(j)); 
                end 
            end
            P = P + ((arriba/abajo)*fx(i));
        end
        disp("Respuesta: ");
        disp(P);
        resultado(n) = P;
        n = n+ 1;
    end
    fplot(resultado);
        title('Interpolacion de  Lagrange')
        xlabel('Temperatura')
        ylabel('Viscosidad')
        if maximoPolinomio==1
            legend({'Grado 1'},'Location','southwes t');
        elseif maximoPolinomio==2
            legend({'Grado 1','Grado 2'},'Location','southwest');
        elseif maximoPolinomio==3
           legend({'Grado 1','Grado 2','Grado 3'},'Location','southwest');
        elseif maximoPolinomio==4
           legend({'Grado 1','Grado 2','Grado 3','Grado 4'},'Location','southwest');
         elseif maximoPolinomio==5
           legend({'Grado 1','Grado 2','Grado 3','Grado 4','Grado 5'},'Location','southwest');
        end
        legend('boxoff')
end