clear all
clc
%first part 
syms t
p=[-5 40 0];
for i=[0 2 4 6]
    disp(polyval(p,i));
end


%second part
roots(p);
disp(roots(p));


%third part
p=conv([5 0],[-1 8]);
disp(p);



%forth part 
p=[-5 40 0];
middle_point = -40/(-10);
disp(polyval(p,4));