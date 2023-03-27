%Universidad nacional de loja 
%Wagner Crithoper Castillo Castro
clear; 
clc;
gradoP = input('¿Cuál es el grado del polinomio?: ');
x = input('Inserta el valor de X: ');   

array=(0);
matrizCoheficiente=(0);
matrizExponentes=(0);
matrizResultados=(0);
sumaT=0;

disp('Ingrese el valor de los coheficientes de forma descendente');
for i=1:gradoP+1
    matrizCoheficiente(i)=input("Ingrese el coheficiente: ");
end
i=1;
while i<=gradoP 
    matrizExponentes(i)=i;
    i=i+1;
end
cont=gradoP;

for i=1:gradoP
     matrizResultados(i)=x^matrizExponentes(cont);
    cont=cont-1;  
    sumaT = sumaT+( matrizResultados(i)*matrizCoheficiente(i));
end
   
sumaT= sumaT+ matrizCoheficiente(gradoP+1);
cont2=gradoP;
aux="";
for i=1:gradoP+1
    if(matrizCoheficiente(i)<0)
        if(cont2~=0)
        aux=aux+(" "+matrizCoheficiente(i)+"("+x+")^"+matrizExponentes(cont2));
        cont2=cont2-1;
        end
    end
    if(cont2~=0)
        aux=aux+(" + "+matrizCoheficiente(i)+"("+x+")^"+matrizExponentes(cont2));
        cont2=cont2-1;
    end  
end
cont3=0;

 if(matrizCoheficiente(gradoP+1)<0)
        aux=aux+(" "+matrizCoheficiente(gradoP+1));
 else
        aux=aux+(" + "+matrizCoheficiente(gradoP+1));
 end

disp("El polinomio es :"+aux);
disp("La respuesta del polinomio es: "+sumaT);