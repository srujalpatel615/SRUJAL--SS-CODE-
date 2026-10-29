clc
clear
close all

T = 2*pi;
omega = 2*pi/T;

t = linspace(0,3*T,2000);
x = zeros(size(t));
N = 1000;


for k = 1:2:N
    x = x + (4/pi)*(1/k)*sin(k*omega*t);
end

plot(t,x)
xlabel('Time')
ylabel('Amplitude')
title('Square Wave using Fourier Series')