%Lagrange
%Wagner Cristhoper Castillo Castro

clc;
clear;
format longG;
matrizx = [0,5,10,20,30,40];
matrizY = [1.787,1.519,1.307,1.002,0.796,0.653];
x0=0;
posicionX0=1;
bandera=0;

%Inputs
x =7;
grado = 4;


if((matrizx(1)>x)||(matrizx(length(matrizx))<x))
    disp("El numero ingresado esta fuera de los limites de la datos..");
    disp("Genere una nueva evaluacion desde el principio.");
    bandera=1;
end

if bandera==1
    disp("No se pueden obtener las raices");
else
    for i=1:(length(matrizx))
        if(x<matrizx(i))
            x0 = matrizx(i-1);
            posicionX0=i-1;
            verificador=length(matrizx)-posicionX0;
            break;
        end
    end
    if (verificador<grado)
        disp("La datos son insuficientes para poder obtener este valor ");
        disp("Solo se puede calcular hasta "+verificador+ " polinomios");
    else
        cont=1;
        for i=posicionX0:(posicionX0+grado)
            xm(cont)=matrizx(i);
            cont=cont+1;
        end
        valor = find(matrizx == xm(2));
        maximoPolinomio = length(matrizx)-valor+1 ;
        disp("El maximo grado del polinomio es: "+maximoPolinomio);
        if grado <= maximoPolinomio
            for k=1:grado
                cont = 1;
                for i=posicionX0:(posicionX0+k)
                    xn(cont)=matrizx(i);
                    fx(cont)=matrizY(i);
                    cont=cont+1;
                end
                interpolada=0;
                for i=1:(length(xn))
                    t=1;
                    for j=1:(length(xn))
                        if(i~=j)
                            t = t * (x-xn(j))/(xn(i)-xn(j));
                        end
                    end
                    interpolada=interpolada+(t*fx(i));
                end
            end
        end
        disp("Respuesta ");
        interpolada
    end
    
end
