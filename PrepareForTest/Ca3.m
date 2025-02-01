x = [-2 0 1 4 3 1 5 0 2];
n = [-4:4];

k = [0:500];
w = (pi/500)*k;

X = x*(exp(-j*pi/500).^(n'*k));
magX = abs(X);
phaX = angle(X);
realX = real(X);
imagX = imag(X);

subplot(2, 2, 1);
plot(w/pi, magX);
grid on;
title('Magnitude Part');
xlabel('Frequency in pi unit');
ylabel('Magnitude');

subplot(2, 2, 3);
plot(w/pi, phaX);
grid on;
title('Phase Part');
xlabel('Frequency in pi unit');
ylabel('Phase');

subplot(2, 2, 2);
plot(w/pi, realX);
grid on;
title('Real Part');
xlabel('Frequency in pi unit');
ylabel('Real');

subplot(2, 2, 4);
plot(w/pi, imagX);
grid on;
title('Imagenary Part');
xlabel('Frequency in pi unit');
ylabel('Imagenary');