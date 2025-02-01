w = [-2000:1:2000]*2*pi/2000;
X = exp(-j*w/2).*sin(3*w);

magX = abs(X);
angX = angle(X);
realX = real(X);
imagX = imag(X);

subplot(2, 2, 1);
plot(w/pi, magX);
grid on;
title('Magnitude Part');
xlabel('Frequency in pi unit');
ylabel('Magnitude');

subplot(2, 2, 3);
plot(w/pi, angX);
grid on;
title('Angle Part');
xlabel('Frequency in pi unit');
ylabel('Angle');

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



% w = [-2000:2000]*2*pi/2000;
% X = exp(-j*w/2).*sin(3*w);
% 
% magX = abs(X);
% angX = angle(X);
% realX = real(X);
% imagX = imag(X);
% 
% subplot(2, 2, 1);
% plot(w/pi, magX);
% grid on;
% title('Magnitude Part');
% xlabel('Frequency in pi unit');
% ylabel('Magnitude');
% 
% subplot(2, 2, 3);
% plot(w/pi, angX);
% grid on;
% title('Angle Part');
% xlabel('Frequency in pi unit');
% ylabel('Angle');
% 
% subplot(2, 2, 2);
% plot(w/pi, realX);
% grid on;
% title('Real Part');
% xlabel('Frequency in pi unit');
% ylabel('Real');
% 
% subplot(2, 2, 4);
% plot(w/pi, imagX);
% grid on;
% title('Imaginary Part');
% xlabel('Frequency in pi unit');
% ylabel('Imaginary');