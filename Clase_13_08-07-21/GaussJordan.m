%Wagner Cristhoper Castillo Castro
clc;
clear;

%A=[2 4 6 ; 4 5 6;3 1 -2];
A=[1 5 4 ; -4 5 2; 3 1 2];
B=[1 0 0;0 1 0; 0 0 1];
C=[A B];
format rat;
determinante=1;

for i=1:length(C(:,1))
    if C(i,i)~=1
        determinante=determinante*C(i,i);
        C(i,:)= C(i,:)./C(i,i);
        disp(C)
    end
    
    for j=1:length(C(:,1))
        if j~=i
            C(j,:)=-C(j,i).*C(i,:)+C(j,:);
            disp(C)
        end
    end
end

determinante
