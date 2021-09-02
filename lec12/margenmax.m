#!/usr/bin/octave

## Copyright (C) 2021 Pablo Alvarado
## EL5857 Aprendizaje Automático
## Escuela de Ingeniería Electrónica
## Tecnológico de Costa Rica

## Create some random separable data

N=20;

## Rotate them by 60 degrees
theta=deg2rad(60);
R=[cos(theta) sin(theta);-sin(theta) cos(theta)];
t=[1.5 1.6];

Xp = [rand(N,1)*4-2  rand(N,1)+0.5]*R' + t;
Xm = [rand(N,1)*4-2 -rand(N,1)-0.5]*R' + t;

X = [Xp;Xm];
Y = [ones(N,1);-ones(N,1)];
hold off;

function drawarrow(from,to,tiplength,varargin)

  vct=[to(1)-from(1);to(2)-from(2)];
  vct=vct/norm(vct);

  tipangle=deg2rad(20);
  
  R=[vct(1),-vct(2);vct(2),vct(1)];

  T=[-tiplength*cos(tipangle),0,-tiplength*cos(tipangle);
      tiplength*sin(tipangle),0,-tiplength*sin(tipangle)];

  T=R*T + to(:); # Rotate the tip
  
  plot([from(1),to(1)],[from(2),to(2)],varargin{:});
  plot(T(1,:),T(2,:),varargin{:});

  
  
endfunction

do

  ## Plot the data
  plot(Xp(:,1),Xp(:,2),"o","markersize",10,"markerfacecolor",[0.5,0,0],"markeredgecolor",[0.25,0,0]);
  hold on;
  plot(Xm(:,1),Xm(:,2),"s","markersize",8,"markerfacecolor",[0,0.5,0],"markeredgecolor",[0,0.25,0]);

  daspect([1,1,1]);
  axis([-1,4,-1,4]);
  
  fflush(stdout);
  drawnow();
  
  [x,y,buttons] = ginput(1);

  nw = norm([x;y]); # l2 norm of w
  w = [x;y]/nw;       # w is normed such that |w|=1
  
  ## Initially, let's work with a line that passes through the clicked point,
  ## not exactly the best discriminant line
  
  ## Find the closest point of each class to the "clicked" line
  dip = Xp*w;
  [mindp,idp]=min(dip);
  pp = Xp(idp,:);

  dim = Xm*w;
  [maxdm,idm]=max(dim);
  pm = Xm(idm,:);

  ## Distance between the closest positive and the "best" line
  dp = (pp - pm)*w/2;
  qp = pp - dp*w';  ## Closest point in the line 
  
  ## Distance between the closest negative and the line
  dm = dp;
  qm = pm + dm*w'; ## Closest point in the line 
  
 
  
  
  ## Calculate color
  valid=0;
  if ( (dp>0) && (dm>0) )
    margincolor=[0,0.7,0];
    valid=1;
  else
    margincolor=[0.7,0,0];
    valid=0;
  endif

  hold off;

  
  if (abs(x)>=abs(y))
    b=nw/w(1);
    m=-w(2)/w(1);

    
    if (valid)
      bp=(pp*w)/w(1);
      bm=(pm*w)/w(1);

      fill([-m+bp,m*4+bp,m*4+bm,-m+bm],[-1,4,4,-1],[1,1,0.95]);
      hold on;      
      
      plot([-m+bp,m*4+bp],[-1,4],"linewidth",2,"color",[1 0.75 0.75]);
      plot([-m+bm,m*4+bm],[-1,4],"linewidth",2,"color",[0.75 1 0.75]);

      b2=(bm+bp)/2;
      plot([-m+b2,m*4+b2],[-1,4],"linewidth",1,"color",[0.5 0.5 0.5]);

    endif

    plot([-m+b,m*4+b],[-1,4],"linewidth",3,"color",margincolor);
    hold on;
    
  else
    b=nw/w(2);
    m=-w(1)/w(2);

    if (valid)
      bp=(pp*w)/w(2);
      bm=(pm*w)/w(2);

      fill([-1,4,4,-1],[-m+bp,m*4+bp,m*4+bm,-m+bm],[1,1,0.95]);
      hold on;
      
      plot([-1,4],[-m+bp,m*4+bp],"g","linewidth",3,"color",[1 0.75 0.75]);     
      plot([-1,4],[-m+bm,m*4+bm],"g","linewidth",3,"color",[0.75 1 0.75]);

      b2=(bm+bp)/2;
      plot([-1,4],[-m+b2,m*4+b2],"g","linewidth",1,"color",[0.5 0.5 0.5]);
    endif
    plot([-1,4],[-m+b,m*4+b],"g","linewidth",3,"color",margincolor);
    hold on;

    
  endif
  
  ## Plot the normalized weight vector
  plot([0,x],[0,y],"b");
  #plot([0,w(1)],[0,w(2)],"b","linewidth",3);
  drawarrow([0,0],w,0.2,"b","linewidth",3);
  
  ## Plot closest point to positive class  
  plot(pp(1),pp(2),"o","markersize",20,"markerfacecolor",[1,1,0],"markeredgecolor",[1,1,0.5]);

  ## Plot closest point to negative class  
  plot(pm(1),pm(2),"o","markersize",20,"markerfacecolor",[1,1,0],"markeredgecolor",[1,1,0.5]);

  if (valid)
  
    ## Distance line to positive support points  
    plot([pp(1) qp(1)],[pp(2) qp(2)],"color",[0.5,0.5,0.5]);
    plot(qp(1),qp(2),"o","markersize",6,"markerfacecolor",[0.75,0.5,0.5],"markeredgecolor",[0.5,0.5,0.5]);

    ## Distance line to negative support points  
    plot([pm(1) qm(1)],[pm(2) qm(2)],"color",[0.5,0.5,0.5]);
    plot(qm(1),qm(2),"o","markersize",6,"markerfacecolor",[0.5,0.75,0.5],"markeredgecolor",[0.5,0.5,0.5]);

  endif    
  
until (buttons==3);
