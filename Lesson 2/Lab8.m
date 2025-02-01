a = [1 0 0];
b = [1 -1 0.9];
n = [-5:5];
y = filter(a, b, n);
[r,l] = xcorr(y);
stem (l,r);
title('Ham tu tuong quan');
