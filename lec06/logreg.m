#!/usr/bin/octave-cli

## (C) 2020 Pablo Alvarado
## Logistic regression example

close all;

##################################
## Construct some training data ##
##################################

rand("seed",12); ## Ensure the same points at each run
m=100; ## Number of training points
X = [ones(m,1) (2*rand(m,2)-1)]; ## Random points on the square [-1,1]^2

## Construct the y with a linear discriminant line (just because...)
slope=rand()-0.5;
offset=(rand()-0.5)*.25;
disc = @(x) slope*x + offset; ## Discriminat line
y = disc(X(:,2)) > X(:,3);    ## Use discriminant to assign the class

## Plot the data
figure(1,"name","Data and discriminat line");
hold off;
plot(X(y<0.5,2),X(y<0.5,3),'ro','markersize',10,
     X(y>0.5,2),X(y>0.5,3),'b+','markersize',10);
grid on;
daspect([1,1,1]);
hold on;

#####################################################
## Logistic regression with batch gradient descent ##
#####################################################

## Now to the logistic regression with (batch) gradient descent
sigmoid = @(x) 1./(1+exp(-x));

threshold=1e-4; ## Stop criterion
delta=1;
theta=[1,1,1]'; ## Starting point
alpha = 0.01/m;

while(delta>threshold)
  h = sigmoid(X*theta); ## Hypothesis
  grad = sum((y-h).*X); ## Gradient estimation (row because of X shape)
  last = theta;
  theta = last + alpha * grad'; ## Step
  delta = abs(theta-last);
endwhile

## Plot discriminant line.  Easy to find, since we
## just look when theta'x==0
lslope = -theta(2)/theta(3);
loffset= -theta(1)/theta(3);
x=-1:0.05:1;
plot(x,disc(x),'g;theoretical;',"linewidth",3);      ## Theoretical
plot(x,lslope*x+loffset,'k;learned;',"linewidth",3); ## Learned
axis([-1,1,-1,1])		    

## Plot hypothesis in 3D
figure(2); hold off;
[GX,GY]=meshgrid(x,x);
FX = [ones(size(GX(:)),1) GX(:) GY(:)];
GZ=reshape(sigmoid(FX*theta),size(GX));
surface(GX,GY,GZ);
daspect([1,1,1]);
hold on;
plot3(X(y<0.5,2),X(y<0.5,3),y(y<0.5)+0.5,'ro',
      X(y>0.5,2),X(y>0.5,3),y(y>0.5)*0.5,'b+');
#plot3(X(y<0.5,2),X(y<0.5,3),y(y<0.5),'ro',
#      X(y>0.5,2),X(y>0.5,3),y(y>0.5),'b+');

