#!/usr/bin/octave-cli

##################
## Armando f(x) ##
##################

## Queremos un y=x'Ax como f(x)
A=[1.0 0.5;
   0.5 1.3];

x1=[-2:0.1:2];
x2=[-2:0.1:2];

[xx1,xx2]=meshgrid(x1,x2);

## Aplane los datos y arme una matriz de diseño
X = [xx1(:) xx2(:)];

## Calcule x'Ax para todos los x
##   Equivalente a diag(X*A*A') es lo que sigue, pero rápido:
Y = sum(X.*(A*X')',2);

yy = reshape(Y,size(xx1));

figure(1,"name","f(x)");

hold off;
colormap(cool(32));
## surfc(xx1,xx2,yy,"facecolor","none","edgecolor",[0.5,0.5,0.5]);

#hold on;
contour3(xx1,xx2,yy,121,"linewidth",1);
axis([-2,2,-2,2,-1,6]);
daspect([1,1,2])


##################
## Armando g(x) ##
##################

## Queremos un y=x'Ax como f(x)
B=[0.8 -0.1; -0.1 1.7];
C=[-0.5; 1.5];
D=-1.5;


## Calcule x'Bx + Cx + D para todos los x
##   Equivalente a diag(X*A*A') es lo que sigue, pero rápido:
H = sum(X.*(B*X')',2) + X*C + D;

hh = reshape(H,size(xx1));

figure(2,"name","h(x)");

hold off;
colormap(cool(32));
surfc(xx1,xx2,hh,"facecolor","none","edgecolor",[0.5,0.5,0.5]);

hold on;
contour3(xx1,xx2,hh,15,"linewidth",1,"linecolor","blue");
contour3(xx1,xx2,hh,[0 0],"linewidth",3,"linecolor",[0.5,0,0]);

[Cont,Lev]=contourc(xx1,xx2,hh,[0 0]);

## Como solo usamos un contorno, rescatamos solo uno
Lev0=Cont(1,1);
Len0=Cont(2,1);

cx1=Cont(1,2:1+Len0);
cx2=Cont(2,2:1+Len0);

CC=[cx1;cx2];

## Gradiente de h(x)=2Bx + C

gradh = (2*B*CC + C)';
quiver(cx1,cx2,gradh(:,1),gradh(:,2),"color","blue");

axis([-2,2,-2,2,-2,6]);
daspect([1,1,2])


##################
##  Todo junto  ##
##################
figure(3,"name","f(x) y h(x)=0");

hold off;
surfc(xx1,xx2,yy,"facecolor","none","edgecolor",[0.5,0.5,0.5]);

hold on;
contour3(xx1,xx2,hh,[0 0],"linewidth",2,"linecolor",[0.5,0,0]);

axis([-2,2,-2,2,-1,6]);



## Necesitamos de Cont calcular el valor de la función para mostrarlo


Z = sum(CC'.*(A*CC)',2)';

plot3(cx1,cx2,Z,"linewidth",3,"color",[0 0 0.7]);

## Gradiente de f(x)=2Ax
gradf = 2*(A*CC)';
quiver(cx1,cx2,gradf(:,1),gradf(:,2),"color","red");

## Gradiente de h(x)=2Bx + C

gradh = (2*B*CC + C)';
quiver(cx1,cx2,gradh(:,1),gradh(:,2),"color","blue");

daspect([1,1,2])
view(2);
