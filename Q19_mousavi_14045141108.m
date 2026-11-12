
clc;
clear all;
%first part

A = rand(4, 4);
is_sym_A = isequal(A, A.');
disp('Is random matrix A symmetric?');
disp(is_sym_A);

%second part
S = (A + A.') / 2;
is_sym_S = isequal(S, S.');
disp('Is constructed matrix S symmetric?');
disp(is_sym_S);

%third part
M = [2, -1,  4;
    -1,  5,  0;
     4,  0,  3];

is_sym_M = isequal(M, M.');
disp('Manual 3x3 Matrix:');
disp(M);
if is_sym_M
    disp('Program correctly identifies M as symmetric.');
else
    disp('Program identifies M as asymmetric.');
end