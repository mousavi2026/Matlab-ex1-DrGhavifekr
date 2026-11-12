clear all
clc
%first part 
a=2+3j;
b=3-4j;
c=a/b;
fprintf('anser is %j\n',c);


%second part 
R=10;
L=0.1;
C=2*exp(1)-4;
f=50;
w=2*pi*f;
z=R+j*(w*L-(1/(w*C)));
disp(z)
fprintf('\n');
real(z)
fprintf('\n');
imag(z)


%third part
disp(abs(z))
fprintf('\n');
disp(angle(z)*180/pi)