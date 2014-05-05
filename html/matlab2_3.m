%Jean Peña
syms t;

% r = ft = < r(cos(t)), r(sin(t)) >

x = cos(t);
y = sin(t);

% r = 10cos(4t)
% 0 <= t <= 2pi
ft = 10*cos(4*t);
a = 0;
b = 2*pi;

g1 = ezplot(ft*x, ft*y, [a, b]);
set(g1, 'LineStyle', '-');

hold on;

% r = t
% 0 <= t <= 4pi
ft = t;
b = 4*pi;

g2 = ezplot(ft*x, ft*y, [a, b]);
set(g2, 'LineStyle', ':');

title(sprintf('< r(cos(t)), r(sin(t)) >\nJean Peña'));
legend('r = 10cos(4t)', 'r = t');