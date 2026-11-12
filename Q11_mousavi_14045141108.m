clear all
clc
%first part
syms t
a=limit((1-cos(t))/(t^2),t,0);
disp(a);

%second part 
fprintf('\n');
b=limit((2*t+1)/(t-3),t,inf);
disp(b);
fprintf('\n');


%third part
syms x
c=limit(1/x,x,0,'right');
d=limit(1/x,x,0,'left');
fprintf('right limit is %f \nleft limit is %f',c,d);