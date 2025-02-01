function y = ChapVong (x1, x2, N);
x1 = [x1 zeros(1, N - length(x1))];
x2 = [x2 zeros(1, N - length(x2))];

[Xk1] = dft_v(x1, N);
[Xk2] = dft_v(x2, N);
Yk = Xk1.*Xk2;
y = idft_v(Yk, N);
end



