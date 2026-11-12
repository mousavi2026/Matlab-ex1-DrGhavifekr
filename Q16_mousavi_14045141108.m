clear all
clc
close all
%first part
syms t
t=0:0.1:5
y1=sin(t)*(cos(t))^2/(t^2+1);
y2=sqrt(t^3)*exp(2);
plot(t,y1,'k',linewidth=1);
title('first graph');
hold on
plot(t,y2,'r',linewith=2);
title('second graph');
legend('y1','y2');

%second part
syms x
x=-2:0.05:2
figure f
f=sin(x)^2 +sinh(x)^2;
title('graph f');
figure z
z=cos(x)^2+cosh(x)^2;
title('graph z');
figure k
k=x^2+2*x*sin(x);
title(' graph k');



%third part 
syms d
d=0:0.001:2
u=sin(2*pi*3*d);
plot(d,u)