%Universidad nacional de loja 
%Wagner Crithoper Castillo Castro
clear; 
clc;
gradoP = input('¿Cuál es el grado del polinomio?: ');
array=(0);
matrizCoheficiente=(0);
matrizExponentes=(0);
matrizResultados=(0);
sumaT=0;

disp('Ingrese el valor de los coheficientes de forma descendente');
for i=1:gradoP+1
    matrizCoheficiente(i)=input("Ingrese el coheficiente: ");
end
N = input('Inserta el valor de N: ');  
a = input('Inserta el valor de a: ');
b = input('Inserta el valor de b: ');
i=1;
h=(b-a)/N;
areglosx=a:h:b;
while i<=gradoP 
    matrizExponentes(i)=i;
    i=i+1;
end

for k=1:N+1
     cont=gradoP;
    for i=1:gradoP
       
         matrizResultados(i)=areglosx(k)^matrizExponentes(cont);
        cont=cont-1;  
         sumaT = sumaT+( matrizResultados(i)*matrizCoheficiente(i));
    end  
        arreglototal(k)= sumaT+ matrizCoheficiente(gradoP+1);
        sumaT=0;
end
tabla=table(areglosx(:),arreglototal(:))