clear all
clc
%first part 
t=[0 1 2 5 10];
for t=[0 1 2 5 10]
         v=12*(1-exp(-t/2));
     fprintf(' the voltage is %f\n',v); 
     
end


%second part
t=-2*log(.05);
abs(t);

%third part 
for t=[0 1 2 5 10]
    V=12*exp(-t/2);
    fprintf('the decharge voltage is %f\n',V);
end
T=10;
V=12*exp(-T/2);
fprintf(' in 10 seceond voltage is %f',V);