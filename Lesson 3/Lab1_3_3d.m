w = [0:1:500]*pi/500;
X = exp(j*w)./(exp(j*w) - 0.5*ones(1,501));
magX = abs(X);
angX = angle(X);
realX = real(X);
imagX = imag(X);

subplot(2,2, 1);
plot(w/pi, magX);
grid on;
title('Magnitude Part');
xlabel('Frequency in pi unit');
ylabel('Magnitude');

subplot(2,2, 3);
plot(w/pi, angX);
grid on;
title('Angle Part');
xlabel('Frequency in pi unit');
ylabel('Angle');

subplot(2,2, 2);
plot(w/pi, realX);
grid on;
title('Real Part');
xlabel('Frequency in pi unit');
ylabel('Real');

subplot(2,2, 4);
plot(w/pi, imagX);
grid on;
title('Imaginary Part');
xlabel('Frequency in pi unit');
ylabel('Imaginary');
% w = [0:1:500]*pi/500;
% X = exp(j*w)./(exp(j*w) - 0.5*ones(1,501));
% 
% magX = abs(X);
% angX = angle(X);
% realX = real(X);
% imagX = imag(X);
% 
% subplot(2,2,1);
% plot(w/pi, magX);
% grid on;
% title('Magnitude Part');
% xlabel('Frequency in pi units');
% ylabel('Magnitude');
% 
% subplot(2,2,3);
% plot(w/pi, angX);
% grid on;
% title('Angle Part');
% xlabel('Frequency in pi units');
% ylabel('Angle');
% 
% subplot(2,2,2);
% plot(w/pi, realX);
% grid on;
% title('Real Part');
% xlabel('Frequency in pi units');
% ylabel('Real');
% 
% subplot(2,2,4);
% plot(w/pi, imagX);
% grid on;
% title('Imaginary Part');
% xlabel('Frequency in pi units');
% ylabel('Imaginary');