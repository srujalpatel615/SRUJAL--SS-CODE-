clc;
close all;
clear;

c = 2;
b = 5;

s1 = [1 2 -3 4];
s2 = [2 -2 5 4 6];

l1 = length(s1);
l2 = length(s2);

if l1 < l2
    s1 = [s1 zeros(1,l2-l1)];
else
    s2 = [s2 zeros(1,l1-l2)];
end

s11 = s1;
s21 = s2;

y1 = exp(s11);
y2 = exp(s21);

out1 = exp(b*s11 + c*s21);
out2 = b*y1 + c*y2;

tol = 0.0001;

if sum(abs(out2-out1)) < tol
    disp("System Is Linear");
else
    disp("System Is Non Linear");
end


s1 = [1 2 3 4 0 0 0 0 0];

k = 2;

s2 = [zeros(1,k) s1(1:end-k)];

y11 = s2;

y1 = s1;

y11_shift = [zeros(1,k) y1(1:end-k)];

if sum(abs(y11-y11_shift)) < tol
    disp("System Is Time Invariant");
else
    disp("System Is Time Variant");
end


figure;

subplot(2,2,1);
stem(out1);
xlabel("Sample");
ylabel("Amplitude");
title("Linearity Test");

subplot(2,2,2);
stem(out2);
xlabel("Sample");
ylabel("Amplitude");
title("Linearity Test");

subplot(2,2,3);
stem(y11);
xlabel("Sample");
ylabel("Amplitude");
title("Time Invariant Test");

subplot(2,2,4);
stem(y11_shift);
xlabel("Sample");
ylabel("Amplitude");
title("Time Invariant Test");