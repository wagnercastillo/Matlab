%Universidad nacional de loja 
%Wagner Crithoper Castillo Castro
clear; 
clc;
gradoP = input('¿Cuál es el grado del polinomio?: ');

matrizCoheficiente=(0);

disp('Ingrese el valor de los coheficientes de forma descendente');
for i=1:gradoP+1
    matrizCoheficiente(i)=input("Ingrese el coheficiente: ");
end

h = input('Inserta el valor de h: ');
a = input('Inserta el valor de a: ');
b = input('Inserta el valor de b: ');
N=(b-a)/h;

areglosx=a:h:b;

for (j=1: N+1)
    t=gradoP;
    for (i=1: gradoP+1)
        potencia=areglosx(j)^t;
        respuesta(i)=potencia*+matrizCoheficiente(i);
        t=t-1; 
    end
    suma=0;
    for (i=1: gradoP+1)
        suma=suma+ respuesta(i);
    end
    
    final(j)=suma;
end

tabla=table(areglosx(:), final(:))

cont=0;
for i=1: length(final)
    if(final(i)==0)
        disp("Las raices son:  " +areglosx(i)+" "+final(i))
        cont=cont+1;
    end
    
end

if(cont==0)
    disp("No existen raices.")
end


