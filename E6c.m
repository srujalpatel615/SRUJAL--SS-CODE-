clc;
clear;
close all;

t = -2*pi:0.02:2*pi;

a = [1 -1];
b1 = [1];

N = 10;

y3 = zeros(size(t));

figure(1);

original = (2/pi)*asin(sin(t));

plot(t,original,'k','LineWidth',2);
hold on;

for k = 1:N

    n = 2*k-1;

    y3 = y3 + (8/pi^2)*((-1)^(k-1))*sin(n*t)/(n^2);

    plot(t,y3);

    title('Fourier Series of Triangular Wave');
    xlabel('Time');
    ylabel('Amplitude');
    grid on;

    pause(1);

end
