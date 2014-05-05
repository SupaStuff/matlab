%Jean Peña
%a) the ellipse with parametric equations
%   x = 4cost, y = 3sint , 0 <= t <= 2pi
syms t;
x = 4*cos(t);
y = 3*sin(t);
a = 0;
b = 2*pi;

g1 = ezplot(x, y, [a, b]);

%b) the largest circle that can be inscribed in the ellipse
hold on;
g2 = ezplot(3*cos(t), y, [a, b]);

axis equal;

%c) the ellipse should be drawn in a solid linestyle
%   and the circle in a dotted style
set(g1, 'LineStyle', '-');
set(g2, 'LineStyle', ':');

%d) the graph should have a title that includes your name
title(sprintf(['x = ', char(x), ' y = ', char(y), '\nJean Peña']));

%e) the graph should display a legend that shows
%   which graph is the ellipse and which is the circle.
legend('Ellipse', 'Circle');