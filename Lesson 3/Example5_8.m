
xn = cos(0.48*pi*n) + cos(0.52*pi*n);
k = [0:500];
w = (2*pi/500)*k;

%Cau a:
n1 = [0:1:9];
n = n1;
y1 = xn(1:1:10);

X = xn*(exp(-j*pi/500).^(n'*k));
magX = abs(X);

figure;
subplot(2, 1, 1);
stem(n1, y1);
grid on;
title('x(n), 0 <= n <= 9');
xlabel('Frequency in pi unit');
ylabel('x(n)');

subplot(2, 1, 2);
stem(n1, magX);
grid on;
title('Magnitude Part');
xlabel('Frequency in pi unit');
ylabel('Magnitude');

%Cau b:
n2 = [0:1:99];
n = n2;
y2 = [xn(1:1:10) zeros(100 - 10)];

X2 = xn*(exp(-j*pi/500).^(n'*k));
magX2 = abs(X2);

figure;
subplot(2, 1, 1);
stem(n2, y2);
grid on;
title('x(n), 0 <= n <= 9');
xlabel('Frequency in pi unit');
ylabel('x(n)');

subplot(2, 1, 2);
plot(w/pi, magX);
grid on;
title('Magnitude Part');
xlabel('Frequency in pi unit');
ylabel('Magnitude');

