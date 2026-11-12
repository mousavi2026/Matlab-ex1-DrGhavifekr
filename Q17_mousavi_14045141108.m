clear all
clc
close all

%first part 
x=rand(1,5);
bar(x,'red')


%second part
A=[22 28 8 33 11];
pie(A)



%third part
A=[22 28 8 33 11];
e=[0 0 0 1 0];
subplot(1,2,1)
pie(A,e)
title(' usage of electricity');
subplot(1,2,2)
bar(x,'red');
title('usage of electricity');

