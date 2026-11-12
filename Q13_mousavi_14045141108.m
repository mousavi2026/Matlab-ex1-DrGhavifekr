
clc;
clear;

%first part
syms s t
Is = 12 / (s * (4 + 0.2*s));

%second part
it = ilaplace(Is);
disp('Time domain current i(t):');
disp(it);

%third part
i_01 = double(subs(it, t, 0.1));
i_1  = double(subs(it, t, 1.0));
fprintf('Current at t = 0.1 s: %.4f A\n', i_01);
fprintf('Current at t = 1.0 s: %.4f A\n', i_1);

%last part
i_steady = double(limit(it, t, inf));
i_theory = 12 / 4;
fprintf('Steady-state current via limit: %.4f A\n', i_steady);
fprintf('Theoretical current (V/R):       %.4f A\n', i_theory);