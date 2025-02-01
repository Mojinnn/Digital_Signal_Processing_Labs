function [Hr, w, b, L] = Hr_Type2(h)
M = length(h);
L = M/2;
n = [1:1:L]; n = n - 0.5;
b = 2*h(L:-1:1);
w = [0:1:500]'*pi/500;
Hr = cos(w*n)*b';
end