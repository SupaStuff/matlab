%Jean Peña
clc
clf
%% ex 3.1
fprintf('Exercise 3.1\n')
fprintf('x = linspace(0, pi, 5)')
x = linspace(0, pi, 5)
fprintf('cos(x)')
cos(x)
fprintf('sin(x)')
sin(x)
fprintf('x.*sin(x)')
x.*sin(x)
fprintf('x*sin(x) gives an error')
%x*sin(x)

%% ex 3.2
fprintf('\n\n\nExercise 3.2\n')
fprintf('k = linspace(1,10,10)')
k = linspace(1,10,10)
fprintf('w = 1./(k.^2) ')
w = 1./(k.^2)

%% ex 3.3
fprintf('\n\n\nExercise 3.2\n')
1 : 10 % generate integers from 1 to 10. You do not need the spaces.
1 : .5 : 10 % Generate numbers from 1 to 10 with spacing of .5 . (You can read the symbol as
            %from 1 by .5 to 10.” When the middle number is omitted, it defaults to 1.)
10 : -1 : 1 % You can generate numbers in decreasing order
1 : 1.5 : 9 % The increment does not have to fill out the range exactly. Matlab stops at the
            %largest value in the list before the endpoint.

fprintf('x = 0:pi/4:pi is the same as linespace() in Exercise 3.1')
x = 0:pi/4:pi
fprintf('cos(x)')
cos(x)
fprintf('sin(x)')
sin(x)
fprintf('x.*sin(x)')
x.*sin(x)
fprintf('Again, x*sin(x) gives an error')
%x*sin(x)


%% ex 3.4
fprintf('\nExercise 3.4\nNot displaying because the instructions said not to. Check the code\n')
%a)
Xa=5:5:1000;
%b)
Xb=linspace(0,1,11);
%c)
Xc=linspace(0,2*pi,20);
%d)
Xd=1:1:4;
Xd=Xd.^Xd;
%e)
Xe=[1 2 4 5];
Xe=1./Xe;

%% ex 3.5
figure(1);
fprintf('\nExercise 3.5\n')
X=[1 3 3 1 1];
Y=[2 2 4 4 2];
plot(X,Y, 'r');
axis equal;
axis([0 5 0 5]);
title(sprintf('A Square by Jean Peña'));

%% ex 3.6
figure(2);
hold on;
x=-pi:pi/32:pi;
y=sin(x.^2).*cos(x);
dy=2.*x.*cos(x.^2).*cos(x) - sin(x.^2).*sin(x);
g=plot(x,y);
dg=plot(x,dy, 'r');
title(sprintf('Graph of y=sin(x^2)cos(x) and y''\nJean Peña'));
legend('y', 'y''');
set(g, 'LineStyle', '-');
set(dg, 'LineStyle', ':');
axis([-pi pi -6 6]);
grid on;
set(gca, 'XTick', -pi:pi/2:pi);
set(gca, 'XTickLabel', {'-pi'; '-pi/2'; '0'; 'pi/2'; 'pi'})

%% ex 3.7
figure(3);
t = 0:pi/32:2*pi; %for a smooth circle pi/32 was more than enough
x = cos(t);
y = sin(t);
plot(x,y);
axis equal;
title(sprintf('<cos(t), sin(t)>\nJean Peña'));
xlabel('x');
ylabel('y');