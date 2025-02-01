function [Xk] = dft_v(x, N)
n = [0:1:N-1];
k = [0:1:N-1];

nk = n'*k;
WN = exp(-j*2*pi/N);
WNnk = WN.^(nk);

Xk = x*WNnk;
end