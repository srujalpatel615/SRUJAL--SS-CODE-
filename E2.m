clc;
clear;
close all;

t = -10:10;

% Impulse function
impulse = zeros(size(t));
impulse(t == 0) = 1;

% Unit Step function
ustep = zeros(size(t));
ustep(t >= 0) = 1;

% Ramp function
r = t .* ustep;

% Signum function
s = sign(t);


figure(1);

subplot(2,2,1);
stem(t,impulse);
title("Unit Impulse Function");

subplot(2,2,2);
stem(t,ustep);
title("Unit Step Function");

subplot(2,2,3);
stem(t,r);
title("Ramp Function");

subplot(2,2,4);
stem(t,s);
title("Signum Function");


% Time Shifting

shift = 2;

% u(t-2)
ushift = zeros(size(t));
ushift(t >= shift) = 1;

% u(t+2)
ushift1 = zeros(size(t));
ushift1(t >= -shift) = 1;

% r(t-2)
rshifted = (t-shift) .* ushift;


% Time Scaling

r2t = (2*t) .* (2*t >= 0);

r05t = (0.5*t) .* (0.5*t >= 0);


% Time Reversal

r_mt = (-t) .* (-t >= 0);


figure(2);

subplot(3,2,1);
stem(t,ushift);
title("Shifted Unit Step u(t-2)");

subplot(3,2,2);
stem(t,ushift1);
title("Shifted Unit Step u(t+2)");

subplot(3,2,3);
stem(t,rshifted);
title("Shifted Ramp r(t-2)");

subplot(3,2,4);
stem(t,r2t);
title("Time Scaling r(2t)");

subplot(3,2,5);
stem(t,r05t);
title("Time Scaling r(0.5t)");

subplot(3,2,6);
stem(t,r_mt);
title("Time Reversal r(-t)");