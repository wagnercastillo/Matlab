%Wagner Cristhoper Castillo Castro
clc;
clear;

A=[3 2 5; 2 -1 4;-1 2 1];
B=[1 0 0;0 1 0; 0 0 1];
C=[A B];

for i=1:length(C(:,1))
    if C(i,i)~=1
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