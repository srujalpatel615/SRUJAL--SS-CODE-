clc;
clear;
close all;

t = -2*pi:0.02:2*pi;

a = [1 -1];
b1 = [1];

N = 10;

y1 = zeros(size(t));

figure(1);

original = zeros(size(t));
original(sin(t) >= 0) = 1;
original(sin(t) < 0) = -1;

plot(t,original,'k','LineWidth',2);
hold on;

for k = 1:N

    n = 2*k-1;

    y1 = y1 + (4/pi)*sin(n*t)/n;

    plot(t,y1);

    title('Fourier Series of Square Wave');
    xlabel('Time');
    ylabel('Amplitude');
    grid on;

    pause(1);

end

hold off;