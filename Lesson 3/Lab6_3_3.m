b = [1 0];
a = [1 -0.9];

figure;
zplane(b, a);
title('Phan bo cac diem cuc va diem khong');

[H, w] = freqz(b, a, 200, 'whole');
magH = abs(H(1:101));
phaH = angle(H(1:101));

figure;
subplot(2, 1, 1);
plot(w(1:101)/pi,magH);
grid on;

subplot(2, 1, 2);
plot(w(1:101)/pi, phaH);
grid on;



% a = 1;
% b = [1 -0.9];
% 
% %Tim phan bo ca diem cuc va diem khong
% 
% subplot(3,1,1);
% zplane(a, b);
% title('Zplane');
% 
% %Tim dap ung tan so bang cach danh gia 200 diem roi rac cua H(z) tren duong
% %tron don vi
% [H, w] = freqz(a, b, 200, 'whole');
% 
% magH = abs(H(1:101));
% phaH = angle(H(1:101));
% 
% subplot(3,1,2);
% plot(w(1:101)/pi, magH);
% grid on;
% title('Magnitude Part');
% ylabel('Magnitude');
% xlabel('Frequency in pi unit');
% 
% subplot(3,1,3);
% plot(w(1:101)/pi, phaH);
% grid on;
% title('Phase Part');
% ylabel('Phase');
% xlabel('Frequency in pi unit');
% 
% 
