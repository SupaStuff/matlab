% Parametric plotting script
syms t % declare t a symbolic variable
% User Input section
x=input('x = '); % the semi-colon suppresses display of the output
y=input('y = ');
a=input('from: '); % smallest parameter value
b=input('to: '); % largest parameter value
% End of user input. Now we write code to do the basic plotting
clf % clears current figure
ezplot(x,y,[a,b])