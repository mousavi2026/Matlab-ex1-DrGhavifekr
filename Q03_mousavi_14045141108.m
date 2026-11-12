clear all
clc
% first part 

v=input(' enter your voltage with volt unit ');
r=input(' enter your resistance whit ohm unit ');


%second part 
i=v/r;
p=v*i;


%third part
fprintf('the current is %.4f A and the power of element is %f W',i,p);

%forth part 
V=12
R=820
I=V/R;
P=V*I;
fprintf('the current is %.4f A and the power of element is %f W',I,P);