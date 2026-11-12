clc;
clear;

%first part 
t1 = 0:0.01:5;
v1 = 3 * t1.^2 + 2 * t1;
dist_trapz = trapz(t1, v1);


%second part
syms t
v_sym = 3*t^2 + 2*t;
dist_exact = double(int(v_sym, t, 0, 5));

fprintf('Distance (trapz step 0.01): %.4f m\n', dist_trapz);
fprintf('Distance (symbolic exact):  %.4f m\n', dist_exact);

% third part
t2 = 0:0.5:5;
v2 = 3 * t2.^2 + 2 * t2;
dist_coarse = trapz(t2, v2);
fprintf('Distance (trapz step 0.5):  %.4f m\n', dist_coarse);
fprintf('Absolute Error:             %.4f m\n', abs(dist_exact - dist_coarse));

%forth part
cum_dist = cumtrapz(t1, v1);
half_dist = dist_exact / 2;
idx_half = find(cum_dist >= half_dist, 1);
fprintf('Vehicle passed half-distance (%.2f m) at t = %.2f s\n', ...
        half_dist, t1(idx_half));