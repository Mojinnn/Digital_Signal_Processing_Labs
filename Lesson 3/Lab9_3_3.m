N = 20;
nx = [0:4];
xn = [ones(1, length(nx)) zeros(1, N-5)];

[Xk] = dft(xn, N);
magX = abs (Xk);
phaX = angle(Xk);

disp(magX);
disp(phaX);

subplot(2,1,1);
stem(0:N-1, magX);

subplot(2,1,2);
stem(0:N-1, phaX);







% N = 20;
% nx = [0:4];
% xn = [ones(1, length(nx)),zeros(1,N-5)];
% 
% [Xk] = dft(xn, N);
% 
% magXk = abs(Xk);
% phaXk = angle(Xk)*180/pi;
% 
% %disp(magXk);
% %disp(phaXk);
% 
% % Biên ?? và pha
% magX = abs(Xk); % Biên ??
% phaX = angle(Xk); % Pha
% 
% figure;
% % V? biên ?? và pha roi rac
% subplot(2,1,1); 
% stem(0:N-1, magX, 'filled'); grid on;
% title('Magnitude Spectrum'); xlabel('Frequency Index k'); ylabel('|X[k]|');
% 
% subplot(2,1,2); 
% stem(0:N-1, phaX, 'filled'); grid on;
% title('Phase Spectrum'); xlabel('Frequency Index k'); ylabel('Phase (radians)');