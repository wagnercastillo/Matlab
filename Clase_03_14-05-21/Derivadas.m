% Wagner Cristhoper Castillo Castro
% Analisis Numerico

clc;
clear;
gradoP = input('¿Cual es el grado del polinomio?');
matrizCoheficiente=(0);
matrizExponentes=(0);
matrizX="";

disp('Ingrese el valor de los coheficientes de forma descendente');
for i=1:gradoP+1
    matrizCoheficiente(i)=input("Ingrese el coheficiente: ");
    matrizX(i)="x";
end

for a=1: gradoP
    matrizExponentes(a)=a;
end

opcion=1;
while (opcion==1)  
    cont2=gradoP;
    for i=1: gradoP
        if(matrizExponentes(cont2)~=0)
           matrizCoheficiente(i)= matrizCoheficiente(i)*matrizExponentes(cont2);
           matrizExponentes(cont2)= (matrizExponentes(cont2)-1);                    
        end
          cont2=cont2-1;
    end    
    cont4=gradoP;
    for i=1: gradoP
        if(matrizExponentes(cont4)==0)
            matrizX(i)= " ";
        end
        cont4=cont4-1;
    end
    for i=1: gradoP+1
        if(matrizX==" ")
            matrizCoheficiente(i+1)=0;
        end
    end
       
    aux=" ";
    
    cont3=gradoP;
    cont=1;
    
    for i=1:gradoP
        if(matrizCoheficiente(i)<0)                
            aux=aux+(" "+matrizCoheficiente(i)+"("+matrizX(i)+")^"+matrizExponentes(cont3));
            cont3=cont3-1;                 
        else
            aux=aux+("+"+matrizCoheficiente(i)+"("+matrizX(i)+")^"+matrizExponentes(cont3));
            cont3=cont3-1;
        end  
    end
    disp("El polinomio derivado es :"+aux);
    if(matrizExponentes(gradoP)==0)
        disp("Ya no es posible derivar");
        break
    end      
  opcion = input(' 1 Para seguir Derivando || 0 Detener Programa'); 
end