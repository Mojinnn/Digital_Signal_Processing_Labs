
Nmin = 1;
Nmax = 2048;
fft_time = zeros(1, Nmax-Nmin+1);
for n = Nmin:1:Nmax
    x = rand(1,n);
    t = clock;
    fft(x);
    fft_time(n-Nmin+1) = etime(clock, t);
end
n = [Nmin:1:Nmax];
plot(n, fft_time,'.');
xlabel('N');
ylabel('Time in Secs');
title('FFT execution time');