clc;
clear;
%first part

a = input('Enter a positive number: ');


%second part
if a <= 0
    error('Input must be strictly greater than zero!');
end
x = a;
d= inf;
iter = 0;

while d >= 0.0001
    x_new = (x + a / x) / 2;
    d = abs(x_new - x);
    x = x_new;
    iter = iter + 1;
end

fprintf('Calculated root: %.6f\n', x);
fprintf('Number of iterations: %d\n', iter);
fprintf('MATLAB sqrt(a):  %.6f\n', sqrt(a));
fprintf('Absolute error:  %.2e\n', abs(x - sqrt(a)));


test = [25, 7, 0.5];
disp('Testing predefined values:');
for val = test
    x_t = val;
    while true
        x_next = (x_t + val / x_t) / 2;
        if abs(x_next - x_t) < 0.0001, break; end
        x_t = x_next;
    end
    fprintf('a = %-5.2f | Root = %-8.5f | sqrt() = %-8.5f | Diff = %.2e\n', ...
            val, x_t, sqrt(val), abs(x_t - sqrt(val)));
end