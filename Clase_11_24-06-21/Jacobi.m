
clear; 
clc;
format long;

%matriz = [5,2,-3;  2,10,-8;  3,8,13];
matriz= [2,10,-8; 3,8,13; 5,2,-3];
b=[4; 7; 1];

diagonalPrincipal=diag(diag(matriz));
D=inv(diagonalPrincipal);
U= triu(matriz, 1);
L= tril(matriz,-1);
XK=0;
error=0.01;
cont=1;

while(cont<=1000)
    XKaux=XK;
    jacobi= -D* (L+U)* XK +(D*b(:));
    XK= jacobi(:,1);
    disp("i: "+cont+" :")
    disp(XK)
    res=XK-XKaux;
    
    if (  ( abs(res(1)) <= error ) &&  ( abs(res(2)) <= error )  && ( abs(res(3)) <=error )  )
        break
    end
    cont=cont+1;
end
