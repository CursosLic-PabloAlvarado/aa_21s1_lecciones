#!/usr/bin/octave-cli --persist

## (C) 2021 Pablo Alvarado
## EL5857 Aprendizaje Automático
## Escuela de Ingeniería Electrónica
## Tecnológico de Costa Rica

## --------------------------------------------------------------------
## Polynomial regression
##
## WITH NORMALIZATION AND DATA CENTERING
##
## Implementation of J and gradJ for the general linear case
## --------------------------------------------------------------------

pkg load optim;

% Evaluate the hypothesis with all x given
function y=evalhyp(x,theta)
  XX=bsxfun(@power,x,0:1);
  y=XX*theta;
endfunction;

function theta=regress(X,Y)
  # Construct the design matrix with the original data
  Xo=bsxfun(@power,X,(0:1));

  # The outputs vector with the original data

  # Normal equations
  theta=pinv(Xo)*Y;
  #theta=inv(Xo'*Xo)*Xo'*Y;
endfunction;

## -------------------------------------------------------------------

## Data stored each sample in a row, where the last row is the label
D=load("escazu.dat");

normalizer_type="normal";
## normalizer_type="minmax";

## Normalize the data
Xo = D(:,1); ## Original data (areas)
nx = normalizer(normalizer_type);
X = nx.fit_transform(Xo);

## The outputs vector with the original data
Y=D(:,4); ## Original data (prices)

## Limits for plot of regressed lines
minArea = min(Xo);
maxArea = max(Xo);
minPrice=min(Y);
maxPrice=max(Y);

areas=linspace(minArea,maxArea,250)';
nareas=nx.transform(areas);

figure(1,"name","Regression on normalized data");
hold off;
plot(Xo,Y,"ob","markersize",10,"markerfacecolor",[1,0.7,0.1]); ## Original data points
hold on;


plot(areas,evalhyp(nareas,regress(X,Y,1)),'k;n=1;','linewidth',3);

axis([minArea maxArea minPrice maxPrice]);  
xlabel('{x_1=area}');
ylabel("precio");
grid
