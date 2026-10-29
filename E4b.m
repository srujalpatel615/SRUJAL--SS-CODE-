clc;
close all;
clear;

s1 = [1 2 -3 4 0 0 0 0];

N = length(s1);

E = sum(abs(s1).^2);

P = E/N;

disp("Energy of Signal = ");
disp(E);

disp("Power of Signal = ");
disp(P);