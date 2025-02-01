function [Hr, w, c, L] = Hr_Type3(h)
M = length(h);
L = (M-1)/2;
c = [2*h(L+1:-1:1)];
w = [0:1:500]'*pi/500;
n = [0:1:L];
Hr = sin(w*n)*c';
end