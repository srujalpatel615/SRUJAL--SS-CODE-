clc;
close all;
clear;

s3 = [0 0 0 0 0 1 1 1 1 1 0 0 0 0 0];

s4 = s3;

y3 = zeros(1,length(s3)+length(s4)-1);

for i = 1:length(s3)
    for j = 1:length(s4)
        y3(i+j-1) = y3(i+j-1) + s3(i)*s4(j);
    end
end

subplot(3,1,1);
stem(s3);
title("Rectangular Signal s3");

subplot(3,1,2);
stem(s4);
title("Rectangular Signal s4");

subplot(3,1,3);
stem(y3);
title("Result Of Convolution");