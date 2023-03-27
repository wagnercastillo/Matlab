clear; clc;
format long;
valor=7;
valPoli=2;

x=[0, 5, 10, 20, 30, 40];
y=[1.787, 1.519, 1.307, 1.002, 0.796, 0.653];

auxX=[];
auxY=[];

interpolada=0;
sup=valPoli+1;

for(a=1:length(x))
    if((x(a)<valor)&&(x(a+1)>valor))
        cont=1;
        while(cont<=sup)
            auxX(cont)=x(a);
            auxY(cont)=y(a);
            a=a+1;
            cont=cont+1;
            if(a>=length(x))
                break;
            end
        end
        if(cont>1)
            break;
        end
    end
end

for(d=1:sup)
    t = 1;
    for(b=1:sup)
        if(d~=b)
            t = t * (valor-auxX(b))/(auxX(d)-auxX(b));
        end
    end
    interpolada=interpolada+(t*auxY(d));
end
interpolada


