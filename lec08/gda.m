#!/usr/bin/octave-cli

## EL5857 Aprendizaje Automático
## (C) 2021 Pablo Alvarado
## Gaussian Discriminant Analysis

pkg load statistics
close all;

mc=100; ## Number of points per class
n=2;    ## Number of classes
m=mc*n; ## Total number of points (must be even)

sigma0=[1 .15;.15 0.5]
sigma1=[0.7 -.15;-.15 1.5]
rp=mvnrnd([1 1],sigma0,mc); ## Points in one class
rn=mvnrnd([4 4],sigma1,mc); ## Points in the other class

X = [rp;rn]; ## Design matrix with all data points

## Plot the original data 
y=[ones(mc,1); zeros(mc,1)];
figure(1,"name","Gaussian Discriminant Analysis");
hold off;

## GDA estimation
## Find means for each class and common covariance

m0=sum(y==0); ## Number of elements of class 0
m1=sum(y==1); ## Number of elements of class 1

## This is unused for now.  If we use a different number of data points for
## each class, this should be considered later.
phi=m1/m; ## Probability for class 1

mu_0 = sum(rn)/m0  ## Mean of class 0
mu_1 = sum(rp)/m1  ## Mean of class 1

X_mu1 = X(find(y==1),:)-mu_1; ## Centered data of y=1
X_mu0 = X(find(y==0),:)-mu_0; ## Centered data of y=0

X_mu = [X_mu0; X_mu1]; ## All centered data
sigma = (X_mu'*X_mu)/m ## Covariance matrix of centered data

## Plot the contour of estimated gaussians
[x1 y1]=meshgrid(linspace(-3,8,200)',linspace(-3,8,200)');
X1=[x1(:) y1(:)];
z1=mvnpdf(X1,mu_1,sigma);
contour3(x1,y1,reshape(z1,size(x1)),16,"linewidth",1); ## Class 1
hold on;

z2=mvnpdf(X1,mu_0,sigma);
contour3(x1,y1,reshape(z2,size(x1)),16,"linewidth",1); ## Class 0

## Discriminant line: where both PDF are equal
##   z2=z1 => z2-z1==0:
## FIX-ME:
## The following line works directly with the exponentials, which
## for numerical errors fail to correctly detect the zeros of z2-z1.
## We can go back a little and apply ln on both sides of z2=z1.
## That should be more stable

contour3(x1,y1,reshape(z2-z1,size(x1)),[0 0]);


## Plot the data points
plot3(rn(:,1),rn(:,2),0*y(mc+1:m,1),'ro;class 0;',
      "markersize",5,"linewidth",1.5);## Plot pts class 0
plot3(rp(:,1),rp(:,2),0*y(1:mc,1),'b+;class 1;',
      "markersize",5,"linewidth",1.5);  ## Plot pts class 1


xlabel('x');
ylabel('y');
view(0,90);

axis([-3 8 -3 8]);
daspect([1,1,.1]);
grid on;
