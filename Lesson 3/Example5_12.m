n = 0:10;
x = 10.*(0.8).^n;
N = 15;
m = 6;
[y] = cirshftt(x, m, N);
ny = 0:14;

subplot(2, 1, 1);
stem(n, x);
grid on;

subplot(2, 1, 2);
stem(ny, y);
grid on;
% n = 0:10; x = 10*(0.8) .^ n;
% y = cirshftt(x,6,15);
% n = 0:14; x = [x, zeros(1,4)];
% subplot(2,1,1); stem(n,x); title('Original sequence')
% xlabel('n'); ylabel('x(n)');
% subplot(2,1,2); stem(n,y);
% title('Circularly shifted sequence, N=15')
% xlabel('n'); ylabel('x((n-6) mod 15)');