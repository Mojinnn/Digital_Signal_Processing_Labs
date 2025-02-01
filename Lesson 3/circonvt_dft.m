function y = circonvt_dft(x1, x2, N)
x1 = [x1 zeros(1, N-length(x1))];
x2 = [x2 zeros(1, N-length(x2))];
[Xk1] = dft(x1, N);
[Xk2] = dft(x2, N);
Yk = Xk1.*Xk2;
y = idft(Yk, N);
end