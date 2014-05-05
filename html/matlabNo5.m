%Jean Peña
function main(x0,y0)
%both parameters ae not required, but they will be 1 if not input
if (nargin<2) y0=1; end
if (nargin<1) x0=1; end

clc
clf
syms x;
syms y;

%define funtion
f=@(x,y)(x.^2).*sin(pi.*y);

%get gradient vector and z coordinate at f(1,1)
[dx, dy, z] = gradient2(f, x, y, x0, y0);
%parameterize the curve moving along the direction of the gradient vector
syms t;
[xt,yt,zt]=paramIt(dx,dy,f,x,y,t,x0,y0);

[dxt, dyt, dzt] = tangInt(xt,yt,zt,t,0);

%graph the curve on the surface in the diretion of the gradient vector
%because ezplot is an anus
curveOnSurf=ezplot3(xt,yt,zt);
set(curveOnSurf, 'Color', 'blue', 'LineWidth', 2);
hold on
%graph the surface
graphIt(f, -1, 1, -1, 1, 0.05);
%draw the gradient vector
gradientVector=quiver(x0,y0,dx, dy);
set(gradientVector, 'Color', 'green', 'LineWidth', 2);
tangentVector=quiver3(x0,y0,z,dxt,dyt,dzt);
set(tangentVector, 'Color', 'red', 'LineWidth', 2);
axis equal;
axis([-1 1 -2 1 -1 2]);
title(sprintf('f(x,y)=x^2*sin(pi*y) and some stuff\nJean Peña'));
end

function [dx, dy] = gradient(f, x, y)
    %returns the gradient vector
    dx=diff(f(x,y),x);
    dy=diff(f(x,y),y);
    
    %dx=vectorize(dx);
    %dy=vectorize(dy);
    
    dx=@(x,y)subs(dx);
    dy=@(x,y)subs(dy);
end

function [dx, dy, z] = gradientXY(f, dx, dy, x0, y0)
    %returns the gradient vector and f(x,y) at (a,b)
    dx=dx(x0,y0);
    dy=dy(x0,y0);
    z=f(x0,y0);
end

function [dx, dy, z] = gradient2(f, x, y, x0, y0)
    %computes the gradient vector, then
    %returns the gradient vector and f(x,y) at (a,b)
    [dx, dy] = gradient(f,x,y);
    [dx,dy,z]= gradientXY(f, dx, dy, x0, y0);
end

function graphIt(f, Xmin, Xmax, Ymin, Ymax, interval)
    %graph f(x,y) between Xmin-Xmax and Ymin-Ymax using [interval] ticks
    X=Xmin:interval:Xmax;
    Y=Ymin:interval:Ymax;
    [X,Y] = meshgrid(X,Y);
    fn = f(X,Y);
    surf(X,Y,fn);
end

function [xt,yt,zt] = paramIt(dx,dy,f,x,y,t,x0,y0)
    %xt=dx/sqrt(dx^2+dy^2);
    %yt=dy/sqrt(dx^2+dy^2);
    
    xt=(x0+dx.*t);
    yt=(y0+dy.*t);
    zt=subs(f,x,xt);
    zt=subs(zt,y,yt);
    
    %xt=@(t)subs(xt, t);
    %yt=@(t)subs(yt, t);
    %zt=@(t)subs(zt, t);
end

function [dxt,dyt,dzt] = tangInt(xt, yt, zt, t, t0)
    dxt=diff(xt);
    dyt=diff(yt);
    dzt=diff(zt);
    
    dxt=@(t)subs(dxt);
    dyt=@(t)subs(dyt);
    dzt=@(t)subs(dzt);
    
    dxt=dxt(t0);
    dyt=dyt(t0);
    dzt=dzt(t0);
end
