
% Basic DFT.
% Author: Nicholas Meyer
% @param x input signal
% @param N point DFT
% @return X DFT of signal

function [X] = fft_(x, N)

    X = zeros(1, N);
    len = length(x);

    if len > N
        x = x(1:N);
    elseif len < N
        x = [x, zeros(1, N - len)];
    end

    n = 0 : N-1;
    for k = 0: N - 1
        X(k + 1) = sum(x(n+1).*exp(-j*2*pi*(n)*k/N));
    end

end
