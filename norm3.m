
function n= norm3m(v)
b=0;
for i=1:length(v)
    b=b+abs(v(i))^3;
end
n=b^(1/3);
end

disp(' norm3 of [3,4]:');
disp(' norm3m([3,4])');
disp(' norm3 of [1,2,2]:');
disp('norm3m([1,2,2])');