clc;
close all;
clear;

s1 = [1 2 3 4 5 4 3 2 1 -1 -2 -3 -4 -5 -4 -3 -2 -1];

s2 = s1;

y1 = zeros(1,length(s1)+length(s2)-1);

for i = 1:length(s1)
    for j = 1:length(s2)
        y1(i+j-1) = y1(i+j-1) + s1(i)*s2(j);
    end
end

subplot(3,1,1);
stem(s1);
title("Triangular Signal s1");

subplot(3,1,2);
stem(s2);
title("Triangular Signal s2");

subplot(3,1,3);
stem(y1);
title("Result Of Convolution");