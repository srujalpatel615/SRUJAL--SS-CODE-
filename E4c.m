clc;
close all;
clear;

s1 = [1 2 -3 4 0 0 0 0 0];

N = length(s1);

n = 0:N-1;

E = (s1 + s1(end:-1:1))/2;

O = (s1 - s1(end:-1:1))/2;

disp("Even Part of Signal = ");
disp(E);

disp("Odd Part of Signal = ");
disp(O);

figure;

stem(n,E);
title("Even");

figure;

stem(n,O);
title("Odd");