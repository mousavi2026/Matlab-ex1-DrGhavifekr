
clc;
clear all


%first part
t = 0:0.5:20;
s = 60 * (1 - exp(-t / 5))

%second part
v_d = diff(s) / diff(t);
v_g = gradient(s, 0.5);

fprintf('Length of t: %d\n', length(t));
fprintf('Length of diff result: %d\n', length(v_d));
fprintf('Length of gradient result: %d (matches t)\n', length(v_g));


syms t_sym
s_sym = 60 * (1 - exp(-t_sym / 5));
v_sym = diff(s_sym, t_sym);
v_at_5 = double(subs(v_sym, t_sym, 5));
fprintf('Exact symbolic velocity at t=5s: %.4f m/s\n', v_at_5);

 %third part
max_v = max(v_g);
a_grad = gradient(v_g, 0.5);

idx_10 = find(t == 10);
fprintf('Max Velocity: %.4f m/s\n', max_v);
fprintf('At t=10s: Velocity = %.4f m/s, Acceleration = %.4f m/s^2\n', ...
        v_g(idx_10), a_grad(idx_10));