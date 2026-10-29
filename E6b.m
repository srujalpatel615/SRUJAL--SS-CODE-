clc;
clear;
close all;

t = -2*pi:0.02:2*pi;

a = [1 -1];
b1 = [1];

N = 10;

y2 = zeros(size(t));

figure(1);

original = 2*(t/(2*pi)-floor(t/(2*pi)+0.5));

plot(t,original,'k','LineWidth',2);
hold on;

for k = 1:N

    y2 = y2 + (2/pi)*((-1)^(k+1))*sin(k*t)/k;

    plot(t,y2);

    title('Fourier Series of Sawtooth Wave');
    xlabel('Time');
    ylabel('Amplitude');
    grid on;

    pause(1);

end

hold off;