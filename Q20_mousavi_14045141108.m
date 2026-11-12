
clc;
clear;
close all;
 
%first part
a = input('Enter a: ');
b = input('Enter b: ');
c = input('Enter c: ');

p = [a, b, c];
r = roots(p);
disp('Roots:');
disp(r);


%second part
if  isreal(r)
    margin = max(abs(r(2) - r(1)), 2);
    x_min = min(r) - margin;
    x_max = max(r) + margin;
else
    
    vertex_x = -b / (2 * a);
    x_min = vertex_x - 5;
    x_max = vertex_x + 5;
end

x = linspace(x_min, x_max, 500);
y = polyval(p, x);

figure;
plot(x, y, 'b-', 'LineWidth', 2); hold on;
yline(0, 'k--', 'LineWidth', 1); 



%third part
real_roots = r(imag(r) == 0);
if ~isempty(real_roots)
    plot(real_roots, zeros(size(real_roots)), 'ro', ...
         'MarkerFaceColor', 'r', 'MarkerSize', 8);
    legend('Parabola y(x)', 'y = 0', 'Roots', 'Location', 'best');
else
    legend('Parabola y(x)', 'y = 0', 'Location', 'best');
end

title(sprintf('Parabola: %.2fx^2 + %.2fx + %.2f = 0', a, b, c));
xlabel('x'); ylabel('y');
grid on;