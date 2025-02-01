function y = circonvt_fft(x1, x2, N)
[Xk1] = fft(x1, N);
[Xk2] = fft(x2, N);
Yk = Xk1.*Xk2;
y = ifft(Yk, N);
end