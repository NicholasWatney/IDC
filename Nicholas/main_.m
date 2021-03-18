

% Author: Nicholas Meyer
% The main method.

clear; clc;

generate_box_;
file = fopen("box_inputs.txt", "r");
x_n = textscan(file, "%f64");
x_n = x_n{1,1}';

N = length(x_n);
X_ = fftshift_(abs(fft_(x_n, N)));
X = fftshift(abs(fft(x_n, N)));

compare_(X_, X);

