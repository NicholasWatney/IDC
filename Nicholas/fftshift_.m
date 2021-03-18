

% Shifts half the array to beginning
% To make DFT more appealing to the eye.
% Author: Nicholas Meyer

function [X] = fftshift_(X_old)
    len = length(X_old);
    if mod(len, 2) == 0
        X = X_old(len/2+1:len);
        X = [X, X_old(1:len/2)];
    else
        X = X_old((len+1)/2+1:len);
        X = [X, X_old(1:(len+1)/2)];
    end
end
