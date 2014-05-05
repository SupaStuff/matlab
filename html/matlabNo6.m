%Jean Peña
clc %clear console
syms x; %symbolic x
%define this ridiculous function
f=@(x)((x.^4).*log((x.^3)+1)-sin(x.^8).*exp(-3.*(x.^2)))./((x.^3)+log(x)).^0.5
df=diff(f(x)) %differentiate the ridiculous function f.
df=@(x)subs(df); %define it as a new function of x
fprintf('df(1.1)');
double(df(1.1)) %Matlab is so dumb, that I have to tell it to give me the
                %answer when I ask it to plug in some value for x.
fprintf('int(f)|1-2|');
quad(f, 1, 2) %obsolete integral of f from 1 to 2 that's used when
              %matlab complains about int. Uses Simpson's Rule.

%f=@(x)((x^4)*log((x^3)+1)-sin(x^8)*exp(-3*(x^2)))/((x^3)+log(x))^0.5;
%df=diff(f(x));
%df=@(x)subs(df);
%df(1.1)
%double(int(f(x), 1, 2))