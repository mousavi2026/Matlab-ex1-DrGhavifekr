clear all
clc
%firs part 
a=[22.5 22.8 23.1 24 25.2 26.1 26 25.4 24.3 23.2];


%second part 
average=0
average=sum(a)/10;
fprintf(' average=%f  and min=%f and max=%f and std=%f ',average,mean(a),max(a),std(a));



%third part 
d=a-average;
disp(d);


%forth part 
f=sort(a);
disp(f(3));