clear all
clc
%first part
for j=3:2:34
    disp(j)
end
k=3;
while (k<=34)
    disp(k);
    k=k+2;
end

%second part
syms x n k l
x=input('enter your variable\n');
n=input('enter ypur power\n');
sum=0;
for m=1:n
    sum1=sum+((2/x)^m);
end
disp(sum1)


%third part
v=0;
i=0;
while abs(500-v)>5
    v=v+0.1*(500-v)
    i=i+1;
end
fprintf('display %f and %f ', i,v);