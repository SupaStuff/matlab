%Jean Peña
clc
clf

%% ex 5.1
x=linspace(-1,1,25);
y=x;
[x,y]=meshgrid(x, y);
z=2.*x.^2+x.*y+y.^4;

subplot(1,2,1);
surfc(x, y, z);
grid on;
%set(gca,'xtick',-1:25:1);
%set(gca,'ytick',-1:25:1);
xlabel('x');
ylabel('y');
zlabel('z');
title(sprintf('f(x,y)=2x^2+xy+y^4\nJean Peña'));

subplot(1,2,2);
hold on;
[c,h]=contour(x,y,z);
clabel(c,h);
v = 0:0.1:.5;
[C,H]=contour(x,y,z,v);
clabel(c,h,v);
xlabel('x');
ylabel('y');
zlabel('z');
title(sprintf('Contour of f(x,y)=2x^2+xy+y^4\nJean Peña'));

%Using the data cursor to estimate the minimum points:
%(-0.08333, 0.25, -0.0030382)
%(0.08333, -0.25, -0.0030382)

%The actual points after doing calculus:
%(-1/16, 1/4, -1/256)
%(1/16, -1/4, -1/256)
%and (0,0,0) is a saddle point