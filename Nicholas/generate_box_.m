
clear; clc;
DEBUG = 0;

Fs = 100;
Ts = 1/Fs;
n = 0:Ts:1-Ts;

x = box_(Fs);
file = fopen("box_inputs.txt", "w");
for i = 1:length(x)
    fprintf(file, "%d\n", x(i));
end
fclose(file);

if (DEBUG)
    file = fopen("box_inputs.txt", "r");
    x = fscanf(file, "%d")';
    figure(1);
    stem(n, x);
end

function [x] = box_(len)
    x = zeros(1, len);
    x(round(len/3):round(2*len/3)) = 1;
end
