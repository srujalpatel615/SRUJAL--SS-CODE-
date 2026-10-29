clc;
clear;
close all;

a = 10;
b = 20;

disp("Addition = ");
disp(a+b);

disp("Subtraction = ");
disp(a-b);

disp("Multiplication = ");
disp(a*b);

disp("Division = ");
disp(a/b);

t = 0:0.0001:4*pi;

x = sin(t);
subplot(2,2,1);
plot(t,x);
xlabel("Time");
ylabel("Amplitude");
title("Sine Wave");

x = 2*sin(t);
subplot(2,2,2);
plot(t,x);
xlabel("Time");
ylabel("Amplitude");
title("Amplitude Scaling");

x = sin(2*t);
subplot(2,2,3);
plot(t,x);
xlabel("Time");
ylabel("Amplitude");
title("Time Scaling");

x = 2*sin(2.5*t);
subplot(2,2,4);
plot(t,x);
xlabel("Time");
ylabel("Amplitude");
title("Amplitude and Time Scaling");