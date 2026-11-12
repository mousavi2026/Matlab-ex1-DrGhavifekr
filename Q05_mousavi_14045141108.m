clear all
clc

%first part 
a=10*rand(4,4);
disp(a)

%second part 
[max_idx , min_idx]=max(a(:));
[min_idx , max_idx]=min(a(:));

[f_max , h_min]=find(a== max(a));
[f_min , h_max]=find(a== min(a));

%third part 
A=a;
A(max_idx)=min(a) ;
A(min_idx)=max(a);
disp(A);

%FORTH PART
means= mean(a);
disp(means);
