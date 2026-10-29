clc;
clear;
close all;

t = -2*pi:0.05:2*pi;

a = 2;
f = 1;

x1 = a*sin(2*pi*f*t);

x2 = a*cos(2*pi*f*t);

figure(1);

subplot(2,2,1);
plot(t,x1);
xlabel("Time");
ylabel("Amplitude");
title("Sinusoidal Wave");

subplot(2,2,2);
plot(t,x2);
xlabel("Time");
ylabel("Amplitude");
title("Cosine Wave");


t1 = -10:0.01:10;

x3 = sin(pi*t1)./(pi*t1);
x3(t1 == 0) = 1;

figure(2);

plot(t1,x3);
xlabel("Time");
ylabel("Amplitude");
title("Sinc Function Wave");


t2 = -2:0.01:2;

x4 = 2*abs(2*(t2-floor(t2+0.5)))-1;

figure(3);

plot(t2,x4);
xlabel("Time");
ylabel("Amplitude");
title("Triangular Wave");


t3 = -5:0.01:5;

x5 = zeros(size(t3));
x5(t3 >= -1 & t3 <= 1) = 1;

figure(4);

plot(t3,x5);
xlabel("Time");
ylabel("Amplitude");
title("Rectangular Wave");


t4 = -2:0.001:2;

x6 = 2*(t4-floor(t4+0.5));

figure(5);

plot(t4,x6);
xlabel("Time");
ylabel("Amplitude");
title("SawTooth Wave");


t5 = 0:0.01:5;

a = 1.5;

x7 = exp(-a*t5);

figure(6);

plot(t5,x7);
xlabel("Time");
ylabel("Amplitude");
title("Exponential Decaying Wave");


t6 = 0:0.01:5;

a = 1.5;

x8 = exp(a*t6);

figure(7);

plot(t6,x8);
xlabel("Time");
ylabel("Amplitude");
title("Exponential Growing Wave");