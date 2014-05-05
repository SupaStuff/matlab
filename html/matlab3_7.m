%Jean Pe�a
t = 0:pi/32:2*pi; %for a smooth circle pi/32 was more than enough
x = cos(t);
y = sin(t);
plot(x,y);
axis equal;
title(sprintf('<cos(t), sin(t)>\nJean Pe�a'));
xlabel('x');
ylabel('y');
