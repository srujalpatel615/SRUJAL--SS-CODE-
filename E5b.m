clc;
close all;
clear;

s1 = [1 2 3 4 5 4 3 2 1 -1 -2 -3 -4 -5 -4 -3 -2 -1];

s3 = [0 0 0 0 0 1 1 1 1 1 0 0 0 0 0];

y2 = zeros(1,length(s1)+length(s3)-1);

for i = 1:length(s1)
    for j = 1:length(s3)
        y2(i+j-1) = y2(i+j-1) + s1(i)*s3(j);
    end
end

subplot(3,1,1);
stem(s1);
title("Triangular Signal s1");

subplot(3,1,2);
stem(s3);
title("Rectangular Signal s3");

subplot(3,1,3);
stem(y2);
title("Result Of Convolution");