clear all
clc
%first part 
A=[120 80 45;200 60 30;90 140 75];
P=[35000;80000;120000];
B=A*P;
fprintf(' sum is %f ',sum(B));


%second part 
c=A.*P;
disp(c);
disp(B);


%third part 
d=flip(A');
disp(d);


%forth part 
k=A*ones(3,1);
disp(k);